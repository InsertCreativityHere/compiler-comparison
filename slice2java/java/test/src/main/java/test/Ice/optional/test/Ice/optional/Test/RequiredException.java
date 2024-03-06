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

package test.Ice.optional.Test;

public class RequiredException extends OptionalException
{
    public RequiredException()
    {
        super();
        this.ss = "test";
    }

    public RequiredException(Throwable cause)
    {
        super(cause);
        this.ss = "test";
    }

    public RequiredException(boolean req, String ss, OneOptional o2)
    {
        super(req);
        this.ss = ss;
        this.o2 = o2;
    }

    public RequiredException(boolean req, String ss, OneOptional o2, Throwable cause)
    {
        super(req, cause);
        this.ss = ss;
        this.o2 = o2;
    }

    public RequiredException(boolean req, int a, String b, OneOptional o, String ss, OneOptional o2)
    {
        super(req, a, b, o);
        this.ss = ss;
        this.o2 = o2;
    }

    public RequiredException(boolean req, int a, String b, OneOptional o, String ss, OneOptional o2, Throwable cause)
    {
        super(req, a, b, o, cause);
        this.ss = ss;
        this.o2 = o2;
    }

    public String ice_id()
    {
        return "::Test::RequiredException";
    }

    public String ss;

    public OneOptional o2;

    /** @hidden */
    @Override
    protected void _writeImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice("::Test::RequiredException", -1, false);
        ostr_.writeString(ss);
        ostr_.writeValue(o2);
        ostr_.endSlice();
        super._writeImpl(ostr_);
    }

    /** @hidden */
    @Override
    protected void _readImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        ss = istr_.readString();
        istr_.readValue(v -> o2 = v, OneOptional.class);
        istr_.endSlice();
        super._readImpl(istr_);
    }

    /** @hidden */
    @Override
    public boolean _usesClasses()
    {
        return true;
    }

    /** @hidden */
    public static final long serialVersionUID = 7326848368207355927L;
}
