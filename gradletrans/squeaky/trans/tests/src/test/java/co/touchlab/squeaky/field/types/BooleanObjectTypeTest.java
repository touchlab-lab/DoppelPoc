package co.touchlab.squeaky.field.types;

import org.apache.commons.lang3.builder.EqualsBuilder;
import org.junit.Test;
import org.junit.runner.RunWith;

import co.touchlab.doppel.testing.DoppelTest;import co.touchlab.doppel.testing.DoppelRobolectricTestRunner;
import co.touchlab.squeaky.dao.Dao;
import co.touchlab.squeaky.field.DatabaseField;
import co.touchlab.squeaky.table.DatabaseTable;


import static org.junit.Assert.assertTrue;
@DoppelTest
@RunWith(DoppelRobolectricTestRunner.class)
public class BooleanObjectTypeTest extends BaseTypeTestHide
{

	private static final String BOOLEAN_COLUMN = "bool";

	@Test
	public void testBooleanObj() throws Exception
	{

		SimpleHelper helper = createHelper(LocalBooleanObj.class);
		Class<LocalBooleanObj> clazz = LocalBooleanObj.class;
		Dao<LocalBooleanObj> dao = helper.getDao(clazz);
		Boolean val = true;
		String valStr = val.toString();
		LocalBooleanObj foo = new LocalBooleanObj();
		foo.bool = val;
		dao.create(foo);

		assertTrue(EqualsBuilder.reflectionEquals(foo, dao.queryForAll().list().get(0)));

		helper.close();
	}

	@Test
	public void testBooleanObjNull() throws Exception
	{
		SimpleHelper helper = createHelper(LocalBooleanObj.class);

		Class<LocalBooleanObj> clazz = LocalBooleanObj.class;
		Dao<LocalBooleanObj> dao = helper.getDao(clazz);
		LocalBooleanObj foo = new LocalBooleanObj();
		dao.create(foo);

		assertTrue(EqualsBuilder.reflectionEquals(foo, dao.queryForAll().list().get(0)));

		helper.close();
	}

	@DatabaseTable
	protected static class LocalBooleanObj
	{
		@DatabaseField(columnName = BOOLEAN_COLUMN)
		Boolean bool;
	}
}
