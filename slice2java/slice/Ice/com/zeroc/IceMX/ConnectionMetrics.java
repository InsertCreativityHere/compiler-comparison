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
 * Provides information on the data sent and received over Ice connections.
 **/
public class ConnectionMetrics extends Metrics
{
    public ConnectionMetrics()
    {
        super();
        this.receivedBytes = 0L;
        this.sentBytes = 0L;
    }

    public ConnectionMetrics(String id, long total, int current, long totalLifetime, int failures, long receivedBytes, long sentBytes)
    {
        super(id, total, current, totalLifetime, failures);
        this.receivedBytes = receivedBytes;
        this.sentBytes = sentBytes;
    }

    /**
     * The number of bytes received by the connection.
     **/
    public long receivedBytes;

    /**
     * The number of bytes sent by the connection.
     **/
    public long sentBytes;

    public ConnectionMetrics clone()
    {
        return (ConnectionMetrics)super.clone();
    }

    public static String ice_staticId()
    {
        return "::IceMX::ConnectionMetrics";
    }

    @Override
    public String ice_id()
    {
        return ice_staticId();
    }

    /** @hidden */
    public static final long serialVersionUID = 8735307314119461847L;

    /** @hidden */
    @Override
    protected void _iceWriteImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice(ice_staticId(), -1, false);
        ostr_.writeLong(receivedBytes);
        ostr_.writeLong(sentBytes);
        ostr_.endSlice();
        super._iceWriteImpl(ostr_);
    }

    /** @hidden */
    @Override
    protected void _iceReadImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        receivedBytes = istr_.readLong();
        sentBytes = istr_.readLong();
        istr_.endSlice();
        super._iceReadImpl(istr_);
    }
}
