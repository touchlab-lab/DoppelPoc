package co.touchlab.simpledaggerapp;
import co.touchlab.simpledaggerapp.conference.Convention;
import retrofit.Callback;
import retrofit.http.GET;
import retrofit.http.Path;

/**
 * Created by kgalligan on 3/13/16.
 */
public interface RefreshScheduleDataRequest
{
    @GET("/dataTest/scheduleData/{conventionId}")
    void getScheduleData(@Path("conventionId")Integer conventionId, Callback<Convention> callback) throws Exception;
}
