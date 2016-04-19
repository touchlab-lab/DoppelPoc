package com.littleinc.orm_benchmark;
import android.content.Context;

import com.littleinc.orm_benchmark.tasks.OrmBenchmarksTask;

import co.touchlab.android.threading.eventbus.EventBusExt;
import co.touchlab.android.threading.tasks.TaskQueue;
import co.touchlab.android.threading.tasks.utils.TaskQueueHelper;

/**
 * Created by kgalligan on 4/11/16.
 */
public class BenchmarkPresenter
{
    public BenchmarkPresenter(Host host)
    {
        this.host = host;
        EventBusExt.getDefault().register(this);
    }

    public interface Host
    {
        void benchmarkResults(String results);
        Context getContext();
    }

    private final Host host;

    public void onEventMainThread(OrmBenchmarksTask task)
    {
        host.benchmarkResults(task.resultString);
    }

    public void startBenchmark()
    {
        final boolean benchmarkRunning = benchmarkRunning();
        if(! benchmarkRunning)
        {
            TaskQueue.loadQueueDefault(host.getContext()).execute(new OrmBenchmarksTask());
        }
    }

    public boolean benchmarkRunning()
    {
        final TaskQueue taskQueue = TaskQueue.loadQueueDefault(host.getContext());
        return TaskQueueHelper.hasTasksOfType(taskQueue, OrmBenchmarksTask.class);
    }

    public void unregister()
    {
        EventBusExt.getDefault().unregister(this);
    }
}
