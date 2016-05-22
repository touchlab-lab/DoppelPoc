package co.touchlab.squeaky.field.types;

import org.junit.Test;
import org.junit.runner.RunWith;

import co.touchlab.doppel.test.DoppelRobolectricTestRunner;
import co.touchlab.squeaky.field.DataType;


import static org.junit.Assert.assertNull;

@RunWith(DoppelRobolectricTestRunner.class)
public class UnknownTypeTest extends BaseTypeTest
{

	@Test
	public void testUnknownGetResult()
	{
		DataType dataType = DataType.UNKNOWN;
		assertNull(dataType.getDataPersister());
	}
}
