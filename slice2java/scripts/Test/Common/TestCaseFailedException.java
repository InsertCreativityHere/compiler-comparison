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

public class TestCaseFailedException extends com.zeroc.Ice.UserException
{
    public TestCaseFailedException()
    {
        this.output = "";
    }

    public TestCaseFailedException(Throwable cause)
    {
        super(cause);
        this.output = "";
    }

    public TestCaseFailedException(String output)
    {
        this.output = output;
    }

    public TestCaseFailedException(String output, Throwable cause)
    {
        super(cause);
        this.output = output;
    }

    public String ice_id()
    {
        return "::Test::Common::TestCaseFailedException";
    }

    public String output;

    /** @hidden */
    @Override
    protected void _writeImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice("::Test::Common::TestCaseFailedException", -1, true);
        ostr_.writeString(output);
        ostr_.endSlice();
    }

    /** @hidden */
    @Override
    protected void _readImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        output = istr_.readString();
        istr_.endSlice();
    }

    /** @hidden */
    private static final long serialVersionUID = 7577600592906652294L;
}
