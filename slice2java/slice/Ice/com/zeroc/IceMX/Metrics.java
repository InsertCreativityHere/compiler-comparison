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

package com.zeroc.IceMX;

/**
 * The base class for metrics. A metrics object represents a collection of measurements associated to a given a system.
 **/
public class Metrics extends com.zeroc.Ice.Value
{
    public Metrics()
    {
        this.id = "";
        this.total = 0L;
        this.current = 0;
        this.totalLifetime = 0L;
        this.failures = 0;
    }

    public Metrics(String id, long total, int current, long totalLifetime, int failures)
    {
        this.id = id;
        this.total = total;
        this.current = current;
        this.totalLifetime = totalLifetime;
        this.failures = failures;
    }

    /**
     * The metrics identifier.
     **/
    public String id;

    /**
     * The total number of objects observed by this metrics. This includes the number of currently observed objects
     * and the number of objects observed in the past.
     **/
    public long total;

    /**
     * The number of objects currently observed by this metrics.
     **/
    public int current;

    /**
     * The sum of the lifetime of each observed objects. This does not include the lifetime of objects which are
     * currently observed, only the objects observed in the past.
     **/
    public long totalLifetime;

    /**
     * The number of failures observed.
     **/
    public int failures;

    public Metrics clone()
    {
        return (Metrics)super.clone();
    }

    public static String ice_staticId()
    {
        return "::IceMX::Metrics";
    }

    @Override
    public String ice_id()
    {
        return ice_staticId();
    }

    /** @hidden */
    public static final long serialVersionUID = -3187632055560194282L;

    /** @hidden */
    @Override
    protected void _iceWriteImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice(ice_staticId(), -1, true);
        ostr_.writeString(id);
        ostr_.writeLong(total);
        ostr_.writeInt(current);
        ostr_.writeLong(totalLifetime);
        ostr_.writeInt(failures);
        ostr_.endSlice();
    }

    /** @hidden */
    @Override
    protected void _iceReadImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        id = istr_.readString();
        total = istr_.readLong();
        current = istr_.readInt();
        totalLifetime = istr_.readLong();
        failures = istr_.readInt();
        istr_.endSlice();
    }
}
