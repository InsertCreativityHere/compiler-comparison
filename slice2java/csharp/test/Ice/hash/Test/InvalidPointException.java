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

public class InvalidPointException extends BaseException
{
    public InvalidPointException()
    {
        super();
    }

    public InvalidPointException(Throwable cause)
    {
        super(cause);
    }

    public InvalidPointException(int index)
    {
        this.index = index;
    }

    public InvalidPointException(int index, Throwable cause)
    {
        super(cause);
        this.index = index;
    }

    public String ice_id()
    {
        return "::Test::InvalidPointException";
    }

    public int index;

    /** @hidden */
    @Override
    protected void _writeImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice("::Test::InvalidPointException", -1, false);
        ostr_.writeInt(index);
        ostr_.endSlice();
        super._writeImpl(ostr_);
    }

    /** @hidden */
    @Override
    protected void _readImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        index = istr_.readInt();
        istr_.endSlice();
        super._readImpl(istr_);
    }

    /** @hidden */
    public static final long serialVersionUID = -8727124716935296883L;
}
