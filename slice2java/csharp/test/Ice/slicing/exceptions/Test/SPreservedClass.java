//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `ServerPrivate.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

package Test;

public class SPreservedClass extends BaseClass
{
    public SPreservedClass()
    {
        super();
        this.spc = "";
    }

    public SPreservedClass(String bc, String spc)
    {
        super(bc);
        this.spc = spc;
    }

    public String spc;

    public SPreservedClass clone()
    {
        return (SPreservedClass)super.clone();
    }

    public static String ice_staticId()
    {
        return "::Test::SPreservedClass";
    }

    @Override
    public String ice_id()
    {
        return ice_staticId();
    }

    /** @hidden */
    public static final long serialVersionUID = 691112873037228693L;

    /** @hidden */
    @Override
    protected void _iceWriteImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice(ice_staticId(), -1, false);
        ostr_.writeString(spc);
        ostr_.endSlice();
        super._iceWriteImpl(ostr_);
    }

    /** @hidden */
    @Override
    protected void _iceReadImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        spc = istr_.readString();
        istr_.endSlice();
        super._iceReadImpl(istr_);
    }
}
