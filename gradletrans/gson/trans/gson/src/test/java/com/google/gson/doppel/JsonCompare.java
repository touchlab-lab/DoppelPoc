package com.google.gson.doppel;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.junit.Assert;

/**
 * Created by kgalligan on 3/28/16.
 */
public class JsonCompare
{
	public static boolean jsonSame(String a, String b)
	{
		try
		{
			JSONParser parser = new JSONParser();

			Object leftParse = parser.parse(a);
			Object rightParse = parser.parse(b);

			if(leftParse instanceof JSONArray)
			{
				return ((JSONArray)leftParse).toJSONString().equals(((JSONArray)rightParse).toJSONString());
			}
			else
			{
				JSONObject ja = (JSONObject) leftParse;
				JSONObject jb = (JSONObject) rightParse;

				return ja.toJSONString().equals(jb.toJSONString());
			}
		}
		catch (ParseException e)
		{
			throw new RuntimeException(e);
		}
	}

	public static void jsonSameAssert(String a, String b)
	{
		try
		{
			JSONParser parser = new JSONParser();

			Object leftParse = parser.parse(a);
			Object rightParse = parser.parse(b);

			if(leftParse instanceof JSONArray)
			{
				Assert.assertEquals(((JSONArray)leftParse).toJSONString(), ((JSONArray)rightParse).toJSONString());
			}
			else
			{
				JSONObject ja = (JSONObject) leftParse;
				JSONObject jb = (JSONObject) rightParse;

				Assert.assertEquals(ja.toJSONString(), jb.toJSONString());
			}
		}
		catch (ParseException e)
		{
			throw new RuntimeException(e);
		}
	}

//	private static boolean same(JSONObject l, JSONObject r)
//	{
//		l.
//	}
}
