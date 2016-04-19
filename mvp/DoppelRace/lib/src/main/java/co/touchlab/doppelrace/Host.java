package co.touchlab.doppelrace;
import android.content.Context;

import co.touchlab.doppelrace.tasks.RunRaceTask;

/**
 * Created by kgalligan on 4/13/16.
 */
public interface Host
{
    Context getContext();
    void postProgress(RunRaceTask.RunRaceProgress progress);
    void raceDone();
}
