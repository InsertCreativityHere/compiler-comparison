//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `NoPackage.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

package Test1;

/**
 * Test keyword escape.
 **/
public class def extends com.zeroc.Ice.UserException
{
    public def()
    {
    }

    public def(Throwable cause)
    {
        super(cause);
    }

    public def(int i)
    {
        this.i = i;
    }

    public def(int i, Throwable cause)
    {
        super(cause);
        this.i = i;
    }

    public String ice_id()
    {
        return "::Test1::def";
    }

    public int i;

    /** @hidden */
    @Override
    protected void _writeImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice("::Test1::def", -1, true);
        ostr_.writeInt(i);
        ostr_.endSlice();
    }

    /** @hidden */
    @Override
    protected void _readImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        i = istr_.readInt();
        istr_.endSlice();
    }

    /** @hidden */
    private static final long serialVersionUID = 7298383079442687141L;
}
