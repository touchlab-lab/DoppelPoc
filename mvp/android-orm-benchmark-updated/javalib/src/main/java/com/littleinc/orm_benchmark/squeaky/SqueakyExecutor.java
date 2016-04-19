package com.littleinc.orm_benchmark.squeaky;
import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.util.Log;

import com.littleinc.orm_benchmark.BenchmarkExecutable;
import com.littleinc.orm_benchmark.util.BenchUtil;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import java.util.Random;

import co.touchlab.squeaky.dao.Dao;
import co.touchlab.squeaky.table.TableUtils;

/**
 * Created by kgalligan on 10/12/15.
 */
public class SqueakyExecutor implements BenchmarkExecutable
{

    private static final String TAG = "SqueakyExecutor";

    private SqueakyDataBaseHelper mHelper;

    @Override
    public void init(Context context, boolean useInMemoryDb)
    {
        Log.d(TAG, "Creating DataBaseHelper");
        SqueakyDataBaseHelper.init(context, useInMemoryDb);
        mHelper = SqueakyDataBaseHelper.getInstance();
    }

    @Override
    public long createDbStructure() throws SQLException
    {
        long start = System.nanoTime();
        TableUtils.createTables(mHelper.getWrappedDatabase(), SqueakyUser.class, SqueakyMessage.class);
        return System.nanoTime() - start;
    }

    @Override
    public long writeWholeData() throws SQLException {
        Random random = new Random();
        List<SqueakyUser> users = new ArrayList<SqueakyUser>();
        for (int i = 0; i < NUM_USER_INSERTS; i++) {
            SqueakyUser newUser = new SqueakyUser();
            newUser.lastName = (BenchUtil.getRandomString(10));
            newUser.firstName = (BenchUtil.getRandomString(10));

            users.add(newUser);
        }

        List<SqueakyMessage> messages = new ArrayList<SqueakyMessage>();
        for (int i = 0; i < NUM_MESSAGE_INSERTS; i++) {
            SqueakyMessage newMessage = new SqueakyMessage();
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
        SQLiteDatabase db = mHelper.getReadableDatabase();
        db.beginTransaction();

        try {
            Dao userDao = mHelper.getDao(SqueakyUser.class);
            for (SqueakyUser user : users) {
                userDao.create(user);
            }
            Log.d(TAG, "Done, wrote " + NUM_USER_INSERTS + " users");

            Dao messageDao = mHelper.getDao(SqueakyMessage.class);
            for (SqueakyMessage message : messages) {
                messageDao.create(message);
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
        Log.d(TAG,
              "Read, " + mHelper.getDao(SqueakyMessage.class).queryForAll().list().size()
                      + " rows");
        return System.nanoTime() - start;
    }

    @Override
    public long dropDb() throws SQLException {
        long start = System.nanoTime();

        TableUtils.dropTables(mHelper.getWrappedDatabase(), true, SqueakyUser.class, SqueakyMessage.class);
        return System.nanoTime() - start;
    }

    @Override
    public String getOrmName() {
        return "Squeaky";
    }
}
