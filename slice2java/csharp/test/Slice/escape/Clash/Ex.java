//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `Clash.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

package Clash;

public class Ex extends com.zeroc.Ice.UserException
{
    public Ex()
    {
        this.cause = "";
    }

    public Ex(Throwable cause)
    {
        super(cause);
        this.cause = "";
    }

    public Ex(short istr, int ostr, String cause)
    {
        this.istr = istr;
        this.ostr = ostr;
        this.cause = cause;
    }

    public Ex(short istr, int ostr, String cause, Throwable cause_)
    {
        super(cause_);
        this.istr = istr;
        this.ostr = ostr;
        this.cause = cause;
    }

    public String ice_id()
    {
        return "::Clash::Ex";
    }

    public short istr;

    public int ostr;

    public String cause;

    /** @hidden */
    @Override
    protected void _writeImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice("::Clash::Ex", -1, true);
        ostr_.writeShort(istr);
        ostr_.writeInt(ostr);
        ostr_.writeString(cause);
        ostr_.endSlice();
    }

    /** @hidden */
    @Override
    protected void _readImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        istr = istr_.readShort();
        ostr = istr_.readInt();
        cause = istr_.readString();
        istr_.endSlice();
    }

    /** @hidden */
    public static final long serialVersionUID = -6078193896075801642L;
}
