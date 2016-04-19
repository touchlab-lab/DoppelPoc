package co.touchlab.simpledaggerapp;
import javax.inject.Inject;

/**
 * Created by kgalligan on 3/6/16.
 */
public class Simple
{
    public final NoteStorage noteStorage;

    @Inject
    public Simple(NoteStorage noteStorage)
    {
        this.noteStorage = noteStorage;
    }
}
