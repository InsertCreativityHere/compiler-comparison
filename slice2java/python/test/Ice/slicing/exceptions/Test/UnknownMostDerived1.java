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

package Test;

public class UnknownMostDerived1 extends KnownIntermediate
{
    public UnknownMostDerived1()
    {
        super();
        this.umd1 = "";
    }

    public UnknownMostDerived1(Throwable cause)
    {
        super(cause);
        this.umd1 = "";
    }

    public UnknownMostDerived1(String b, String ki, String umd1)
    {
        super(b, ki);
        this.umd1 = umd1;
    }

    public UnknownMostDerived1(String b, String ki, String umd1, Throwable cause)
    {
        super(b, ki, cause);
        this.umd1 = umd1;
    }

    public String ice_id()
    {
        return "::Test::UnknownMostDerived1";
    }

    public String umd1;

    /** @hidden */
    @Override
    protected void _writeImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice("::Test::UnknownMostDerived1", -1, false);
        ostr_.writeString(umd1);
        ostr_.endSlice();
        super._writeImpl(ostr_);
    }

    /** @hidden */
    @Override
    protected void _readImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        umd1 = istr_.readString();
        istr_.endSlice();
        super._readImpl(istr_);
    }

    /** @hidden */
    public static final long serialVersionUID = -1126109167278797822L;
}
