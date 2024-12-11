//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `ServerPrivateAMD.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

package test.Ice.slicing.exceptions.serverAMD.Test;

public class KnownIntermediate extends Base
{
    public KnownIntermediate()
    {
        this.ki = "";
    }

    public KnownIntermediate(String b, String ki)
    {
        super(b);
        this.ki = ki;
    }

    public String ice_id()
    {
        return "::Test::KnownIntermediate";
    }

    public String ki;

    /** @hidden */
    @Override
    protected void _writeImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice("::Test::KnownIntermediate", -1, false);
        ostr_.writeString(ki);
        ostr_.endSlice();
        super._writeImpl(ostr_);
    }

    /** @hidden */
    @Override
    protected void _readImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        ki = istr_.readString();
        istr_.endSlice();
        super._readImpl(istr_);
    }

    /** @hidden */
    private static final long serialVersionUID = 1717370884135961559L;
}
