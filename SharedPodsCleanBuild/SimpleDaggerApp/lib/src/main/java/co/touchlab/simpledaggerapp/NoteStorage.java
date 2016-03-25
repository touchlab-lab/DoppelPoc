package co.touchlab.simpledaggerapp;
import android.content.ContentValues;
import android.content.Context;
import android.database.DatabaseUtils;
import android.database.sqlite.SQLiteDatabase;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;

import com.google.gson.Gson;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.FilenameFilter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import java.util.Random;

import javax.inject.Inject;

import co.touchlab.android.threading.eventbus.EventBusExt;
import co.touchlab.android.threading.tasks.TaskQueue;
import co.touchlab.android.threading.utils.UiThreadContext;
import co.touchlab.simpledaggerapp.conference.ConferenceDataHelper;
import co.touchlab.simpledaggerapp.conference.ConferenceDayHolder;
import co.touchlab.simpledaggerapp.conference.Convention;
import co.touchlab.squeaky.dao.Dao;
import retrofit.RestAdapter;

/**
 * Created by kgalligan on 3/6/16.
 */
public class NoteStorage
{
    public static final String          NOTE_PREFIX = "note_";
    private final       PlatformContext platformContext;

    //    private Handler handler;

    @Inject
    public NoteStorage(PlatformContext platformContext)
    {
        this.platformContext = platformContext;
    }

    public void init()
    {
        final List<Note> notes = allNotes();
        final int arraySize = notes.size();
        if(arraySize == 0)
        {
            Note note = new Note();
            note.setNote("asdf");
            save(note);

            Note note1 = new Note();
            note1.setNote("qwert");
            save(note1);
        }


    }

    public void onEventMainThread(DbTestTask testTask)
    {
        Log.w("1235", "Hello! In Main? "+ UiThreadContext.isInUiThread());
    }

    public void save(Note note)
    {
        try
        {
            if(note.getId() == null) note.setId(System.currentTimeMillis());

            final File savedFile = noteFile(note);
            final String jsonString = new Gson().toJson(note);
            final BufferedWriter bufferedWriter = new BufferedWriter(new FileWriter(savedFile));
            bufferedWriter.write(jsonString);
            bufferedWriter.close();
        }
        catch(IOException e)
        {
            throw new RuntimeException(e);
        }
    }

    public void remove(Note note)
    {
        noteFile(note).delete();
    }

    public List<Note> allNotes()
    {
        try
        {
            final String localDir = platformContext.storageDir();
            final File storageDir = new File(localDir);
            final File[] fileList = storageDir.listFiles(new FilenameFilter()
            {
                @Override
                public boolean accept(File dir, String name)
                {
                    return name.startsWith(NOTE_PREFIX);
                }
            });

            List<Note> notes = new ArrayList<>(fileList.length);

            final Gson gson = new Gson();

            for(File noteFile : fileList)
            {
                final BufferedReader bufferedReader = new BufferedReader(new FileReader(noteFile));
                //Yes, this is bad. Being lazy
                final String noteString = bufferedReader.readLine();
                notes.add(gson.fromJson(noteString, Note.class));
            }

            return notes;
        }
        catch(IOException e)
        {
            throw new RuntimeException(e);
        }
    }

    public ConferenceDayHolder[] toConventionDisplay(String jsonData)
    {
        final Convention convention = new Gson().fromJson(jsonData, Convention.class);
        return ConferenceDataHelper.listDays(convention);
    }

    private File findConventionData()
    {
        final File file = new File(platformContext.storageDir(), "convention.json");
        file.getParentFile().mkdirs();//Just in case. Shouldn't be an issue.
        return file;
    }

    private Convention loadCachedConventionData()
    {
        final File conventionData = findConventionData();
        if(!conventionData.exists())
            return null;

        try
        {

            final FileReader fileReader = new FileReader(conventionData);
            final Convention convention = new Gson()
                    .fromJson(fileReader, Convention.class);
            fileReader.close();
            return convention;
        }
        catch(IOException e)
        {
            throw new RuntimeException(e);
        }
    }

