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

public class endif extends com.zeroc.Ice.UserException
{
    public endif()
    {
    }

    public endif(Throwable cause)
    {
        super(cause);
    }

    public endif(int endswitch)
    {
        this.endswitch = endswitch;
    }

    public endif(int endswitch, Throwable cause)
    {
        super(cause);
        this.endswitch = endswitch;
    }

    public String ice_id()
    {
        return "::and::endif";
    }

    public int endswitch;

    /** @hidden */
    @Override
    protected void _writeImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice("::and::endif", -1, true);
        ostr_.writeInt(endswitch);
        ostr_.endSlice();
    }

    /** @hidden */
    @Override
    protected void _readImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        endswitch = istr_.readInt();
        istr_.endSlice();
    }

    /** @hidden */
    public static final long serialVersionUID = -3766561347556076269L;
}
