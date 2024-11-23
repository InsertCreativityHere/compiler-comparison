//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `ServerPrivateAMD.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

package test.Ice.slicing.objects.serverAMD.Test;

public class PSUnknownException extends PreservedException
{
    public PSUnknownException()
    {
    }

    public PSUnknownException(PSUnknown2 p)
    {
        this.p = p;
    }

    public String ice_id()
    {
        return "::Test::PSUnknownException";
    }

    public PSUnknown2 p;

    /** @hidden */
    @Override
    protected void _writeImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice("::Test::PSUnknownException", -1, false);
        ostr_.writeValue(p);
        ostr_.endSlice();
        super._writeImpl(ostr_);
    }

    /** @hidden */
    @Override
    protected void _readImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        istr_.readValue(v -> p = v, PSUnknown2.class);
        istr_.endSlice();
        super._readImpl(istr_);
    }

    /** @hidden */
    @Override
    public boolean _usesClasses()
    {
        return true;
    }

    /** @hidden */
    private static final long serialVersionUID = 4410699280245306471L;
}
