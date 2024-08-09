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
 * Provides information on IceStorm topics.
 **/
public class TopicMetrics extends com.zeroc.Ice.IceMX.Metrics
{
    public TopicMetrics()
    {
        super();
        this.published = 0L;
        this.forwarded = 0L;
    }

    public TopicMetrics(String id, long total, int current, long totalLifetime, int failures, long published, long forwarded)
    {
        super(id, total, current, totalLifetime, failures);
        this.published = published;
        this.forwarded = forwarded;
    }

    /**
     * Number of events published on the topic by publishers.
     **/
    public long published;

    /**
     * Number of events forwarded on the topic by IceStorm topic links.
     **/
    public long forwarded;

    public TopicMetrics clone()
    {
        return (TopicMetrics)super.clone();
    }

    public static String ice_staticId()
    {
        return "::IceMX::TopicMetrics";
    }

    @Override
    public String ice_id()
    {
        return ice_staticId();
    }

    /** @hidden */
    private static final long serialVersionUID = 2046821538101881761L;

    /** @hidden */
    @Override
    protected void _iceWriteImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice(ice_staticId(), -1, false);
        ostr_.writeLong(published);
        ostr_.writeLong(forwarded);
        ostr_.endSlice();
        super._iceWriteImpl(ostr_);
    }

    /** @hidden */
    @Override
    protected void _iceReadImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        published = istr_.readLong();
        forwarded = istr_.readLong();
        istr_.endSlice();
        super._iceReadImpl(istr_);
    }
}
