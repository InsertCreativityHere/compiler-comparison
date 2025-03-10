// Copyright (c) ZeroC, Inc.
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file 'Controller.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>

package Test.Common;

public class Config extends com.zeroc.Ice.Value
{
    public Config()
    {
        this.protocol = "";
    }

    public Config(String protocol, boolean mx, boolean serialize, boolean compress, boolean ipv6, String[] cprops, String[] sprops)
    {
        setProtocol(protocol);
        setMx(mx);
        setSerialize(serialize);
        setCompress(compress);
        setIpv6(ipv6);
        setCprops(cprops);
        setSprops(sprops);
    }

    private String protocol;
    private boolean _protocol;

    public String getProtocol()
    {
        if(!_protocol)
        {
            throw new java.util.NoSuchElementException("protocol is not set");
        }
        return protocol;
    }

    public void setProtocol(String protocol)
    {
        _protocol = true;
        this.protocol = protocol;
    }

    public boolean hasProtocol()
    {
        return _protocol;
    }

    public void clearProtocol()
    {
        _protocol = false;
    }

    public void optionalProtocol(java.util.Optional<java.lang.String> v)
    {
        if(v == null || !v.isPresent())
        {
            _protocol = false;
        }
        else
        {
            _protocol = true;
            protocol = v.get();
        }
    }

