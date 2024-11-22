//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `Metrics.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

package com.zeroc.Ice.IceMX;

/**
 * Provides information on the number of threads currently in use and their activity.
 **/
public class ThreadMetrics extends Metrics
{
    public ThreadMetrics()
    {
        super();
        this.inUseForIO = 0;
        this.inUseForUser = 0;
        this.inUseForOther = 0;
    }

    public ThreadMetrics(String id, long total, int current, long totalLifetime, int failures, int inUseForIO, int inUseForUser, int inUseForOther)
    {
        super(id, total, current, totalLifetime, failures);
        this.inUseForIO = inUseForIO;
        this.inUseForUser = inUseForUser;
        this.inUseForOther = inUseForOther;
    }

    /**
     * The number of threads which are currently performing socket read or writes.
     **/
    public int inUseForIO;

    /**
     * The number of threads which are currently calling user code (servant dispatch, AMI callbacks, etc).
     **/
    public int inUseForUser;

    /**
     * The number of threads which are currently performing other activities. These are all other that are not
     * counted with {@link #inUseForUser} or {@link #inUseForIO}, such as DNS lookups, garbage collection).
     **/
    public int inUseForOther;

    public ThreadMetrics clone()
    {
        return (ThreadMetrics)super.clone();
    }

    public static String ice_staticId()
    {
        return "::IceMX::ThreadMetrics";
    }

    @Override
    public String ice_id()
    {
        return ice_staticId();
    }

    /** @hidden */
    private static final long serialVersionUID = -559109186847414081L;

    /** @hidden */
    @Override
    protected void _iceWriteImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice(ice_staticId(), -1, false);
        ostr_.writeInt(inUseForIO);
        ostr_.writeInt(inUseForUser);
        ostr_.writeInt(inUseForOther);
        ostr_.endSlice();
        super._iceWriteImpl(ostr_);
    }

    /** @hidden */
    @Override
    protected void _iceReadImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        inUseForIO = istr_.readInt();
        inUseForUser = istr_.readInt();
        inUseForOther = istr_.readInt();
        istr_.endSlice();
        super._iceReadImpl(istr_);
    }
}
