// Copyright (c) ZeroC, Inc.
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file 'IceStorm.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>

package com.zeroc.IceStorm;

/**
 * This exception indicates that an attempt was made to retrieve a topic that does not exist.
 **/
public class NoSuchTopic extends com.zeroc.Ice.UserException
{
    public NoSuchTopic()
    {
        this.name = "";
    }

    public NoSuchTopic(String name)
    {
        this.name = name;
    }

    public String ice_id()
    {
        return "::IceStorm::NoSuchTopic";
    }

    /**
     * The name of the topic that does not exist.
     **/
    public String name;

    /** @hidden */
    @Override
    protected void _writeImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice("::IceStorm::NoSuchTopic", -1, true);
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
    private static final long serialVersionUID = -1394036261792245963L;
}
