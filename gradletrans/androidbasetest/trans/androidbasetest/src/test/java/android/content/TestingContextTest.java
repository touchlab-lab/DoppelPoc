package android.content;
import android.content.database.DataBaseHelper;
import android.content.database.Message;
import android.os.Looper;

import junit.framework.Assert;

import org.junit.Rule;
import org.junit.Test;
import org.junit.rules.TemporaryFolder;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;

/**
 * Created by kgalligan on 4/7/16.
 */
public class TestingContextTest
{
    @Rule
    public TemporaryFolder testFolder = new TemporaryFolder();

    File first = null;

    @Test
    public void customizedExceptionUsed() throws Throwable
    {
        try
        {
            testPath("customizedExceptionUsed");

            /*final SharedPreferences test = iosContext
                    .getSharedPreferences("test", Context.MODE_PRIVATE);

            test.edit().putString("asdf", "qwert").apply();

            Assert.assertEquals(test.getString("asdf", "fff"), "qwert");

            test.edit().remove("asdf").apply();

            Assert.assertEquals(test.getString("asdf", "fff"), "fff");

            final SharedPreferences.Editor edit = test.edit();
            edit.putBoolean("b", true);
            edit.putBoolean("b2", false);
            edit.putFloat("f", 1.235f);
            edit.putInt("i", 55543);
            edit.putLong("l", 492349238437l);
            edit.apply();

            Assert.assertEquals(test.getBoolean("b", false), true);
            Assert.assertEquals(test.getBoolean("b2", true), false);
            Assert.assertEquals(test.getBoolean("bnone", true), true);
            Assert.assertEquals(test.getBoolean("bnone2", false), false);
            Assert.assertEquals(test.getFloat("f", 1.11f), 1.235f);
            Assert.assertEquals(test.getInt("i", 33), 55543);
            Assert.assertEquals(test.getLong("l", 33), 492349238437l);*/
        }
        catch(Error e)
        {
            System.out.println(e.getMessage());
        }
    }

    @Test
    public void testFolderAgain()
    {
        testPath("testFolderAgain");
    }

    @Test
    public void testBasicDatabase()
    {
        final TestingContext iosContext = new TestingContext(testFolder.getRoot());

        final DataBaseHelper dataBaseHelper = new DataBaseHelper(iosContext, false);

        try
        {
            dataBaseHelper.writeSomeData();
            Assert.assertEquals(Message.count(dataBaseHelper.getWritableDatabase()),
                                (long) DataBaseHelper.INSERT_COUNT);

            dataBaseHelper.close();

            try
            {
                final FileOutputStream fileOutputStream = new FileOutputStream(
                        new File("/Users/kgalligan/temp/iosdb.db"));
                final File databasePath = iosContext.getDatabasePath("sqlite_db");
                byte[] buff = new byte[2048];
                int read = 0;

                final FileInputStream fileInputStream = new FileInputStream(databasePath);
                while((read = fileInputStream.read(buff)) > 0)
                {
                    fileOutputStream.write(buff, 0, read);
                }

                fileOutputStream.close();
                fileInputStream.close();
            }
            catch(IOException e)
            {
                throw new RuntimeException(e);
            }
        }
        catch(RuntimeException e)
        {
            if(!e.getMessage().contains("Stub!"))
                throw e;
        }
    }

    public void testPath(String name)
    {
        final TestingContext iosContext = new TestingContext(testFolder.getRoot());

        final File filesDir = iosContext.getFilesDir();
        System.out.println("Running "+ name +": "+ filesDir.getAbsolutePath());

        if(first == null)
        {
            first = filesDir;
            System.out.println("first == null");
        }
        else
        {
            System.out.println("Original exists: "+ first.exists());
        }
//        System.getProperty("java.vendor")
        System.out.println("java.vendor: " + System.getProperty("java.vendor"));
    }
}
