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
 * Provides information on servant dispatch.
 **/
public class DispatchMetrics extends Metrics
{
    public DispatchMetrics()
    {
        super();
        this.userException = 0;
        this.size = 0L;
        this.replySize = 0L;
    }

    public DispatchMetrics(String id, long total, int current, long totalLifetime, int failures, int userException, long size, long replySize)
    {
        super(id, total, current, totalLifetime, failures);
        this.userException = userException;
        this.size = size;
        this.replySize = replySize;
    }

    /**
     * The number of dispatch that failed with a user exception.
     **/
    public int userException;

    /**
     * The size of the dispatch. This corresponds to the size of the marshaled input parameters.
     **/
    public long size;

    /**
     * The size of the dispatch reply. This corresponds to the size of the marshaled output and return parameters.
     **/
    public long replySize;

    public DispatchMetrics clone()
    {
        return (DispatchMetrics)super.clone();
    }

    public static String ice_staticId()
    {
        return "::IceMX::DispatchMetrics";
    }

    @Override
    public String ice_id()
    {
        return ice_staticId();
    }

    /** @hidden */
    public static final long serialVersionUID = -8381234257162292583L;

    /** @hidden */
    @Override
    protected void _iceWriteImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice(ice_staticId(), -1, false);
        ostr_.writeInt(userException);
        ostr_.writeLong(size);
        ostr_.writeLong(replySize);
        ostr_.endSlice();
        super._iceWriteImpl(ostr_);
    }

    /** @hidden */
    @Override
    protected void _iceReadImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        userException = istr_.readInt();
        size = istr_.readLong();
        replySize = istr_.readLong();
        istr_.endSlice();
        super._iceReadImpl(istr_);
    }
}
