package com.littleinc.orm_benchmark.sqliteoptimized;

import android.database.sqlite.SQLiteStatement;

public class User extends com.littleinc.orm_benchmark.sqlite.User
{

    public void prepareForInsert(final SQLiteStatement insertUser) {
        insertUser.bindString(1, mLastName);
        insertUser.bindString(2, mFirstName);
    }
}
