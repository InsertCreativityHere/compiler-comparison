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

public class D extends com.zeroc.Ice.UserException
{
    public D()
    {
    }

    public D(Throwable cause)
    {
        super(cause);
    }

    public D(int dMem)
    {
        this.dMem = dMem;
    }

    public D(int dMem, Throwable cause)
    {
        super(cause);
        this.dMem = dMem;
    }

    public String ice_id()
    {
        return "::Test::D";
    }

    public int dMem;

    /** @hidden */
    @Override
    protected void _writeImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice("::Test::D", -1, true);
        ostr_.writeInt(dMem);
        ostr_.endSlice();
    }

    /** @hidden */
    @Override
    protected void _readImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        dMem = istr_.readInt();
        istr_.endSlice();
    }

    /** @hidden */
    public static final long serialVersionUID = 4780382963775114228L;
}
