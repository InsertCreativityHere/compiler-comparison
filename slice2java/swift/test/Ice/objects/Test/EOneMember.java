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

public class EOneMember extends com.zeroc.Ice.UserException
{
    public EOneMember()
    {
    }

    public EOneMember(Throwable cause)
    {
        super(cause);
    }

    public EOneMember(Empty e)
    {
        this.e = e;
    }

    public EOneMember(Empty e, Throwable cause)
    {
        super(cause);
        this.e = e;
    }

    public String ice_id()
    {
        return "::Test::EOneMember";
    }

    public Empty e;

    /** @hidden */
    @Override
    protected void _writeImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice("::Test::EOneMember", -1, true);
        ostr_.writeValue(e);
        ostr_.endSlice();
    }

    /** @hidden */
    @Override
    protected void _readImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        istr_.readValue(v -> e = v, Empty.class);
        istr_.endSlice();
    }

    /** @hidden */
    @Override
    public boolean _usesClasses()
    {
        return true;
    }

    /** @hidden */
    public static final long serialVersionUID = -6225291562292241750L;
}
