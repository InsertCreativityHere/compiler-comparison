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

    public DerivedException(boolean req, int a, String b, OneOptional o, String d1, String ss, OneOptional o2, String d2)
    {
        super(req, a, b, o);
        this.d1 = d1;
        setSs(ss);
        setO2(o2);
        this.d2 = d2;
    }

    public DerivedException(boolean req, int a, String b, OneOptional o, String d1, String ss, OneOptional o2, String d2, Throwable cause)
    {
        super(req, a, b, o, cause);
        this.d1 = d1;
        setSs(ss);
        setO2(o2);
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

    private OneOptional o2;
    private boolean _o2;

    public OneOptional getO2()
    {
        if(!_o2)
        {
            throw new java.util.NoSuchElementException("o2 is not set");
        }
        return o2;
    }

    public void setO2(OneOptional o2)
    {
        _o2 = true;
        this.o2 = o2;
    }

    public boolean hasO2()
    {
        return _o2;
    }

    public void clearO2()
    {
        _o2 = false;
    }

    public void optionalO2(java.util.Optional<OneOptional> v)
    {
        if(v == null || !v.isPresent())
        {
            _o2 = false;
        }
        else
        {
            _o2 = true;
            o2 = v.get();
        }
    }

    public java.util.Optional<OneOptional> optionalO2()
    {
        if(_o2)
        {
            return java.util.Optional.ofNullable(o2);
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
        if(_o2)
        {
            ostr_.writeValue(601, o2);
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
        if(_o2 = istr_.readOptional(601, com.zeroc.Ice.OptionalFormat.Class))
        {
            istr_.readValue(v -> o2 = v, OneOptional.class);
        }
        istr_.endSlice();
        super._readImpl(istr_);
    }

    /** @hidden */
    public static final long serialVersionUID = -4063789688730707663L;
}
