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

package Test.Sub;

public class NestedException extends com.zeroc.Ice.UserException
{
    public NestedException()
    {
        this.str = "";
    }

    public NestedException(String str)
    {
        this.str = str;
    }

    public String ice_id()
    {
        return "::Test::Sub::NestedException";
    }

    public String str;

    /** @hidden */
    @Override
    protected void _writeImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice("::Test::Sub::NestedException", -1, true);
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
    private static final long serialVersionUID = -1404705272759634384L;
}
