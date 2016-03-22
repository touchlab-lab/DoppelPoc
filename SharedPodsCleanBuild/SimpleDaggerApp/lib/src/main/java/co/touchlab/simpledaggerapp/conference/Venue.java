package co.touchlab.simpledaggerapp.conference;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by kgalligan on 7/19/14.
 */
public class Venue implements Serializable
{
    public long id;
    public String name;
    public String description;
    public String mapImageUrl;
    public List<Event> events = new ArrayList<Event>();
}
