//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `WstringAMD.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

package Test1;

public class WstringException extends com.zeroc.Ice.UserException
{
    public WstringException()
    {
        this.reason = "";
    }

    public WstringException(Throwable cause)
    {
        super(cause);
        this.reason = "";
    }

    public WstringException(String reason)
    {
        this.reason = reason;
    }

    public WstringException(String reason, Throwable cause)
    {
        super(cause);
        this.reason = reason;
    }

    public String ice_id()
    {
        return "::Test1::WstringException";
    }

    public String reason;

    /** @hidden */
    @Override
    protected void _writeImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice("::Test1::WstringException", -1, true);
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
    private static final long serialVersionUID = 1345708540848819316L;
}
