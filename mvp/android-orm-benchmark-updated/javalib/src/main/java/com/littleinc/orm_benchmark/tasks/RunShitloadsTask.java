package com.littleinc.orm_benchmark.tasks;
import android.content.Context;
import android.util.Log;

import java.util.ArrayList;
import java.util.List;

import co.touchlab.android.threading.eventbus.EventBusExt;
import co.touchlab.android.threading.tasks.Task;

/**
 * Created by kgalligan on 5/5/16.
 */
public class RunShitloadsTask extends Task
{

    private List<String> testVals;

    @Override
    protected void run(Context context) throws Throwable
    {
        testVals = new ArrayList<>();
        Log.e("iii", "Running");
        for(int i=0; i<5000; i++)
        {
            testVals.add("Testing testing testing");
        }
    }

    @Override
    protected boolean handleError(Context context, Throwable e)
    {
        return false;
    }

    @Override
    protected void onComplete(Context context)
    {
        EventBusExt.getDefault().post(this);
    }
}
