package com.littleinc.orm_benchmark.sqliteoptimized;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteStatement;
import android.util.Log;

import com.littleinc.orm_benchmark.BenchmarkExecutable;
import com.littleinc.orm_benchmark.sqlite.SqliteMessage;
import com.littleinc.orm_benchmark.sqlite.SqliteUser;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;

/**
 * This executor takes the basic idea of the standard Android sqlLite query helper, but adds a few optimizations.
 *
 * Select optimization
 * A Cursor can only access columns by their respective position in the result
 * the standard way of reading the fields value is cursor.getString(cursor.getColumnIndex("field_name"))
 * this actually loops through all column names until it finds one that matches and then return that index.
 *
 * To decrease unnecessary lookup, we do this once before we read any of the rows, and remembers the position
 * in local variables.
 *
 * Insert optimizations
 * The database.Insert function does not cache the insert query. Instead it re-creates the full statement
 * for each time its called including adding all values to the statement
 * What we do here instead is to create the SQL-statement manually and let the database driver compile it
 * for us. This creates a re-usable and very fast executable statement for us.
 *
 * For each row we just need to insert the values into the statement via the bind function and then
 * execute it.
 *
 * Everything should of course still be encapsulated by a transaction, otherwise you will get a huge overhead
 * per row.
 *
 */
public class OptimizedSQLiteExecutor implements BenchmarkExecutable {

    private static final String TAG = "OptimizedSQLiteExecutor";

    private SqliteOptimizedDataBaseHelper mHelper;

    @Override
    public String getOrmName()
    {
        return "RAW_OPTIMIZED";
    }

    @Override
    public void init(Context context, boolean useInMemoryDb)
    {
        Log.d(TAG, "Creating DataBaseHelper");
        mHelper = new SqliteOptimizedDataBaseHelper(context, useInMemoryDb);
    }

    @Override
    public long createDbStructure() throws SQLException
    {
        long start = System.nanoTime();
        SqliteUser.createTable(mHelper);
        SqliteMessage.createTable(mHelper);
        return System.nanoTime() - start;
    }

    @Override
    public long writeWholeData() throws SQLException
    {
        List<OptimizedUser> users = new ArrayList<>();
        for(int i = 0; i < NUM_USER_INSERTS; i++)
        {
            OptimizedUser newUser = new OptimizedUser();
            newUser.fillUserWithRandomData();
            users.add(newUser);
        }

        List<OptimizedMessage> messages = new ArrayList<>();
        for(int i = 0; i < NUM_MESSAGE_INSERTS; i++)
        {
            OptimizedMessage newMessage = new OptimizedMessage();
            newMessage.fillMessageWithRandomData(i, NUM_USER_INSERTS);
            messages.add(newMessage);
        }

        long start = System.nanoTime();
        SQLiteDatabase db = mHelper.getWritableDatabase();

        SQLiteStatement insertUser = db.compileStatement(
                String.format("Insert into %s (%s, %s) values (?,?)", OptimizedUser.TABLE_NAME,
                              OptimizedUser.FIRST_NAME_COLUMN, OptimizedUser.LAST_NAME_COLUMN));

        SQLiteStatement insertMessage = db.compileStatement(
                String.format("Insert into %s (%s, %s, %s, %s, %s, %s, %s) values (?,?,?,?,?,?,?)",
                              OptimizedMessage.TABLE_NAME, OptimizedMessage.CONTENT,
                OptimizedMessage.SORTED_BY,
                OptimizedMessage.CLIENT_ID,
                OptimizedMessage.SENDER_ID,
                OptimizedMessage.CHANNEL_ID,
                OptimizedMessage.COMMAND_ID,
                OptimizedMessage.CREATED_AT ));

        try {
            db.beginTransaction();

            for (OptimizedUser user : users) {
                user.prepareForInsert(insertUser);
                insertUser.execute();
            }
            Log.d(TAG, "Done, wrote " + NUM_USER_INSERTS + " users");

            for (OptimizedMessage message : messages) {
                message.prepareForInsert(insertMessage);
                insertMessage.execute();
            }
            Log.d(TAG, "Done, wrote " + NUM_MESSAGE_INSERTS + " messages");
            db.setTransactionSuccessful();
        } finally {
            db.endTransaction();
        }
        return System.nanoTime() - start;
    }

    @Override
    public long readWholeData() throws SQLException {
        long start = System.nanoTime();
        Cursor c = null;
        try {
            SQLiteDatabase db = mHelper.getReadableDatabase();
            List<OptimizedMessage> messages = new ArrayList<OptimizedMessage>();
            c = db.query(OptimizedMessage.TABLE_NAME, OptimizedMessage.PROJECTION, null, null,
                    null, null, null);

            if(c != null) {

                int channelIdIndex = c.getColumnIndex(OptimizedMessage.CHANNEL_ID);
                int clientIdIndex = c.getColumnIndex(OptimizedMessage.CLIENT_ID);
                int commandIdIndex = c.getColumnIndex(OptimizedMessage.COMMAND_ID);
                int contentIndex = c.getColumnIndex(OptimizedMessage.CONTENT);
                int createdAtIndex = c.getColumnIndex(OptimizedMessage.CREATED_AT);
                int senderIdIndex = c.getColumnIndex(OptimizedMessage.SENDER_ID);
                int sortedByIndex = c.getColumnIndex(OptimizedMessage.SORTED_BY);

                while (c.moveToNext()) {
                    OptimizedMessage newMessage = new OptimizedMessage();
                    newMessage.setChannelId(c.getLong(channelIdIndex));
                    newMessage.setClientId(c.getLong(clientIdIndex));
                    newMessage.setCommandId(c.getLong(commandIdIndex));
                    newMessage.setContent(c.getString(contentIndex));
                    newMessage.setCreatedAt(c.getInt(createdAtIndex));
                    newMessage.setSenderId(c.getLong(senderIdIndex));
                    newMessage.setSortedBy(c.getDouble(sortedByIndex));

                    messages.add(newMessage);
                }
            }
            Log.d(TAG, "Read, " + messages.size() + " rows");
        } finally {
            if (c != null) {
                c.close();
            }
        }
        return System.nanoTime() - start;
    }

    @Override
    public long dropDb() throws SQLException {
        long start = System.nanoTime();
        SqliteUser.dropTable(mHelper);
        SqliteMessage.dropTable(mHelper);
        return System.nanoTime() - start;
    }
}
