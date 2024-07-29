//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `ServerPrivate.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

package test.Ice.slicing.exceptions.server.Test;

public class KnownMostDerived extends KnownIntermediate
{
    public KnownMostDerived()
    {
        super();
        this.kmd = "";
    }

    public KnownMostDerived(Throwable cause)
    {
        super(cause);
        this.kmd = "";
    }

    public KnownMostDerived(String b, String ki, String kmd)
    {
        super(b, ki);
        this.kmd = kmd;
    }

    public KnownMostDerived(String b, String ki, String kmd, Throwable cause)
    {
        super(b, ki, cause);
        this.kmd = kmd;
    }

    public String ice_id()
    {
        return "::Test::KnownMostDerived";
    }

    public String kmd;

    /** @hidden */
    @Override
    protected void _writeImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice("::Test::KnownMostDerived", -1, false);
        ostr_.writeString(kmd);
        ostr_.endSlice();
        super._writeImpl(ostr_);
    }

    /** @hidden */
    @Override
    protected void _readImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        kmd = istr_.readString();
        istr_.endSlice();
        super._readImpl(istr_);
    }

    /** @hidden */
    private static final long serialVersionUID = -7384918430130616108L;
}
