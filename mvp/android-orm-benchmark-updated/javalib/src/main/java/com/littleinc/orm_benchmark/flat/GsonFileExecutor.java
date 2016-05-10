package com.littleinc.orm_benchmark.flat;

import android.content.Context;
import android.util.Log;

import com.google.gson.Gson;
import com.littleinc.orm_benchmark.BenchmarkExecutable;

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
public class GsonFileExecutor implements BenchmarkExecutable
{

    private static final String TAG = "GsonFileExecutor";
    private File flatdir;
    private Gson gson;
    private long startId;


    @Override
    public String getOrmName()
    {
        return "GsonFile";
    }

    @Override
    public void init(Context context, boolean useInMemoryDb)
    {
        Log.d(TAG, "Creating DataBaseHelper");
        flatdir = new File(context.getFilesDir(), "flatdir");
        flatdir.mkdirs();
        gson = new Gson();
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
        catch(IOException e)
        {
            throw new RuntimeException(e);
        }
    }

    public long makeData() throws IOException
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

        for(Message message : messages)
        {
            final File messageFile = new File(flatdir, "message_" + (startId++) + ".json");
            final String messageJson = gson.toJson(message);
            final FileWriter fileWriter = new FileWriter(messageFile);
            fileWriter.write(messageJson);
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
        catch(IOException e)
        {
            throw new RuntimeException(e);
        }
    }

    public long eatData() throws IOException
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

        for(File f : messageFiles)
        {
            final BufferedReader inp = new BufferedReader(new FileReader(f));
            final Message message = gson.fromJson(inp, Message.class);
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
