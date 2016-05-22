package co.touchlab.squeaky.stmt;
import junit.framework.Assert;

/**
 * Created by kgalligan on 5/11/16.
 */
public class StmtTestHelper
{
    public static void assertWhere(String wherePart, Where w, String[] params) throws Exception
    {
        wherePart = cleanWhitespace(wherePart);
        String whereStatement = cleanWhitespace(w.getWhereStatement(true));


        Assert.assertEquals(wherePart.toLowerCase(), whereStatement.toLowerCase());

/*

        Statement l = CCJSqlParserUtil.parse("SELECT * FROM foo where " + whereStatement);
        Statement r = CCJSqlParserUtil.parse("SELECT * FROM foo WHERE " + wherePart);
        Assert.assertTrue(StringUtils.equalsIgnoreCase(StringUtils.trimToEmpty(l.toString()), StringUtils.trimToEmpty(r.toString())));

        String[] whereParams = w.getParameters();
        if (whereParams != null || params != null)
        {
            Assert.assertEquals(whereParams.length, params.length);
            for (int i = 0; i < whereParams.length; i++)
            {
                Assert.assertEquals(whereParams[i], params[i]);
            }
        }*/
    }

    private static String cleanWhitespace(String a)
    {
        char lastChar = ' ';
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < a.length(); i++)
        {
            char c = a.charAt(i);
            if (c == ' ')
            {
                if (i + 1 < a.length() && (a.charAt(i + 1) == ' ' || a.charAt(i + 1) == ')'))
                {
                    continue;
                }
            }

            sb.append(c);

            lastChar = c;
        }

        return sb.toString().trim();
    }
}
