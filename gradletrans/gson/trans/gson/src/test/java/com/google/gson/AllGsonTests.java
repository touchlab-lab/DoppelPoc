package com.google.gson;
import org.junit.runner.JUnitCore;
import org.junit.runner.Result;

/**
 * Created by kgalligan on 6/13/16.
 */
public class AllGsonTests
{
    public static void runAll()
    {
        JUnitCore  junit  = new JUnitCore();
        Result result = junit.run(CommentsTest.class, DefaultDateTypeAdapterTest.class, DefaultInetAddressTypeAdapterTest.class);
    }
}
