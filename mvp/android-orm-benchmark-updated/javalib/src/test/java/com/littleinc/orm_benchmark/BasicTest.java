package com.littleinc.orm_benchmark;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;

import junit.framework.TestCase;

import org.apache.commons.lang3.StringUtils;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/**
 * Created by kgalligan on 6/10/16.
 */
public class BasicTest extends TestCase
{
    /**
     * Test for issue 212.
     */

    /*public void testParseComments() {
        List<String> testlist = new ArrayList<>();

        testlist.add("a");
        testlist.add("b");
        testlist.add("c");

//        assertEquals(Arrays.asList("a", "b", "c"), testlist);
    }*/

    /**
     * Test for issue 212.
     */
    public void testParseComments() {
        String json = "[\n"
                + "  // this is a comment\n"
                + "  \"a\",\n"
                + "  /* this is another comment */\n"
                + "  \"b\",\n"
                + "  # this is yet another comment\n"
                + "  \"c\"\n"
                + "]";

        HeyWhat heyWhat = new HeyWhat();
        heyWhat.runStuff();
        heyWhat.runStuff();

                Gson gson = new Gson();
        String theJson = gson.toJson(new Asdf());
        StringUtils.join(new String[]{"asdf", "qwert"}, ",");
        List<String> abc = gson.fromJson(json, new TypeToken<List<String>>() {}.getType());
        assertEquals(Arrays.asList("a", "b", "c"), abc);
    }


    static class Asdf{
        public String fff = "asdf";
        public String ggg = "werwer";
    }
}
