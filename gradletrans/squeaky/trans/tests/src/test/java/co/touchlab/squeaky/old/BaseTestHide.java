package co.touchlab.squeaky.old;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;

import java.sql.SQLException;

import co.touchlab.squeaky.SuperBaseTestHide;
import co.touchlab.squeaky.db.sqlite.SQLiteDatabaseImpl;
import co.touchlab.squeaky.db.sqlite.SqueakyOpenHelper;
import co.touchlab.squeaky.table.TableUtils;

/**
 * Created by kgalligan on 7/19/15.
 */
public class BaseTestHide extends SuperBaseTestHide
{
	SimpleHelper createHelper(Class... c)
	{
		return new SimpleHelper(getApp(), getClass().getSimpleName() + ".db", c);
	}

	public static class SimpleHelper extends SqueakyOpenHelper
	{
		Class[] managingClasses;

		public SimpleHelper(Context context, String name, Class... managingClasses)
		{
			super(context, name, null, 1);
			this.managingClasses = managingClasses;
		}

		@Override
		public void onCreate(SQLiteDatabase sqLiteDatabase)
		{
			try
			{
				TableUtils.createTables(new SQLiteDatabaseImpl(sqLiteDatabase), managingClasses);
			}
			catch (SQLException e)
			{
				throw new RuntimeException(e);
			}
		}

		@Override
		public void onUpgrade(SQLiteDatabase sqLiteDatabase, int oldVersion, int newVersion)
		{
			Class[] reversed = new Class[managingClasses.length];

			for (int i = 0; i < managingClasses.length; i++)
			{
				reversed[(managingClasses.length - i) - 1] = managingClasses[i];
			}
			try
			{
				TableUtils.dropTables(new SQLiteDatabaseImpl(sqLiteDatabase), true, reversed);
			}
			catch (SQLException e)
			{
				throw new RuntimeException(e);
			}
		}
	}
}
