package co.touchlab.simpledaggerapp.conference;
import java.util.Collection;

/**
 * Created by kgalligan on 3/11/16.
 */
public class StringUtils
{
    public static boolean isEmpty(String s)
    {
        return s == null || s.trim().length() ==0;
    }

    public static String join(Collection<String> vals, String sep)
    {
        StringBuilder sb = new StringBuilder();

        for(String v : vals)
        {
            if(sb.length() > 0)
                sb.append(sep);

            sb.append(v);
        }

        return sb.toString();
    }
}
