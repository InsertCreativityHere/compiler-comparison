//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.7.9
//
// <auto-generated>
//
// Generated from file `ServantLocatorTest.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

package Test;

public class TestIntfUserException extends com.zeroc.Ice.UserException
{
    public TestIntfUserException()
    {
    }

    public TestIntfUserException(Throwable cause)
    {
        super(cause);
    }

    public String ice_id()
    {
        return "::Test::TestIntfUserException";
    }

    /** @hidden */
    @Override
    protected void _writeImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice("::Test::TestIntfUserException", -1, true);
        ostr_.endSlice();
    }

    /** @hidden */
    @Override
    protected void _readImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        istr_.endSlice();
    }

    /** @hidden */
    public static final long serialVersionUID = -4266094284014360620L;
}
