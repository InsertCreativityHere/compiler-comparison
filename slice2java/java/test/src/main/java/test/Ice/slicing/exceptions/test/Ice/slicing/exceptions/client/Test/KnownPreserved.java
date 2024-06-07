//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `Test.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

package test.Ice.slicing.exceptions.client.Test;

public class KnownPreserved extends Base
{
    public KnownPreserved()
    {
        super();
        this.kp = "";
    }

    public KnownPreserved(Throwable cause)
    {
        super(cause);
        this.kp = "";
    }

    public KnownPreserved(String b, String kp)
    {
        super(b);
        this.kp = kp;
    }

    public KnownPreserved(String b, String kp, Throwable cause)
    {
        super(b, cause);
        this.kp = kp;
    }

    public String ice_id()
    {
        return "::Test::KnownPreserved";
    }

    public String kp;

    /** @hidden */
    @Override
    protected void _writeImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice("::Test::KnownPreserved", -1, false);
        ostr_.writeString(kp);
        ostr_.endSlice();
        super._writeImpl(ostr_);
    }

    /** @hidden */
    @Override
    protected void _readImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        kp = istr_.readString();
        istr_.endSlice();
        super._readImpl(istr_);
    }

    /** @hidden */
    public static final long serialVersionUID = -2733698928725230365L;
}
