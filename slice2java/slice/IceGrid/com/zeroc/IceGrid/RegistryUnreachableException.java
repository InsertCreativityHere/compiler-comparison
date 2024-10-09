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
 * This exception is raised if a registry could not be reached.
 **/
public class RegistryUnreachableException extends com.zeroc.Ice.UserException
{
    public RegistryUnreachableException()
    {
        this.name = "";
        this.reason = "";
    }

    public RegistryUnreachableException(String name, String reason)
    {
        this.name = name;
        this.reason = reason;
    }

    public String ice_id()
    {
        return "::IceGrid::RegistryUnreachableException";
    }

    /**
     * The name of the registry that is not reachable.
     **/
    public String name;

    /**
     * The reason why the registry couldn't be reached.
     **/
    public String reason;

    /** @hidden */
    @Override
    protected void _writeImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice("::IceGrid::RegistryUnreachableException", -1, true);
        ostr_.writeString(name);
        ostr_.writeString(reason);
        ostr_.endSlice();
    }

    /** @hidden */
    @Override
    protected void _readImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        name = istr_.readString();
        reason = istr_.readString();
        istr_.endSlice();
    }

    /** @hidden */
    private static final long serialVersionUID = -4591791880514188367L;
}
