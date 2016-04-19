package co.touchlab.simpledaggerapp.conference;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by kgalligan on 7/19/14.
 */
public class Convention
{
    public Long   id;
    public String description;
    public String locationName;
    public String startDate;
    public String endDate;
    public List<Venue> venues = new ArrayList<Venue>();
    public List<Block> blocks = new ArrayList<>();
}
