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

package and;

public class _switch extends com.zeroc.Ice.Value
{
    public _switch()
    {
    }

    public _switch(int _if, funcPrx export, int _volatile)
    {
        this._if = _if;
        this.export = export;
        this._volatile = _volatile;
    }

    public int _if;

    public funcPrx export;

    public int _volatile;

    public _switch clone()
    {
        return (_switch)super.clone();
    }

    public static String ice_staticId()
    {
        return "::and::switch";
    }

    @Override
    public String ice_id()
    {
        return ice_staticId();
    }

    /** @hidden */
    private static final long serialVersionUID = 8152016154889399457L;

    /** @hidden */
    @Override
    protected void _iceWriteImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice(ice_staticId(), -1, true);
        ostr_.writeInt(_if);
        ostr_.writeProxy(export);
        ostr_.writeInt(_volatile);
        ostr_.endSlice();
    }

    /** @hidden */
    @Override
    protected void _iceReadImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        _if = istr_.readInt();
        export = funcPrx.uncheckedCast(istr_.readProxy());
        _volatile = istr_.readInt();
        istr_.endSlice();
    }
}
