package com.littleinc.orm_benchmark.flat;

import com.littleinc.orm_benchmark.util.BenchUtil;

import org.json.JSONException;
import org.json.JSONObject;

import java.util.List;

public class Message
{
    public static final String ID         = "id";
    public static final String CLIENT_ID  = "clientId";
    public static final String COMMAND_ID = "commandId";
    public static final String SORTED_BY  = "sortedBy";
    public static final String CREATED_AT = "createdAt";
    public static final String CONTENT    = "content";
    public static final String SENDER_ID  = "senderId";
    public static final String CHANNEL_ID = "channelId";
    protected long mId;

    protected long mClientId;

    protected long mCommandId;

    protected double mSortedBy;

    protected int mCreatedAt;

    protected String mContent;

    protected long mSenderId;

    protected long mChannelId;

    protected List<User> mReaders;

    public void writeJson(JSONObject jsonObject)
    {
        try
        {
            jsonObject.put(ID, mId);
            jsonObject.put(CLIENT_ID, mClientId);
            jsonObject.put(COMMAND_ID, mCommandId);
            jsonObject.put(SORTED_BY, mSortedBy);
            jsonObject.put(CREATED_AT, mCreatedAt);
            jsonObject.put(CONTENT, mContent);
            jsonObject.put(SENDER_ID, mSenderId);
            jsonObject.put(CHANNEL_ID, mChannelId);
        }
        catch(JSONException e)
        {
            throw new RuntimeException(e);
        }
    }

    public void readJson(JSONObject jsonObject)
    {
        try
        {
            mId = jsonObject.getLong(ID);
            mClientId = jsonObject.getLong(CLIENT_ID);
            mCommandId = jsonObject.getLong(COMMAND_ID);
            mSortedBy = jsonObject.getDouble(SORTED_BY);
            mCreatedAt = jsonObject.getInt(CREATED_AT);
            mContent = jsonObject.getString(CONTENT);
            mSenderId = jsonObject.getLong(SENDER_ID);
            mChannelId = jsonObject.getLong(CHANNEL_ID);
        }
        catch(JSONException e)
        {
            throw new RuntimeException(e);
        }
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

    public void setReaders(List<User> readers) {
        mReaders = readers;
    }

    public List<User> getReaders() {
        return mReaders;
    }

    public boolean hasReaders() {
        return mReaders != null && !mReaders.isEmpty();
    }

    public void fillMessageWithRandomData(int messageNumber, int totalNumber) {
        setCommandId(messageNumber);
        setSortedBy(System.nanoTime());
        setContent(BenchUtil.getRandomString(100));
        setClientId(System.currentTimeMillis());
        setSenderId(Math.round(Math.random() * totalNumber));
        setChannelId(Math.round(Math.random() * totalNumber));
        setCreatedAt((int) (System.currentTimeMillis() / 1000L));
    }


}
