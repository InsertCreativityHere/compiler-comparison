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

package Test.Mod;

public class A extends Test.A
{
    public A()
    {
    }

    public A(int aMem, int a2Mem)
    {
        super(aMem);
        this.a2Mem = a2Mem;
    }

    public String ice_id()
    {
        return "::Test::Mod::A";
    }

    public int a2Mem;

    /** @hidden */
    @Override
    protected void _writeImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice("::Test::Mod::A", -1, false);
        ostr_.writeInt(a2Mem);
        ostr_.endSlice();
        super._writeImpl(ostr_);
    }

    /** @hidden */
    @Override
    protected void _readImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        a2Mem = istr_.readInt();
        istr_.endSlice();
        super._readImpl(istr_);
    }

    /** @hidden */
    private static final long serialVersionUID = -4641412519093591206L;
}
