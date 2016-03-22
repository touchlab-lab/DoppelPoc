package co.touchlab.simpledaggerapp;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.widget.ArrayAdapter;
import android.widget.ListView;

import java.util.List;

public class MainActivity extends AppCompatActivity
{

    @Override
    protected void onCreate(Bundle savedInstanceState)
    {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        final List<Note> notes = ((SimpleApplication) getApplication()).presenter
                .simple().noteStorage.allNotes();

        ((ListView)findViewById(R.id.listView)).setAdapter(new ArrayAdapter<Note>(this, android.R.layout.simple_list_item_1, notes));
    }
}
