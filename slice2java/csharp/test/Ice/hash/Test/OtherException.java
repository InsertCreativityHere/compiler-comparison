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

public class OtherException extends com.zeroc.Ice.UserException
{
    public OtherException()
    {
    }

    public OtherException(Throwable cause)
    {
        super(cause);
    }

    public OtherException(int x, int y, int z, boolean b)
    {
        this.x = x;
        this.y = y;
        this.z = z;
        this.b = b;
    }

    public OtherException(int x, int y, int z, boolean b, Throwable cause)
    {
        super(cause);
        this.x = x;
        this.y = y;
        this.z = z;
        this.b = b;
    }

    public String ice_id()
    {
        return "::Test::OtherException";
    }

    public int x;

    public int y;

    public int z;

    public boolean b;

    /** @hidden */
    @Override
    protected void _writeImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice("::Test::OtherException", -1, true);
        ostr_.writeInt(x);
        ostr_.writeInt(y);
        ostr_.writeInt(z);
        ostr_.writeBool(b);
        ostr_.endSlice();
    }

    /** @hidden */
    @Override
    protected void _readImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        x = istr_.readInt();
        y = istr_.readInt();
        z = istr_.readInt();
        b = istr_.readBool();
        istr_.endSlice();
    }

    /** @hidden */
    public static final long serialVersionUID = 5050863048110529716L;
}
