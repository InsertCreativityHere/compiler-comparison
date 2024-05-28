//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `Clash.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

package Clash;

public class Cls extends com.zeroc.Ice.Value
{
    public Cls()
    {
        this.context = "";
        this.upCast = "";
        this.ex = "";
        this.istr = "";
        this.ostr = "";
        this.inS = "";
        this.in = "";
        this.proxy = "";
    }

    public Cls(IntfPrx s, String context, int current, short response, String upCast, int typeId, short del, String ex, int result, String istr, String ostr, String inS, String in, String proxy)
    {
        this.s = s;
        this.context = context;
        this.current = current;
        this.response = response;
        this.upCast = upCast;
        this.typeId = typeId;
        this.del = del;
        this.ex = ex;
        this.result = result;
        this.istr = istr;
        this.ostr = ostr;
        this.inS = inS;
        this.in = in;
        this.proxy = proxy;
    }

    public Cls(IntfPrx s, String context, int current, short response, String upCast, int typeId, short del, short cookie, String ex, int result, String istr, String ostr, String inS, String in, String proxy)
    {
        this.s = s;
        this.context = context;
        this.current = current;
        this.response = response;
        this.upCast = upCast;
        this.typeId = typeId;
        this.del = del;
        setCookie(cookie);
        this.ex = ex;
        this.result = result;
        this.istr = istr;
        this.ostr = ostr;
        this.inS = inS;
        this.in = in;
        this.proxy = proxy;
    }

    public IntfPrx s;

    public String context;

    public int current;

    public short response;

    public String upCast;

    public int typeId;

    public short del;

    private short cookie;
    private boolean _cookie;

    public short getCookie()
    {
        if(!_cookie)
        {
            throw new java.util.NoSuchElementException("cookie is not set");
        }
        return cookie;
    }

    public void setCookie(short cookie)
    {
        _cookie = true;
        this.cookie = cookie;
    }

    public boolean hasCookie()
    {
        return _cookie;
    }

    public void clearCookie()
    {
        _cookie = false;
    }

    public void optionalCookie(java.util.Optional<java.lang.Short> v)
    {
        if(v == null || !v.isPresent())
        {
            _cookie = false;
        }
        else
        {
            _cookie = true;
            cookie = v.get();
        }
    }

    public java.util.Optional<java.lang.Short> optionalCookie()
    {
        if(_cookie)
        {
            return java.util.Optional.of(cookie);
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    public String ex;

    public int result;

    public String istr;

    public String ostr;

    public String inS;

    public String in;

    public String proxy;

    public Cls clone()
    {
        return (Cls)super.clone();
    }

    public static String ice_staticId()
    {
        return "::Clash::Cls";
    }

    @Override
    public String ice_id()
    {
        return ice_staticId();
    }

    /** @hidden */
    public static final long serialVersionUID = -5416196441886646450L;

    /** @hidden */
    @Override
    protected void _iceWriteImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice(ice_staticId(), -1, true);
        ostr_.writeProxy(s);
        ostr_.writeString(context);
        ostr_.writeInt(current);
        ostr_.writeShort(response);
        ostr_.writeString(upCast);
        ostr_.writeInt(typeId);
        ostr_.writeShort(del);
        ostr_.writeString(ex);
        ostr_.writeInt(result);
        ostr_.writeString(istr);
        ostr_.writeString(ostr);
        ostr_.writeString(inS);
        ostr_.writeString(in);
        ostr_.writeString(proxy);
        if(_cookie)
        {
            ostr_.writeShort(1, cookie);
        }
        ostr_.endSlice();
    }

    /** @hidden */
    @Override
    protected void _iceReadImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        s = IntfPrx.uncheckedCast(istr_.readProxy());
        context = istr_.readString();
        current = istr_.readInt();
        response = istr_.readShort();
        upCast = istr_.readString();
        typeId = istr_.readInt();
        del = istr_.readShort();
        ex = istr_.readString();
        result = istr_.readInt();
        istr = istr_.readString();
        ostr = istr_.readString();
        inS = istr_.readString();
        in = istr_.readString();
        proxy = istr_.readString();
        if(_cookie = istr_.readOptional(1, com.zeroc.Ice.OptionalFormat.F2))
        {
            cookie = istr_.readShort();
        }
        istr_.endSlice();
    }
}
