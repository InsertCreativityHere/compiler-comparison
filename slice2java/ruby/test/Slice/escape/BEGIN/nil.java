// Copyright (c) ZeroC, Inc.
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file 'Key.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>

package BEGIN;

public class nil extends next
{
    public nil()
    {
    }

    public nil(int _new, int not, int or)
    {
        super(_new);
        this.not = not;
        this.or = or;
    }

    public String ice_id()
    {
        return "::BEGIN::nil";
    }

    public int not;

    public int or;

    /** @hidden */
    @Override
    protected void _writeImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice("::BEGIN::nil", -1, false);
        ostr_.writeInt(not);
        ostr_.writeInt(or);
        ostr_.endSlice();
        super._writeImpl(ostr_);
    }

    /** @hidden */
    @Override
    protected void _readImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        not = istr_.readInt();
        or = istr_.readInt();
        istr_.endSlice();
        super._readImpl(istr_);
    }

    /** @hidden */
    private static final long serialVersionUID = -5427169385755038272L;
}
