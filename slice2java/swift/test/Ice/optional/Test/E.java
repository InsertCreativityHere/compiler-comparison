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

public class E extends com.zeroc.Ice.Value
{
    public E()
    {
        this.fse = new FixedStruct();
    }

    public E(FixedStruct fse)
    {
        this.fse = fse;
    }

    public FixedStruct fse;

    public E clone()
    {
        return (E)super.clone();
    }

    public static String ice_staticId()
    {
        return "::Test::E";
    }

    @Override
    public String ice_id()
    {
        return ice_staticId();
    }

    /** @hidden */
    private static final long serialVersionUID = -1850730302348344143L;

    /** @hidden */
    @Override
    protected void _iceWriteImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice(ice_staticId(), -1, true);
        FixedStruct.ice_write(ostr_, fse);
        ostr_.endSlice();
    }

    /** @hidden */
    @Override
    protected void _iceReadImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        fse = FixedStruct.ice_read(istr_);
        istr_.endSlice();
    }
}
