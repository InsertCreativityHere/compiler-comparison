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

public class Extended extends Base
{
    public Extended()
    {
        super();
    }

    public Extended(String b, int e)
    {
        super(b);
        this.e = e;
    }

    public int e;

    public Extended clone()
    {
        return (Extended)super.clone();
    }

    public static String ice_staticId()
    {
        return "::Test::Extended";
    }

    @Override
    public String ice_id()
    {
        return ice_staticId();
    }

    /** @hidden */
    private static final long serialVersionUID = 2516991532495619357L;

    /** @hidden */
    @Override
    protected void _iceWriteImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice(ice_staticId(), -1, false);
        ostr_.writeInt(e);
        ostr_.endSlice();
        super._iceWriteImpl(ostr_);
    }

    /** @hidden */
    @Override
    protected void _iceReadImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        e = istr_.readInt();
        istr_.endSlice();
        super._iceReadImpl(istr_);
    }
}
