//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `Version.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

package com.zeroc.Ice;

/**
 * A version structure for the protocol version.
 **/
public class ProtocolVersion implements java.lang.Cloneable,
                                        java.io.Serializable
{
    public byte major;

    public byte minor;

    public ProtocolVersion()
    {
    }

    public ProtocolVersion(byte major, byte minor)
    {
        this.major = major;
        this.minor = minor;
    }

    public boolean equals(java.lang.Object rhs)
    {
        if(this == rhs)
        {
            return true;
        }
        ProtocolVersion r = null;
        if(rhs instanceof ProtocolVersion)
        {
            r = (ProtocolVersion)rhs;
        }

        if(r != null)
        {
            if(this.major != r.major)
            {
                return false;
            }
            if(this.minor != r.minor)
            {
                return false;
            }

            return true;
        }

        return false;
    }

    public int hashCode()
    {
        int h_ = 5381;
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, "::Ice::ProtocolVersion");
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, major);
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, minor);
        return h_;
    }

    public ProtocolVersion clone()
    {
        ProtocolVersion c = null;
        try
        {
            c = (ProtocolVersion)super.clone();
        }
        catch(CloneNotSupportedException ex)
        {
            assert false; // impossible
        }
        return c;
    }

    public void ice_writeMembers(OutputStream ostr)
    {
        ostr.writeByte(this.major);
        ostr.writeByte(this.minor);
    }

    public void ice_readMembers(InputStream istr)
    {
        this.major = istr.readByte();
        this.minor = istr.readByte();
    }

    static public void ice_write(OutputStream ostr, ProtocolVersion v)
    {
        if(v == null)
        {
            _nullMarshalValue.ice_writeMembers(ostr);
        }
        else
        {
            v.ice_writeMembers(ostr);
        }
    }

    static public ProtocolVersion ice_read(InputStream istr)
    {
        ProtocolVersion v = new ProtocolVersion();
        v.ice_readMembers(istr);
        return v;
    }

    static public void ice_write(OutputStream ostr, int tag, java.util.Optional<ProtocolVersion> v)
    {
        if(v != null && v.isPresent())
        {
            ice_write(ostr, tag, v.get());
        }
    }

    static public void ice_write(OutputStream ostr, int tag, ProtocolVersion v)
    {
        if(ostr.writeOptional(tag, com.zeroc.Ice.OptionalFormat.VSize))
        {
            ostr.writeSize(2);
            ice_write(ostr, v);
        }
    }

    static public java.util.Optional<ProtocolVersion> ice_read(InputStream istr, int tag)
    {
        if(istr.readOptional(tag, com.zeroc.Ice.OptionalFormat.VSize))
        {
            istr.skipSize();
            return java.util.Optional.of(ProtocolVersion.ice_read(istr));
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    private static final ProtocolVersion _nullMarshalValue = new ProtocolVersion();

    /** @hidden */
    public static final long serialVersionUID = -4590926100351547676L;
}
