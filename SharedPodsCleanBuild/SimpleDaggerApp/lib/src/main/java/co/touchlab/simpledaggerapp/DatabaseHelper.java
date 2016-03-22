package co.touchlab.simpledaggerapp;
import android.content.Context;
import android.database.sqlite.SQLiteDatabase;

import java.sql.SQLException;

import co.touchlab.squeaky.db.sqlite.SQLiteDatabaseImpl;
import co.touchlab.squeaky.db.sqlite.SqueakyOpenHelper;
import co.touchlab.squeaky.table.TableUtils;

/**
 * Created by kgalligan on 3/21/16.
 */
public class DatabaseHelper extends SqueakyOpenHelper
{
    private final        Class[] tableClasses = new Class[] {TheDbMessage.class};
    private final static int     VERSION      = 1;

    private static DatabaseHelper INSTANCE;

    public static synchronized DatabaseHelper getInstance(Context context, String fileName)
    {
        if(INSTANCE == null)
        {
            INSTANCE = new DatabaseHelper(context.getApplicationContext(), fileName);
        }

        return INSTANCE;
    }

    private DatabaseHelper(Context context, String fileName)
    {
        super(context, fileName, null, VERSION);
    }

    //    @Override
    //    public void onOpen(SQLiteDatabase db)
//    {
//        super.onOpen(db);
//        // @reminder Must enable foreign keys as it's off by default
//        db.execSQL("PRAGMA foreign_keys=ON;");
//    }

    @Override
    public void onCreate(SQLiteDatabase db)
    {
        try
        {
            TableUtils.createTables(new SQLiteDatabaseImpl(db), tableClasses);
        }
        catch(SQLException e)
        {
            throw new RuntimeException(e);
        }
    }

    @Override
    public void onUpgrade(SQLiteDatabase db, int oldVersion, int newVersion)
    {

    }
}
