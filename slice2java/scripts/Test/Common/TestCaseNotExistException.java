//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `Controller.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

package Test.Common;

public class TestCaseNotExistException extends com.zeroc.Ice.UserException
{
    public TestCaseNotExistException()
    {
        this.reason = "";
    }

    public TestCaseNotExistException(Throwable cause)
    {
        super(cause);
        this.reason = "";
    }

    public TestCaseNotExistException(String reason)
    {
        this.reason = reason;
    }

    public TestCaseNotExistException(String reason, Throwable cause)
    {
        super(cause);
        this.reason = reason;
    }

    public String ice_id()
    {
        return "::Test::Common::TestCaseNotExistException";
    }

    public String reason;

    /** @hidden */
    @Override
    protected void _writeImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice("::Test::Common::TestCaseNotExistException", -1, true);
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
    public static final long serialVersionUID = -8656774080284744464L;
}
