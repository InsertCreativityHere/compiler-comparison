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

public class EDerived extends EBase
{
    public EDerived()
    {
        super();
    }

    public EDerived(Throwable cause)
    {
        super(cause);
    }

    public EDerived(A1 a1, A1 a2, A1 a3, A1 a4)
    {
        super(a1, a2);
        this.a3 = a3;
        this.a4 = a4;
    }

    public EDerived(A1 a1, A1 a2, A1 a3, A1 a4, Throwable cause)
    {
        super(a1, a2, cause);
        this.a3 = a3;
        this.a4 = a4;
    }

    public String ice_id()
    {
        return "::Test::EDerived";
    }

    public A1 a3;

    public A1 a4;

    /** @hidden */
    @Override
    protected void _writeImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice("::Test::EDerived", -1, false);
        ostr_.writeValue(a3);
        ostr_.writeValue(a4);
        ostr_.endSlice();
        super._writeImpl(ostr_);
    }

    /** @hidden */
    @Override
    protected void _readImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        istr_.readValue(v -> a3 = v, A1.class);
        istr_.readValue(v -> a4 = v, A1.class);
        istr_.endSlice();
        super._readImpl(istr_);
    }

    /** @hidden */
    public static final long serialVersionUID = -1698783348733704238L;
}
