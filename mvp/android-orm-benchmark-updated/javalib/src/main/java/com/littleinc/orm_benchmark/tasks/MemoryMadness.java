package com.littleinc.orm_benchmark.tasks;
import android.util.Log;

import com.google.j2objc.annotations.Weak;

/**
 * Created by kgalligan on 6/3/16.
 */
public class MemoryMadness
{
    @Weak
    Runnable arun = new Runnable()
    {
        @Override
        public void run()
        {
            Log.w("whoa", "asdf");
            haha();
        }
    };

    private void haha()
    {
        Log.w("haha", "haha");
    }
}
