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
    public BenchmarkPresenter(Host host, boolean startup)
    {
        this.host = host;
        EventBusExt.getDefault().register(this);
        refreshUi();
        if(startup)
            host.showText("(Output)");
    }

    public interface Host
    {
        Context getContext();
        void buttonEnabled(boolean enabled);
        void showText(String text);
    }

    private final Host host;

    @SuppressWarnings("unused")
    public void onEventMainThread(OrmBenchmarksTask task)
    {
        host.showText(task.resultString);
        refreshUi();
    }

    @SuppressWarnings("unused")
    public void onEventMainThread(OrmBenchmarksTask.BenchmarkMessage message)
    {
        host.showText(message.message);
    }

    private void refreshUi()
    {
        host.buttonEnabled(! benchmarkRunning());
    }

    public void startBenchmark()
    {
        final boolean benchmarkRunning = benchmarkRunning();
        if(! benchmarkRunning)
        {
            TaskQueue.loadQueueDefault(host.getContext()).execute(new OrmBenchmarksTask());
        }
        refreshUi();
        host.showText("Running...");
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
