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

public class UnknownDerived extends Base
{
    public UnknownDerived()
    {
        super();
        this.ud = "";
    }

    public UnknownDerived(Throwable cause)
    {
        super(cause);
        this.ud = "";
    }

    public UnknownDerived(String b, String ud)
    {
        super(b);
        this.ud = ud;
    }

    public UnknownDerived(String b, String ud, Throwable cause)
    {
        super(b, cause);
        this.ud = ud;
    }

    public String ice_id()
    {
        return "::Test::UnknownDerived";
    }

    public String ud;

    /** @hidden */
    @Override
    protected void _writeImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice("::Test::UnknownDerived", -1, false);
        ostr_.writeString(ud);
        ostr_.endSlice();
        super._writeImpl(ostr_);
    }

    /** @hidden */
    @Override
    protected void _readImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        ud = istr_.readString();
        istr_.endSlice();
        super._readImpl(istr_);
    }

    /** @hidden */
    public static final long serialVersionUID = 3424368092611308184L;
}
