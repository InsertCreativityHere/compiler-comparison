// Copyright (c) ZeroC, Inc.
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file 'Clash.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>

package Clash;

public class Cls extends com.zeroc.Ice.Value
{
    public Cls()
    {
        this.context = "";
        this.ex = "";
        this.istr = "";
        this.ostr = "";
        this.inS = "";
        this.in = "";
        this.proxy = "";
        this._clone = "";
    }

    public Cls(IntfPrx s, String context, int current, short response, int typeId, short del, String ex, int result, String istr, String ostr, String inS, String in, String proxy, int obj, int getCookie, String _clone)
    {
        this.s = s;
        this.context = context;
        this.current = current;
        this.response = response;
        this.typeId = typeId;
        this.del = del;
        this.ex = ex;
        this.result = result;
        this.istr = istr;
        this.ostr = ostr;
        this.inS = inS;
        this.in = in;
        this.proxy = proxy;
        this.obj = obj;
        this.getCookie = getCookie;
        this._clone = _clone;
    }

    public Cls(IntfPrx s, String context, int current, short response, int typeId, short del, short cookie, String ex, int result, String istr, String ostr, String inS, String in, String proxy, int obj, int getCookie, String _clone)
    {
        this.s = s;
        this.context = context;
        this.current = current;
        this.response = response;
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
        this.obj = obj;
        this.getCookie = getCookie;
        this._clone = _clone;
    }

    public IntfPrx s;

    public String context;

    public int current;

    public short response;

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

    public int obj;

    public int getCookie;

    public String _clone;

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
    private static final long serialVersionUID = -328541504880224537L;

    /** @hidden */
    @Override
    protected void _iceWriteImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice(ice_staticId(), -1, true);
        ostr_.writeProxy(s);
        ostr_.writeString(context);
        ostr_.writeInt(current);
        ostr_.writeShort(response);
        ostr_.writeInt(typeId);
        ostr_.writeShort(del);
        ostr_.writeString(ex);
        ostr_.writeInt(result);
        ostr_.writeString(istr);
        ostr_.writeString(ostr);
        ostr_.writeString(inS);
        ostr_.writeString(in);
        ostr_.writeString(proxy);
        ostr_.writeInt(obj);
        ostr_.writeInt(getCookie);
        ostr_.writeString(_clone);
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
        typeId = istr_.readInt();
        del = istr_.readShort();
        ex = istr_.readString();
        result = istr_.readInt();
        istr = istr_.readString();
        ostr = istr_.readString();
        inS = istr_.readString();
        in = istr_.readString();
        proxy = istr_.readString();
        obj = istr_.readInt();
        getCookie = istr_.readInt();
        _clone = istr_.readString();
        if(_cookie = istr_.readOptional(1, com.zeroc.Ice.OptionalFormat.F2))
        {
            cookie = istr_.readShort();
        }
        istr_.endSlice();
    }
}
