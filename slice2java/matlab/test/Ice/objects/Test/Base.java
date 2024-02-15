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

public class Base extends com.zeroc.Ice.Value
{
    public Base()
    {
        this.theS = new S();
        this.str = "";
    }

    public Base(S theS, String str)
    {
        this.theS = theS;
        this.str = str;
    }

    public S theS;

    public String str;

    public Base clone()
    {
        return (Base)super.clone();
    }

    public static String ice_staticId()
    {
        return "::Test::Base";
    }

    @Override
    public String ice_id()
    {
        return ice_staticId();
    }

    /** @hidden */
    public static final long serialVersionUID = 3256748987667618970L;

    /** @hidden */
    @Override
    protected void _iceWriteImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice(ice_staticId(), -1, true);
        S.ice_write(ostr_, theS);
        ostr_.writeString(str);
        ostr_.endSlice();
    }

    /** @hidden */
    @Override
    protected void _iceReadImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        theS = S.ice_read(istr_);
        str = istr_.readString();
        istr_.endSlice();
    }
}
