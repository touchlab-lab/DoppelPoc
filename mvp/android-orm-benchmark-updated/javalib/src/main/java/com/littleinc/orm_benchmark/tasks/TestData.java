package com.littleinc.orm_benchmark.tasks;
import com.littleinc.orm_benchmark.tasks.data.Convention;

import retrofit.http.GET;
import retrofit.http.Path;

/**
 * Created by kgalligan on 5/28/16.
 */
public interface TestData
{
    @GET("/dataTest/scheduleData/{conventionId}")
    Convention getScheduleData(@Path("conventionId")Integer conventionId);
}
