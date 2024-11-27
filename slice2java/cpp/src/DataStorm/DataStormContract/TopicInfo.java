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
 * Provides information about a topic, including its name and the list of active topic reader or topic writer IDs.
 *
 * There is a unique `TopicInfo` for all topic instances with the same name, representing a single logical topic.
 * Each instance has its own topic reader and topic writer, which are lazily initialized and have a unique ID.
 *
 * @see Session#announceTopics
 **/
public class TopicInfo implements java.lang.Cloneable,
                                  java.io.Serializable
{
    /**
     * The name of the topic.
     **/
    public String name;

    /**
     * The list of active topic reader or topic writer IDs for the topic.
     *
     * - In a publisher session announcing topics to a subscriber session, this contains the active topic writer
     * IDs.
     * - In a subscriber session announcing topics to a publisher session, this contains the active topic reader
     * IDs.
     **/
    public long[] ids;

    public TopicInfo()
    {
        this.name = "";
    }

    public TopicInfo(String name, long[] ids)
    {
        this.name = name;
        this.ids = ids;
    }

    public boolean equals(java.lang.Object rhs)
    {
        if(this == rhs)
        {
            return true;
        }
        TopicInfo r = null;
        if(rhs instanceof TopicInfo)
        {
            r = (TopicInfo)rhs;
        }

        if(r != null)
        {
            if(this.name != r.name)
            {
                if(this.name == null || r.name == null || !this.name.equals(r.name))
                {
                    return false;
                }
            }
            if(!java.util.Arrays.equals(this.ids, r.ids))
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
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, "::DataStormContract::TopicInfo");
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, name);
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, ids);
        return h_;
    }

    public TopicInfo clone()
    {
        TopicInfo c = null;
        try
        {
            c = (TopicInfo)super.clone();
        }
        catch(CloneNotSupportedException ex)
        {
            assert false; // impossible
        }
        return c;
    }

    public void ice_writeMembers(com.zeroc.Ice.OutputStream ostr)
    {
        ostr.writeString(this.name);
        ostr.writeLongSeq(this.ids);
    }

    public void ice_readMembers(com.zeroc.Ice.InputStream istr)
    {
        this.name = istr.readString();
        this.ids = istr.readLongSeq();
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, TopicInfo v)
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

    static public TopicInfo ice_read(com.zeroc.Ice.InputStream istr)
    {
        TopicInfo v = new TopicInfo();
        v.ice_readMembers(istr);
        return v;
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, java.util.Optional<TopicInfo> v)
    {
        if(v != null && v.isPresent())
        {
            ice_write(ostr, tag, v.get());
        }
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, TopicInfo v)
    {
        if(ostr.writeOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            int pos = ostr.startSize();
            ice_write(ostr, v);
            ostr.endSize(pos);
        }
    }

    static public java.util.Optional<TopicInfo> ice_read(com.zeroc.Ice.InputStream istr, int tag)
    {
        if(istr.readOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            istr.skip(4);
            return java.util.Optional.of(TopicInfo.ice_read(istr));
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    private static final TopicInfo _nullMarshalValue = new TopicInfo();

    /** @hidden */
    private static final long serialVersionUID = -4050197127161943623L;
}
