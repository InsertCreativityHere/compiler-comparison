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

package Test2.Sub2;

public class NestedException2 extends com.zeroc.Ice.UserException
{
    public NestedException2()
    {
        this.str = "";
    }

    public NestedException2(Throwable cause)
    {
        super(cause);
        this.str = "";
    }

    public NestedException2(String str)
    {
        this.str = str;
    }

    public NestedException2(String str, Throwable cause)
    {
        super(cause);
        this.str = str;
    }

    public String ice_id()
    {
        return "::Test2::Sub2::NestedException2";
    }

    public String str;

    /** @hidden */
    @Override
    protected void _writeImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice("::Test2::Sub2::NestedException2", -1, true);
        ostr_.writeString(str);
        ostr_.endSlice();
    }

    /** @hidden */
    @Override
    protected void _readImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        str = istr_.readString();
        istr_.endSlice();
    }

    /** @hidden */
    public static final long serialVersionUID = -8562125277843687286L;
}
