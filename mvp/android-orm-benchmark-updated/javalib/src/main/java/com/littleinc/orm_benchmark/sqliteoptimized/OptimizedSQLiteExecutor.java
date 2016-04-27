package com.littleinc.orm_benchmark.sqliteoptimized;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteStatement;
import android.util.Log;

import com.littleinc.orm_benchmark.BenchmarkExecutable;

import java.sql.SQLException;
import java.util.ArrayList;
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

    private DataBaseHelper mHelper;

    @Override
    public String getOrmName()
    {
        return "RAW_OPTIMIZED";
    }

    @Override
    public void init(Context context, boolean useInMemoryDb)
    {
        Log.d(TAG, "Creating DataBaseHelper");
        mHelper = new DataBaseHelper(context, useInMemoryDb);
    }

    @Override
    public long createDbStructure() throws SQLException
    {
        long start = System.nanoTime();
        com.littleinc.orm_benchmark.sqlite.User.createTable(mHelper);
        com.littleinc.orm_benchmark.sqlite.Message.createTable(mHelper);
        return System.nanoTime() - start;
    }

    @Override
    public long writeWholeData() throws SQLException
    {
        List<User> users = new ArrayList<>();
        for(int i = 0; i < NUM_USER_INSERTS; i++)
        {
            User newUser = new User();
            newUser.fillUserWithRandomData();
            users.add(newUser);
        }

        List<Message> messages = new ArrayList<>();
        for(int i = 0; i < NUM_MESSAGE_INSERTS; i++)
        {
            Message newMessage = new Message();
            newMessage.fillMessageWithRandomData(i, NUM_USER_INSERTS);
            messages.add(newMessage);
        }

        long start = System.nanoTime();
        SQLiteDatabase db = mHelper.getWritableDatabase();

        SQLiteStatement insertUser = db.compileStatement(
                String.format("Insert into %s (%s, %s) values (?,?)", User.TABLE_NAME,
                              User.FIRST_NAME_COLUMN, User.LAST_NAME_COLUMN));

        SQLiteStatement insertMessage = db.compileStatement(
                String.format("Insert into %s (%s, %s, %s, %s, %s, %s, %s) values (?,?,?,?,?,?,?)",
                              Message.TABLE_NAME, Message.CONTENT,
                Message.SORTED_BY,
                Message.CLIENT_ID,
                Message.SENDER_ID,
                Message.CHANNEL_ID,
                Message.COMMAND_ID,
                Message.CREATED_AT ));

        try {
            db.beginTransaction();

            for (User user : users) {
                user.prepareForInsert(insertUser);
                insertUser.execute();
            }
            Log.d(TAG, "Done, wrote " + NUM_USER_INSERTS + " users");

            for (Message message : messages) {
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
            List<Message> messages = new ArrayList<Message>();
            c = db.query(Message.TABLE_NAME, Message.PROJECTION, null, null,
                    null, null, null);

            if(c != null) {

                int channelIdIndex = c.getColumnIndex(Message.CHANNEL_ID);
                int clientIdIndex = c.getColumnIndex(Message.CLIENT_ID);
                int commandIdIndex = c.getColumnIndex(Message.COMMAND_ID);
                int contentIndex = c.getColumnIndex(Message.CONTENT);
                int createdAtIndex = c.getColumnIndex(Message.CREATED_AT);
                int senderIdIndex = c.getColumnIndex(Message.SENDER_ID);
                int sortedByIndex = c.getColumnIndex(Message.SORTED_BY);

                while (c.moveToNext()) {
                    Message newMessage = new Message();
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
        com.littleinc.orm_benchmark.sqlite.User.dropTable(mHelper);
        com.littleinc.orm_benchmark.sqlite.Message.dropTable(mHelper);
        return System.nanoTime() - start;
    }
}
