package co.touchlab.simpledaggerapp;
import dagger.Module;
import dagger.Provides;

/**
 * Created by kgalligan on 3/6/16.
 */
@Module
public class PlatformSpecificModule
{
    private final PlatformContext platformContext;

    public PlatformSpecificModule(PlatformContext platformContext)
    {
        this.platformContext = platformContext;
    }

    @Provides
    PlatformContext providePlatformContext()
    {
        return platformContext;
    }


}
