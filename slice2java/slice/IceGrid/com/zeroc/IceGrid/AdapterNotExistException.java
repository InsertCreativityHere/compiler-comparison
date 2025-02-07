// Copyright (c) ZeroC, Inc.
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file 'Exception.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>

package com.zeroc.IceGrid;

/**
 * This exception is raised if an adapter does not exist.
 **/
public class AdapterNotExistException extends com.zeroc.Ice.UserException
{
    public AdapterNotExistException()
    {
        this.id = "";
    }

    public AdapterNotExistException(String id)
    {
        this.id = id;
    }

    public String ice_id()
    {
        return "::IceGrid::AdapterNotExistException";
    }

    /**
     * The id of the object adapter.
     **/
    public String id;

    /** @hidden */
    @Override
    protected void _writeImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice("::IceGrid::AdapterNotExistException", -1, true);
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
    private static final long serialVersionUID = 8932137425494689627L;
}
