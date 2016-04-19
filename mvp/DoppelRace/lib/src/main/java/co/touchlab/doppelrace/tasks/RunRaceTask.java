package co.touchlab.doppelrace.tasks;
import android.content.Context;
import android.database.sqlite.SQLiteDatabase;

import java.util.ArrayList;
import java.util.List;

import co.touchlab.android.threading.eventbus.EventBusExt;
import co.touchlab.android.threading.tasks.Task;
import co.touchlab.squeaky.dao.Dao;

/**
 * Created by kgalligan on 4/13/16.
 */
public class RunRaceTask extends Task
{
    int NUM_MESSAGE_INSERTS = 10000;
    final int runCount;

    public RunRaceTask(int runCount)
    {
        this.runCount = runCount;
    }

    @Override
    protected void run(Context context) throws Throwable
    {
        final SqueakyDataBaseHelper dataBaseHelper = SqueakyDataBaseHelper.getInstance(context);
        final Dao<SqueakyMessage> dao = dataBaseHelper.getDao(SqueakyMessage.class);

        final SQLiteDatabase db = dataBaseHelper.getWritableDatabase();

        for(int i=0; i<runCount; i++)
        {
            insertRun(dao, db);
            final double percentDone = (double) i / (double) runCount;
            EventBusExt.getDefault().post(
                    new RunRaceProgress(percentDone, "Made "+ i +" runs"));
        }

    }

    private void insertRun(Dao<SqueakyMessage> dao, SQLiteDatabase db) throws java.sql.SQLException
    {
        List<SqueakyMessage> messages = createDataInsertList();
        db.beginTransaction();

        try
        {
            for(SqueakyMessage message : messages)
            {
                dao.create(message);
            }
            db.setTransactionSuccessful();
        }
        finally
        {
            db.endTransaction();
        }
    }

    private List<SqueakyMessage> createDataInsertList()
    {
        List<SqueakyMessage> messages = new ArrayList<SqueakyMessage>();
        for(int i = 0; i < NUM_MESSAGE_INSERTS; i++)
        {
            SqueakyMessage newMessage = new SqueakyMessage();
            newMessage.commandId = (i);
            newMessage.sortedBy = (System.nanoTime());
            newMessage.content = (BenchUtil.getRandomString(100));
            newMessage.clientId = (System.currentTimeMillis());
            newMessage.senderId = (Math.round(Math.random() * NUM_MESSAGE_INSERTS));
            newMessage.channelId = (Math.round(Math.random() * NUM_MESSAGE_INSERTS));
            newMessage.createdAt = ((int) (System.currentTimeMillis() / 1000L));

            messages.add(newMessage);
        }
        return messages;
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

    public static class RunRaceProgress
    {
        public final double percentDone;
        public final String message;

        public RunRaceProgress(double percentDone, String message)
        {
            this.percentDone = percentDone;
            this.message = message;
        }

        public double getPercentDone()
        {
            return percentDone;
        }

        public String getMessage()
        {
            return message;
        }
    }
}
