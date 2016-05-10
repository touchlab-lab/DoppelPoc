package com.littleinc.orm_benchmark.flat;

import static com.littleinc.orm_benchmark.util.BenchUtil.getRandomString;

public class User
{
    protected long mId;

    protected String mLastName;

    protected String mFirstName;

    public long getId() {
        return mId;
    }

    public void setId(long id) {
        this.mId = id;
    }

    public String getLastName() {
        return mLastName;
    }

    public void setLastName(String lastName) {
        this.mLastName = lastName;
    }

    public String getFirstName() {
        return mFirstName;
    }

    public void setFirstName(String firstName) {
        this.mFirstName = firstName;
    }

    public void fillUserWithRandomData() {
        setLastName(getRandomString(10));
        setFirstName(getRandomString(10));
    }
}
