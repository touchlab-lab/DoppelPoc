package co.touchlab.squeaky.field;

/**
 * The SQL data types that are supported. These are basically an enumeration of the constants in java.sql.Types.
 * <p/>
 * <p>
 * <b>NOTE:</b> If you add types here you will need to add to the various DatabaseType implementors' appendColumnArg()
 * method.
 * </p>
 *
 * @author graywatson
 */
public enum SqlType
{

	STRING,
	LONG_STRING,
	DATE,
	BOOLEAN,
	CHAR,
	BYTE,
	BYTE_ARRAY,
	SHORT,
	INTEGER,
	LONG,
	FLOAT,
	DOUBLE,
	SERIALIZABLE,
	BLOB,
	BIG_DECIMAL,
	// for other types handled by custom persisters
	OTHER,
	UNKNOWN,
	// end
	;
}
