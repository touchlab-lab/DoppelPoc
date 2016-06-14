package com.littleinc.orm_benchmark;
import com.google.j2objc.annotations.AutoreleasePool;

import org.junit.runner.JUnitCore;
import org.junit.runner.Result;

/**
 * Created by kgalligan on 6/10/16.
 */
public class AllRun
{
    @AutoreleasePool
    public static void runAll()
    {

        JUnitCore junit = new JUnitCore();
        Result result = junit.run(BasicTest.class);
    }
}
