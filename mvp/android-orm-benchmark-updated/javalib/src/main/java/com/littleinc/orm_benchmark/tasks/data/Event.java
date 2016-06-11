package com.littleinc.orm_benchmark.tasks.data;
import org.jetbrains.annotations.NotNull;

import co.touchlab.squeaky.field.DatabaseField;

/**
 * Created by kgalligan on 5/29/16.
 */
public class Event
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
    public String category;

    @NotNull
    @DatabaseField(foreign = true, canBeNull = false, foreignAutoRefresh = true)
    public Venue venue;

    @DatabaseField
    public Long startDateLong;

    @DatabaseField
    public Long endDateLong;

    @DatabaseField
    public boolean publicEvent;

    @DatabaseField
    public Integer rsvpLimit;

    @DatabaseField
    public Integer rsvpCount;

    @DatabaseField
    public String rsvpUuid;

    @DatabaseField
    public Integer vote;
}
