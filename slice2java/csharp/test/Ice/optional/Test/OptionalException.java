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

public class OptionalException extends com.zeroc.Ice.UserException
{
    public OptionalException()
    {
        this.req = false;
        setA(5);
        this.b = "";
    }

    public OptionalException(Throwable cause)
    {
        super(cause);
        this.req = false;
        setA(5);
        this.b = "";
    }

    public OptionalException(boolean req)
    {
        this.req = req;
        setA(5);
        this.b = "";
    }

    public OptionalException(boolean req, Throwable cause)
    {
        super(cause);
        this.req = req;
        setA(5);
        this.b = "";
    }

    public OptionalException(boolean req, int a, String b, OneOptional o)
    {
        this.req = req;
        setA(a);
        setB(b);
        setO(o);
    }

    public OptionalException(boolean req, int a, String b, OneOptional o, Throwable cause)
    {
        super(cause);
        this.req = req;
        setA(a);
        setB(b);
        setO(o);
    }

    public String ice_id()
    {
        return "::Test::OptionalException";
    }

    public boolean req;

    private int a;
    private boolean _a;

    public int getA()
    {
        if(!_a)
        {
            throw new java.util.NoSuchElementException("a is not set");
        }
        return a;
    }

    public void setA(int a)
    {
        _a = true;
        this.a = a;
    }

    public boolean hasA()
    {
        return _a;
    }

    public void clearA()
    {
        _a = false;
    }

    public void optionalA(java.util.OptionalInt v)
    {
        if(v == null || !v.isPresent())
        {
            _a = false;
        }
        else
        {
            _a = true;
            a = v.getAsInt();
        }
    }

    public java.util.OptionalInt optionalA()
    {
        if(_a)
        {
            return java.util.OptionalInt.of(a);
        }
        else
        {
            return java.util.OptionalInt.empty();
        }
    }

    private String b;
    private boolean _b;

    public String getB()
    {
        if(!_b)
        {
            throw new java.util.NoSuchElementException("b is not set");
        }
        return b;
    }

    public void setB(String b)
    {
        _b = true;
        this.b = b;
    }

    public boolean hasB()
    {
        return _b;
    }

    public void clearB()
    {
        _b = false;
    }

    public void optionalB(java.util.Optional<java.lang.String> v)
    {
        if(v == null || !v.isPresent())
        {
            _b = false;
        }
        else
        {
            _b = true;
            b = v.get();
        }
    }

    public java.util.Optional<java.lang.String> optionalB()
    {
        if(_b)
        {
            return java.util.Optional.of(b);
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    private OneOptional o;
    private boolean _o;

    public OneOptional getO()
    {
        if(!_o)
        {
            throw new java.util.NoSuchElementException("o is not set");
        }
        return o;
    }

    public void setO(OneOptional o)
    {
        _o = true;
        this.o = o;
    }

    public boolean hasO()
    {
        return _o;
    }

    public void clearO()
    {
        _o = false;
    }

    public void optionalO(java.util.Optional<OneOptional> v)
    {
        if(v == null || !v.isPresent())
        {
            _o = false;
        }
        else
        {
            _o = true;
            o = v.get();
        }
    }

    public java.util.Optional<OneOptional> optionalO()
    {
        if(_o)
        {
            return java.util.Optional.ofNullable(o);
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    /** @hidden */
    @Override
    protected void _writeImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice("::Test::OptionalException", -1, true);
        ostr_.writeBool(req);
        if(_a)
        {
            ostr_.writeInt(1, a);
        }
        if(_b)
        {
            ostr_.writeString(2, b);
        }
        if(_o)
        {
            ostr_.writeValue(50, o);
        }
        ostr_.endSlice();
    }

    /** @hidden */
    @Override
    protected void _readImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        req = istr_.readBool();
        if(_a = istr_.readOptional(1, com.zeroc.Ice.OptionalFormat.F4))
        {
            a = istr_.readInt();
        }
        if(_b = istr_.readOptional(2, com.zeroc.Ice.OptionalFormat.VSize))
        {
            b = istr_.readString();
        }
        if(_o = istr_.readOptional(50, com.zeroc.Ice.OptionalFormat.Class))
        {
            istr_.readValue(v -> o = v, OneOptional.class);
        }
        istr_.endSlice();
    }

    /** @hidden */
    public static final long serialVersionUID = 7982505440877677832L;
}
