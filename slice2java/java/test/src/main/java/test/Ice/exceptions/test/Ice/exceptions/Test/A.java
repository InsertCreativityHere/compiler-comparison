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

package test.Ice.exceptions.Test;

public class A extends com.zeroc.Ice.UserException
{
    public A()
    {
    }

    public A(Throwable cause)
    {
        super(cause);
    }

    public A(int aMem)
    {
        this.aMem = aMem;
    }

    public A(int aMem, Throwable cause)
    {
        super(cause);
        this.aMem = aMem;
    }

    public String ice_id()
    {
        return "::Test::A";
    }

    public int aMem;

    /** @hidden */
    @Override
    protected void _writeImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice("::Test::A", -1, true);
        ostr_.writeInt(aMem);
        ostr_.endSlice();
    }

    /** @hidden */
    @Override
    protected void _readImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        aMem = istr_.readInt();
        istr_.endSlice();
    }

    /** @hidden */
    public static final long serialVersionUID = 7823745123271842763L;
}
