package co.touchlab.squeaky.field.types;

import org.junit.Test;
import org.junit.runner.RunWith;

import co.touchlab.doppel.testing.DoppelTest;import co.touchlab.doppel.testing.DoppelRobolectricTestRunner;
import co.touchlab.squeaky.field.DataType;


import static org.junit.Assert.assertNull;
@DoppelTest
@RunWith(DoppelRobolectricTestRunner.class)
public class UnknownTypeTest extends BaseTypeTestHide
{

	@Test
	public void testUnknownGetResult()
	{
		DataType dataType = DataType.UNKNOWN;
		assertNull(dataType.getDataPersister());
	}
}
