package com.littleinc.orm_benchmark.sqliteoptimized;

import android.database.sqlite.SQLiteStatement;

import com.littleinc.orm_benchmark.sqlite.SqliteUser;

public class OptimizedUser extends SqliteUser
{

    public void prepareForInsert(final SQLiteStatement insertUser) {
        insertUser.bindString(1, mLastName);
        insertUser.bindString(2, mFirstName);
    }
}
