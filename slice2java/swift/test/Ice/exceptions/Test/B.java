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

public class B extends A
{
    public B()
    {
        super();
    }

    public B(Throwable cause)
    {
        super(cause);
    }

    public B(int aMem, int bMem)
    {
        super(aMem);
        this.bMem = bMem;
    }

    public B(int aMem, int bMem, Throwable cause)
    {
        super(aMem, cause);
        this.bMem = bMem;
    }

    public String ice_id()
    {
        return "::Test::B";
    }

    public int bMem;

    /** @hidden */
    @Override
    protected void _writeImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice("::Test::B", -1, false);
        ostr_.writeInt(bMem);
        ostr_.endSlice();
        super._writeImpl(ostr_);
    }

    /** @hidden */
    @Override
    protected void _readImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        bMem = istr_.readInt();
        istr_.endSlice();
        super._readImpl(istr_);
    }

    /** @hidden */
    public static final long serialVersionUID = -3861410610083863735L;
}
