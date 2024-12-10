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

public class UnknownIntermediate extends Base
{
    public UnknownIntermediate()
    {
        this.ui = "";
    }

    public UnknownIntermediate(String b, String ui)
    {
        super(b);
        this.ui = ui;
    }

    public String ice_id()
    {
        return "::Test::UnknownIntermediate";
    }

    public String ui;

    /** @hidden */
    @Override
    protected void _writeImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice("::Test::UnknownIntermediate", -1, false);
        ostr_.writeString(ui);
        ostr_.endSlice();
        super._writeImpl(ostr_);
    }

    /** @hidden */
    @Override
    protected void _readImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        ui = istr_.readString();
        istr_.endSlice();
        super._readImpl(istr_);
    }

    /** @hidden */
    private static final long serialVersionUID = -1172598639672030826L;
}
