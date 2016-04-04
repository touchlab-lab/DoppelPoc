package co.touchlab.simpledaggerapp.conference;


import java.text.ParseException;
import java.text.SimpleDateFormat;

/**
 * Created by izzyoji :) on 8/12/15.
 */
public class Block implements ScheduleBlock
{
    static SimpleDateFormat df = new SimpleDateFormat("MM/dd/yyyy hh:mma");
    public String startDate;

    public String endDate;

    public long id;

    public String name;

    public String description;

    @Override
    public boolean isBlock()
    {
        return true;
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

    public String toString()
    {
        return startDate + " "+ name;
    }
}
