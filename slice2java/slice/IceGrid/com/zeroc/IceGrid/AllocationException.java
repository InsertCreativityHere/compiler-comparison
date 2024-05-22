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
 * This exception is raised if the allocation of an object failed.
 **/
public class AllocationException extends com.zeroc.Ice.UserException
{
    public AllocationException()
    {
        this.reason = "";
    }

    public AllocationException(Throwable cause)
    {
        super(cause);
        this.reason = "";
    }

    public AllocationException(String reason)
    {
        this.reason = reason;
    }

    public AllocationException(String reason, Throwable cause)
    {
        super(cause);
        this.reason = reason;
    }

    public String ice_id()
    {
        return "::IceGrid::AllocationException";
    }

    /**
     * The reason why the object couldn't be allocated.
     **/
    public String reason;

    /** @hidden */
    @Override
    protected void _writeImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice("::IceGrid::AllocationException", -1, true);
        ostr_.writeString(reason);
        ostr_.endSlice();
    }

    /** @hidden */
    @Override
    protected void _readImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        reason = istr_.readString();
        istr_.endSlice();
    }

    /** @hidden */
    public static final long serialVersionUID = 4699860748824453483L;
}
