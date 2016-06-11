package com.littleinc.orm_benchmark.tasks.data;
import org.jetbrains.annotations.NotNull;

import java.util.ArrayList;
import java.util.List;

import co.touchlab.squeaky.field.DatabaseField;

/**
 * Created by kgalligan on 5/29/16.
 */
public class Convention
{
    public Long   id;
    public String description;
    public String locationName;

    @DatabaseField
    public String startDate;

    @DatabaseField
    public String endDate;

    @NotNull
    public List<Venue> venues = new ArrayList<Venue>();

    @NotNull
    public List<Block> blocks = new ArrayList<>();
}
