//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `Package.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

package Test3;

public class E2 extends E1
{
    public E2()
    {
        super();
    }

    public E2(Throwable cause)
    {
        super(cause);
    }

    public E2(int i, long l)
    {
        super(i);
        this.l = l;
    }

    public E2(int i, long l, Throwable cause)
    {
        super(i, cause);
        this.l = l;
    }

    public String ice_id()
    {
        return "::Test3::E2";
    }

    public long l;

    /** @hidden */
    @Override
    protected void _writeImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice("::Test3::E2", -1, false);
        ostr_.writeLong(l);
        ostr_.endSlice();
        super._writeImpl(ostr_);
    }

    /** @hidden */
    @Override
    protected void _readImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        l = istr_.readLong();
        istr_.endSlice();
        super._readImpl(istr_);
    }

    /** @hidden */
    private static final long serialVersionUID = -8399044315524616571L;
}
