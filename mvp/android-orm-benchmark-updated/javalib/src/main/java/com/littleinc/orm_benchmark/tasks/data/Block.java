package com.littleinc.orm_benchmark.tasks.data;
import co.touchlab.squeaky.field.DatabaseField;

/**
 * Created by kgalligan on 5/29/16.
 */
public class Block
{
    @DatabaseField
    public String startDate;

    @DatabaseField
    public String endDate;

    @DatabaseField(id = true)
    public long id;

    @DatabaseField
    public String name;

    @DatabaseField
    public String description;

    @DatabaseField
    public Long startDateLong;

    @DatabaseField
    public Long endDateLong;

    public boolean isBlock()
    {
        return true;
    }

    public Long getStartLong()
    {
        return startDateLong;
    }

    public Long getEndLong()
    {
        return endDateLong;
    }

}