    public java.util.Optional<java.lang.String> optionalProtocol()
    {
        if(_protocol)
        {
            return java.util.Optional.of(protocol);
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    private boolean mx;
    private boolean _mx;

    public boolean getMx()
    {
        if(!_mx)
        {
            throw new java.util.NoSuchElementException("mx is not set");
        }
        return mx;
    }

    public void setMx(boolean mx)
    {
        _mx = true;
        this.mx = mx;
    }

    public boolean hasMx()
    {
        return _mx;
    }

    public void clearMx()
    {
        _mx = false;
    }

    public void optionalMx(java.util.Optional<java.lang.Boolean> v)
    {
        if(v == null || !v.isPresent())
        {
            _mx = false;
        }
        else
        {
            _mx = true;
            mx = v.get();
        }
    }

    public java.util.Optional<java.lang.Boolean> optionalMx()
    {
        if(_mx)
        {
            return java.util.Optional.of(mx);
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    public boolean isMx()
    {
        if(!_mx)
        {
            throw new java.util.NoSuchElementException("mx is not set");
        }
        return mx;
    }

    private boolean serialize;
    private boolean _serialize;

    public boolean getSerialize()
    {
        if(!_serialize)
        {
            throw new java.util.NoSuchElementException("serialize is not set");
        }
        return serialize;
    }

    public void setSerialize(boolean serialize)
    {
        _serialize = true;
        this.serialize = serialize;
    }

    public boolean hasSerialize()
    {
        return _serialize;
    }

    public void clearSerialize()
    {
        _serialize = false;
    }

    public void optionalSerialize(java.util.Optional<java.lang.Boolean> v)
    {
        if(v == null || !v.isPresent())
        {
            _serialize = false;
        }
        else
        {
            _serialize = true;
            serialize = v.get();
        }
    }

    public java.util.Optional<java.lang.Boolean> optionalSerialize()
    {
        if(_serialize)
        {
            return java.util.Optional.of(serialize);
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    public boolean isSerialize()
    {
        if(!_serialize)
        {
            throw new java.util.NoSuchElementException("serialize is not set");
        }
        return serialize;
    }

    private boolean compress;
    private boolean _compress;

    public boolean getCompress()
    {
        if(!_compress)
        {
            throw new java.util.NoSuchElementException("compress is not set");
        }
        return compress;
    }

    public void setCompress(boolean compress)
    {
        _compress = true;
        this.compress = compress;
    }

    public boolean hasCompress()
    {
        return _compress;
    }

    public void clearCompress()
    {
        _compress = false;
    }

    public void optionalCompress(java.util.Optional<java.lang.Boolean> v)
    {
        if(v == null || !v.isPresent())
        {
            _compress = false;
        }
        else
        {
            _compress = true;
            compress = v.get();
        }
    }

    public java.util.Optional<java.lang.Boolean> optionalCompress()
    {
        if(_compress)
        {
            return java.util.Optional.of(compress);
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    public boolean isCompress()
    {
        if(!_compress)
        {
            throw new java.util.NoSuchElementException("compress is not set");
        }
        return compress;
    }

    private boolean ipv6;
    private boolean _ipv6;

    public boolean getIpv6()
    {
        if(!_ipv6)
        {
            throw new java.util.NoSuchElementException("ipv6 is not set");
        }
        return ipv6;
    }

    public void setIpv6(boolean ipv6)
    {
        _ipv6 = true;
        this.ipv6 = ipv6;
    }

    public boolean hasIpv6()
    {
        return _ipv6;
    }

    public void clearIpv6()
    {
        _ipv6 = false;
    }

    public void optionalIpv6(java.util.Optional<java.lang.Boolean> v)
    {
        if(v == null || !v.isPresent())
        {
            _ipv6 = false;
        }
        else
        {
            _ipv6 = true;
            ipv6 = v.get();
        }
    }

    public java.util.Optional<java.lang.Boolean> optionalIpv6()
    {
        if(_ipv6)
        {
            return java.util.Optional.of(ipv6);
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    public boolean isIpv6()
    {
        if(!_ipv6)
        {
            throw new java.util.NoSuchElementException("ipv6 is not set");
        }
        return ipv6;
    }

    private String[] cprops;
    private boolean _cprops;

    public String[] getCprops()
    {
        if(!_cprops)
        {
            throw new java.util.NoSuchElementException("cprops is not set");
        }
        return cprops;
    }

    public void setCprops(String[] cprops)
    {
        _cprops = true;
        this.cprops = cprops;
    }

    public boolean hasCprops()
    {
        return _cprops;
    }

    public void clearCprops()
    {
        _cprops = false;
    }

    public void optionalCprops(java.util.Optional<String[]> v)
    {
        if(v == null || !v.isPresent())
        {
            _cprops = false;
        }
        else
        {
            _cprops = true;
            cprops = v.get();
        }
    }

    public java.util.Optional<String[]> optionalCprops()
    {
        if(_cprops)
        {
            return java.util.Optional.of(cprops);
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    public String getCprops(int index)
    {
        if(!_cprops)
        {
            throw new java.util.NoSuchElementException("cprops is not set");
        }
        return this.cprops[index];
    }

    public void setCprops(int index, String val)
    {
        if(!_cprops)
        {
            throw new java.util.NoSuchElementException("cprops is not set");
        }
        this.cprops[index] = val;
    }

    private String[] sprops;
    private boolean _sprops;

    public String[] getSprops()
    {
        if(!_sprops)
        {
            throw new java.util.NoSuchElementException("sprops is not set");
        }
        return sprops;
    }

    public void setSprops(String[] sprops)
    {
        _sprops = true;
        this.sprops = sprops;
    }

    public boolean hasSprops()
    {
        return _sprops;
    }

    public void clearSprops()
    {
        _sprops = false;
    }

    public void optionalSprops(java.util.Optional<String[]> v)
    {
        if(v == null || !v.isPresent())
        {
            _sprops = false;
        }
        else
        {
            _sprops = true;
            sprops = v.get();
        }
    }

    public java.util.Optional<String[]> optionalSprops()
    {
        if(_sprops)
        {
            return java.util.Optional.of(sprops);
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    public String getSprops(int index)
    {
        if(!_sprops)
        {
            throw new java.util.NoSuchElementException("sprops is not set");
        }
        return this.sprops[index];
    }

    public void setSprops(int index, String val)
    {
        if(!_sprops)
        {
            throw new java.util.NoSuchElementException("sprops is not set");
        }
        this.sprops[index] = val;
    }

    public Config clone()
    {
        return (Config)super.clone();
    }

    public static String ice_staticId()
    {
        return "::Test::Common::Config";
    }

    @Override
    public String ice_id()
    {
        return ice_staticId();
    }

    /** @hidden */
    private static final long serialVersionUID = -7245008405038236308L;

    /** @hidden */
    @Override
    protected void _iceWriteImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice(ice_staticId(), -1, true);
        if(_protocol)
        {
            ostr_.writeString(1, protocol);
        }
        if(_mx)
        {
            ostr_.writeBool(2, mx);
        }
        if(_serialize)
        {
            ostr_.writeBool(3, serialize);
        }
        if(_compress)
        {
            ostr_.writeBool(4, compress);
        }
        if(_ipv6)
        {
            ostr_.writeBool(5, ipv6);
        }
        if(_cprops)
        {
            ostr_.writeStringSeq(6, cprops);
        }
        if(_sprops)
        {
            ostr_.writeStringSeq(7, sprops);
        }
        ostr_.endSlice();
    }

    /** @hidden */
    @Override
    protected void _iceReadImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        if(_protocol = istr_.readOptional(1, com.zeroc.Ice.OptionalFormat.VSize))
        {
            protocol = istr_.readString();
        }
        if(_mx = istr_.readOptional(2, com.zeroc.Ice.OptionalFormat.F1))
        {
            mx = istr_.readBool();
        }
        if(_serialize = istr_.readOptional(3, com.zeroc.Ice.OptionalFormat.F1))
        {
            serialize = istr_.readBool();
        }
        if(_compress = istr_.readOptional(4, com.zeroc.Ice.OptionalFormat.F1))
        {
            compress = istr_.readBool();
        }
        if(_ipv6 = istr_.readOptional(5, com.zeroc.Ice.OptionalFormat.F1))
        {
            ipv6 = istr_.readBool();
        }
        if(_cprops = istr_.readOptional(6, com.zeroc.Ice.OptionalFormat.FSize))
        {
            istr_.skip(4);
            cprops = istr_.readStringSeq();
        }
        if(_sprops = istr_.readOptional(7, com.zeroc.Ice.OptionalFormat.FSize))
        {
            istr_.skip(4);
            sprops = istr_.readStringSeq();
        }
        istr_.endSlice();
    }
}
