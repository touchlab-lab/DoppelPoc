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
public class BooleanCharTypeTest extends BaseTypeTestHide
{

	private static final String BOOLEAN_COLUMN = "bool";

	@Test
	public void testBooleanObj() throws Exception
	{
		SimpleHelper helper = createHelper(LocalBooleanChar.class);

		Class<LocalBooleanChar> clazz = LocalBooleanChar.class;
		Dao<LocalBooleanChar> dao = helper.getDao(clazz);
		boolean val = true;
		String valStr = Boolean.toString(val);
		LocalBooleanChar foo = new LocalBooleanChar();
		foo.bool = val;
		dao.create(foo);

		assertTrue(EqualsBuilder.reflectionEquals(foo, dao.queryForAll().list().get(0)));

		helper.close();
	}

	@DatabaseTable
	protected static class LocalBooleanChar
	{
		@DatabaseField(columnName = BOOLEAN_COLUMN, dataType = DataType.BOOLEAN_CHAR)
		boolean bool;
	}
}
