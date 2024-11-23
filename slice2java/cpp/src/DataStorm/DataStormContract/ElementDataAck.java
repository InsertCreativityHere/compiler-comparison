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

public class ElementDataAck implements java.lang.Cloneable,
                                       java.io.Serializable
{
    /**
     * The id of the writer or filter.
     **/
    public long id;

    /**
     * The config of the writer or reader.
     **/
    public ElementConfig config;

    /**
     * The lastIds received by the reader.
     **/
    public java.util.Map<java.lang.Long, java.lang.Long> lastIds;

    /**
     * The samples of the writer or reader.
     **/
    public DataSample[] samples;

    /**
     * The id of the writer or reader on the peer.
     **/
    public long peerId;

    public ElementDataAck()
    {
    }

    public ElementDataAck(long id, ElementConfig config, java.util.Map<java.lang.Long, java.lang.Long> lastIds, DataSample[] samples, long peerId)
    {
        this.id = id;
        this.config = config;
        this.lastIds = lastIds;
        this.samples = samples;
        this.peerId = peerId;
    }

    public boolean equals(java.lang.Object rhs)
    {
        if(this == rhs)
        {
            return true;
        }
        ElementDataAck r = null;
        if(rhs instanceof ElementDataAck)
        {
            r = (ElementDataAck)rhs;
        }

        if(r != null)
        {
            if(this.id != r.id)
            {
                return false;
            }
            if(this.config != r.config)
            {
                if(this.config == null || r.config == null || !this.config.equals(r.config))
                {
                    return false;
                }
            }
            if(this.lastIds != r.lastIds)
            {
                if(this.lastIds == null || r.lastIds == null || !this.lastIds.equals(r.lastIds))
                {
                    return false;
                }
            }
            if(!java.util.Arrays.equals(this.samples, r.samples))
            {
                return false;
            }
            if(this.peerId != r.peerId)
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
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, "::DataStormContract::ElementDataAck");
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, id);
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, config);
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, lastIds);
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, samples);
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, peerId);
        return h_;
    }

    public ElementDataAck clone()
    {
        ElementDataAck c = null;
        try
        {
            c = (ElementDataAck)super.clone();
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
        ostr.writeValue(this.config);
        LongLongDictHelper.write(ostr, this.lastIds);
        DataSampleSeqHelper.write(ostr, this.samples);
        ostr.writeLong(this.peerId);
    }

    public void ice_readMembers(com.zeroc.Ice.InputStream istr)
    {
        this.id = istr.readLong();
        istr.readValue(v -> config = v, ElementConfig.class);
        this.lastIds = LongLongDictHelper.read(istr);
        this.samples = DataSampleSeqHelper.read(istr);
        this.peerId = istr.readLong();
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, ElementDataAck v)
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

    static public ElementDataAck ice_read(com.zeroc.Ice.InputStream istr)
    {
        ElementDataAck v = new ElementDataAck();
        v.ice_readMembers(istr);
        return v;
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, java.util.Optional<ElementDataAck> v)
    {
        if(v != null && v.isPresent())
        {
            ice_write(ostr, tag, v.get());
        }
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, ElementDataAck v)
    {
        if(ostr.writeOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            int pos = ostr.startSize();
            ice_write(ostr, v);
            ostr.endSize(pos);
        }
    }

    static public java.util.Optional<ElementDataAck> ice_read(com.zeroc.Ice.InputStream istr, int tag)
    {
        if(istr.readOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            istr.skip(4);
            return java.util.Optional.of(ElementDataAck.ice_read(istr));
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    private static final ElementDataAck _nullMarshalValue = new ElementDataAck();

    /** @hidden */
    private static final long serialVersionUID = 3584547237408405384L;
}
