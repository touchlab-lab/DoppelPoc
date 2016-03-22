package android.content;
import android.annotation.Nullable;
import android.database.DatabaseErrorHandler;
import android.database.sqlite.SQLiteDatabase;
import android.os.Looper;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;

/**
 * Created by kgalligan on 3/21/16.
 */
public class IOSContext extends Context
{
    public static final String DATABASES = "databases";

    @Override
    public Looper getMainLooper()
    {
        return Looper.getMainLooper();
    }

    @Override
    public FileInputStream openFileInput(String name) throws FileNotFoundException
    {
        return new FileInputStream(findLocalFile(name));
    }

    /**
     * TODO: DO SOMETHING WITH MODE
     * @param name The name of the file to open; can not contain path
     *            separators.
     * @param mode Operating mode. Use 0 or {@link #MODE_PRIVATE} for the
     *            default operation, {@link #MODE_APPEND} to append to an
     *            existing file, {@link #MODE_WORLD_READABLE} and
     *            {@link #MODE_WORLD_WRITEABLE} to control permissions.
     * @return
     * @throws FileNotFoundException
     */
    @Override
    public FileOutputStream openFileOutput(String name, int mode) throws FileNotFoundException
    {
        return new FileOutputStream(findLocalFile(name));
    }

    private File findLocalFile(String name)
    {
        return new File(getFilesDir(), name);
    }

    @Override
    public boolean deleteFile(String name)
    {
        final File localFile = findLocalFile(name);
        return localFile.delete();
    }

    @Override
    public File getFileStreamPath(String name)
    {
        return findLocalFile(name);
    }

    @Override
    public File getFilesDir()
    {
        return getDir("files", MODE_PRIVATE);
    }

    private File getRootDir()
    {
        return new File(System.getenv("HOME"));
    }

    @Override
    public File getExternalFilesDir(@Nullable String type)
    {
        throw new UnsupportedOperationException();
    }

    @Override
    public File[] getExternalFilesDirs(String type)
    {
        throw new UnsupportedOperationException();
    }

    @Override
    public File getCacheDir()
    {
        return getDir("cache", MODE_PRIVATE);
    }

    @Override
    public String[] fileList()
    {
        throw new UnsupportedOperationException();
    }

    @Override
    public File getDir(String name, int mode)
    {
        final File rootDir = getRootDir();
        final File filesDir = new File(rootDir, name);
        filesDir.mkdirs();
        return filesDir;
    }

    @Override
    public SQLiteDatabase openOrCreateDatabase(String name, int mode, SQLiteDatabase.CursorFactory factory)
    {
        return SQLiteDatabase.openOrCreateDatabase(getDatabasePath(name), factory);
    }

    @Override
    public SQLiteDatabase openOrCreateDatabase(String name, int mode, SQLiteDatabase.CursorFactory factory, @Nullable DatabaseErrorHandler errorHandler)
    {
        return SQLiteDatabase.openOrCreateDatabase(getDatabasePath(name).getPath(), factory, errorHandler);
    }

    @Override
    public boolean deleteDatabase(String name)
    {
        return getDatabasePath(name).delete();
    }

    @Override
    public File getDatabasePath(String name)
    {
        final File dbDir = getDir(DATABASES, MODE_PRIVATE);
        final File file = new File(dbDir, name);
        return file;
    }

    @Override
    public String[] databaseList()
    {
        return getDir(DATABASES, MODE_PRIVATE).list();
    }
}
