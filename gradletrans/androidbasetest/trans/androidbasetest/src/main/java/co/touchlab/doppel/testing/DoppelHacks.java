package co.touchlab.doppel.testing;
import java.lang.annotation.ElementType;
import java.lang.annotation.Target;

/**
 * Created by kgalligan on 5/29/16.
 */
@Target({ElementType.METHOD, ElementType.TYPE})
public @interface DoppelHacks
{
}
