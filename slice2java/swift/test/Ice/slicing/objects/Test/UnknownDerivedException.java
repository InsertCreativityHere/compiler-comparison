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

public class UnknownDerivedException extends BaseException
{
    public UnknownDerivedException()
    {
        super();
        this.sude = "";
    }

    public UnknownDerivedException(Throwable cause)
    {
        super(cause);
        this.sude = "";
    }

    public UnknownDerivedException(String sbe, B pb, String sude, D2 pd2)
    {
        super(sbe, pb);
        this.sude = sude;
        this.pd2 = pd2;
    }

    public UnknownDerivedException(String sbe, B pb, String sude, D2 pd2, Throwable cause)
    {
        super(sbe, pb, cause);
        this.sude = sude;
        this.pd2 = pd2;
    }

    public String ice_id()
    {
        return "::Test::UnknownDerivedException";
    }

    public String sude;

    public D2 pd2;

    /** @hidden */
    @Override
    protected void _writeImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice("::Test::UnknownDerivedException", -1, false);
        ostr_.writeString(sude);
        ostr_.writeValue(pd2);
        ostr_.endSlice();
        super._writeImpl(ostr_);
    }

    /** @hidden */
    @Override
    protected void _readImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        sude = istr_.readString();
        istr_.readValue(v -> pd2 = v, D2.class);
        istr_.endSlice();
        super._readImpl(istr_);
    }

    /** @hidden */
    private static final long serialVersionUID = -7831161456903033550L;
}
