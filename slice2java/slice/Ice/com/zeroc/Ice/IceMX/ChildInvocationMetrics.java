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
 * Provides information on child invocations. A child invocation is either remote (sent over an Ice connection) or
 * collocated. An invocation can have multiple child invocation if it is retried. Child invocation metrics are
 * embedded within {@link InvocationMetrics}.
 **/
public class ChildInvocationMetrics extends Metrics
{
    public ChildInvocationMetrics()
    {
        super();
        this.size = 0L;
        this.replySize = 0L;
    }

    public ChildInvocationMetrics(String id, long total, int current, long totalLifetime, int failures, long size, long replySize)
    {
        super(id, total, current, totalLifetime, failures);
        this.size = size;
        this.replySize = replySize;
    }

    /**
     * The size of the invocation. This corresponds to the size of the marshaled input parameters.
     **/
    public long size;

    /**
     * The size of the invocation reply. This corresponds to the size of the marshaled output and return
     * parameters.
     **/
    public long replySize;

    public ChildInvocationMetrics clone()
    {
        return (ChildInvocationMetrics)super.clone();
    }

    public static String ice_staticId()
    {
        return "::IceMX::ChildInvocationMetrics";
    }

    @Override
    public String ice_id()
    {
        return ice_staticId();
    }

    /** @hidden */
    private static final long serialVersionUID = 6721436732486302362L;

    /** @hidden */
    @Override
    protected void _iceWriteImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice(ice_staticId(), -1, false);
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
        size = istr_.readLong();
        replySize = istr_.readLong();
        istr_.endSlice();
        super._iceReadImpl(istr_);
    }
}
