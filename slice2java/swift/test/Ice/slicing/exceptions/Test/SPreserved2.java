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

public class SPreserved2 extends SPreserved1
{
    public SPreserved2()
    {
        super();
    }

    public SPreserved2(Throwable cause)
    {
        super(cause);
    }

    public SPreserved2(String b, String kp, String kpd, BaseClass p1, BaseClass p2)
    {
        super(b, kp, kpd, p1);
        this.p2 = p2;
    }

    public SPreserved2(String b, String kp, String kpd, BaseClass p1, BaseClass p2, Throwable cause)
    {
        super(b, kp, kpd, p1, cause);
        this.p2 = p2;
    }

    public String ice_id()
    {
        return "::Test::SPreserved2";
    }

    public BaseClass p2;

    /** @hidden */
    @Override
    protected void _writeImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice("::Test::SPreserved2", -1, false);
        ostr_.writeValue(p2);
        ostr_.endSlice();
        super._writeImpl(ostr_);
    }

    /** @hidden */
    @Override
    protected void _readImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        istr_.readValue(v -> p2 = v, BaseClass.class);
        istr_.endSlice();
        super._readImpl(istr_);
    }

    /** @hidden */
    public static final long serialVersionUID = 3036461565125906881L;
}
