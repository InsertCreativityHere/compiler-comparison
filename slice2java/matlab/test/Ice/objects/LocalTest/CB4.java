//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `LocalTest.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

package LocalTest;

public class CB4 extends com.zeroc.Ice.Value
{
    public CB4()
    {
    }

    public CB4(java.util.Map<java.lang.Integer, C1> c1dict)
    {
        this.c1dict = c1dict;
    }

    public java.util.Map<java.lang.Integer, C1> c1dict;

    public CB4 clone()
    {
        return (CB4)super.clone();
    }

    public static String ice_staticId()
    {
        return "::LocalTest::CB4";
    }

    @Override
    public String ice_id()
    {
        return ice_staticId();
    }

    /** @hidden */
    private static final long serialVersionUID = 4057364526996485941L;

    /** @hidden */
    @Override
    protected void _iceWriteImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice(ice_staticId(), -1, true);
        C1DictHelper.write(ostr_, c1dict);
        ostr_.endSlice();
    }

    /** @hidden */
    @Override
    protected void _iceReadImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        c1dict = C1DictHelper.read(istr_);
        istr_.endSlice();
    }
}
