package com.littleinc.orm_benchmark.squeakyfinal;
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
public class SqueakyFinalExecutor implements BenchmarkExecutable
{

    private static final String TAG = "SqueakyFinalExecutor";

    private SqueakyFinalDataBaseHelper mHelper;

    @Override
    public void init(Context context, boolean useInMemoryDb)
    {
        Log.d(TAG, "Creating DataBaseHelper");
        SqueakyFinalDataBaseHelper.init(context, useInMemoryDb);
        mHelper = SqueakyFinalDataBaseHelper.getInstance();
    }

    @Override
    public long createDbStructure() throws SQLException
    {
        long start = System.nanoTime();
        TableUtils.createTables(mHelper.getWrappedDatabase(), SqueakyFinalUser.class, SqueakyFinalMessage.class);
        return System.nanoTime() - start;
    }

    @Override
    public long writeWholeData() throws SQLException
    {
        Random random = new Random();
        List<SqueakyFinalUser> users = new ArrayList<SqueakyFinalUser>();
        for(int i = 0; i < NUM_USER_INSERTS; i++)
        {
            SqueakyFinalUser newUser = new SqueakyFinalUser(
                    BenchUtil.getRandomString(10), BenchUtil.getRandomString(10));

            users.add(newUser);
        }

        List<SqueakyFinalMessage> messages = new ArrayList<SqueakyFinalMessage>();
        for (int i = 0; i < NUM_MESSAGE_INSERTS; i++) {
            SqueakyFinalMessage newMessage = new SqueakyFinalMessage(System.currentTimeMillis(), i, System.nanoTime(),
                                             ((int) (System.currentTimeMillis() / 1000L)),
                                             BenchUtil.getRandomString(100),
                                             (Math.round(Math.random() * NUM_USER_INSERTS)),
                                             (Math.round(Math.random() * NUM_USER_INSERTS)));
            messages.add(newMessage);
        }

        long start = System.nanoTime();
        SQLiteDatabase db = mHelper.getReadableDatabase();
        db.beginTransaction();

        try {
            Dao userDao = mHelper.getDao(SqueakyFinalUser.class);
            for (SqueakyFinalUser user : users) {
                userDao.create(user);
            }
            Log.d(TAG, "Done, wrote " + NUM_USER_INSERTS + " users");

            Dao messageDao = mHelper.getDao(SqueakyFinalMessage.class);
            for (SqueakyFinalMessage message : messages) {
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
              "Read, " + mHelper.getDao(SqueakyFinalMessage.class).queryForAll().list().size()
                      + " rows");
        return System.nanoTime() - start;
    }

    @Override
    public long dropDb() throws SQLException {
        long start = System.nanoTime();
        TableUtils.dropTables(mHelper.getWrappedDatabase(), true, SqueakyFinalUser.class, SqueakyFinalMessage.class);
        return System.nanoTime() - start;
    }

    @Override
    public String getOrmName() {
        return "SqueakyFinal";
    }
}
