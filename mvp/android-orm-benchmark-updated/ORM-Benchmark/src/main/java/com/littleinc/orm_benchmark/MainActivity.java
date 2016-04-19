package com.littleinc.orm_benchmark;

import android.app.AlertDialog;
import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.support.v4.app.DialogFragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentTransaction;
import android.text.Html;
import android.util.Log;
import android.view.View;
import android.view.WindowManager;
import android.widget.Button;

import com.littleinc.orm_benchmark.BenchmarkExecutable.Task;
import com.littleinc.orm_benchmark.realm.Message;
import com.littleinc.orm_benchmark.tasks.OrmBenchmarksTask;

import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;


import co.touchlab.android.threading.eventbus.EventBusExt;
import co.touchlab.android.threading.tasks.TaskQueue;
import co.touchlab.android.threading.tasks.utils.TaskQueueHelper;
import io.realm.Realm;
import io.realm.RealmResults;

public class MainActivity extends FragmentActivity implements BenchmarkPresenter.Host {

    public static final String BENCHMARK_RESULTS = "BENCHMARK_RESULTS";
    private Button mShowResultsBtn;

    private boolean mWasInitialized = false;

    private Map<String, Map<Task, List<Long>>> mGlobalResults;

    private String results;
    private Button runBenchmark;
    private BenchmarkPresenter benchmarkPresenter;

    @Override
    protected void onCreate(Bundle savedInstanceState)
    {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        if(savedInstanceState != null)
        {
            results = savedInstanceState.getString(BENCHMARK_RESULTS);
        }

        mGlobalResults = new HashMap<>();
        runBenchmark = (Button) findViewById(R.id.runBenchmark);
        runBenchmark.setOnClickListener(new View.OnClickListener()
        {
            @Override
            public void onClick(View v)
            {
                runBenchmark();
            }
        });
        mShowResultsBtn = (Button) findViewById(R.id.show_results_btn);
        mShowResultsBtn.setOnClickListener(new View.OnClickListener()
        {
            @Override
            public void onClick(View v)
            {
                showGlobalResults();
            }
        });

        getWindow().addFlags(WindowManager.LayoutParams.FLAG_KEEP_SCREEN_ON);

        benchmarkPresenter = new BenchmarkPresenter(this);

        refreshUi();
    }

    @Override
    protected void onDestroy()
    {
        super.onDestroy();
        benchmarkPresenter.unregister();
    }

    void refreshUi()
    {
        if(benchmarkRuning())
        {
            mShowResultsBtn.setEnabled(false);
            runBenchmark.setEnabled(false);
        }
        else
        {
            runBenchmark.setEnabled(true);
            mShowResultsBtn.setEnabled(results != null);
        }
    }

    public void runBenchmark()
    {
        benchmarkPresenter.startBenchmark();

        refreshUi();
    }

    private boolean benchmarkRuning()
    {
        return benchmarkPresenter.benchmarkRunning();
    }

    public void showGlobalResults()
    {
        ResultDialog dialog = ResultDialog.newInstance(R.string.results_title, results);
        FragmentTransaction tx = getSupportFragmentManager().beginTransaction();
        tx.add(dialog, ResultDialog.class.getSimpleName());
        tx.commit();
    }

    @Override
    protected void onSaveInstanceState(Bundle outState)
    {
        super.onSaveInstanceState(outState);
        outState.putString(BENCHMARK_RESULTS, results);
    }

    /*@SuppressWarnings("unused")
    public void onEventMainThread(OrmBenchmarksTask task)
    {
        results = task.resultString;
        refreshUi();

        Realm realm = Realm.getInstance(this);
        long start = System.currentTimeMillis();
        RealmResults<Message> result = realm.where(Message.class).findAll();
        Iterator<Message> iterator = result.iterator();
        while(iterator.hasNext())
        {
            Message next = iterator.next();
            long channelId = next.getChannelId();
        }
        Log.w("asdf", "select time: "+ (System.currentTimeMillis() - start));

    }*/

    @Override
    public void benchmarkResults(String results)
    {
        this.results = results;
        refreshUi();
    }

    @Override
    public Context getContext()
    {
        return this;
    }

    public static class ResultDialog extends DialogFragment
    {

        private static String TITLE_RES_ID = "title_res_id";

        private static String MESSAGE = "message";

        public static ResultDialog newInstance(int titleResId, String message)
        {
            ResultDialog dialog = new ResultDialog();

            Bundle args = new Bundle();
            args.putString(MESSAGE, message);
            args.putInt(TITLE_RES_ID, titleResId);
            dialog.setArguments(args);

            return dialog;
        }

        @Override
        public Dialog onCreateDialog(Bundle savedInstanceState)
        {
            AlertDialog.Builder builder = new AlertDialog.Builder(getActivity());
            return builder.setTitle(getArguments().getInt(TITLE_RES_ID)).setMessage(Html.fromHtml(getArguments().getString(MESSAGE)))
                    .create();
        }
    }
}
