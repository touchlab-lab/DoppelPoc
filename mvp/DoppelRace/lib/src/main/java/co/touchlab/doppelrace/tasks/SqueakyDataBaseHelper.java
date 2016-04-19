package co.touchlab.doppelrace.tasks;
import android.content.Context;
import android.database.sqlite.SQLiteDatabase;

import java.sql.SQLException;

import co.touchlab.squeaky.db.sqlite.SQLiteDatabaseImpl;
import co.touchlab.squeaky.db.sqlite.SqueakyOpenHelper;
import co.touchlab.squeaky.table.TableUtils;

/**
 * Created by kgalligan on 4/13/16.
 */
public class SqueakyDataBaseHelper extends SqueakyOpenHelper
{
    private static int DB_VERSION = 1;

    private static String DB_NAME = "racedb";

    private static SqueakyDataBaseHelper sInstance;

    public static synchronized SqueakyDataBaseHelper getInstance(Context context)
    {
        if(sInstance == null)
        {
            sInstance = new SqueakyDataBaseHelper(context);
        }
        return sInstance;
    }

    private SqueakyDataBaseHelper(Context context)
    {
        super(context, DB_NAME, null, DB_VERSION);
    }

    @Override
    public void onCreate(SQLiteDatabase db)
    {
        try
        {
            TableUtils.createTables(new SQLiteDatabaseImpl(db), SqueakyMessage.class);
        }
        catch(SQLException e)
        {
            throw new RuntimeException(e);
        }
    }

    @Override
    public void onUpgrade(SQLiteDatabase db, int oldVersion, int newVersion)
    {
        try
        {
            TableUtils.dropTables(new SQLiteDatabaseImpl(db), true, SqueakyMessage.class);
        }
        catch(SQLException e)
        {
            throw new RuntimeException(e);
        }
        onCreate(db);
    }
}
