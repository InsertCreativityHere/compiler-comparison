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

public class DerivedException extends OptionalException
{
    public DerivedException()
    {
        super();
        this.d1 = "";
        setSs("test");
        this.d2 = "";
    }

    public DerivedException(Throwable cause)
    {
        super(cause);
        this.d1 = "";
        setSs("test");
        this.d2 = "";
    }

    public DerivedException(boolean req, String d1, String d2)
    {
        super(req);
        this.d1 = d1;
        this.d2 = d2;
        setSs("test");
    }

    public DerivedException(boolean req, String d1, String d2, Throwable cause)
    {
        super(req, cause);
        this.d1 = d1;
        this.d2 = d2;
        setSs("test");
    }

    public DerivedException(boolean req, int a, String b, String d1, String ss, String d2)
    {
        super(req, a, b);
        this.d1 = d1;
        setSs(ss);
        this.d2 = d2;
    }

    public DerivedException(boolean req, int a, String b, String d1, String ss, String d2, Throwable cause)
    {
        super(req, a, b, cause);
        this.d1 = d1;
        setSs(ss);
        this.d2 = d2;
    }

    public String ice_id()
    {
        return "::Test::DerivedException";
    }

    public String d1;

    private String ss;
    private boolean _ss;

    public String getSs()
    {
        if(!_ss)
        {
            throw new java.util.NoSuchElementException("ss is not set");
        }
        return ss;
    }

    public void setSs(String ss)
    {
        _ss = true;
        this.ss = ss;
    }

    public boolean hasSs()
    {
        return _ss;
    }

    public void clearSs()
    {
        _ss = false;
    }

    public void optionalSs(java.util.Optional<java.lang.String> v)
    {
        if(v == null || !v.isPresent())
        {
            _ss = false;
        }
        else
        {
            _ss = true;
            ss = v.get();
        }
    }

    public java.util.Optional<java.lang.String> optionalSs()
    {
        if(_ss)
        {
            return java.util.Optional.of(ss);
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    public String d2;

    /** @hidden */
    @Override
    protected void _writeImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice("::Test::DerivedException", -1, false);
        ostr_.writeString(d1);
        ostr_.writeString(d2);
        if(_ss)
        {
            ostr_.writeString(600, ss);
        }
        ostr_.endSlice();
        super._writeImpl(ostr_);
    }

    /** @hidden */
    @Override
    protected void _readImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        d1 = istr_.readString();
        d2 = istr_.readString();
        if(_ss = istr_.readOptional(600, com.zeroc.Ice.OptionalFormat.VSize))
        {
            ss = istr_.readString();
        }
        istr_.endSlice();
        super._readImpl(istr_);
    }

    /** @hidden */
    public static final long serialVersionUID = 6573296315766600961L;
}
