package co.touchlab.simpledaggerapp.conference;
import java.io.Serializable;

/**
 * Created by kgalligan on 3/11/16.
 */
public class UserAccount implements Serializable
{
    public static final String HTTPS_S3_AMAZONAWS_COM_DROIDCONIMAGES = "https://s3.amazonaws.com/droidconimages/";

    public Long id;

    
    public String name;

    
    public String profile;

    
    public String avatarKey;

    
    public String userCode;

    
    public String company;

    
    public String facebook;

    
    public String twitter;

    
    public String linkedIn;

    
    public String website;

    
    public boolean following;

    
    public String email;

    
    public String gPlus;

    
    public String phone;

    
    public String coverKey;

    
    public Boolean emailPublic;

    public String avatarImageUrl()
    {
        if(StringUtils.isEmpty(avatarKey)) return null;
        else if(avatarKey.startsWith("http")) return avatarKey;
        else return HTTPS_S3_AMAZONAWS_COM_DROIDCONIMAGES + avatarKey;
    }
}
