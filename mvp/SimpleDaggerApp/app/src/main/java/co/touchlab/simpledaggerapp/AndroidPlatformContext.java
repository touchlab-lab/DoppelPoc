package co.touchlab.simpledaggerapp;
import android.content.Context;

import java.io.File;

/**
 * Created by kgalligan on 3/10/16.
 */
public class AndroidPlatformContext implements PlatformContext
{
    private final Context context;

    public AndroidPlatformContext(Context context)
    {
        this.context = context;
    }

    @Override
    public String storageDir()
    {
        final File notes = new File(context.getFilesDir(), "notes");
        notes.mkdirs();
        return notes.getPath();
        //  /data/data/co.touchlab.simpledaggerapp/file/notes
    }
}
