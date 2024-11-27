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

public class RequiredException extends OptionalException
{
    public RequiredException()
    {
        this.ss = "test";
    }

    public RequiredException(boolean req, String ss)
    {
        super(req);
        this.ss = ss;
    }

    public RequiredException(boolean req, int a, String b, String ss)
    {
        super(req, a, b);
        this.ss = ss;
    }

    public String ice_id()
    {
        return "::Test::RequiredException";
    }

    public String ss;

    /** @hidden */
    @Override
    protected void _writeImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice("::Test::RequiredException", -1, false);
        ostr_.writeString(ss);
        ostr_.endSlice();
        super._writeImpl(ostr_);
    }

    /** @hidden */
    @Override
    protected void _readImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        ss = istr_.readString();
        istr_.endSlice();
        super._readImpl(istr_);
    }

    /** @hidden */
    private static final long serialVersionUID = 2894242665185435503L;
}
