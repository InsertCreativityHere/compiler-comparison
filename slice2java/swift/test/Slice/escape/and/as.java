//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `Key.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

package and;

public class as extends _return
{
    public as()
    {
        super();
    }

    public as(Throwable cause)
    {
        super(cause);
    }

    public as(int Int32, int _static, int _switch)
    {
        super(Int32);
        this._static = _static;
        this._switch = _switch;
    }

    public as(int Int32, int _static, int _switch, Throwable cause)
    {
        super(Int32, cause);
        this._static = _static;
        this._switch = _switch;
    }

    public String ice_id()
    {
        return "::and::as";
    }

    public int _static;

    public int _switch;

    /** @hidden */
    @Override
    protected void _writeImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice("::and::as", -1, false);
        ostr_.writeInt(_static);
        ostr_.writeInt(_switch);
        ostr_.endSlice();
        super._writeImpl(ostr_);
    }

    /** @hidden */
    @Override
    protected void _readImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        _static = istr_.readInt();
        _switch = istr_.readInt();
        istr_.endSlice();
        super._readImpl(istr_);
    }

    /** @hidden */
    public static final long serialVersionUID = -1411404054551467272L;
}
