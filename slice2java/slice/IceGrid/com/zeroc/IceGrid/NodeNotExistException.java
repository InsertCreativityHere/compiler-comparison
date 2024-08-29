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
 * This exception is raised if a node does not exist.
 **/
public class NodeNotExistException extends com.zeroc.Ice.UserException
{
    public NodeNotExistException()
    {
        this.name = "";
    }

    public NodeNotExistException(String name)
    {
        this.name = name;
    }

    public String ice_id()
    {
        return "::IceGrid::NodeNotExistException";
    }

    /**
     * The node name.
     **/
    public String name;

    /** @hidden */
    @Override
    protected void _writeImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice("::IceGrid::NodeNotExistException", -1, true);
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
    private static final long serialVersionUID = -5774526928430682100L;
}
