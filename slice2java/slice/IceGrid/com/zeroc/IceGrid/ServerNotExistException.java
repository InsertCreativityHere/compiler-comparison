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
 * This exception is raised if a server does not exist.
 **/
public class ServerNotExistException extends com.zeroc.Ice.UserException
{
    public ServerNotExistException()
    {
        this.id = "";
    }

    public ServerNotExistException(Throwable cause)
    {
        super(cause);
        this.id = "";
    }

    public ServerNotExistException(String id)
    {
        this.id = id;
    }

    public ServerNotExistException(String id, Throwable cause)
    {
        super(cause);
        this.id = id;
    }

    public String ice_id()
    {
        return "::IceGrid::ServerNotExistException";
    }

    /**
     * The identifier of the server.
     **/
    public String id;

    /** @hidden */
    @Override
    protected void _writeImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice("::IceGrid::ServerNotExistException", -1, true);
        ostr_.writeString(id);
        ostr_.endSlice();
    }

    /** @hidden */
    @Override
    protected void _readImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        id = istr_.readString();
        istr_.endSlice();
    }

    /** @hidden */
    private static final long serialVersionUID = -2699419319161055322L;
}
