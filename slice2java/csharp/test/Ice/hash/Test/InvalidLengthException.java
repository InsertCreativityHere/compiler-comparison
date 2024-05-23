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

public class InvalidLengthException extends BaseException
{
    public InvalidLengthException()
    {
        super();
    }

    public InvalidLengthException(Throwable cause)
    {
        super(cause);
    }

    public InvalidLengthException(int length)
    {
        this.length = length;
    }

    public InvalidLengthException(int length, Throwable cause)
    {
        super(cause);
        this.length = length;
    }

    public String ice_id()
    {
        return "::Test::InvalidLengthException";
    }

    public int length;

    /** @hidden */
    @Override
    protected void _writeImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice("::Test::InvalidLengthException", -1, false);
        ostr_.writeInt(length);
        ostr_.endSlice();
        super._writeImpl(ostr_);
    }

    /** @hidden */
    @Override
    protected void _readImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        length = istr_.readInt();
        istr_.endSlice();
        super._readImpl(istr_);
    }

    /** @hidden */
    public static final long serialVersionUID = -1224574100473210628L;
}
