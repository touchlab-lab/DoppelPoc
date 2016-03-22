package co.touchlab.simpledaggerapp;
/**
 * Created by kgalligan on 3/6/16.
 */
public class Note
{
    private Long id;
    private String title;
    private String note;
    private String imagePath;

    public Long getId()
    {
        return id;
    }

    public void setId(Long id)
    {
        this.id = id;
    }

    public String getTitle()
    {
        return title;
    }

    public void setTitle(String title)
    {
        this.title = title;
    }

    public String getNote()
    {
        return note;
    }

    public void setNote(String note)
    {
        this.note = note;
    }

    public String getImagePath()
    {
        return imagePath;
    }

    public void setImagePath(String imagePath)
    {
        this.imagePath = imagePath;
    }

    @Override
    public String toString()
    {
        return note;
    }
}
