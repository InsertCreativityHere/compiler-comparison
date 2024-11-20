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
 * The key for persistent subscribers, or topics.
 * If the subscriber identity is empty then the record is used as a place holder for the creation of a topic,
 * otherwise the record holds a subscription record.
 **/
public class SubscriberRecordKey implements java.lang.Cloneable,
                                            java.io.Serializable
{
    /**
     * The topic identity.
     **/
    public com.zeroc.Ice.Identity topic;

    /**
     * The identity of the subscriber. If this is empty then the key is a placeholder for a topic.
     **/
    public com.zeroc.Ice.Identity id;

    public SubscriberRecordKey()
    {
        this.topic = new com.zeroc.Ice.Identity();
        this.id = new com.zeroc.Ice.Identity();
    }

    public SubscriberRecordKey(com.zeroc.Ice.Identity topic, com.zeroc.Ice.Identity id)
    {
        this.topic = topic;
        this.id = id;
    }

    public boolean equals(java.lang.Object rhs)
    {
        if(this == rhs)
        {
            return true;
        }
        SubscriberRecordKey r = null;
        if(rhs instanceof SubscriberRecordKey)
        {
            r = (SubscriberRecordKey)rhs;
        }

        if(r != null)
        {
            if(this.topic != r.topic)
            {
                if(this.topic == null || r.topic == null || !this.topic.equals(r.topic))
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

            return true;
        }

        return false;
    }

    public int hashCode()
    {
        int h_ = 5381;
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, "::IceStorm::SubscriberRecordKey");
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, topic);
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, id);
        return h_;
    }

    public SubscriberRecordKey clone()
    {
        SubscriberRecordKey c = null;
        try
        {
            c = (SubscriberRecordKey)super.clone();
        }
        catch(CloneNotSupportedException ex)
        {
            assert false; // impossible
        }
        return c;
    }

    public void ice_writeMembers(com.zeroc.Ice.OutputStream ostr)
    {
        com.zeroc.Ice.Identity.ice_write(ostr, this.topic);
        com.zeroc.Ice.Identity.ice_write(ostr, this.id);
    }

    public void ice_readMembers(com.zeroc.Ice.InputStream istr)
    {
        this.topic = com.zeroc.Ice.Identity.ice_read(istr);
        this.id = com.zeroc.Ice.Identity.ice_read(istr);
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, SubscriberRecordKey v)
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

    static public SubscriberRecordKey ice_read(com.zeroc.Ice.InputStream istr)
    {
        SubscriberRecordKey v = new SubscriberRecordKey();
        v.ice_readMembers(istr);
        return v;
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, java.util.Optional<SubscriberRecordKey> v)
    {
        if(v != null && v.isPresent())
        {
            ice_write(ostr, tag, v.get());
        }
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, SubscriberRecordKey v)
    {
        if(ostr.writeOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            int pos = ostr.startSize();
            ice_write(ostr, v);
            ostr.endSize(pos);
        }
    }

    static public java.util.Optional<SubscriberRecordKey> ice_read(com.zeroc.Ice.InputStream istr, int tag)
    {
        if(istr.readOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            istr.skip(4);
            return java.util.Optional.of(SubscriberRecordKey.ice_read(istr));
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    private static final SubscriberRecordKey _nullMarshalValue = new SubscriberRecordKey();

    /** @hidden */
    private static final long serialVersionUID = 549426993292074079L;
}
