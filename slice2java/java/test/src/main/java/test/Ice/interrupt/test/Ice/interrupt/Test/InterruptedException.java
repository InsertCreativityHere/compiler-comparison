//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.7.9
//
// <auto-generated>
//
// Generated from file `Test.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

package test.Ice.interrupt.Test;

public class InterruptedException extends com.zeroc.Ice.UserException
{
    public InterruptedException()
    {
    }

    public InterruptedException(Throwable cause)
    {
        super(cause);
    }

    public String ice_id()
    {
        return "::Test::InterruptedException";
    }

    /** @hidden */
    @Override
    protected void _writeImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice("::Test::InterruptedException", -1, true);
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
    public static final long serialVersionUID = -5901122535827811808L;
}
