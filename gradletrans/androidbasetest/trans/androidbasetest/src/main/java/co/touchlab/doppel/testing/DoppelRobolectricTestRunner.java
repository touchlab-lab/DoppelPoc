package co.touchlab.doppel.testing;
import android.content.TestingContext;

import org.junit.runner.notification.RunNotifier;
import org.junit.runners.BlockJUnit4ClassRunner;
import org.junit.runners.model.FrameworkMethod;
import org.junit.runners.model.InitializationError;
import org.junit.runners.model.Statement;

import java.io.File;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;

/**
 * Created by kgalligan on 5/30/16.
 */
public class DoppelRobolectricTestRunner extends BlockJUnit4ClassRunner
{
    public DoppelRobolectricTestRunner(final Class<?> testClass) throws InitializationError
    {
        super(testClass);
        File rootDir = new File("/Users/kgalligan/temp/test_" + System.currentTimeMillis());
        rootDir.mkdirs();
        RuntimeEnvironment.application = new TestingContext(rootDir);
    }
}
