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

public class ClassNoDefaults extends ClassNoDefaultsBase
{
    public ClassNoDefaults()
    {
        super();
        this.st = new InnerStruct();
        this.st2 = new InnerStruct2();
    }

    public ClassNoDefaults(String str, Color c1, byte[] bs, InnerStruct st, InnerStruct2 st2, java.util.Map<java.lang.Integer, java.lang.String> dict)
    {
        super(str, c1, bs);
        this.st = st;
        this.st2 = st2;
        this.dict = dict;
    }

    public InnerStruct st;

    public InnerStruct2 st2;

    public java.util.Map<java.lang.Integer, java.lang.String> dict;

    public ClassNoDefaults clone()
    {
        return (ClassNoDefaults)super.clone();
    }

    public static String ice_staticId()
    {
        return "::Test::ClassNoDefaults";
    }

    @Override
    public String ice_id()
    {
        return ice_staticId();
    }

    /** @hidden */
    public static final long serialVersionUID = 3670055338846405931L;

    /** @hidden */
    @Override
    protected void _iceWriteImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice(ice_staticId(), -1, false);
        InnerStruct.ice_write(ostr_, st);
        InnerStruct2.ice_write(ostr_, st2);
        IntStringDictHelper.write(ostr_, dict);
        ostr_.endSlice();
        super._iceWriteImpl(ostr_);
    }

    /** @hidden */
    @Override
    protected void _iceReadImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        st = InnerStruct.ice_read(istr_);
        st2 = InnerStruct2.ice_read(istr_);
        dict = IntStringDictHelper.read(istr_);
        istr_.endSlice();
        super._iceReadImpl(istr_);
    }
}
