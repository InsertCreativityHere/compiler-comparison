//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `Key.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

package and;

public class _return extends com.zeroc.Ice.UserException
{
    public _return()
    {
    }

    public _return(int Int32)
    {
        this.Int32 = Int32;
    }

    public String ice_id()
    {
        return "::and::return";
    }

    public int Int32;

    /** @hidden */
    @Override
    protected void _writeImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice("::and::return", -1, true);
        ostr_.writeInt(Int32);
        ostr_.endSlice();
    }

    /** @hidden */
    @Override
    protected void _readImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        Int32 = istr_.readInt();
        istr_.endSlice();
    }

    /** @hidden */
    private static final long serialVersionUID = -8206184875863835072L;
}
