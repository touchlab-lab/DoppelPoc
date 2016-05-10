package com.littleinc.orm_benchmark;
import android.content.Context;
import android.os.Handler;
import android.util.Log;

import com.google.j2objc.annotations.WeakOuter;
import com.littleinc.orm_benchmark.sqlite.SQLiteExecutor;
import com.littleinc.orm_benchmark.tasks.OrmBenchmarksTask;
import com.littleinc.orm_benchmark.tasks.RunShitloadsTask;

import co.touchlab.android.threading.eventbus.EventBusExt;
import co.touchlab.android.threading.tasks.TaskQueue;
import co.touchlab.android.threading.tasks.utils.TaskQueueHelper;

/**
 * Created by kgalligan on 4/11/16.
 */
public class BenchmarkPresenter
{

    private final Handler handler;

    public BenchmarkPresenter(Host host, boolean startup)
    {
        this.host = host;
        EventBusExt.getDefault().register(this);
        refreshUi();
        if(startup)
            host.showText("(Output)");

        handler = new Handler();
    }

    public void fillTests()
    {
        final TaskQueue taskQueue = TaskQueue.loadQueueDefault(host.getContext());

        for(int i=0; i<1000; i++)
        {
            Log.e("iii", "Adding");
            taskQueue.execute(new RunShitloadsTask());
        }
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

    int countRun = 0;

    @SuppressWarnings("unused")
    public void onEventMainThread(RunShitloadsTask task)
    {
        countRun++;
        host.showText("Run done: "+ countRun);
        refreshUi();
    }

    private void refreshUi()
    {
        host.buttonEnabled(! benchmarkRunning());
    }

    public void startBenchmark()
    {
        runTest();
//        handler.post(runTheTestRunnable);
    }

    @WeakOuter
    class RunTheTestRunnable implements Runnable
    {

        @Override
        public void run()
        {
            runTest();
            handler.postDelayed(runTheTestRunnable, 20000);
        }
    }

    RunTheTestRunnable runTheTestRunnable = new RunTheTestRunnable();

    public void runTest()
    {
        final boolean benchmarkRunning = benchmarkRunning();
        if(! benchmarkRunning)
        {
            TaskQueue.loadQueueDefault(host.getContext()).execute(new OrmBenchmarksTask());
            //            fillTests();
        }
        refreshUi();
        host.showText("Running...");

        /*host.showText("OK, OK");
        final OrmBenchmarksTask ormBenchmarksTask = new OrmBenchmarksTask();
        ormBenchmarksTask.overlove(host.getContext());
        onEventMainThread(ormBenchmarksTask);*/
    }

    public boolean benchmarkRunning()
    {
        final TaskQueue taskQueue = TaskQueue.loadQueueDefault(host.getContext());
        return TaskQueueHelper
                .hasTasksOfType(taskQueue, OrmBenchmarksTask.class, RunShitloadsTask.class);
    }

    public void unregister()
    {
        EventBusExt.getDefault().unregister(this);
    }


}
