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
 * This exception indicates that an attempt was made to subscribe a proxy that is null.
 **/
public class InvalidSubscriber extends com.zeroc.Ice.UserException
{
    public InvalidSubscriber()
    {
        this.reason = "";
    }

    public InvalidSubscriber(Throwable cause)
    {
        super(cause);
        this.reason = "";
    }

    public InvalidSubscriber(String reason)
    {
        this.reason = reason;
    }

    public InvalidSubscriber(String reason, Throwable cause)
    {
        super(cause);
        this.reason = reason;
    }

    public String ice_id()
    {
        return "::IceStorm::InvalidSubscriber";
    }

    /**
     * The reason for the failure.
     **/
    public String reason;

    /** @hidden */
    @Override
    protected void _writeImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice("::IceStorm::InvalidSubscriber", -1, true);
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
    public static final long serialVersionUID = -1090059688134542069L;
}
