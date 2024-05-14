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

package Test;

public class MyException extends com.zeroc.Ice.UserException
{
    public MyException()
    {
    }

    public MyException(Throwable cause)
    {
        super(cause);
    }

    public MyException(MyClass c)
    {
        this.c = c;
    }

    public MyException(MyClass c, Throwable cause)
    {
        super(cause);
        this.c = c;
    }

    public String ice_id()
    {
        return "::Test::MyException";
    }

    public MyClass c;

    /** @hidden */
    @Override
    protected void _writeImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice("::Test::MyException", -1, true);
        ostr_.writeValue(c);
        ostr_.endSlice();
    }

    /** @hidden */
    @Override
    protected void _readImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        istr_.readValue(v -> c = v, MyClass.class);
        istr_.endSlice();
    }

    /** @hidden */
    @Override
    public boolean _usesClasses()
    {
        return true;
    }

    /** @hidden */
    public static final long serialVersionUID = 5734227385279861532L;
}
