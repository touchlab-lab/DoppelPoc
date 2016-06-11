package co.touchlab.squeaky.field.types;

import org.apache.commons.lang3.builder.EqualsBuilder;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;

import java.sql.SQLException;
import java.util.Arrays;

import co.touchlab.doppel.testing.DoppelTest;import co.touchlab.doppel.testing.DoppelRobolectricTestRunner;
import co.touchlab.squeaky.dao.Dao;
import co.touchlab.squeaky.field.DataType;
import co.touchlab.squeaky.field.DatabaseField;
import co.touchlab.squeaky.field.SqlType;
import co.touchlab.squeaky.table.DatabaseTable;


import static org.junit.Assert.assertTrue;
@DoppelTest
@RunWith(DoppelRobolectricTestRunner.class)
public class ByteArrayTypeTest extends BaseTypeTestHide
{

	private static final String BYTE_COLUMN = "byteField";
	private SimpleHelper helper;

	@Before
	public void before()
	{
		helper = getHelper();
	}

	@After
	public void after()
	{
		helper.close();
	}

	@Test
	public void testByteArray() throws Exception
	{
		Class<LocalByteArray> clazz = LocalByteArray.class;
		Dao<LocalByteArray> dao = helper.getDao(clazz);
		byte[] val = new byte[]{123, 4, 124, 1, 0, 72};
		String valStr = Arrays.toString(val);
		LocalByteArray foo = new LocalByteArray();
		foo.byteField = val;
		dao.create(foo);
		assertTrue(EqualsBuilder.reflectionEquals(foo, dao.queryForAll().list().get(0)));
	}

	@Test
	public void testByteArrayNull() throws Exception
	{
		Class<LocalByteArray> clazz = LocalByteArray.class;
		Dao<LocalByteArray> dao = helper.getDao(clazz);
		LocalByteArray foo = new LocalByteArray();
		dao.create(new LocalByteArray());
		assertTrue(EqualsBuilder.reflectionEquals(foo, dao.queryForAll().list().get(0)));
	}

	@Test(expected = SQLException.class)
	public void testByteArrayParseDefault() throws Exception
	{
		DataType.BYTE_ARRAY.getDataPersister().parseDefaultString(null, null);
	}

	@Test
	public void testCoverage()
	{
		new ByteArrayType(SqlType.BYTE_ARRAY, new Class[0]);
	}

	@DatabaseTable
	protected static class LocalByteArray
	{
		@DatabaseField(columnName = BYTE_COLUMN, dataType = DataType.BYTE_ARRAY)
		byte[] byteField;
	}

	private SimpleHelper getHelper()
	{
		return createHelper(
				LocalByteArray.class
		);
	}
}
