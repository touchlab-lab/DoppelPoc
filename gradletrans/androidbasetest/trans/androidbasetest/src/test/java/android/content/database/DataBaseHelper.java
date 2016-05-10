package android.content.database;
import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.util.Log;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by kgalligan on 5/9/16.
 */
public class DataBaseHelper extends SQLiteOpenHelper
{

    public static final String TAG = DataBaseHelper.class.getSimpleName();
    public static final int INSERT_COUNT = 1000;

    // DB CONFIG
    private static int DB_VERSION = 1;

    private static String DB_NAME = "sqlite_db";

    public DataBaseHelper(Context context, boolean isInMemory)
    {
        super(context, (isInMemory
                ? null
                : DB_NAME), null, DB_VERSION);
    }

    @Override
    public void onCreate(SQLiteDatabase db)
    {
        Message.createTable(db);
    }

    @Override
    public void onUpgrade(SQLiteDatabase db, int oldVersion, int newVersion)
    {
        Message.dropTable(db);
    }

    public void writeSomeData()
    {
        List<Message> messages = new ArrayList<>();
        for (int i = 0; i < INSERT_COUNT; i++) {
            Message newMessage = new Message();
            newMessage.fillMessageWithRandomData(i, INSERT_COUNT);
            messages.add(newMessage);
        }

        SQLiteDatabase db = getWritableDatabase();

        try {
            db.beginTransaction();

            for (Message message : messages) {
                db.insert(Message.TABLE_NAME, null, message.prepareForInsert());
            }
            Log.d(TAG, "Done, wrote " + INSERT_COUNT + " messages");
            db.setTransactionSuccessful();
        } finally {
            db.endTransaction();
        }
    }
}
