//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `NoNamespace.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

package NoNamespace;

/**
 * Test keyword escape.
 **/
public class _notify extends com.zeroc.Ice.UserException
{
    public _notify()
    {
    }

    public _notify(Throwable cause)
    {
        super(cause);
    }

    public _notify(int i)
    {
        this.i = i;
    }

    public _notify(int i, Throwable cause)
    {
        super(cause);
        this.i = i;
    }

    public String ice_id()
    {
        return "::NoNamespace::notify";
    }

    public int i;

    /** @hidden */
    @Override
    protected void _writeImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice("::NoNamespace::notify", -1, true);
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
    public static final long serialVersionUID = 7599603550998089161L;
}
