package co.touchlab.squeaky.field.types;

import org.junit.Test;

import co.touchlab.squeaky.field.DataType;


import static org.junit.Assert.assertNull;

public class UnknownTypeTest extends BaseTypeTest
{

	@Test
	public void testUnknownGetResult()
	{
		DataType dataType = DataType.UNKNOWN;
		assertNull(dataType.getDataPersister());
	}
}
