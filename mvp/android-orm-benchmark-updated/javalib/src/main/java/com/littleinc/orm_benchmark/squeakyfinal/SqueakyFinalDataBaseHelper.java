package com.littleinc.orm_benchmark.squeakyfinal;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;

import co.touchlab.squeaky.db.sqlite.SqueakyOpenHelper;

public class SqueakyFinalDataBaseHelper extends SqueakyOpenHelper
{

    // DB CONFIG
    private static int DB_VERSION = 1;

    private static String DB_NAME = "squeaky_final_db";

    private static SqueakyFinalDataBaseHelper sInstance;

    public static void init(Context context, boolean isInMemory)
    {
        sInstance = new SqueakyFinalDataBaseHelper(context, isInMemory);
    }

    public static SqueakyFinalDataBaseHelper getInstance()
    {
        if(sInstance == null)
        {
            throw new RuntimeException();
        }
        return sInstance;
    }

    private SqueakyFinalDataBaseHelper(Context context, boolean isInMemory)
    {
        super(context, (isInMemory
                ? null
                : DB_NAME), null, DB_VERSION);
    }

    @Override
    public void onCreate(SQLiteDatabase db) {
    }

    @Override
    public void onUpgrade(SQLiteDatabase db,
            int oldVersion, int newVersion) {
    }
}
