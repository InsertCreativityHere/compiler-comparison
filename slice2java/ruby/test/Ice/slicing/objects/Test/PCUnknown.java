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

public class PCUnknown extends PBase
{
    public PCUnknown()
    {
        super();
        this.pu = "";
    }

    public PCUnknown(int pi, String pu)
    {
        super(pi);
        this.pu = pu;
    }

    public String pu;

    public PCUnknown clone()
    {
        return (PCUnknown)super.clone();
    }

    public static String ice_staticId()
    {
        return "::Test::PCUnknown";
    }

    @Override
    public String ice_id()
    {
        return ice_staticId();
    }

    /** @hidden */
    private static final long serialVersionUID = -5081818634944094467L;

    /** @hidden */
    @Override
    protected void _iceWriteImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice(ice_staticId(), -1, false);
        ostr_.writeString(pu);
        ostr_.endSlice();
        super._iceWriteImpl(ostr_);
    }

    /** @hidden */
    @Override
    protected void _iceReadImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        pu = istr_.readString();
        istr_.endSlice();
        super._iceReadImpl(istr_);
    }
}
