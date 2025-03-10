// Copyright (c) ZeroC, Inc.
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file 'ClientPrivate.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>

package Test;

public class ETwoMembers extends com.zeroc.Ice.UserException
{
    public ETwoMembers()
    {
    }

    public ETwoMembers(Empty e1, Empty e2)
    {
        this.e1 = e1;
        this.e2 = e2;
    }

    public String ice_id()
    {
        return "::Test::ETwoMembers";
    }

    public Empty e1;

    public Empty e2;

    /** @hidden */
    @Override
    protected void _writeImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice("::Test::ETwoMembers", -1, true);
        ostr_.writeValue(e1);
        ostr_.writeValue(e2);
        ostr_.endSlice();
    }

    /** @hidden */
    @Override
    protected void _readImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        istr_.readValue(v -> e1 = v, Empty.class);
        istr_.readValue(v -> e2 = v, Empty.class);
        istr_.endSlice();
    }

    /** @hidden */
    @Override
    public boolean _usesClasses()
    {
        return true;
    }

    /** @hidden */
    private static final long serialVersionUID = 4888130356191520251L;
}
