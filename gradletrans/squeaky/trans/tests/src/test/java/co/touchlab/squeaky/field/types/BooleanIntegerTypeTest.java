package co.touchlab.squeaky.field.types;

import org.apache.commons.lang3.builder.EqualsBuilder;
import org.junit.Test;
import org.junit.runner.RunWith;

import co.touchlab.doppel.testing.DoppelTest;import co.touchlab.doppel.testing.DoppelRobolectricTestRunner;
import co.touchlab.squeaky.dao.Dao;
import co.touchlab.squeaky.field.DataType;
import co.touchlab.squeaky.field.DatabaseField;
import co.touchlab.squeaky.table.DatabaseTable;


import static org.junit.Assert.assertTrue;
@DoppelTest
@RunWith(DoppelRobolectricTestRunner.class)
public class BooleanIntegerTypeTest extends BaseTypeTestHide
{

	private static final String BOOLEAN_COLUMN = "bool";

	@Test
	public void testBooleanInteger() throws Exception
	{
		SimpleHelper helper = createHelper(LocalBooleanInteger.class);

		Class<LocalBooleanInteger> clazz = LocalBooleanInteger.class;
		Dao<LocalBooleanInteger> dao = helper.getDao(clazz);
		boolean val = true;
		String valStr = Boolean.toString(val);
		LocalBooleanInteger foo = new LocalBooleanInteger();
		foo.bool = val;
		dao.create(foo);

		assertTrue(EqualsBuilder.reflectionEquals(foo, dao.queryForAll().list().get(0)));

		helper.close();
	}

	@DatabaseTable
	protected static class LocalBooleanInteger
	{
		@DatabaseField(columnName = BOOLEAN_COLUMN, dataType = DataType.BOOLEAN_INTEGER)
		boolean bool;
	}
}
