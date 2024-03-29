package co.touchlab.squeaky.dao;

import java.io.Closeable;
import java.sql.SQLException;
import java.util.Iterator;

/**
 * Extension to Iterator to provide a close() method. This should be in the JDK.
 * <p/>
 * <p>
 * <b>NOTE:</b> You must call {@link CloseableIterator#close()} method when you are done otherwise the underlying SQL
 * statement and connection may be kept open.
 * </p>
 *
 * @author graywatson
 */
public interface CloseableIterator<T> extends Iterator<T>, Closeable
{

	/**
	 * Close any underlying SQL statements but swallow any SQLExceptions.
	 */
	void closeQuietly();

	/**
	 * Move to the next item in the iterator without calling {@link #next()}.
	 */
	void moveToNext();

	/**
	 * Move to the first result and return it or null if none. This may not work with the default iterator depending on
	 * your database.
	 */
	T first() throws SQLException;

	/**
	 * Moves to the previous result and return it or null if none. This may not work with the default iterator depending
	 * on your database.
	 */
	T previous() throws SQLException;

	/**
	 * Return the current result object that we have accessed or null if none.
	 */
	T current() throws SQLException;

	/**
	 * Returns the {@link #next()} object in the table or null if none.
	 *
	 * @throws SQLException Throws a SQLException on error since {@link #next()} cannot throw because it is part of the
	 *                      {@link Iterator} definition. It will <i>not</i> throw if there is no next.
	 */
	T nextThrow() throws SQLException;

	/**
	 * Move a relative position in the list and return that result or null if none. Moves forward (positive value) or
	 * backwards (negative value) the list of results. moveRelative(1) should be the same as {@link #next()}.
	 * moveRelative(-1) is the same as {@link #previous} result. This may not work with the default iterator depending
	 * on your database.
	 *
	 * @param offset Number of rows to move. Positive moves forward in the results. Negative moves backwards.
	 */
	T moveRelative(int offset) throws SQLException;
}
