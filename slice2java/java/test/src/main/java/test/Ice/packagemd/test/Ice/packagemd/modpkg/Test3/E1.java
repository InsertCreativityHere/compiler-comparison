//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `Package.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

package test.Ice.packagemd.modpkg.Test3;

public class E1 extends com.zeroc.Ice.UserException
{
    public E1()
    {
    }

    public E1(int i)
    {
        this.i = i;
    }

    public String ice_id()
    {
        return "::Test3::E1";
    }

    public int i;

    /** @hidden */
    @Override
    protected void _writeImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice("::Test3::E1", -1, true);
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
    private static final long serialVersionUID = 5344583207034826893L;
}
