package com.littleinc.orm_benchmark.greendao;

import android.content.Context;
import android.util.Log;

import com.littleinc.orm_benchmark.BenchmarkExecutable;
import com.littleinc.orm_benchmark.util.BenchUtil;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


import static com.littleinc.orm_benchmark.util.BenchUtil.getRandomString;

public class GreenDaoExecutor implements BenchmarkExecutable {

    private static final String TAG = "GreenDaoExecutor";

    private static String DB_NAME = "greendao_db";

    private DataBaseHelper mHelper;

    private DaoMaster mDaoMaster;

    @Override
    public void init(Context context, boolean useInMemoryDb) {
        Log.d(TAG, "Creating DataBaseHelper");
        mHelper = new DataBaseHelper(context, (useInMemoryDb ? null : DB_NAME),
                null);
    }

    @Override
    public long createDbStructure() throws SQLException {
        long start = System.nanoTime();
        if (mDaoMaster == null) {
            mDaoMaster = new DaoMaster(mHelper.getWritableDatabase());
        }

        DaoMaster.createAllTables(mHelper.getWritableDatabase(), true);

        return System.nanoTime() - start;
    }

    @Override
    public long writeWholeData() throws SQLException {
        final List<GreenUser> users = new ArrayList<>();
        for (int i = 0; i < NUM_USER_INSERTS; i++) {
            GreenUser newUser = new GreenUser(getRandomString(10), getRandomString(10),
                    null);
            users.add(newUser);
        }

        final List<GreenMessage> messages = new ArrayList<>();
        for (long i = 0; i < NUM_MESSAGE_INSERTS; i++) {
            GreenMessage newMessage = new GreenMessage(null);
            newMessage.setCommand_id(i);
            newMessage.setSorted_by(Double.valueOf(System.nanoTime()));
            newMessage.setContent(BenchUtil.getRandomString(100));
            newMessage.setClient_id(System.currentTimeMillis());
            newMessage.setSender_id(Math.round(Math.random() * NUM_USER_INSERTS));
            newMessage.setChannel_id(Math.round(Math.random() * NUM_USER_INSERTS));
            newMessage.setCreated_at((int) (System.currentTimeMillis() / 1000L));

            messages.add(newMessage);
        }

        long start = System.nanoTime();
        final DaoSession daoSession = mDaoMaster.newSession();
        daoSession.runInTx(new Runnable() {

            @Override
            public void run() {
                GreenUserDao userDao = daoSession.getGreenUserDao();
                for (GreenUser user : users) {
                    userDao.insertOrReplace(user);
                }
                Log.d(GreenDaoExecutor.class.getSimpleName(), "Done, wrote "
                        + NUM_USER_INSERTS + " users");

                GreenMessageDao messageDao = daoSession.getGreenMessageDao();
                for (GreenMessage message : messages) {
                    messageDao.insertOrReplace(message);
                }
                Log.d(GreenDaoExecutor.class.getSimpleName(), "Done, wrote "
                        + NUM_MESSAGE_INSERTS + " messages");
                daoSession.clear();
            }
        });
        return System.nanoTime() - start;
    }

    @Override
    public long readWholeData() throws SQLException {
        long start = System.nanoTime();
        DaoSession daoSession = mDaoMaster.newSession();
        GreenMessageDao messageDao = daoSession.getGreenMessageDao();
        Log.d(GreenDaoExecutor.class.getSimpleName(), "Read, "
                + messageDao.queryBuilder().list().size() + " rows");
        daoSession.clear();
        return System.nanoTime() - start;
    }

    @Override
    public long dropDb() throws SQLException {
        long start = System.nanoTime();
        DaoMaster.dropAllTables(mHelper.getWritableDatabase(), true);
        return System.nanoTime() - start;
    }

    @Override
    public String getOrmName() {
        return "GreenDAO";
    }

}
