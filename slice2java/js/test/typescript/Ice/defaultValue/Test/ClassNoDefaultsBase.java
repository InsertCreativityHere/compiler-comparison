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

public class ClassNoDefaultsBase extends com.zeroc.Ice.Value
{
    public ClassNoDefaultsBase()
    {
        this.str = "";
        this.c1 = Color.red;
    }

    public ClassNoDefaultsBase(String str, Color c1, byte[] bs)
    {
        this.str = str;
        this.c1 = c1;
        this.bs = bs;
    }

    public String str;

    public Color c1;

    public byte[] bs;

    public ClassNoDefaultsBase clone()
    {
        return (ClassNoDefaultsBase)super.clone();
    }

    public static String ice_staticId()
    {
        return "::Test::ClassNoDefaultsBase";
    }

    @Override
    public String ice_id()
    {
        return ice_staticId();
    }

    /** @hidden */
    public static final long serialVersionUID = 835265744375414059L;

    /** @hidden */
    @Override
    protected void _iceWriteImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice(ice_staticId(), -1, true);
        ostr_.writeString(str);
        Color.ice_write(ostr_, c1);
        ostr_.writeByteSeq(bs);
        ostr_.endSlice();
    }

    /** @hidden */
    @Override
    protected void _iceReadImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        str = istr_.readString();
        c1 = Color.ice_read(istr_);
        bs = istr_.readByteSeq();
        istr_.endSlice();
    }
}
