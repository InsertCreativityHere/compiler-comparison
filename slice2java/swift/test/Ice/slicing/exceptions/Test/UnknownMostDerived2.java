//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.7.10
//
// <auto-generated>
//
// Generated from file `ServerPrivate.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

package Test;

public class UnknownMostDerived2 extends UnknownIntermediate
{
    public UnknownMostDerived2()
    {
        super();
        this.umd2 = "";
    }

    public UnknownMostDerived2(Throwable cause)
    {
        super(cause);
        this.umd2 = "";
    }

    public UnknownMostDerived2(String b, String ui, String umd2)
    {
        super(b, ui);
        this.umd2 = umd2;
    }

    public UnknownMostDerived2(String b, String ui, String umd2, Throwable cause)
    {
        super(b, ui, cause);
        this.umd2 = umd2;
    }

    public String ice_id()
    {
        return "::Test::UnknownMostDerived2";
    }

    public String umd2;

    /** @hidden */
    @Override
    protected void _writeImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice("::Test::UnknownMostDerived2", -1, false);
        ostr_.writeString(umd2);
        ostr_.endSlice();
        super._writeImpl(ostr_);
    }

    /** @hidden */
    @Override
    protected void _readImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        umd2 = istr_.readString();
        istr_.endSlice();
        super._readImpl(istr_);
    }

    /** @hidden */
    public static final long serialVersionUID = -2097581681204063715L;
}
