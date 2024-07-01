//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `FileParser.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

package com.zeroc.IceGrid;

/**
 * This exception is raised if an error occurs during parsing.
 **/
public class ParseException extends com.zeroc.Ice.UserException
{
    public ParseException()
    {
        this.reason = "";
    }

    public ParseException(Throwable cause)
    {
        super(cause);
        this.reason = "";
    }

    public ParseException(String reason)
    {
        this.reason = reason;
    }

    public ParseException(String reason, Throwable cause)
    {
        super(cause);
        this.reason = reason;
    }

    public String ice_id()
    {
        return "::IceGrid::ParseException";
    }

    /**
     * The reason for the failure.
     **/
    public String reason;

    /** @hidden */
    @Override
    protected void _writeImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice("::IceGrid::ParseException", -1, true);
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
    private static final long serialVersionUID = -5694234353306232713L;
}
