package com.littleinc.orm_benchmark.cupboard;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.util.Log;

import com.littleinc.orm_benchmark.BenchmarkExecutable;
import com.littleinc.orm_benchmark.util.BenchUtil;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;

import nl.qbusict.cupboard.QueryResultIterable;


import static nl.qbusict.cupboard.CupboardFactory.cupboard;

/**
 * Created by kgalligan on 10/27/15.
 */
public class CupboardExecutor  implements BenchmarkExecutable
{

    private static final String TAG = "SQLiteExecutor";

    private CupboardDataBaseHelper mHelper;

    @Override
    public String getOrmName()
    {
        return "Cupboard";
    }

    @Override
    public void init(Context context, boolean useInMemoryDb)
    {
        Log.d(TAG, "Creating DataBaseHelper");
        mHelper = new CupboardDataBaseHelper(context, useInMemoryDb);
    }

    @Override
    public long createDbStructure() throws SQLException
    {
        long start = System.nanoTime();
        cupboard().withDatabase(mHelper.getWritableDatabase()).createTables();
        return System.nanoTime() - start;
    }

    @Override
    public long writeWholeData() throws SQLException {
        List<CupboardUser> users = new ArrayList<>();
        for (int i = 0; i < NUM_USER_INSERTS; i++) {
            CupboardUser newUser = new CupboardUser();
            newUser.lastName = (BenchUtil.getRandomString(10));
            newUser.firstName = (BenchUtil.getRandomString(10));

            users.add(newUser);
        }

        List<CupboardMessage> messages = new ArrayList<>();
        for (int i = 0; i < NUM_MESSAGE_INSERTS; i++) {
            CupboardMessage newMessage = new CupboardMessage();
            newMessage.commandId = (i);
            newMessage.sortedBy = (System.nanoTime());
            newMessage.content = (BenchUtil.getRandomString(100));
            newMessage.clientId = (System.currentTimeMillis());
            newMessage
                    .senderId = (Math.round(Math.random() * NUM_USER_INSERTS));
            newMessage
                    .channelId = (Math.round(Math.random() * NUM_USER_INSERTS));
            newMessage.createdAt = ((int) (System.currentTimeMillis() / 1000L));
            messages.add(newMessage);
        }

        long start = System.nanoTime();
        SQLiteDatabase db = mHelper.getWritableDatabase();

        try {
            db.beginTransaction();

            for (CupboardUser user : users) {
                cupboard().withDatabase(mHelper.getWritableDatabase()).put(user);
            }
            Log.d(TAG, "Done, wrote " + NUM_USER_INSERTS + " users");

            for (CupboardMessage message : messages) {
                cupboard().withDatabase(mHelper.getWritableDatabase()).put(message);
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

        Cursor cursor = cupboard().withDatabase(mHelper.getWritableDatabase()).query(CupboardMessage.class)
                                  .getCursor();
        QueryResultIterable<CupboardMessage> iterate = null;
        try {
            int countMessages = 0;
            iterate = cupboard().withCursor(cursor).iterate(CupboardMessage.class);
            for(CupboardMessage message : iterate)
            {
                countMessages++;
            }
            Log.d(TAG,
                    "Read, " + countMessages + " rows");
        } finally {
            if (iterate != null) {
                iterate.close();
                cursor.close();
            }
        }
        return System.nanoTime() - start;
    }

    @Override
    public long dropDb() throws SQLException {
        long start = System.nanoTime();
        cupboard().withDatabase(mHelper.getWritableDatabase()).dropAllTables();
        return System.nanoTime() - start;
    }
}
