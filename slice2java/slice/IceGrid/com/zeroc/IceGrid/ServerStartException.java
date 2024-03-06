//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `Exception.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

package com.zeroc.IceGrid;

/**
 * This exception is raised if a server failed to start.
 **/
public class ServerStartException extends com.zeroc.Ice.UserException
{
    public ServerStartException()
    {
        this.id = "";
        this.reason = "";
    }

    public ServerStartException(Throwable cause)
    {
        super(cause);
        this.id = "";
        this.reason = "";
    }

    public ServerStartException(String id, String reason)
    {
        this.id = id;
        this.reason = reason;
    }

    public ServerStartException(String id, String reason, Throwable cause)
    {
        super(cause);
        this.id = id;
        this.reason = reason;
    }

    public String ice_id()
    {
        return "::IceGrid::ServerStartException";
    }

    /**
     * The identifier of the server.
     **/
    public String id;

    /**
     * The reason for the failure.
     **/
    public String reason;

    /** @hidden */
    @Override
    protected void _writeImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice("::IceGrid::ServerStartException", -1, true);
        ostr_.writeString(id);
        ostr_.writeString(reason);
        ostr_.endSlice();
    }

    /** @hidden */
    @Override
    protected void _readImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        id = istr_.readString();
        reason = istr_.readString();
        istr_.endSlice();
    }

    /** @hidden */
    public static final long serialVersionUID = -7907401989223792377L;
}
