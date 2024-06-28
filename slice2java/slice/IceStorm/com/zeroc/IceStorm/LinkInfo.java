//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `IceStorm.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

package com.zeroc.IceStorm;

/**
 * Information on the topic links.
 **/
public class LinkInfo implements java.lang.Cloneable,
                                 java.io.Serializable
{
    /**
     * The linked topic. It is never null.
     **/
    public TopicPrx theTopic;

    /**
     * The name of the linked topic.
     **/
    public String name;

    /**
     * The cost of traversing this link.
     **/
    public int cost;

    public LinkInfo()
    {
        this.name = "";
    }

    public LinkInfo(TopicPrx theTopic, String name, int cost)
    {
        this.theTopic = theTopic;
        this.name = name;
        this.cost = cost;
    }

    public boolean equals(java.lang.Object rhs)
    {
        if(this == rhs)
        {
            return true;
        }
        LinkInfo r = null;
        if(rhs instanceof LinkInfo)
        {
            r = (LinkInfo)rhs;
        }

        if(r != null)
        {
            if(this.theTopic != r.theTopic)
            {
                if(this.theTopic == null || r.theTopic == null || !this.theTopic.equals(r.theTopic))
                {
                    return false;
                }
            }
            if(this.name != r.name)
            {
                if(this.name == null || r.name == null || !this.name.equals(r.name))
                {
                    return false;
                }
            }
            if(this.cost != r.cost)
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
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, "::IceStorm::LinkInfo");
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, theTopic);
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, name);
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, cost);
        return h_;
    }

    public LinkInfo clone()
    {
        LinkInfo c = null;
        try
        {
            c = (LinkInfo)super.clone();
        }
        catch(CloneNotSupportedException ex)
        {
            assert false; // impossible
        }
        return c;
    }

    public void ice_writeMembers(com.zeroc.Ice.OutputStream ostr)
    {
        ostr.writeProxy(this.theTopic);
        ostr.writeString(this.name);
        ostr.writeInt(this.cost);
    }

    public void ice_readMembers(com.zeroc.Ice.InputStream istr)
    {
        this.theTopic = TopicPrx.uncheckedCast(istr.readProxy());
        this.name = istr.readString();
        this.cost = istr.readInt();
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, LinkInfo v)
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

    static public LinkInfo ice_read(com.zeroc.Ice.InputStream istr)
    {
        LinkInfo v = new LinkInfo();
        v.ice_readMembers(istr);
        return v;
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, java.util.Optional<LinkInfo> v)
    {
        if(v != null && v.isPresent())
        {
            ice_write(ostr, tag, v.get());
        }
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, LinkInfo v)
    {
        if(ostr.writeOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            int pos = ostr.startSize();
            ice_write(ostr, v);
            ostr.endSize(pos);
        }
    }

    static public java.util.Optional<LinkInfo> ice_read(com.zeroc.Ice.InputStream istr, int tag)
    {
        if(istr.readOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            istr.skip(4);
            return java.util.Optional.of(LinkInfo.ice_read(istr));
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    private static final LinkInfo _nullMarshalValue = new LinkInfo();

    /** @hidden */
    private static final long serialVersionUID = 1830136309898113268L;
}
