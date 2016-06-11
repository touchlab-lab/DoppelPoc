package com.littleinc.orm_benchmark.tasks.data;
import org.jetbrains.annotations.NotNull;

import java.util.ArrayList;
import java.util.List;

import co.touchlab.squeaky.field.DatabaseField;

/**
 * Created by kgalligan on 5/29/16.
 */
public class Venue
{
    @DatabaseField(id = true)
    public long id;

    @DatabaseField(canBeNull = false)
    public String name;

    @DatabaseField
    public String description;

    @DatabaseField
    public String mapImageUrl;

    @NotNull
    public List<Event> events = new ArrayList<Event>();
}
