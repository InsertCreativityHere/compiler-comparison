//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `Test.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

package test.Ice.interceptor.Test;

public class InvalidInputException extends com.zeroc.Ice.UserException
{
    public InvalidInputException()
    {
        this.message = "";
    }

    public InvalidInputException(Throwable cause)
    {
        super(cause);
        this.message = "";
    }

    public InvalidInputException(String message)
    {
        this.message = message;
    }

    public InvalidInputException(String message, Throwable cause)
    {
        super(cause);
        this.message = message;
    }

    public String ice_id()
    {
        return "::Test::InvalidInputException";
    }

    public String message;

    /** @hidden */
    @Override
    protected void _writeImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice("::Test::InvalidInputException", -1, true);
        ostr_.writeString(message);
        ostr_.endSlice();
    }

    /** @hidden */
    @Override
    protected void _readImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        message = istr_.readString();
        istr_.endSlice();
    }

    /** @hidden */
    public static final long serialVersionUID = -8742728098862244649L;
}
