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
    }

    public Ex(Throwable cause)
    {
        super(cause);
    }

    public Ex(short istr, int ostr)
    {
        this.istr = istr;
        this.ostr = ostr;
    }

    public Ex(short istr, int ostr, Throwable cause)
    {
        super(cause);
        this.istr = istr;
        this.ostr = ostr;
    }

    public String ice_id()
    {
        return "::Clash::Ex";
    }

    public short istr;

    public int ostr;

    /** @hidden */
    @Override
    protected void _writeImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice("::Clash::Ex", -1, true);
        ostr_.writeShort(istr);
        ostr_.writeInt(ostr);
        ostr_.endSlice();
    }

    /** @hidden */
    @Override
    protected void _readImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        istr = istr_.readShort();
        ostr = istr_.readInt();
        istr_.endSlice();
    }

    /** @hidden */
    private static final long serialVersionUID = 2981059440046192831L;
}
