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

public class TopicSpec implements java.lang.Cloneable,
                                  java.io.Serializable
{
    /**
     * The id of the topic.
     **/
    public long id;

    /**
     * The name of the topic.
     **/
    public String name;

    /**
     * The topic keys or filters.
     **/
    public ElementInfo[] elements;

    /**
     * The topic update tags.
     **/
    public ElementInfo[] tags;

    public TopicSpec()
    {
        this.name = "";
    }

    public TopicSpec(long id, String name, ElementInfo[] elements, ElementInfo[] tags)
    {
        this.id = id;
        this.name = name;
        this.elements = elements;
        this.tags = tags;
    }

    public boolean equals(java.lang.Object rhs)
    {
        if(this == rhs)
        {
            return true;
        }
        TopicSpec r = null;
        if(rhs instanceof TopicSpec)
        {
            r = (TopicSpec)rhs;
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
            if(!java.util.Arrays.equals(this.elements, r.elements))
            {
                return false;
            }
            if(!java.util.Arrays.equals(this.tags, r.tags))
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
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, "::DataStormContract::TopicSpec");
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, id);
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, name);
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, elements);
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, tags);
        return h_;
    }

    public TopicSpec clone()
    {
        TopicSpec c = null;
        try
        {
            c = (TopicSpec)super.clone();
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
        ElementInfoSeqHelper.write(ostr, this.elements);
        ElementInfoSeqHelper.write(ostr, this.tags);
    }

    public void ice_readMembers(com.zeroc.Ice.InputStream istr)
    {
        this.id = istr.readLong();
        this.name = istr.readString();
        this.elements = ElementInfoSeqHelper.read(istr);
        this.tags = ElementInfoSeqHelper.read(istr);
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, TopicSpec v)
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

    static public TopicSpec ice_read(com.zeroc.Ice.InputStream istr)
    {
        TopicSpec v = new TopicSpec();
        v.ice_readMembers(istr);
        return v;
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, java.util.Optional<TopicSpec> v)
    {
        if(v != null && v.isPresent())
        {
            ice_write(ostr, tag, v.get());
        }
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, TopicSpec v)
    {
        if(ostr.writeOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            int pos = ostr.startSize();
            ice_write(ostr, v);
            ostr.endSize(pos);
        }
    }

    static public java.util.Optional<TopicSpec> ice_read(com.zeroc.Ice.InputStream istr, int tag)
    {
        if(istr.readOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            istr.skip(4);
            return java.util.Optional.of(TopicSpec.ice_read(istr));
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    private static final TopicSpec _nullMarshalValue = new TopicSpec();

    /** @hidden */
    private static final long serialVersionUID = 2455647731436265869L;
}
