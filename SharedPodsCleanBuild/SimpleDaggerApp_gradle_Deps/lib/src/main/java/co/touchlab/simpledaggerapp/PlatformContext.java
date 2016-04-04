package co.touchlab.simpledaggerapp;

import co.touchlab.simpledaggerapp.conference.ConferenceDayHolder;

/**
 * Created by kgalligan on 3/6/16.
 */
public interface PlatformContext
{
    String storageDir();

    void loadCallback(ConferenceDayHolder[] conferenceDayHolders);

}
