package co.touchlab.simpledaggerapp;
import android.content.ContentValues;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.provider.BaseColumns;

/**
 * Created by kgalligan on 3/22/16.
 */
public class SqliteMessage
{
    public static final String TABLE_NAME = "sqlitemessage";

    public static final String CONTENT = "content";

    public static final String SORTED_BY = "sorted_by";

    public static final String CLIENT_ID = "client_id";

    public static final String SENDER_ID = "sender_id";

    public static final String CHANNEL_ID = "channel_id";

    public static final String COMMAND_ID = "command_id";

    public static final String CREATED_AT = "created_at";

    protected long mId;

    protected long mClientId;

    protected long mCommandId;

    protected double mSortedBy;

    protected int mCreatedAt;

    protected String mContent;

    protected long mSenderId;

    protected long mChannelId;

    public static final String[] PROJECTION = new String[] {CONTENT, SORTED_BY, CLIENT_ID, SENDER_ID, CHANNEL_ID, COMMAND_ID, CREATED_AT};

    public static void createTable(SQLiteDatabase db)
    {
        db.execSQL(new StringBuilder("CREATE TABLE '").append(TABLE_NAME).append("' ('")
                                                      .append(BaseColumns._ID)
                                                      .append("' INTEGER PRIMARY KEY AUTOINCREMENT, '")
                                                      .append(CLIENT_ID).append("' INTEGER, '").append(SORTED_BY)
                                                      .append("' REAL, '").append(CREATED_AT).append("' INTEGER, '")
                                                      .append(CONTENT).append("' TEXT, '").append(SENDER_ID)
                                                      .append("' INTEGER NOT NULL, '").append(CHANNEL_ID)
                                                      .append("' INTEGER NOT NULL, '").append(COMMAND_ID)
                                                      .append("' INTEGER);").toString());

        db.execSQL(new StringBuilder("CREATE INDEX IDX_MESSAGE_COMMAND_ID ON ")
                           .append(TABLE_NAME).append(" (").append(COMMAND_ID)
                           .append(");").toString());
    }

    public static void dropTable(SQLiteDatabase db) {
        db.execSQL(new StringBuilder("DROP TABLE '").append(TABLE_NAME)
                                                    .append("';").toString());
    }

    public long getId() {
        return mId;
    }

    public void setId(long id) {
        this.mId = id;
    }

    public long getClientId() {
        return mClientId;
    }

    public void setClientId(long clientId) {
        this.mClientId = clientId;
    }

    public long getCommandId() {
        return mCommandId;
    }

    public void setCommandId(long commandId) {
        this.mCommandId = commandId;
    }

    public double getSortedBy() {
        return mSortedBy;
    }

    public void setSortedBy(double sortedBy) {
        this.mSortedBy = sortedBy;
    }

    public int getCreatedAt() {
        return mCreatedAt;
    }

    public void setCreatedAt(int createdAt) {
        this.mCreatedAt = createdAt;
    }

    public String getContent() {
        return mContent;
    }

    public void setContent(String content) {
        this.mContent = content;
    }

    public long getSenderId() {
        return mSenderId;
    }

    public void setSenderId(long senderId) {
        this.mSenderId = senderId;
    }

    public long getChannelId() {
        return mChannelId;
    }

    public void setChannelId(long channelId) {
        this.mChannelId = channelId;
    }

    public void fillMessageWithRandomData(int messageNumber, int totalNumber) {
        setCommandId(messageNumber);
        setSortedBy(System.nanoTime());
        setContent(DbBenchUtil.getRandomString(100));
        setClientId(System.currentTimeMillis());
        setSenderId(Math.round(Math.random() * totalNumber));
        setChannelId(Math.round(Math.random() * totalNumber));
        setCreatedAt((int) (System.currentTimeMillis() / 1000L));
    }

    public ContentValues prepareForInsert() {
        ContentValues contentValues = new ContentValues();
        contentValues.put(CONTENT, mContent);
        contentValues.put(SORTED_BY, mSortedBy);
        contentValues.put(CLIENT_ID, mClientId);
        contentValues.put(SENDER_ID, mSenderId);
        contentValues.put(CHANNEL_ID, mChannelId);
        contentValues.put(COMMAND_ID, mCommandId);
        contentValues.put(CREATED_AT, mCreatedAt);
        return contentValues;
    }
}
