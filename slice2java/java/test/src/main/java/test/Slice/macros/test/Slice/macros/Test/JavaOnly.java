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

package test.Slice.macros.Test;

public class JavaOnly extends com.zeroc.Ice.Value
{
    public JavaOnly()
    {
        this.lang = "java";
        this.version = 30850;
    }

    public JavaOnly(String lang, int version)
    {
        this.lang = lang;
        this.version = version;
    }

    public String lang;

    public int version;

    public JavaOnly clone()
    {
        return (JavaOnly)super.clone();
    }

    public static String ice_staticId()
    {
        return "::Test::JavaOnly";
    }

    @Override
    public String ice_id()
    {
        return ice_staticId();
    }

    /** @hidden */
    public static final long serialVersionUID = -4850458900910063854L;

    /** @hidden */
    @Override
    protected void _iceWriteImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice(ice_staticId(), -1, true);
        ostr_.writeString(lang);
        ostr_.writeInt(version);
        ostr_.endSlice();
    }

    /** @hidden */
    @Override
    protected void _iceReadImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        lang = istr_.readString();
        version = istr_.readInt();
        istr_.endSlice();
    }
}
