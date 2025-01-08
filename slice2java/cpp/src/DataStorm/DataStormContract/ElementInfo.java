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

/**
 * Provides metadata about an element, such as a key, filter, or tag.
 **/
public class ElementInfo implements java.lang.Cloneable,
                                    java.io.Serializable
{
    /**
     * The unique identifier for the element.
     * Negative values indicate filter IDs; positive values indicate key or tag IDs.
     **/
    public long id;

    /**
     * The name of the element. Empty for key and tag elements.
     **/
    public String name;

    /**
     * The encoded value of the element.
     **/
    public byte[] value;

    public ElementInfo()
    {
        this.name = "";
    }

    public ElementInfo(long id, String name, byte[] value)
    {
        this.id = id;
        this.name = name;
        this.value = value;
    }

    public boolean equals(java.lang.Object rhs)
    {
        if(this == rhs)
        {
            return true;
        }
        ElementInfo r = null;
        if(rhs instanceof ElementInfo)
        {
            r = (ElementInfo)rhs;
        }

        if(r != null)
        {
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

            return true;
        }

        return false;
    }

    public int hashCode()
    {
        int h_ = 5381;
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, "::DataStormContract::ElementInfo");
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, id);
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, name);
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, value);
        return h_;
    }

    public ElementInfo clone()
    {
        ElementInfo c = null;
        try
        {
            c = (ElementInfo)super.clone();
        }
        catch(CloneNotSupportedException ex)
        {
            assert false; // impossible
        }
        return c;
    }

    public void ice_writeMembers(com.zeroc.Ice.OutputStream ostr)
    {
        ostr.writeLong(this.id);
        ostr.writeString(this.name);
        ostr.writeByteSeq(this.value);
    }

    public void ice_readMembers(com.zeroc.Ice.InputStream istr)
    {
        this.id = istr.readLong();
        this.name = istr.readString();
        this.value = istr.readByteSeq();
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, ElementInfo v)
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

    static public ElementInfo ice_read(com.zeroc.Ice.InputStream istr)
    {
        ElementInfo v = new ElementInfo();
        v.ice_readMembers(istr);
        return v;
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, java.util.Optional<ElementInfo> v)
    {
        if(v != null && v.isPresent())
        {
            ice_write(ostr, tag, v.get());
        }
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, ElementInfo v)
    {
        if(ostr.writeOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            int pos = ostr.startSize();
            ice_write(ostr, v);
            ostr.endSize(pos);
        }
    }

    static public java.util.Optional<ElementInfo> ice_read(com.zeroc.Ice.InputStream istr, int tag)
    {
        if(istr.readOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            istr.skip(4);
            return java.util.Optional.of(ElementInfo.ice_read(istr));
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    private static final ElementInfo _nullMarshalValue = new ElementInfo();

    /** @hidden */
    private static final long serialVersionUID = -1511013366116441563L;
}
