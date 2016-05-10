package co.touchlab.squeaky.field.types;

import org.junit.Test;

import co.touchlab.squeaky.field.SqlType;


public class BigDecimalStringTypeTest
{

	@Test
	public void testCoverage()
	{
		new BigDecimalStringType(SqlType.STRING, new Class[0]);
	}
}
