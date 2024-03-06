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

public class ExceptionNoDefaultsBase extends com.zeroc.Ice.UserException
{
    public ExceptionNoDefaultsBase()
    {
        this.str = "";
        this.c1 = Color.red;
    }

    public ExceptionNoDefaultsBase(Throwable cause)
    {
        super(cause);
        this.str = "";
        this.c1 = Color.red;
    }

    public ExceptionNoDefaultsBase(String str, Color c1, byte[] bs)
    {
        this.str = str;
        this.c1 = c1;
        this.bs = bs;
    }

    public ExceptionNoDefaultsBase(String str, Color c1, byte[] bs, Throwable cause)
    {
        super(cause);
        this.str = str;
        this.c1 = c1;
        this.bs = bs;
    }

    public String ice_id()
    {
        return "::Test::ExceptionNoDefaultsBase";
    }

    public String str;

    public Color c1;

    public byte[] bs;

    /** @hidden */
    @Override
    protected void _writeImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice("::Test::ExceptionNoDefaultsBase", -1, true);
        ostr_.writeString(str);
        Color.ice_write(ostr_, c1);
        ostr_.writeByteSeq(bs);
        ostr_.endSlice();
    }

    /** @hidden */
    @Override
    protected void _readImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        str = istr_.readString();
        c1 = Color.ice_read(istr_);
        bs = istr_.readByteSeq();
        istr_.endSlice();
    }

    /** @hidden */
    public static final long serialVersionUID = -933013763629349898L;
}
