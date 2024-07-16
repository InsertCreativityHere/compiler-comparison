//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `TestAMD.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

package test.Ice.exceptions.AMD.Test;

public class C extends B
{
    public C()
    {
        super();
    }

    public C(Throwable cause)
    {
        super(cause);
    }

    public C(int aMem, int bMem, int cMem)
    {
        super(aMem, bMem);
        this.cMem = cMem;
    }

    public C(int aMem, int bMem, int cMem, Throwable cause)
    {
        super(aMem, bMem, cause);
        this.cMem = cMem;
    }

    public String ice_id()
    {
        return "::Test::C";
    }

    public int cMem;

    /** @hidden */
    @Override
    protected void _writeImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice("::Test::C", -1, false);
        ostr_.writeInt(cMem);
        ostr_.endSlice();
        super._writeImpl(ostr_);
    }

    /** @hidden */
    @Override
    protected void _readImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        cMem = istr_.readInt();
        istr_.endSlice();
        super._readImpl(istr_);
    }

    /** @hidden */
    private static final long serialVersionUID = 1080698335328150088L;
}
