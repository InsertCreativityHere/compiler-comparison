//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.7.10
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
 * This exception is raised if a patch failed.
 **/
public class PatchException extends com.zeroc.Ice.UserException
{
    public PatchException()
    {
    }

    public PatchException(Throwable cause)
    {
        super(cause);
    }

    public PatchException(String[] reasons)
    {
        this.reasons = reasons;
    }

    public PatchException(String[] reasons, Throwable cause)
    {
        super(cause);
        this.reasons = reasons;
    }

    public String ice_id()
    {
        return "::IceGrid::PatchException";
    }

    /**
     * The reasons why the patch failed.
     **/
    public String[] reasons;

    /** @hidden */
    @Override
    protected void _writeImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice("::IceGrid::PatchException", -1, true);
        ostr_.writeStringSeq(reasons);
        ostr_.endSlice();
    }

    /** @hidden */
    @Override
    protected void _readImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        reasons = istr_.readStringSeq();
        istr_.endSlice();
    }

    /** @hidden */
    public static final long serialVersionUID = -74642179718275826L;
}
