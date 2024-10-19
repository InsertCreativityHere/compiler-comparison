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

package test.Ice.slicing.objects.client.Test;

public class BaseException extends com.zeroc.Ice.UserException
{
    public BaseException()
    {
        this.sbe = "";
    }

    public BaseException(String sbe, B pb)
    {
        this.sbe = sbe;
        this.pb = pb;
    }

    public String ice_id()
    {
        return "::Test::BaseException";
    }

    public String sbe;

    public B pb;

    /** @hidden */
    @Override
    protected void _writeImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice("::Test::BaseException", -1, true);
        ostr_.writeString(sbe);
        ostr_.writeValue(pb);
        ostr_.endSlice();
    }

    /** @hidden */
    @Override
    protected void _readImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        sbe = istr_.readString();
        istr_.readValue(v -> pb = v, B.class);
        istr_.endSlice();
    }

    /** @hidden */
    @Override
    public boolean _usesClasses()
    {
        return true;
    }

    /** @hidden */
    private static final long serialVersionUID = -619497043254288772L;
}
