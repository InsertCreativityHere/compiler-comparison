//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `Namespace.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

package WithNamespace;

public class E1 extends com.zeroc.Ice.UserException
{
    public E1()
    {
    }

    public E1(Throwable cause)
    {
        super(cause);
    }

    public E1(int i)
    {
        this.i = i;
    }

    public E1(int i, Throwable cause)
    {
        super(cause);
        this.i = i;
    }

    public String ice_id()
    {
        return "::WithNamespace::E1";
    }

    public int i;

    /** @hidden */
    @Override
    protected void _writeImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice("::WithNamespace::E1", -1, true);
        ostr_.writeInt(i);
        ostr_.endSlice();
    }

    /** @hidden */
    @Override
    protected void _readImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        i = istr_.readInt();
        istr_.endSlice();
    }

    /** @hidden */
    public static final long serialVersionUID = -4823063629960199541L;
}
