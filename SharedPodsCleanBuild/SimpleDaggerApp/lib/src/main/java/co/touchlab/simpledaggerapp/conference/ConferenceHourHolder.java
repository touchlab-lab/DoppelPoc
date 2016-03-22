package co.touchlab.simpledaggerapp.conference;
import java.util.TreeMap;

/**
 * Created by kgalligan on 3/11/16.
 */
public class ConferenceHourHolder
{
    public final String hourString;
    public final ScheduleBlock[] scheduleBlocks;

    public ConferenceHourHolder(String hourString, ScheduleBlock[] scheduleBlocks)
    {
        this.hourString = hourString;
        this.scheduleBlocks = scheduleBlocks;
    }
}
