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

package Test;

public class DerivedException extends BaseException
{
    public DerivedException()
    {
        super();
        this.sde = "";
    }

    public DerivedException(Throwable cause)
    {
        super(cause);
        this.sde = "";
    }

    public DerivedException(String sbe, B pb, String sde, D1 pd1)
    {
        super(sbe, pb);
        this.sde = sde;
        this.pd1 = pd1;
    }

    public DerivedException(String sbe, B pb, String sde, D1 pd1, Throwable cause)
    {
        super(sbe, pb, cause);
        this.sde = sde;
        this.pd1 = pd1;
    }

    public String ice_id()
    {
        return "::Test::DerivedException";
    }

    public String sde;

    public D1 pd1;

    /** @hidden */
    @Override
    protected void _writeImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice("::Test::DerivedException", -1, false);
        ostr_.writeString(sde);
        ostr_.writeValue(pd1);
        ostr_.endSlice();
        super._writeImpl(ostr_);
    }

    /** @hidden */
    @Override
    protected void _readImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        sde = istr_.readString();
        istr_.readValue(v -> pd1 = v, D1.class);
        istr_.endSlice();
        super._readImpl(istr_);
    }

    /** @hidden */
    public static final long serialVersionUID = -3824132804056712927L;
}
