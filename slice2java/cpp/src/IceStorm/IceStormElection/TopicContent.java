//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `Election.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

package IceStormElection;

/**
 * The contents of topic.
 **/
public class TopicContent implements java.lang.Cloneable,
                                     java.io.Serializable
{
    /**
     * The topic identity.
     **/
    public com.zeroc.Ice.Identity id;

    /**
     * The topic subscribers.
     **/
    public IceStorm.SubscriberRecord[] records;

    public TopicContent()
    {
        this.id = new com.zeroc.Ice.Identity();
    }

    public TopicContent(com.zeroc.Ice.Identity id, IceStorm.SubscriberRecord[] records)
    {
        this.id = id;
        this.records = records;
    }

    public boolean equals(java.lang.Object rhs)
    {
        if(this == rhs)
        {
            return true;
        }
        TopicContent r = null;
        if(rhs instanceof TopicContent)
        {
            r = (TopicContent)rhs;
        }

        if(r != null)
        {
            if(this.id != r.id)
            {
                if(this.id == null || r.id == null || !this.id.equals(r.id))
                {
                    return false;
                }
            }
            if(!java.util.Arrays.equals(this.records, r.records))
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
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, "::IceStormElection::TopicContent");
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, id);
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, records);
        return h_;
    }

    public TopicContent clone()
    {
        TopicContent c = null;
        try
        {
            c = (TopicContent)super.clone();
        }
        catch(CloneNotSupportedException ex)
        {
            assert false; // impossible
        }
        return c;
    }

    public void ice_writeMembers(com.zeroc.Ice.OutputStream ostr)
    {
        com.zeroc.Ice.Identity.ice_write(ostr, this.id);
        IceStorm.SubscriberRecordSeqHelper.write(ostr, this.records);
    }

    public void ice_readMembers(com.zeroc.Ice.InputStream istr)
    {
        this.id = com.zeroc.Ice.Identity.ice_read(istr);
        this.records = IceStorm.SubscriberRecordSeqHelper.read(istr);
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, TopicContent v)
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

    static public TopicContent ice_read(com.zeroc.Ice.InputStream istr)
    {
        TopicContent v = new TopicContent();
        v.ice_readMembers(istr);
        return v;
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, java.util.Optional<TopicContent> v)
    {
        if(v != null && v.isPresent())
        {
            ice_write(ostr, tag, v.get());
        }
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, TopicContent v)
    {
        if(ostr.writeOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            int pos = ostr.startSize();
            ice_write(ostr, v);
            ostr.endSize(pos);
        }
    }

    static public java.util.Optional<TopicContent> ice_read(com.zeroc.Ice.InputStream istr, int tag)
    {
        if(istr.readOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            istr.skip(4);
            return java.util.Optional.of(TopicContent.ice_read(istr));
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    private static final TopicContent _nullMarshalValue = new TopicContent();

    /** @hidden */
    public static final long serialVersionUID = 751805473033183244L;
}
