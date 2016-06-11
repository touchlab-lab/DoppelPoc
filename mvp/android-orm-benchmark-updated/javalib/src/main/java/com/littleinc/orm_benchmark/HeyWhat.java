package com.littleinc.orm_benchmark;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

/**
 * Created by kgalligan on 6/11/16.
 */
public class HeyWhat
{
    private final ThreadLocal<String> calls
            = new ThreadLocal<String>();


    public void runStuff()
    {
        System.out.println(calls.toString());
        String stringStringMap = calls.get();
        if(stringStringMap == null)
        {
            stringStringMap = "man...";
            calls.set(stringStringMap);
        }
        System.out.println("Hey the value: "+ stringStringMap);

        calls.set("Moar memoriez?");

        System.out.println("Updated: "+ calls.get());
//        stringStringMap.add("now-"+ System.currentTimeMillis());
    }
}
