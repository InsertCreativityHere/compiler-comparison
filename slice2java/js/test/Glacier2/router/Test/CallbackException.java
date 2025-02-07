// Copyright (c) ZeroC, Inc.
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file 'Callback.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>

package Test;

public class CallbackException extends com.zeroc.Ice.UserException
{
    public CallbackException()
    {
        this.someString = "";
    }

    public CallbackException(double someValue, String someString)
    {
        this.someValue = someValue;
        this.someString = someString;
    }

    public String ice_id()
    {
        return "::Test::CallbackException";
    }

    public double someValue;

    public String someString;

    /** @hidden */
    @Override
    protected void _writeImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice("::Test::CallbackException", -1, true);
        ostr_.writeDouble(someValue);
        ostr_.writeString(someString);
        ostr_.endSlice();
    }

    /** @hidden */
    @Override
    protected void _readImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        someValue = istr_.readDouble();
        someString = istr_.readString();
        istr_.endSlice();
    }

    /** @hidden */
    private static final long serialVersionUID = -5419554587870599278L;
}