    private void saveConventionData(Convention convention)
    {
        try
        {
            final File file = findConventionData();
            final File tempFile = new File(file.getParentFile(), file.getName() + ".tmp");
            final String json = new Gson().toJson(convention);
            final FileWriter fileWriter = new FileWriter(tempFile);
            fileWriter.append(json);
            fileWriter.close();
            tempFile.renameTo(file);
        }
        catch(IOException e)
        {
            throw new RuntimeException(e);
        }
    }
//
//    class LoopingRunnable implements Runnable
//    {
//        int count =0;
//        long last = System.currentTimeMillis();
//
//        @Override
//        public void run()
//        {
//            if(count < 50)
//            {
//                final long now = System.currentTimeMillis();
//                logRun("Run: "+ count +"/time: "+ (now - last));
//                last = now;
//                count++;
//                handler.postDelayed(this, 2);
//            }
//            else
//            {
//                logRun("done");
//            }
//        }
//    }

    native void logRun(String s)/*-[
        if([NSThread isMainThread])
    {
        NSLog(@"Main");
        NSLog(s);
    }
    else{
                NSLog(@"NOt main");
    }
    ]-*/;
    public void callConferenceUpdate()
    {
        try
        {
            final Convention convention = loadCachedConventionData();
            if(convention != null)
                platformContext.loadCallback(ConferenceDataHelper.listDays(convention));

            RestAdapter.Builder builder = new RestAdapter.Builder();
            builder.setEndpoint("https://droidcon-server.herokuapp.com/");
            final RestAdapter restAdapter = builder.build();
            final RefreshScheduleDataRequest refreshScheduleDataRequest = restAdapter
                    .create(RefreshScheduleDataRequest.class);

            Looper.prepareMainLooper();

            final Context context = platformContext.appContext();

            List<String> heyo = new LinkedList<>();

            for(int i=0; i<20000; i++)
            {
                heyo.add("asdf "+ i);
            }

            final TaskQueue taskQueue = TaskQueue.loadQueueDefault(context);
            taskQueue
                     .execute(new DbTestTask(platformContext));

            EventBusExt.getDefault().register(this);

//            handler = new Handler();
            /*handler.postDelayed(new LoopingRunnable(), 2000);

            new Thread(){
                @Override
                public void run()
                {
                    try
                    {
                        final Convention conv = refreshScheduleDataRequest.getScheduleData(28750);
                        handler.post(new Runnable()
                        {
                            @Override
                            public void run()
                            {
                                if(conv != null) saveConventionData(conv);
                                platformContext.loadCallback(ConferenceDataHelper.listDays(conv));
                            }
                        });
                    }
                    catch(Exception e)
                    {
                        throw new RuntimeException(e);
                    }
                }
            }.start();*/

            /*refreshScheduleDataRequest.getScheduleData(28750, new Callback<Convention>()
            {
                @Override
                public void success(Convention convention, Response response)
                {
                    if(convention != null)
                        saveConventionData(convention);
                    platformContext.loadCallback(ConferenceDataHelper.listDays(convention));
                }

                @Override
                public void failure(RetrofitError error)
                {
                    final StringWriter sw = new StringWriter();
                    PrintWriter pw = new PrintWriter(sw);
                    error.printStackTrace(pw);
                    pw.close();
                    final StringBuilder sb = new StringBuilder();
                    sb.append("Message: ").append(error.getMessage()).append("\n").append("Kind: ")
                      .append(error.getKind().name()).append("\n").append(
                            sw.toString());
                    final String allOut = sb.toString();
                    System.out.println(allOut);
                }
            });*/


        }
        catch(Exception e)
        {
            throw new RuntimeException(e);
        }
    }



    private File noteFile(Note note)
    {
        return new File(new File(platformContext.storageDir()), noteFilename(note));
    }

    private String noteFilename(Note note)
    {
        return NOTE_PREFIX + note.getId() + ".json";
    }


}
