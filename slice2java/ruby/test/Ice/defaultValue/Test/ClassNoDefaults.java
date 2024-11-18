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
    }

    public ClassNoDefaults(String str, Color c1, byte[] bs, InnerStruct st, java.util.Map<java.lang.Integer, java.lang.String> dict)
    {
        super(str, c1, bs);
        this.st = st;
        this.dict = dict;
    }

    public InnerStruct st;

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
    private static final long serialVersionUID = 7711091087567870873L;

    /** @hidden */
    @Override
    protected void _iceWriteImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice(ice_staticId(), -1, false);
        InnerStruct.ice_write(ostr_, st);
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
        dict = IntStringDictHelper.read(istr_);
        istr_.endSlice();
        super._iceReadImpl(istr_);
    }
}
