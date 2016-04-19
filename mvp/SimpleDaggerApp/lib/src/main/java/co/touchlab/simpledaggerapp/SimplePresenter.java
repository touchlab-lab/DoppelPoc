package co.touchlab.simpledaggerapp;
import javax.inject.Singleton;

import dagger.Component;

/**
 * Created by kgalligan on 3/6/16.
 */
@Singleton
@Component(modules = { PlatformSpecificModule.class })
public interface SimplePresenter
{
    Simple simple();
}
