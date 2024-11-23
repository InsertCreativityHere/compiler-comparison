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
 * This exception indicates that an attempt was made to create a topic that already exists.
 **/
public class TopicExists extends com.zeroc.Ice.UserException
{
    public TopicExists()
    {
        this.name = "";
    }

    public TopicExists(String name)
    {
        this.name = name;
    }

    public String ice_id()
    {
        return "::IceStorm::TopicExists";
    }

    /**
     * The name of the topic that already exists.
     **/
    public String name;

    /** @hidden */
    @Override
    protected void _writeImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice("::IceStorm::TopicExists", -1, true);
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
    private static final long serialVersionUID = 3979364272067078770L;
}
