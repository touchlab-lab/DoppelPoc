package com.littleinc.orm_benchmark;

import android.content.Context;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.view.View;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.TextView;

public class MainActivity extends FragmentActivity implements BenchmarkPresenter.Host {

    private Button             runBenchmark;
    private BenchmarkPresenter benchmarkPresenter;
    private TextView resultOutput;

    @Override
    protected void onCreate(Bundle savedInstanceState)
    {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        runBenchmark = (Button) findViewById(R.id.runBenchmark);
        runBenchmark.setOnClickListener(new View.OnClickListener()
        {
            @Override
            public void onClick(View v)
            {
                benchmarkPresenter.startBenchmark();
            }
        });

        resultOutput = (TextView) findViewById(R.id.resultOutput);

        getWindow().addFlags(WindowManager.LayoutParams.FLAG_KEEP_SCREEN_ON);

        benchmarkPresenter = new BenchmarkPresenter(this, savedInstanceState == null);
    }

    @Override
    protected void onDestroy()
    {
        super.onDestroy();
        benchmarkPresenter.unregister();
    }

    @Override
    public Context getContext()
    {
        return this;
    }

    @Override
    public void buttonEnabled(boolean enabled)
    {
        runBenchmark.setEnabled(enabled);
    }

    @Override
    public void showText(String text)
    {
        resultOutput.setText(text);
    }
}
