package co.touchlab.simpledaggerapp.conference;
import java.util.TreeMap;

/**
 * Created by kgalligan on 3/11/16.
 */
public class ConferenceDayHolder
{
    public final String dayString;
    public final ConferenceHourHolder[] hourHolders;

    public ConferenceDayHolder(String dayString, ConferenceHourHolder[] hourHolders)
    {
        this.dayString = dayString;
        this.hourHolders = hourHolders;
    }
}
