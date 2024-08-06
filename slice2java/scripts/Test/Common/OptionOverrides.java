//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `Controller.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

package Test.Common;

public class OptionOverrides extends com.zeroc.Ice.Value
{
    public OptionOverrides()
    {
    }

    public OptionOverrides(String[] protocol, boolean[] mx, boolean[] serialize, boolean[] compress, boolean[] ipv6)
    {
        setProtocol(protocol);
        setMx(mx);
        setSerialize(serialize);
        setCompress(compress);
        setIpv6(ipv6);
    }

    private String[] protocol;
    private boolean _protocol;

    public String[] getProtocol()
    {
        if(!_protocol)
        {
            throw new java.util.NoSuchElementException("protocol is not set");
        }
        return protocol;
    }

    public void setProtocol(String[] protocol)
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

    public void optionalProtocol(java.util.Optional<String[]> v)
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

    public java.util.Optional<String[]> optionalProtocol()
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

    public String getProtocol(int index)
    {
        if(!_protocol)
        {
            throw new java.util.NoSuchElementException("protocol is not set");
        }
        return this.protocol[index];
    }

    public void setProtocol(int index, String val)
    {
        if(!_protocol)
        {
            throw new java.util.NoSuchElementException("protocol is not set");
        }
        this.protocol[index] = val;
    }

    private boolean[] mx;
    private boolean _mx;

    public boolean[] getMx()
    {
        if(!_mx)
        {
            throw new java.util.NoSuchElementException("mx is not set");
        }
        return mx;
    }

    public void setMx(boolean[] mx)
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

    public void optionalMx(java.util.Optional<boolean[]> v)
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

    public java.util.Optional<boolean[]> optionalMx()
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

    public boolean getMx(int index)
    {
        if(!_mx)
        {
            throw new java.util.NoSuchElementException("mx is not set");
        }
        return this.mx[index];
    }

    public void setMx(int index, boolean val)
    {
        if(!_mx)
        {
            throw new java.util.NoSuchElementException("mx is not set");
        }
        this.mx[index] = val;
    }

    private boolean[] serialize;
    private boolean _serialize;

    public boolean[] getSerialize()
    {
        if(!_serialize)
        {
            throw new java.util.NoSuchElementException("serialize is not set");
        }
        return serialize;
    }

    public void setSerialize(boolean[] serialize)
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

    public void optionalSerialize(java.util.Optional<boolean[]> v)
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

    public java.util.Optional<boolean[]> optionalSerialize()
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

    public boolean getSerialize(int index)
    {
        if(!_serialize)
        {
            throw new java.util.NoSuchElementException("serialize is not set");
        }
        return this.serialize[index];
    }

    public void setSerialize(int index, boolean val)
    {
        if(!_serialize)
        {
            throw new java.util.NoSuchElementException("serialize is not set");
        }
        this.serialize[index] = val;
    }

    private boolean[] compress;
    private boolean _compress;

    public boolean[] getCompress()
    {
        if(!_compress)
        {
            throw new java.util.NoSuchElementException("compress is not set");
        }
        return compress;
    }

    public void setCompress(boolean[] compress)
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

    public void optionalCompress(java.util.Optional<boolean[]> v)
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

    public java.util.Optional<boolean[]> optionalCompress()
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

    public boolean getCompress(int index)
    {
        if(!_compress)
        {
            throw new java.util.NoSuchElementException("compress is not set");
        }
        return this.compress[index];
    }

    public void setCompress(int index, boolean val)
    {
        if(!_compress)
        {
            throw new java.util.NoSuchElementException("compress is not set");
        }
        this.compress[index] = val;
    }

    private boolean[] ipv6;
    private boolean _ipv6;

    public boolean[] getIpv6()
    {
        if(!_ipv6)
        {
            throw new java.util.NoSuchElementException("ipv6 is not set");
        }
        return ipv6;
    }

    public void setIpv6(boolean[] ipv6)
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

    public void optionalIpv6(java.util.Optional<boolean[]> v)
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

    public java.util.Optional<boolean[]> optionalIpv6()
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

    public boolean getIpv6(int index)
    {
        if(!_ipv6)
        {
            throw new java.util.NoSuchElementException("ipv6 is not set");
        }
        return this.ipv6[index];
    }

    public void setIpv6(int index, boolean val)
    {
        if(!_ipv6)
        {
            throw new java.util.NoSuchElementException("ipv6 is not set");
        }
        this.ipv6[index] = val;
    }

    public OptionOverrides clone()
    {
        return (OptionOverrides)super.clone();
    }

    public static String ice_staticId()
    {
        return "::Test::Common::OptionOverrides";
    }

    @Override
    public String ice_id()
    {
        return ice_staticId();
    }

    /** @hidden */
    private static final long serialVersionUID = 8969747299042964680L;

    /** @hidden */
    @Override
    protected void _iceWriteImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice(ice_staticId(), -1, true);
        if(_protocol)
        {
            ostr_.writeStringSeq(1, protocol);
        }
        if(_mx)
        {
            ostr_.writeBoolSeq(2, mx);
        }
        if(_serialize)
        {
            ostr_.writeBoolSeq(3, serialize);
        }
        if(_compress)
        {
            ostr_.writeBoolSeq(4, compress);
        }
        if(_ipv6)
        {
            ostr_.writeBoolSeq(5, ipv6);
        }
        ostr_.endSlice();
    }

    /** @hidden */
    @Override
    protected void _iceReadImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        if(_protocol = istr_.readOptional(1, com.zeroc.Ice.OptionalFormat.FSize))
        {
            istr_.skip(4);
            protocol = istr_.readStringSeq();
        }
        if(_mx = istr_.readOptional(2, com.zeroc.Ice.OptionalFormat.VSize))
        {
            mx = istr_.readBoolSeq();
        }
        if(_serialize = istr_.readOptional(3, com.zeroc.Ice.OptionalFormat.VSize))
        {
            serialize = istr_.readBoolSeq();
        }
        if(_compress = istr_.readOptional(4, com.zeroc.Ice.OptionalFormat.VSize))
        {
            compress = istr_.readBoolSeq();
        }
        if(_ipv6 = istr_.readOptional(5, com.zeroc.Ice.OptionalFormat.VSize))
        {
            ipv6 = istr_.readBoolSeq();
        }
        istr_.endSlice();
    }
}
