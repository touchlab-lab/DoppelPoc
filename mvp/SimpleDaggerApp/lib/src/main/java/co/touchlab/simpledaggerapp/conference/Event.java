package co.touchlab.simpledaggerapp.conference;

import java.io.Serializable;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by kgalligan on 7/19/14.
 */
public class Event implements ScheduleBlock, Serializable
{
    static SimpleDateFormat df = new SimpleDateFormat("MM/dd/yyyy hh:mma");

    public long id;
    public String name;
    public String description;
    public String category;
    public Venue venue;
    public boolean publicEvent;
    public Integer rsvpLimit;
    public Integer rsvpCount;
    public String rsvpUuid;

    public Integer vote;

    public boolean isRsvped()
    {
        return rsvpUuid != null;
    }

    public boolean isPast()
    {
        return getEndLong() != null && System.currentTimeMillis() > getEndLong();
    }

    public boolean isNow()
    {
        return getStartLong() != null && getEndLong() != null && System
                .currentTimeMillis() < getEndLong() && System.currentTimeMillis() > getStartLong();
    }

    @Override
    public boolean isBlock()
    {
        return false;
    }

    @Override
    public Long getStartLong()
    {
        try
        {
            return df.parse(startDate).getTime();
        }
        catch(ParseException e)
        {
            return null;
        }
    }

    @Override
    public Long getEndLong()
    {
        try
        {
            return df.parse(endDate).getTime();
        }
        catch(ParseException e)
        {
            return null;
        }
    }

    public String allSpeakersString()
    {
        List<String> names =new ArrayList<>();
        for(UserAccount userAccount : speakers)
        {
            if(userAccount != null)
                names.add(userAccount.name);
        }

        return StringUtils.join(names, ", ");
    }
    public String startDate;

    public String endDate;

    public List<UserAccount> speakers;

    public String toString()
    {
        return startDate + " "+ name;
    }
}
