//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `LinkRecord.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

package IceStorm;

/**
 * Used to store persistent information for Topic federation.
 **/
public class LinkRecord implements java.lang.Cloneable,
                                   java.io.Serializable
{
    /**
     * The topic link object.
     **/
    public TopicLinkPrx obj;

    /**
     * The cost.
     **/
    public int cost;

    /**
     * The linked topic for getLinkInfoSeq
     **/
    public com.zeroc.IceStorm.TopicPrx theTopic;

    public LinkRecord()
    {
    }

    public LinkRecord(TopicLinkPrx obj, int cost, com.zeroc.IceStorm.TopicPrx theTopic)
    {
        this.obj = obj;
        this.cost = cost;
        this.theTopic = theTopic;
    }

    public boolean equals(java.lang.Object rhs)
    {
        if(this == rhs)
        {
            return true;
        }
        LinkRecord r = null;
        if(rhs instanceof LinkRecord)
        {
            r = (LinkRecord)rhs;
        }

        if(r != null)
        {
            if(this.obj != r.obj)
            {
                if(this.obj == null || r.obj == null || !this.obj.equals(r.obj))
                {
                    return false;
                }
            }
            if(this.cost != r.cost)
            {
                return false;
            }
            if(this.theTopic != r.theTopic)
            {
                if(this.theTopic == null || r.theTopic == null || !this.theTopic.equals(r.theTopic))
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
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, "::IceStorm::LinkRecord");
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, obj);
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, cost);
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, theTopic);
        return h_;
    }

    public LinkRecord clone()
    {
        LinkRecord c = null;
        try
        {
            c = (LinkRecord)super.clone();
        }
        catch(CloneNotSupportedException ex)
        {
            assert false; // impossible
        }
        return c;
    }

    public void ice_writeMembers(com.zeroc.Ice.OutputStream ostr)
    {
        ostr.writeProxy(this.obj);
        ostr.writeInt(this.cost);
        ostr.writeProxy(this.theTopic);
    }

    public void ice_readMembers(com.zeroc.Ice.InputStream istr)
    {
        this.obj = TopicLinkPrx.uncheckedCast(istr.readProxy());
        this.cost = istr.readInt();
        this.theTopic = com.zeroc.IceStorm.TopicPrx.uncheckedCast(istr.readProxy());
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, LinkRecord v)
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

    static public LinkRecord ice_read(com.zeroc.Ice.InputStream istr)
    {
        LinkRecord v = new LinkRecord();
        v.ice_readMembers(istr);
        return v;
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, java.util.Optional<LinkRecord> v)
    {
        if(v != null && v.isPresent())
        {
            ice_write(ostr, tag, v.get());
        }
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, LinkRecord v)
    {
        if(ostr.writeOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            int pos = ostr.startSize();
            ice_write(ostr, v);
            ostr.endSize(pos);
        }
    }

    static public java.util.Optional<LinkRecord> ice_read(com.zeroc.Ice.InputStream istr, int tag)
    {
        if(istr.readOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            istr.skip(4);
            return java.util.Optional.of(LinkRecord.ice_read(istr));
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    private static final LinkRecord _nullMarshalValue = new LinkRecord();

    /** @hidden */
    public static final long serialVersionUID = 596712153649919737L;
}
