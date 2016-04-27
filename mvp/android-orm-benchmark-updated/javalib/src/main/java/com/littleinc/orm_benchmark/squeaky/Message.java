package com.littleinc.orm_benchmark.squeaky;

import android.provider.BaseColumns;

import co.touchlab.squeaky.field.DataType;
import co.touchlab.squeaky.field.DatabaseField;
import co.touchlab.squeaky.table.DatabaseTable;

@DatabaseTable
public class Message
{
    @DatabaseField(generatedId = true, canBeNull = true)
    public long id;

    @DatabaseField
    public long clientId;

    @DatabaseField(index = true)
    public long commandId;

    @DatabaseField
    public double sortedBy;

    @DatabaseField(canBeNull = false)
    public int createdAt;

    @DatabaseField
    public String content;

    @DatabaseField(canBeNull = false)
    public long senderId;

    @DatabaseField(canBeNull = false)
    public long channelId;
}
