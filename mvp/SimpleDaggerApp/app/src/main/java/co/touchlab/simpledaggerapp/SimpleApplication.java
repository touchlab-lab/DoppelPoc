package co.touchlab.simpledaggerapp;
import android.app.Application;

import java.io.File;
import java.util.List;

/**
 * Created by kgalligan on 3/6/16.
 */
public class SimpleApplication extends Application
{
    public SimplePresenter presenter;

    @Override
    public void onCreate()
    {
        super.onCreate();
        presenter = DaggerSimplePresenter.builder()
                                         .platformSpecificModule(
                new PlatformSpecificModule(new AndroidPlatformContext(this))).build();

        final Simple simple = presenter.simple();
        simple.noteStorage.init();
    }
}
