package com.littleinc.orm_benchmark.flat;

import android.content.Context;
import android.util.Log;

import com.google.gson.Gson;
import com.google.j2objc.annotations.AutoreleasePool;
import com.littleinc.orm_benchmark.BenchmarkExecutable;

import org.apache.commons.io.IOUtils;
import org.json.JSONException;
import org.json.JSONObject;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileFilter;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 * An unoptimized set of SQLite operations for reading and writing the test database objects.
 * <p>
 * See {@link com.littleinc.orm_benchmark.sqliteoptimized.OptimizedSQLiteExecutor} for optimized
 * versions of these SQLite operations.
 */
public class JsonFileExecutor implements BenchmarkExecutable
{

    private static final String TAG = "JsonFileExecutor";
    private File flatdir;
    private long startId;


    @Override
    public String getOrmName()
    {
        return "JsonFile";
    }

    @Override
    public void init(Context context, boolean useInMemoryDb)
    {
        Log.d(TAG, "Creating DataBaseHelper");
        flatdir = new File(context.getFilesDir(), "flatdir");
        flatdir.mkdirs();
        startId = System.currentTimeMillis();
    }

    public void cleanup()
    {
    }

    @Override
    public long createDbStructure() throws SQLException
    {
        return 0l;
    }

    @Override
    public long writeWholeData() throws SQLException
    {
        try
        {
            return makeData();
        }
        catch(Exception e)
        {
            throw new RuntimeException(e);
        }
    }

    @AutoreleasePool public long makeData() throws IOException, JSONException
    {
        /*List<User> users = new ArrayList<>();
        for(int i = 0; i < NUM_USER_INSERTS; i++)
        {
            User newUser = new User();
            newUser.fillUserWithRandomData();
            users.add(newUser);
        }*/

        List<Message> messages = new ArrayList<>();
        for(int i = 0; i < NUM_MESSAGE_INSERTS; i++)
        {
            Message newMessage = new Message();
            newMessage.fillMessageWithRandomData(i, NUM_USER_INSERTS);
            messages.add(newMessage);
        }

        long start = System.nanoTime();

        /*for(User user : users)
        {
            final File userFile = new File(flatdir, "user_" + (startId++) + ".json");
            final String userJson = gson.toJson(user);
            final FileWriter fileWriter = new FileWriter(userFile);
            fileWriter.write(userJson);
            fileWriter.close();
        }
        Log.d(TAG, "Done, wrote " + NUM_USER_INSERTS + " users");*/

        for(@AutoreleasePool Message message : messages)
        {
            final File messageFile = new File(flatdir, "message_" + (startId++) + ".json");
            final JSONObject jsonObject = new JSONObject();
            message.writeJson(jsonObject);
            final FileWriter fileWriter = new FileWriter(messageFile);
            fileWriter.write(jsonObject.toString());
            fileWriter.close();
        }
        Log.d(TAG, "Done, wrote " + NUM_MESSAGE_INSERTS + " messages");

        return System.nanoTime() - start;
    }

    @Override
    public long readWholeData() throws SQLException
    {
        try
        {
            return eatData();
        }
        catch(Exception e)
        {
            throw new RuntimeException(e);
        }
    }

    @AutoreleasePool public long eatData() throws IOException, JSONException
    {
        long start = System.nanoTime();

        List<Message> readMessages = new ArrayList<>();

        final File[] messageFiles = flatdir.listFiles(new FileFilter()
        {
            @Override
            public boolean accept(File pathname)
            {
                return pathname.getName().startsWith("message_");
            }
        });

        for(@AutoreleasePool File f : messageFiles)
        {
            final BufferedReader inp = new BufferedReader(new FileReader(f));
            final Message message = new Message();
            final JSONObject jsonObject = new JSONObject(IOUtils.toString(inp));
            message.readJson(jsonObject);
            readMessages.add(message);
            inp.close();
        }

        Log.d(TAG, "Read, " + readMessages.size() + " rows");
        return System.nanoTime() - start;
    }

    @Override
    public long dropDb() throws SQLException
    {
        long start = System.nanoTime();

        final File[] files = flatdir.listFiles();
        for(File file : files)
        {
            file.delete();
        }

        return System.nanoTime() - start;
    }
}
