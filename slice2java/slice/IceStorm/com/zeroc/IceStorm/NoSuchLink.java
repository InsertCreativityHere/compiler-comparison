//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `IceStorm.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

package com.zeroc.IceStorm;

/**
 * This exception indicates that an attempt was made to remove a link that does not exist.
 **/
public class NoSuchLink extends com.zeroc.Ice.UserException
{
    public NoSuchLink()
    {
        this.name = "";
    }

    public NoSuchLink(Throwable cause)
    {
        super(cause);
        this.name = "";
    }

    public NoSuchLink(String name)
    {
        this.name = name;
    }

    public NoSuchLink(String name, Throwable cause)
    {
        super(cause);
        this.name = name;
    }

    public String ice_id()
    {
        return "::IceStorm::NoSuchLink";
    }

    /**
     * The name of the link that does not exist.
     **/
    public String name;

    /** @hidden */
    @Override
    protected void _writeImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice("::IceStorm::NoSuchLink", -1, true);
        ostr_.writeString(name);
        ostr_.endSlice();
    }

    /** @hidden */
    @Override
    protected void _readImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        name = istr_.readString();
        istr_.endSlice();
    }

    /** @hidden */
    private static final long serialVersionUID = -8653877300288073848L;
}
