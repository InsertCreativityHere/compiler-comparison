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

package await;

public class foreach extends fixed
{
    public foreach()
    {
    }

    public foreach(int _for, int _goto, int _if)
    {
        super(_for);
        this._goto = _goto;
        this._if = _if;
    }

    public String ice_id()
    {
        return "::await::foreach";
    }

    public int _goto;

    public int _if;

    /** @hidden */
    @Override
    protected void _writeImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice("::await::foreach", -1, false);
        ostr_.writeInt(_goto);
        ostr_.writeInt(_if);
        ostr_.endSlice();
        super._writeImpl(ostr_);
    }

    /** @hidden */
    @Override
    protected void _readImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        _goto = istr_.readInt();
        _if = istr_.readInt();
        istr_.endSlice();
        super._readImpl(istr_);
    }

    /** @hidden */
    private static final long serialVersionUID = 1968597479751563238L;
}
