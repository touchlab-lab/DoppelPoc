package co.touchlab.simpledaggerapp;
import android.content.ContentValues;
import android.content.Context;
import android.database.DatabaseUtils;
import android.database.sqlite.SQLiteDatabase;
import android.util.Log;

import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import java.util.Random;

import co.touchlab.android.threading.eventbus.EventBusExt;
import co.touchlab.android.threading.tasks.Task;
import co.touchlab.squeaky.dao.Dao;

/**
 * Created by kgalligan on 3/24/16.
 */
public class DbTestTask extends Task
{
    public static final int NUM_MESSAGE_INSERTS = 20000;
    private final       PlatformContext platformContext;

    public DbTestTask(PlatformContext platformContext)
    {
        this.platformContext = platformContext;
    }

    @Override
    protected void run(Context context) throws Throwable
    {
        int DBRUNS = 5;

        /*for(int i=0; i<DBRUNS; i++)
        {
            saveLotsSql();
        }*/

        for(int i=0; i<DBRUNS; i++)
        {
            saveLots();
        }

        Thread.sleep(5000);
    }

    @Override
    protected boolean handleError(Context context, Throwable e)
    {
        return false;
    }

    @Override
    protected void onComplete(Context context)
    {
        EventBusExt.getDefault().post(this);
    }

    private void saveLots() throws java.sql.SQLException
    {
        final DatabaseHelper databaseHelper = DatabaseHelper
                .getInstance(platformContext.appContext(), "squeakytest");
        final SQLiteDatabase theDb = databaseHelper.getWritableDatabase();

        final Dao<TheDbMessage> dao = databaseHelper.getDao(TheDbMessage.class);

        List<TheDbMessage> messages = new ArrayList<>();
        final Random random = new Random();
        for (int i = 0; i < NUM_MESSAGE_INSERTS; i++) {
            TheDbMessage newMessage = new TheDbMessage();
            newMessage.commandId = (i);
            newMessage.sortedBy = (System.nanoTime());
            newMessage.content = "Some content: "+ random.nextInt(100);
            newMessage.clientId = (System.currentTimeMillis());
            newMessage
                    .senderId = (Math.round(Math.random() * NUM_MESSAGE_INSERTS));
            newMessage
                    .channelId = (Math.round(Math.random() * NUM_MESSAGE_INSERTS));
            newMessage.createdAt = ((int) (System.currentTimeMillis() / 1000L));

            messages.add(newMessage);
        }

        long start = System.currentTimeMillis();
        SQLiteDatabase db = databaseHelper.getReadableDatabase();
        db.beginTransaction();

        try {

            for (TheDbMessage m : messages) {
                dao.create(m);
            }

            db.setTransactionSuccessful();
        } finally {
            db.endTransaction();
        }

        final long elapsed = System.currentTimeMillis() - start;
        start = System.currentTimeMillis();

        final List<TheDbMessage> list = dao.queryForAll().list();

        final long readElapsed = System.currentTimeMillis() - start;

        dao.delete(list);

        Log.w("ASDF",
              "Inserted " + NUM_MESSAGE_INSERTS + " rows. Write: " + elapsed + "/Read: " + readElapsed + "/count: " + dao
                      .countOf());
    }

    private void saveLotsSql() throws java.sql.SQLException
    {

        final DatabaseHelper databaseHelper = DatabaseHelper
                .getInstance(platformContext.appContext(), "squeakytest");
        final SQLiteDatabase theDb = databaseHelper.getWritableDatabase();

        List<SqliteMessage> messages = new ArrayList<>(NUM_MESSAGE_INSERTS);
        for (int i = 0; i < NUM_MESSAGE_INSERTS; i++) {
            SqliteMessage newMessage = new SqliteMessage();
            newMessage.fillMessageWithRandomData(i, NUM_MESSAGE_INSERTS);
            messages.add(newMessage);
        }

        long start = System.currentTimeMillis();
        SQLiteDatabase db = databaseHelper.getWritableDatabase();

        try {
            db.beginTransaction();

            for (SqliteMessage message : messages) {
                final ContentValues values = message.prepareForInsert();
//                db.insert(SqliteMessage.TABLE_NAME, null, values);
            }
            db.setTransactionSuccessful();
        } finally {
            db.endTransaction();
        }

        final long elapsed = System.currentTimeMillis() - start;

        final long count = DatabaseUtils.queryNumEntries(db, SqliteMessage.TABLE_NAME);
        Log.w("ASDF",
              "Inserted " + NUM_MESSAGE_INSERTS + " rows. Time: " + elapsed + "/count: " + count);
    }
}
