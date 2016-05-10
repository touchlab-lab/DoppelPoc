package co.touchlab.squeaky;
import android.app.Application;
import android.content.TestingContext;

import org.junit.Rule;
import org.junit.rules.TemporaryFolder;

/**
 * Created by kgalligan on 5/10/16.
 */
public class SuperBaseTest
{
    @Rule
    public TemporaryFolder testFolder = new TemporaryFolder();
    private TestingContext iosContext;

    public synchronized Application getApp()
    {
        if(iosContext != null)
            return iosContext;

        iosContext = new TestingContext(testFolder.getRoot());
        return iosContext;
    }
}
