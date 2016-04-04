package co.touchlab.simpledaggerapp;
import android.app.Application;
import android.content.Context;
import android.util.Log;

import java.io.File;
import java.util.List;

import co.touchlab.simpledaggerapp.conference.ConferenceDayHolder;

/**
 * Created by kgalligan on 3/6/16.
 */
public class SimpleApplication extends Application
{
    public SimplePresenter presenter;

    @Override
    public void onCreate()
    {
        super.onCreate();
        presenter = DaggerSimplePresenter.builder().platformSpecificModule(
                new PlatformSpecificModule(new PlatformContext()
                {
                    @Override
                    public String storageDir()
                    {
                        final File rootDir = getFilesDir();
                        final File notes = new File(rootDir, "notes");
                        notes.mkdirs();
                        return rootDir.getPath();
                    }

                    @Override
                    public void loadCallback(ConferenceDayHolder[] conferenceDayHolders)
                    {
                        for(ConferenceDayHolder conferenceDayHolder : conferenceDayHolders)
                        {
                            Log.w("asdf", conferenceDayHolder.dayString);
                        }
                    }

                    @Override
                    public Context appContext()
                    {
                        return SimpleApplication.this;
                    }
                })).build();

        final Simple simple = presenter.simple();
        final List<Note> notes = simple.noteStorage.allNotes();
        if(notes.size() == 0)
        {
            Note note = new Note();
            note.setNote("asdf");
            simple.noteStorage.save(note);

            Note note1 = new Note();
            note1.setNote("qwert");
            simple.noteStorage.save(note1);
        }

        simple.noteStorage.callConferenceUpdate();
    }
}
