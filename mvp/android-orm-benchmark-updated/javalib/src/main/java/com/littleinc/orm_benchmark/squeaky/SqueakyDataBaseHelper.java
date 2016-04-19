package com.littleinc.orm_benchmark.squeaky;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;

import co.touchlab.squeaky.db.sqlite.SqueakyOpenHelper;

public class SqueakyDataBaseHelper extends SqueakyOpenHelper
{

    // DB CONFIG
    private static int DB_VERSION = 1;

    private static String DB_NAME = "squeaky2_db";

    private static SqueakyDataBaseHelper sInstance;

    public static void init(Context context, boolean isInMemory)
    {
        sInstance = new SqueakyDataBaseHelper(context, isInMemory);
    }

    public static SqueakyDataBaseHelper getInstance()
    {
        if(sInstance == null)
        {
            throw new RuntimeException();
        }
        return sInstance;
    }

    private SqueakyDataBaseHelper(Context context, boolean isInMemory) {
        super(context, (isInMemory ? null : DB_NAME), null, DB_VERSION);
    }

    @Override
    public void onCreate(SQLiteDatabase db) {
    }

    @Override
    public void onUpgrade(SQLiteDatabase db,
            int oldVersion, int newVersion) {
    }
}
