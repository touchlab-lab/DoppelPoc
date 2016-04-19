package co.touchlab.doppelrace;
import co.touchlab.android.threading.eventbus.EventBusExt;
import co.touchlab.android.threading.tasks.TaskQueue;
import co.touchlab.android.threading.tasks.utils.TaskQueueHelper;
import co.touchlab.doppelrace.tasks.RunRaceTask;

/**
 * Created by kgalligan on 4/13/16.
 */
public class RacePresenter
{
    private final Host host;

    public RacePresenter(Host host)
    {
        this.host = host;
        EventBusExt.getDefault().register(this);
    }

    public void unregister()
    {
        EventBusExt.getDefault().unregister(this);
    }

    @SuppressWarnings("unused")
    public void onEventMainThread(RunRaceTask.RunRaceProgress progress)
    {
        host.postProgress(progress);
    }

    @SuppressWarnings("unused")
    public void onEventMainThread(RunRaceTask task)
    {
        host.raceDone();
    }

    public boolean isRaceRunning()
    {
        return TaskQueueHelper.hasTasksOfType(findQueue(), RunRaceTask.class);
    }

    public void startRace(int runCount)
    {
        final RunRaceTask task = new RunRaceTask(runCount);
        findQueue().execute(task);
    }

    private TaskQueue findQueue()
    {
        return TaskQueue.loadQueueDefault(host.getContext());
    }
}
