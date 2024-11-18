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
 * Provide measurements for proxy invocations. Proxy invocations can either be sent over the wire or be collocated.
 **/
public class InvocationMetrics extends Metrics
{
    public InvocationMetrics()
    {
        super();
        this.retry = 0;
        this.userException = 0;
    }

    public InvocationMetrics(String id, long total, int current, long totalLifetime, int failures, int retry, int userException, Metrics[] remotes, Metrics[] collocated)
    {
        super(id, total, current, totalLifetime, failures);
        this.retry = retry;
        this.userException = userException;
        this.remotes = remotes;
        this.collocated = collocated;
    }

    /**
     * The number of retries for the invocation(s).
     **/
    public int retry;

    /**
     * The number of invocations that failed with a user exception.
     **/
    public int userException;

    /**
     * The remote invocation metrics map.
     *
     * @see RemoteMetrics
     **/
    public Metrics[] remotes;

    /**
     * The collocated invocation metrics map.
     *
     * @see CollocatedMetrics
     **/
    public Metrics[] collocated;

    public InvocationMetrics clone()
    {
        return (InvocationMetrics)super.clone();
    }

    public static String ice_staticId()
    {
        return "::IceMX::InvocationMetrics";
    }

    @Override
    public String ice_id()
    {
        return ice_staticId();
    }

    /** @hidden */
    private static final long serialVersionUID = -4364601848736340337L;

    /** @hidden */
    @Override
    protected void _iceWriteImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice(ice_staticId(), -1, false);
        ostr_.writeInt(retry);
        ostr_.writeInt(userException);
        MetricsMapHelper.write(ostr_, remotes);
        MetricsMapHelper.write(ostr_, collocated);
        ostr_.endSlice();
        super._iceWriteImpl(ostr_);
    }

    /** @hidden */
    @Override
    protected void _iceReadImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        retry = istr_.readInt();
        userException = istr_.readInt();
        remotes = MetricsMapHelper.read(istr_);
        collocated = MetricsMapHelper.read(istr_);
        istr_.endSlice();
        super._iceReadImpl(istr_);
    }
}
