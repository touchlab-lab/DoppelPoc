package co.touchlab.doppelrace.tasks;
import co.touchlab.squeaky.field.DatabaseField;
import co.touchlab.squeaky.table.DatabaseTable;

/**
 * Created by kgalligan on 4/13/16.
 */
@DatabaseTable
public class SqueakyMessage
{
    @DatabaseField(generatedId = true, canBeNull = true)
    public long id;

    @DatabaseField
    public long clientId;

    @DatabaseField
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
