//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `Contract.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

package DataStormContract;

public class ElementSpec implements java.lang.Cloneable,
                                    java.io.Serializable
{
    /**
     * The readers and writers associated with the key or filter.
     **/
    public ElementData[] elements;

    /**
     * The id of the key or filter.
     **/
    public long id;

    /**
     * The name of the filter.
     **/
    public String name;

    /**
     * The value of the key or filter.
     **/
    public byte[] value;

    /**
     * The id of the key or filter from the peer.
     **/
    public long peerId;

    /**
     * The name of the filter from the peer.
     **/
    public String peerName;

    public ElementSpec()
    {
        this.name = "";
        this.peerName = "";
    }

    public ElementSpec(ElementData[] elements, long id, String name, byte[] value, long peerId, String peerName)
    {
        this.elements = elements;
        this.id = id;
        this.name = name;
        this.value = value;
        this.peerId = peerId;
        this.peerName = peerName;
    }

    public boolean equals(java.lang.Object rhs)
    {
        if(this == rhs)
        {
            return true;
        }
        ElementSpec r = null;
        if(rhs instanceof ElementSpec)
        {
            r = (ElementSpec)rhs;
        }

        if(r != null)
        {
            if(!java.util.Arrays.equals(this.elements, r.elements))
            {
                return false;
            }
            if(this.id != r.id)
            {
                return false;
            }
            if(this.name != r.name)
            {
                if(this.name == null || r.name == null || !this.name.equals(r.name))
                {
                    return false;
                }
            }
            if(!java.util.Arrays.equals(this.value, r.value))
            {
                return false;
            }
            if(this.peerId != r.peerId)
            {
                return false;
            }
            if(this.peerName != r.peerName)
            {
                if(this.peerName == null || r.peerName == null || !this.peerName.equals(r.peerName))
                {
                    return false;
                }
            }

            return true;
        }

        return false;
    }

    public int hashCode()
    {
        int h_ = 5381;
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, "::DataStormContract::ElementSpec");
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, elements);
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, id);
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, name);
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, value);
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, peerId);
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, peerName);
        return h_;
    }

    public ElementSpec clone()
    {
        ElementSpec c = null;
        try
        {
            c = (ElementSpec)super.clone();
        }
        catch(CloneNotSupportedException ex)
        {
            assert false; // impossible
        }
        return c;
    }

    public void ice_writeMembers(com.zeroc.Ice.OutputStream ostr)
    {
        ElementDataSeqHelper.write(ostr, this.elements);
        ostr.writeLong(this.id);
        ostr.writeString(this.name);
        ostr.writeByteSeq(this.value);
        ostr.writeLong(this.peerId);
        ostr.writeString(this.peerName);
    }

    public void ice_readMembers(com.zeroc.Ice.InputStream istr)
    {
        this.elements = ElementDataSeqHelper.read(istr);
        this.id = istr.readLong();
        this.name = istr.readString();
        this.value = istr.readByteSeq();
        this.peerId = istr.readLong();
        this.peerName = istr.readString();
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, ElementSpec v)
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

    static public ElementSpec ice_read(com.zeroc.Ice.InputStream istr)
    {
        ElementSpec v = new ElementSpec();
        v.ice_readMembers(istr);
        return v;
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, java.util.Optional<ElementSpec> v)
    {
        if(v != null && v.isPresent())
        {
            ice_write(ostr, tag, v.get());
        }
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, ElementSpec v)
    {
        if(ostr.writeOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            int pos = ostr.startSize();
            ice_write(ostr, v);
            ostr.endSize(pos);
        }
    }

    static public java.util.Optional<ElementSpec> ice_read(com.zeroc.Ice.InputStream istr, int tag)
    {
        if(istr.readOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            istr.skip(4);
            return java.util.Optional.of(ElementSpec.ice_read(istr));
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    private static final ElementSpec _nullMarshalValue = new ElementSpec();

    /** @hidden */
    private static final long serialVersionUID = 1871200542675643006L;
}
