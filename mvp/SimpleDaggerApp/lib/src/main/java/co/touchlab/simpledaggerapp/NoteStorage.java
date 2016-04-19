package co.touchlab.simpledaggerapp;
import android.content.Context;
import android.os.Looper;

import com.google.gson.Gson;

import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.StringWriter;

import javax.inject.Inject;

import co.touchlab.android.threading.eventbus.EventBusExt;
import co.touchlab.simpledaggerapp.conference.ConferenceDataHelper;
import co.touchlab.simpledaggerapp.conference.ConferenceDayHolder;
import co.touchlab.simpledaggerapp.conference.Convention;
import retrofit.Callback;
import retrofit.RestAdapter;
import retrofit.RetrofitError;
import retrofit.client.Response;

/**
 * Created by kgalligan on 3/6/16.
 */
public class NoteStorage
{
    private final       PlatformContext platformContext;

    @Inject
    public NoteStorage(PlatformContext platformContext)
    {
        this.platformContext = platformContext;
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

//            EventBusExt.getDefault().register(this);

            refreshScheduleDataRequest.getScheduleData(28750, new Callback<Convention>()
            {
                @Override
                public void success(Convention convention, Response response)
                {
                    if(convention != null) saveConventionData(convention);
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
                      .append(error.getKind().name()).append("\n").append(sw.toString());
                    final String allOut = sb.toString();
                    System.out.println(allOut);
                }
            });
        }
        catch(Exception e)
        {
            throw new RuntimeException(e);
        }
    }

}
