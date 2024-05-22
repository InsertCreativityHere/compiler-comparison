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
 * This exception indicates that an attempt was made to create a link that already exists.
 **/
public class LinkExists extends com.zeroc.Ice.UserException
{
    public LinkExists()
    {
        this.name = "";
    }

    public LinkExists(Throwable cause)
    {
        super(cause);
        this.name = "";
    }

    public LinkExists(String name)
    {
        this.name = name;
    }

    public LinkExists(String name, Throwable cause)
    {
        super(cause);
        this.name = name;
    }

    public String ice_id()
    {
        return "::IceStorm::LinkExists";
    }

    /**
     * The name of the linked topic.
     **/
    public String name;

    /** @hidden */
    @Override
    protected void _writeImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice("::IceStorm::LinkExists", -1, true);
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
    public static final long serialVersionUID = 243155781164620887L;
}
