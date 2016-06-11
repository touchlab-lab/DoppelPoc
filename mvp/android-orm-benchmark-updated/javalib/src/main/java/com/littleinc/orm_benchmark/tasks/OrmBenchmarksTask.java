package com.littleinc.orm_benchmark.tasks;
import android.content.Context;
import android.util.Log;

import com.google.j2objc.annotations.AutoreleasePool;
import com.littleinc.orm_benchmark.BenchmarkExecutable;
import com.littleinc.orm_benchmark.sqlite.SQLiteExecutor;
import com.littleinc.orm_benchmark.sqliteoptimized.OptimizedSQLiteExecutor;
import com.littleinc.orm_benchmark.squeaky.SqueakyExecutor;
import com.littleinc.orm_benchmark.squeakyfinal.SqueakyFinalExecutor;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

import co.touchlab.android.threading.eventbus.EventBusExt;
import co.touchlab.android.threading.tasks.Task;

/**
 * Created by kgalligan on 10/28/15.
 */
public class OrmBenchmarksTask extends Task
{
    public static final  String  TAG              = "OrmBenchmarksTask";
    private static final boolean USE_IN_MEMORY_DB = false;
    private static final int     NUM_ITERATIONS   = 1;

    private BenchmarkExecutable[] mOrms = new BenchmarkExecutable[] {
            //            new SqueakyExecutor()
            //            new GsonFileExecutor(),
            //            new JsonFileExecutor(),

            new SqueakyExecutor(), new SqueakyFinalExecutor(), new OptimizedSQLiteExecutor(), new SQLiteExecutor()//, new CupboardExecutor(), new GreenDaoExecutor()


            //            new SquidbExecutor(),
            //            new SugarOrmExecutor(),
            //            new DBFlowExecutor(),

            //            new RealmExecutor(),
            //                    new RequeryExecutor(),
            //                    new ORMLiteExecutor(),

    };

    public String resultString;

    Map<String, Map<String, Long>> benchmarkResults = new TreeMap<>();

    enum BenchmarkTask
    {
        CREATE_DB,
        WRITE_DATA,
        READ_DATA,
        DROP_DB;
    }

    @Override
    protected void run(Context context) throws Throwable
    {
        for(BenchmarkExecutable orm : mOrms)
        {
            orm.init(context, USE_IN_MEMORY_DB);
            Log.w(TAG, orm.getOrmName() + " init");
        }

        List<BenchmarkExecutable> failed = new ArrayList<>();

        new InnerBaker().run();

        for(@AutoreleasePool int i = 0; i < NUM_ITERATIONS; i++)
        {
            StringBuilder sb = new StringBuilder();

            for(BenchmarkExecutable item : mOrms)
            {
                for(BenchmarkTask task : BenchmarkTask.values())
                {
                    long result = 0;

                    Log.w(TAG, item.getOrmName() + "-" + task.name() + " start");

                    try
                    {
                        switch(task)
                        {
                            case CREATE_DB:
                                result = item.createDbStructure();
                                break;
                            case DROP_DB:
                                result = item.dropDb();
                                break;
                            case READ_DATA:
                                result = item.readWholeData();
                                break;
                            case WRITE_DATA:
                                result = item.writeWholeData();
                                break;
                        }
                    }
                    catch(Exception e)
                    {
                        Log.e("Crash!", "", e);
                        result = Long.MIN_VALUE;
                        failed.add(item);
                    }

                    Log.w(TAG, item.getOrmName() + "-" + task.name() +" end "+ result);
                    addProfilerResult(item.getOrmName(), task, result);
                }

                sb.append("Finished: ").append(item.getOrmName()).append("\n");

                if(item instanceof SQLiteExecutor)
                    ((SQLiteExecutor)item).cleanup();

                EventBusExt.getDefault().post(new BenchmarkMessage(sb.toString()));
            }
        }

        buildResultString(false);

        Log.w("RESULTS", resultString);
    }

    public static class BenchmarkMessage
    {
        public final String message;

        public BenchmarkMessage(String message)
        {
            this.message = message;
        }
    }

    private void buildResultString(boolean outputHtml)
    {

        StringBuilder sb = new StringBuilder();

        BenchmarkTask[] bTasks = new BenchmarkTask[]{BenchmarkTask.WRITE_DATA, BenchmarkTask.READ_DATA};
        for(BenchmarkTask bTask : bTasks)
        {
            if(outputHtml)
                sb.append("<b>").append(bTask.name()).append("</b>").append("<br/>");
            else
                sb.append("\n").append(bTask.name()).append("\n");

            Map<String, Long> stringLongMap = benchmarkResults.get(bTask.name());
            if(stringLongMap != null)
            {
                for(String ormName : stringLongMap.keySet())
                {

                    long result = stringLongMap.get(ormName);
                    double printResult = ((double) result / (double) NUM_ITERATIONS) / ((double) 1000000);
                    sb.append(ormName).append(" - ");

                    if(printResult < 0)
                    {
                        sb.append("(crashed)");
                    }
                    else
                    {
                        sb.append(Math.round(printResult)).append("ms");
                    }

                    if(outputHtml)
                        sb.append("<br/>");
                    else
                        sb.append("\n");

                    Log.w("FOR_SPREADSHEET", ormName + "," + Math.round(printResult));
                }
            }
        }

        resultString = sb.toString();
    }

    private void addProfilerResult(String ormName, BenchmarkTask task, long result)
    {
        Map<String, Long> taskMap = benchmarkResults.get(task.name());
        if(taskMap == null)
        {
            taskMap = new TreeMap<>();
            benchmarkResults.put(task.name(), taskMap);
        }
        Long storedResult = taskMap.get(ormName);
        if(storedResult == null)
        {
            storedResult = 0l;
        }
        long value = result + storedResult;
        taskMap.put(ormName, value);
        Log.w(TAG, "adding "+ task.name() +"-"+ ormName+"-"+value);
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

    private class InnerBaker implements Runnable
    {
        @Override
        public void run()
        {
            OrmBenchmarksTask.this.logMe("asdf");
        }
    }

    private void logMe(String asdf)
    {
        Log.w("asdf", asdf);
    }
}
