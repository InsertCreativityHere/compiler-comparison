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

package com.zeroc.Glacier2.IceMX;

/**
 * Provides information on Glacier2 sessions.
 **/
public class SessionMetrics extends com.zeroc.Ice.IceMX.Metrics
{
    public SessionMetrics()
    {
        super();
        this.forwardedClient = 0;
        this.forwardedServer = 0;
        this.routingTableSize = 0;
        this.queuedClient = 0;
        this.queuedServer = 0;
        this.overriddenClient = 0;
        this.overriddenServer = 0;
    }

    public SessionMetrics(String id, long total, int current, long totalLifetime, int failures, int forwardedClient, int forwardedServer, int routingTableSize, int queuedClient, int queuedServer, int overriddenClient, int overriddenServer)
    {
        super(id, total, current, totalLifetime, failures);
        this.forwardedClient = forwardedClient;
        this.forwardedServer = forwardedServer;
        this.routingTableSize = routingTableSize;
        this.queuedClient = queuedClient;
        this.queuedServer = queuedServer;
        this.overriddenClient = overriddenClient;
        this.overriddenServer = overriddenServer;
    }

    /**
     * Number of client requests forwarded.
     **/
    public int forwardedClient;

    /**
     * Number of server requests forwarded.
     **/
    public int forwardedServer;

    /**
     * The size of the routing table.
     **/
    public int routingTableSize;

    /**
     * Number of client requests queued.
     **/
    public int queuedClient;

    /**
     * Number of server requests queued.
     **/
    public int queuedServer;

    /**
     * Number of client requests overridden.
     **/
    public int overriddenClient;

    /**
     * Number of server requests overridden.
     **/
    public int overriddenServer;

    public SessionMetrics clone()
    {
        return (SessionMetrics)super.clone();
    }

    public static String ice_staticId()
    {
        return "::IceMX::SessionMetrics";
    }

    @Override
    public String ice_id()
    {
        return ice_staticId();
    }

    /** @hidden */
    private static final long serialVersionUID = 6480540280842287148L;

    /** @hidden */
    @Override
    protected void _iceWriteImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice(ice_staticId(), -1, false);
        ostr_.writeInt(forwardedClient);
        ostr_.writeInt(forwardedServer);
        ostr_.writeInt(routingTableSize);
        ostr_.writeInt(queuedClient);
        ostr_.writeInt(queuedServer);
        ostr_.writeInt(overriddenClient);
        ostr_.writeInt(overriddenServer);
        ostr_.endSlice();
        super._iceWriteImpl(ostr_);
    }

    /** @hidden */
    @Override
    protected void _iceReadImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        forwardedClient = istr_.readInt();
        forwardedServer = istr_.readInt();
        routingTableSize = istr_.readInt();
        queuedClient = istr_.readInt();
        queuedServer = istr_.readInt();
        overriddenClient = istr_.readInt();
        overriddenServer = istr_.readInt();
        istr_.endSlice();
        super._iceReadImpl(istr_);
    }
}
