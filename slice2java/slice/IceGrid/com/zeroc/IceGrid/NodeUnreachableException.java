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
 * This exception is raised if a node could not be reached.
 **/
public class NodeUnreachableException extends com.zeroc.Ice.UserException
{
    public NodeUnreachableException()
    {
        this.name = "";
        this.reason = "";
    }

    public NodeUnreachableException(String name, String reason)
    {
        this.name = name;
        this.reason = reason;
    }

    public String ice_id()
    {
        return "::IceGrid::NodeUnreachableException";
    }

    /**
     * The name of the node that is not reachable.
     **/
    public String name;

    /**
     * The reason why the node couldn't be reached.
     **/
    public String reason;

    /** @hidden */
    @Override
    protected void _writeImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice("::IceGrid::NodeUnreachableException", -1, true);
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
    private static final long serialVersionUID = -8449587921573826972L;
}
