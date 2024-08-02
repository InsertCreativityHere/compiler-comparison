//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `ClientPrivate.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

package Test;

public class PreservedClass extends BaseClass
{
    public PreservedClass()
    {
        super();
        this.pc = "";
    }

    public PreservedClass(String bc, String pc)
    {
        super(bc);
        this.pc = pc;
    }

    public String pc;

    public PreservedClass clone()
    {
        return (PreservedClass)super.clone();
    }

    public static String ice_staticId()
    {
        return "::Test::PreservedClass";
    }

    @Override
    public String ice_id()
    {
        return ice_staticId();
    }

    /** @hidden */
    private static final long serialVersionUID = -4272727519895824197L;

    /** @hidden */
    @Override
    protected void _iceWriteImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice(ice_staticId(), -1, false);
        ostr_.writeString(pc);
        ostr_.endSlice();
        super._iceWriteImpl(ostr_);
    }

    /** @hidden */
    @Override
    protected void _iceReadImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        pc = istr_.readString();
        istr_.endSlice();
        super._iceReadImpl(istr_);
    }
}
