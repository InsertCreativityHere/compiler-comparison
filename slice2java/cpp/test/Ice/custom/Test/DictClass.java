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

public class DictClass extends com.zeroc.Ice.Value
{
    public DictClass()
    {
    }

    public DictClass(java.util.Map<java.lang.Integer, java.lang.String> isdict)
    {
        this.isdict = isdict;
    }

    public java.util.Map<java.lang.Integer, java.lang.String> isdict;

    public DictClass clone()
    {
        return (DictClass)super.clone();
    }

    public static String ice_staticId()
    {
        return "::Test::DictClass";
    }

    @Override
    public String ice_id()
    {
        return ice_staticId();
    }

    /** @hidden */
    public static final long serialVersionUID = 6545917479126811005L;

    /** @hidden */
    @Override
    protected void _iceWriteImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice(ice_staticId(), -1, true);
        IntStringDictHelper.write(ostr_, isdict);
        ostr_.endSlice();
    }

    /** @hidden */
    @Override
    protected void _iceReadImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        isdict = IntStringDictHelper.read(istr_);
        istr_.endSlice();
    }
}
