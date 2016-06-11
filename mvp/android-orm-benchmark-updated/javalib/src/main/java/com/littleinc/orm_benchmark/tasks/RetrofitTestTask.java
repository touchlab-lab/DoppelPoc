package com.littleinc.orm_benchmark.tasks;
import android.content.Context;
import android.util.Log;

import com.google.j2objc.annotations.AutoreleasePool;
import com.littleinc.orm_benchmark.tasks.data.Convention;

import co.touchlab.android.threading.eventbus.EventBusExt;
import co.touchlab.android.threading.tasks.Task;
import retrofit.RestAdapter;
import retrofit.android.AndroidLog;

/**
 * Created by kgalligan on 5/28/16.
 */
public class RetrofitTestTask extends Task
{
    @Override
    protected void onComplete(Context context)
    {
        EventBusExt.getDefault().post(this);
    }

    @Override
    protected void run(Context context) throws Throwable
    {
        RestAdapter.Builder builder = new RestAdapter.Builder()
                .setLogLevel(RestAdapter.LogLevel.FULL)
                .setLog(new AndroidLog("DroidconApp"))
                .setEndpoint("https://droidcon-server.herokuapp.com/");

        RestAdapter restAdapter = builder.build();

        for(@AutoreleasePool int i=0; i<15; i++)
        {
            callRemote(restAdapter);
            Log.w("asdf", "Called "+ i);
        }
    }

    private void callRemote(RestAdapter restAdapter)
    {
        TestData testData = restAdapter.create(TestData.class);
        Convention convention = testData.getScheduleData(28750);
        Log.w("asdf", convention.description);
    }

    @Override
    protected boolean handleError(Context context, Throwable e)
    {
        return false;
    }
}
