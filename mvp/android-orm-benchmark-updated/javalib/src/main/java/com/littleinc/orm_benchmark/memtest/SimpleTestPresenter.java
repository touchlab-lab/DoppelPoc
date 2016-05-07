package com.littleinc.orm_benchmark.memtest;
import android.content.Context;

import com.google.j2objc.annotations.AutoreleasePool;

/**
 * Created by kgalligan on 5/6/16.
 */
public class SimpleTestPresenter
{
    private final Host host;

    public SimpleTestPresenter(Host host)
    {
        this.host = host;
    }

    public interface Host
    {
        Context getContext();
        void showText(String text);
    }

    @AutoreleasePool public void runDbTest()
    {
        host.showText("Starting");
        final DataBaseHelper helper = new DataBaseHelper(host.getContext(), false);
        helper.writeSomeData();
        helper.close();
        host.showText("Done");
    }
}
