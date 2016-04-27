package com.littleinc.orm_benchmark.squeakyfinal;
import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.util.Log;

import com.littleinc.orm_benchmark.BenchmarkExecutable;
import com.littleinc.orm_benchmark.util.BenchUtil;

import java.sql.SQLException;
import java.util.ArrayList;
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

    private DataBaseHelper mHelper;

    @Override
    public void init(Context context, boolean useInMemoryDb)
    {
        Log.d(TAG, "Creating DataBaseHelper");
        DataBaseHelper.init(context, useInMemoryDb);
        mHelper = DataBaseHelper.getInstance();
    }

    @Override
    public long createDbStructure() throws SQLException
    {
        long start = System.nanoTime();
        TableUtils.createTables(mHelper.getWrappedDatabase(), User.class,
                                Message.class);
        return System.nanoTime() - start;
    }

    @Override
    public long writeWholeData() throws SQLException
    {
        Random random = new Random();
        List<User> users = new ArrayList<User>();
        for(int i = 0; i < NUM_USER_INSERTS; i++)
        {
            User newUser = new User(
                    BenchUtil.getRandomString(10), BenchUtil.getRandomString(10));

            users.add(newUser);
        }

        List<Message> messages = new ArrayList<Message>();
        for (int i = 0; i < NUM_MESSAGE_INSERTS; i++) {
            Message newMessage = new Message(System.currentTimeMillis(), i, System.nanoTime(),
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
            Dao userDao = mHelper.getDao(User.class);
            for (User user : users) {
                userDao.create(user);
            }
            Log.d(TAG, "Done, wrote " + NUM_USER_INSERTS + " users");

            Dao messageDao = mHelper.getDao(Message.class);
            for (Message message : messages) {
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
              "Read, " + mHelper.getDao(Message.class).queryForAll().list().size()
                      + " rows");
        return System.nanoTime() - start;
    }

    @Override
    public long dropDb() throws SQLException {
        long start = System.nanoTime();
        TableUtils.dropTables(mHelper.getWrappedDatabase(), true, User.class, Message.class);
        return System.nanoTime() - start;
    }

    @Override
    public String getOrmName() {
        return "SqueakyFinal";
    }
}
