package android.content;
import org.junit.Test;

import co.touchlab.doppel.testing.DoppelTest;

/**
 * Created by kgalligan on 6/9/16.
 */
@DoppelTest
public class StackOverflowTest
{
    @Test
    public void stackOverflow()
    {
        try
        {
//            leRecurse();
        }catch(StackOverflowError error)
        {
            System.out.println("Hit stack overflow");
        }
    }

    private void leRecurse()
    {
        leRecurse();
    }
}
