//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `SubscriberRecord.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

package IceStorm;

/**
 * Used to store persistent information for persistent subscribers.
 **/
public class SubscriberRecord implements java.lang.Cloneable,
                                         java.io.Serializable
{
    /**
     * The name of the topic.
     **/
    public String topicName;

    /**
     * The subscriber identity.
     **/
    public com.zeroc.Ice.Identity id;

    /**
     * Is this a link record, or a subscriber record?
     **/
    public boolean link;

    /**
     * The subscriber object.
     **/
    public com.zeroc.Ice.ObjectPrx obj;

    /**
     * The QoS.
     **/
    public java.util.Map<java.lang.String, java.lang.String> theQoS;

    /**
     * The cost.
     **/
    public int cost;

    /**
     * The linked topic.
     **/
    public com.zeroc.IceStorm.TopicPrx theTopic;

    public SubscriberRecord()
    {
        this.topicName = "";
        this.id = new com.zeroc.Ice.Identity();
    }

    public SubscriberRecord(String topicName, com.zeroc.Ice.Identity id, boolean link, com.zeroc.Ice.ObjectPrx obj, java.util.Map<java.lang.String, java.lang.String> theQoS, int cost, com.zeroc.IceStorm.TopicPrx theTopic)
    {
        this.topicName = topicName;
        this.id = id;
        this.link = link;
        this.obj = obj;
        this.theQoS = theQoS;
        this.cost = cost;
        this.theTopic = theTopic;
    }

    public boolean equals(java.lang.Object rhs)
    {
        if(this == rhs)
        {
            return true;
        }
        SubscriberRecord r = null;
        if(rhs instanceof SubscriberRecord)
        {
            r = (SubscriberRecord)rhs;
        }

        if(r != null)
        {
            if(this.topicName != r.topicName)
            {
                if(this.topicName == null || r.topicName == null || !this.topicName.equals(r.topicName))
                {
                    return false;
                }
            }
            if(this.id != r.id)
            {
                if(this.id == null || r.id == null || !this.id.equals(r.id))
                {
                    return false;
                }
            }
            if(this.link != r.link)
            {
                return false;
            }
            if(this.obj != r.obj)
            {
                if(this.obj == null || r.obj == null || !this.obj.equals(r.obj))
                {
                    return false;
                }
            }
            if(this.theQoS != r.theQoS)
            {
                if(this.theQoS == null || r.theQoS == null || !this.theQoS.equals(r.theQoS))
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
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, "::IceStorm::SubscriberRecord");
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, topicName);
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, id);
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, link);
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, obj);
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, theQoS);
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, cost);
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, theTopic);
        return h_;
    }

    public SubscriberRecord clone()
    {
        SubscriberRecord c = null;
        try
        {
            c = (SubscriberRecord)super.clone();
        }
        catch(CloneNotSupportedException ex)
        {
            assert false; // impossible
        }
        return c;
    }

    public void ice_writeMembers(com.zeroc.Ice.OutputStream ostr)
    {
        ostr.writeString(this.topicName);
        com.zeroc.Ice.Identity.ice_write(ostr, this.id);
        ostr.writeBool(this.link);
        ostr.writeProxy(this.obj);
        com.zeroc.IceStorm.QoSHelper.write(ostr, this.theQoS);
        ostr.writeInt(this.cost);
        ostr.writeProxy(this.theTopic);
    }

    public void ice_readMembers(com.zeroc.Ice.InputStream istr)
    {
        this.topicName = istr.readString();
        this.id = com.zeroc.Ice.Identity.ice_read(istr);
        this.link = istr.readBool();
        this.obj = istr.readProxy();
        this.theQoS = com.zeroc.IceStorm.QoSHelper.read(istr);
        this.cost = istr.readInt();
        this.theTopic = com.zeroc.IceStorm.TopicPrx.uncheckedCast(istr.readProxy());
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, SubscriberRecord v)
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

    static public SubscriberRecord ice_read(com.zeroc.Ice.InputStream istr)
    {
        SubscriberRecord v = new SubscriberRecord();
        v.ice_readMembers(istr);
        return v;
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, java.util.Optional<SubscriberRecord> v)
    {
        if(v != null && v.isPresent())
        {
            ice_write(ostr, tag, v.get());
        }
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, SubscriberRecord v)
    {
        if(ostr.writeOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            int pos = ostr.startSize();
            ice_write(ostr, v);
            ostr.endSize(pos);
        }
    }

    static public java.util.Optional<SubscriberRecord> ice_read(com.zeroc.Ice.InputStream istr, int tag)
    {
        if(istr.readOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            istr.skip(4);
            return java.util.Optional.of(SubscriberRecord.ice_read(istr));
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    private static final SubscriberRecord _nullMarshalValue = new SubscriberRecord();

    /** @hidden */
    public static final long serialVersionUID = -5894063732269025778L;
}
