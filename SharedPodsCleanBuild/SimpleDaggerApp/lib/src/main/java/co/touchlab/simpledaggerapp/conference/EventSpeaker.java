package co.touchlab.simpledaggerapp.conference;
import java.io.Serializable;

/**
 * Created by kgalligan on 3/11/16.
 */
public class EventSpeaker implements Serializable
{
    public Integer id;
    public Event event;
    public UserAccount userAccount;
    public int displayOrder;
}
