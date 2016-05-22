package co.touchlab.doppel.test;

import org.junit.runner.notification.RunNotifier;
import org.junit.runners.BlockJUnit4ClassRunner;
import org.junit.runners.model.FrameworkMethod;
import org.junit.runners.model.InitializationError;
import org.junit.runners.model.Statement;

import java.lang.reflect.Constructor;
import java.lang.reflect.Method;

import co.touchlab.doppel.testing.PlatformUtils;

/**
 * Created by kgalligan on 5/11/16.
 */
public class DoppelRobolectricTestRunner extends BlockJUnit4ClassRunner
{
    BlockJUnit4ClassRunner delegateRunner;

    /**
     * Creates a runner to run {@code testClass}. Looks in your working directory for your AndroidManifest.xml file
     * and res directory by default. Use the {@link Config} annotation to configure.
     *
     * @param testClass the test class to be run
     * @throws InitializationError if junit says so
     */
    public DoppelRobolectricTestRunner(final Class<?> testClass) throws InitializationError
    {
        super(testClass);
        if(!PlatformUtils.isJ2objc())
        {
            try
            {
                final Constructor<?> declaredConstructor = Class
                        .forName("org.robolectric.RobolectricTestRunner")
                        .getDeclaredConstructor(Class.class);
                declaredConstructor.setAccessible(true);
                delegateRunner = (BlockJUnit4ClassRunner)declaredConstructor.newInstance(testClass);
            }
            catch(Exception e)
            {
                throw new RuntimeException(e);
            }
        }
    }


    @Override
    protected Statement classBlock(RunNotifier notifier)
    {
        if(delegateRunner != null)
        {
            return callClassBlock(notifier);
        }
        else
        {
            return super.classBlock(notifier);
        }
    }

    @Override
    protected void runChild(FrameworkMethod method, RunNotifier notifier)
    {
        if(delegateRunner != null)
        {
            callRunChild(method, notifier);
        }
        else
        {
            super.runChild(method, notifier);
        }
    }

    @Override
    protected Object createTest() throws Exception
    {
        if(delegateRunner != null)
        {
            return callCreateTest();
        }
        else
        {
            return super.createTest();
        }
    }

    private Statement callClassBlock(RunNotifier runNotifier)
    {
        try
        {
            Class clazz = delegateRunner.getClass();

            Method retrieveItems = clazz.getDeclaredMethod("classBlock", RunNotifier.class);
            retrieveItems.setAccessible(true);
            return (Statement) retrieveItems.invoke(delegateRunner, runNotifier);
        }
        catch(Exception e)
        {
            throw new RuntimeException(e);
        }
    }

    private void callRunChild(FrameworkMethod method, RunNotifier notifier)
    {
        try
        {
            Class clazz = delegateRunner.getClass();

            Method retrieveItems = clazz
                    .getDeclaredMethod("runChild", FrameworkMethod.class, RunNotifier.class);
            retrieveItems.setAccessible(true);
            retrieveItems.invoke(delegateRunner, method, notifier);
        }
        catch(Exception e)
        {
            throw new RuntimeException(e);
        }
    }

    private Object callCreateTest()
    {
        try
        {
            Class clazz = delegateRunner.getClass();

            Method retrieveItems = clazz.getDeclaredMethod("createTest");
            retrieveItems.setAccessible(true);
            return retrieveItems.invoke(delegateRunner);
        }
        catch(Exception e)
        {
            throw new RuntimeException(e);
        }
    }
}
