package co.touchlab.simpledaggerapp;
import co.touchlab.squeaky.field.DatabaseField;
import co.touchlab.squeaky.table.DatabaseTable;

/**
 * Created by kgalligan on 3/21/16.
 */
@DatabaseTable
public class TheDbMessage
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


    @Override
    public String toString()
    {
        return "Message{" +
                "id=" + id +
                ", clientId=" + clientId +
                ", commandId=" + commandId +
                ", sortedBy=" + sortedBy +
                ", createdAt=" + createdAt +
                ", content='" + content + '\'' +
                ", senderId=" + senderId +
                ", channelId=" + channelId +
                '}';
    }
}