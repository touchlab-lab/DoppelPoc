package com.littleinc.orm_benchmark.sqlite;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.util.Log;

import com.littleinc.orm_benchmark.BenchmarkExecutable;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;

/**
 * An unoptimized set of SQLite operations for reading and writing the test database objects.
 *
 * See {@link com.littleinc.orm_benchmark.sqliteoptimized.OptimizedSQLiteExecutor} for optimized
 * versions of these SQLite operations.
 */
public class SQLiteExecutor implements BenchmarkExecutable {

    private static final String TAG = "SQLiteExecutor";

    private SqliteDataBaseHelper mHelper;

    @Override
    public String getOrmName()
    {
        return "RAW";
    }

    @Override
    public void init(Context context, boolean useInMemoryDb)
    {
        Log.d(TAG, "Creating DataBaseHelper");
        mHelper = new SqliteDataBaseHelper(context, useInMemoryDb);
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
        List<SqliteUser> users = new ArrayList<>();
        for (int i = 0; i < NUM_USER_INSERTS; i++) {
            SqliteUser newUser = new SqliteUser();
            newUser.fillUserWithRandomData();
            users.add(newUser);
        }

        List<SqliteMessage> messages = new ArrayList<>();
        for (int i = 0; i < NUM_MESSAGE_INSERTS; i++) {
            SqliteMessage newMessage = new SqliteMessage();
            newMessage.fillMessageWithRandomData(i, NUM_USER_INSERTS);
            messages.add(newMessage);
        }

        long start = System.nanoTime();
        SQLiteDatabase db = mHelper.getWritableDatabase();

        try {
            db.beginTransaction();

            for (SqliteUser user : users) {
                db.insert(SqliteUser.TABLE_NAME, null, user.prepareForInsert());
            }
            Log.d(TAG, "Done, wrote " + NUM_USER_INSERTS + " users");

            for (SqliteMessage message : messages) {
                db.insert(SqliteMessage.TABLE_NAME, null, message.prepareForInsert());
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
            List<SqliteMessage> messages = new ArrayList<SqliteMessage>();
            c = db.query(SqliteMessage.TABLE_NAME, SqliteMessage.PROJECTION, null, null,
                    null, null, null);

            while (c != null && c.moveToNext()) {
                SqliteMessage newMessage = new SqliteMessage();
                newMessage.setChannelId(c.getLong(c
                        .getColumnIndex(SqliteMessage.CHANNEL_ID)));
                newMessage.setClientId(c.getLong(c
                        .getColumnIndex(SqliteMessage.CLIENT_ID)));
                newMessage.setCommandId(c.getLong(c
                        .getColumnIndex(SqliteMessage.COMMAND_ID)));
                newMessage.setContent(c.getString(c
                        .getColumnIndex(SqliteMessage.CONTENT)));
                newMessage.setCreatedAt(c.getInt(c
                        .getColumnIndex(SqliteMessage.CREATED_AT)));
                newMessage.setSenderId(c.getLong(c
                        .getColumnIndex(SqliteMessage.SENDER_ID)));
                newMessage.setSortedBy(c.getDouble(c
                        .getColumnIndex(SqliteMessage.SORTED_BY)));

                messages.add(newMessage);
            }
            Log.d(TAG,
                    "Read, " + messages.size() + " rows");
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
