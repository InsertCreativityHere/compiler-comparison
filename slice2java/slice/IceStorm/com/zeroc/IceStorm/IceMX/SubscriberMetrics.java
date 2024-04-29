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

package com.zeroc.IceStorm.IceMX;

/**
 * Provides information on IceStorm subscribers.
 **/
public class SubscriberMetrics extends com.zeroc.Ice.IceMX.Metrics
{
    public SubscriberMetrics()
    {
        super();
        this.queued = 0;
        this.outstanding = 0;
        this.delivered = 0L;
    }

    public SubscriberMetrics(String id, long total, int current, long totalLifetime, int failures, int queued, int outstanding, long delivered)
    {
        super(id, total, current, totalLifetime, failures);
        this.queued = queued;
        this.outstanding = outstanding;
        this.delivered = delivered;
    }

    /**
     * Number of queued events.
     **/
    public int queued;

    /**
     * Number of outstanding events.
     **/
    public int outstanding;

    /**
     * Number of forwarded events.
     **/
    public long delivered;

    public SubscriberMetrics clone()
    {
        return (SubscriberMetrics)super.clone();
    }

    public static String ice_staticId()
    {
        return "::IceMX::SubscriberMetrics";
    }

    @Override
    public String ice_id()
    {
        return ice_staticId();
    }

    /** @hidden */
    public static final long serialVersionUID = -968818391958355125L;

    /** @hidden */
    @Override
    protected void _iceWriteImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice(ice_staticId(), -1, false);
        ostr_.writeInt(queued);
        ostr_.writeInt(outstanding);
        ostr_.writeLong(delivered);
        ostr_.endSlice();
        super._iceWriteImpl(ostr_);
    }

    /** @hidden */
    @Override
    protected void _iceReadImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        queued = istr_.readInt();
        outstanding = istr_.readInt();
        delivered = istr_.readLong();
        istr_.endSlice();
        super._iceReadImpl(istr_);
    }
}
