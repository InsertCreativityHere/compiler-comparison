// Copyright (c) ZeroC, Inc.
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file 'LocalTest.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>

package LocalTest;

public class CB5 extends com.zeroc.Ice.Value
{
    public CB5()
    {
    }

    public CB5(java.util.Map<java.lang.Integer, S1> s1dict)
    {
        this.s1dict = s1dict;
    }

    public java.util.Map<java.lang.Integer, S1> s1dict;

    public CB5 clone()
    {
        return (CB5)super.clone();
    }

    public static String ice_staticId()
    {
        return "::LocalTest::CB5";
    }

    @Override
    public String ice_id()
    {
        return ice_staticId();
    }

    /** @hidden */
    private static final long serialVersionUID = 1129844424669212070L;

    /** @hidden */
    @Override
    protected void _iceWriteImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice(ice_staticId(), -1, true);
        S1DictHelper.write(ostr_, s1dict);
        ostr_.endSlice();
    }

    /** @hidden */
    @Override
    protected void _iceReadImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        s1dict = S1DictHelper.read(istr_);
        istr_.endSlice();
    }
}
