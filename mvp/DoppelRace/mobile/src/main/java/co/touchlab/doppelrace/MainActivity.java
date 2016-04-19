package co.touchlab.doppelrace;

import android.content.Context;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.TextView;

import java.text.DecimalFormat;

import co.touchlab.doppelrace.tasks.RunRaceTask;

public class MainActivity extends AppCompatActivity implements Host {

    private RacePresenter racePresenter;
    private View          startRaceButton;
    private TextView      progressText;
    private TextView      messageText;


    @Override
    protected void onCreate(Bundle savedInstanceState)
    {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        startRaceButton = findViewById(R.id.startRace);
        progressText = (TextView) findViewById(R.id.progress);
        messageText = (TextView) findViewById(R.id.message);

        startRaceButton.setOnClickListener(new View.OnClickListener()
        {
            @Override
            public void onClick(View v)
            {
                racePresenter.startRace();
                refreshUi();
            }
        });

        racePresenter = new RacePresenter(this);

        refreshUi();
    }

    private void refreshUi()
    {
        final boolean raceRunning = racePresenter.isRaceRunning();
        startRaceButton.setEnabled(!raceRunning);
    }

    @Override
    public Context getContext()
    {
        return this;
    }

    @Override
    public void postProgress(RunRaceTask.RunRaceProgress progress)
    {
        progressText.setText(Math.round(progress.percentDone * 100) + "%");
        messageText.setText(progress.message);
    }

    @Override
    public void raceDone()
    {
        progressText.setText("100%");
        messageText.setText("Done!");
        refreshUi();
    }
}
