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

public class DataSample implements java.lang.Cloneable,
                                   java.io.Serializable
{
    /**
     * The sample id.
     **/
    public long id;

    /**
     * The key id.
     **/
    public long keyId;

    /**
     * The key value if the key ID <= 0.
     **/
    public byte[] keyValue;

    /**
     * The timestamp of the sample (write time).
     **/
    public long timestamp;

    /**
     * The update tag if the sample event is PartialUpdate.
     **/
    public long tag;

    /**
     * The sample event.
     **/
    public DataStorm.SampleEvent event;

    /**
     * The value of the sample.
     **/
    public byte[] value;

    public DataSample()
    {
        this.event = DataStorm.SampleEvent.Add;
    }

    public DataSample(long id, long keyId, byte[] keyValue, long timestamp, long tag, DataStorm.SampleEvent event, byte[] value)
    {
        this.id = id;
        this.keyId = keyId;
        this.keyValue = keyValue;
        this.timestamp = timestamp;
        this.tag = tag;
        this.event = event;
        this.value = value;
    }

    public boolean equals(java.lang.Object rhs)
    {
        if(this == rhs)
        {
            return true;
        }
        DataSample r = null;
        if(rhs instanceof DataSample)
        {
            r = (DataSample)rhs;
        }

        if(r != null)
        {
            if(this.id != r.id)
            {
                return false;
            }
            if(this.keyId != r.keyId)
            {
                return false;
            }
            if(!java.util.Arrays.equals(this.keyValue, r.keyValue))
            {
                return false;
            }
            if(this.timestamp != r.timestamp)
            {
                return false;
            }
            if(this.tag != r.tag)
            {
                return false;
            }
            if(this.event != r.event)
            {
                if(this.event == null || r.event == null || !this.event.equals(r.event))
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
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, "::DataStormContract::DataSample");
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, id);
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, keyId);
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, keyValue);
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, timestamp);
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, tag);
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, event);
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, value);
        return h_;
    }

    public DataSample clone()
    {
        DataSample c = null;
        try
        {
            c = (DataSample)super.clone();
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
        ostr.writeLong(this.keyId);
        ostr.writeByteSeq(this.keyValue);
        ostr.writeLong(this.timestamp);
        ostr.writeLong(this.tag);
        DataStorm.SampleEvent.ice_write(ostr, this.event);
        ostr.writeByteSeq(this.value);
    }

    public void ice_readMembers(com.zeroc.Ice.InputStream istr)
    {
        this.id = istr.readLong();
        this.keyId = istr.readLong();
        this.keyValue = istr.readByteSeq();
        this.timestamp = istr.readLong();
        this.tag = istr.readLong();
        this.event = DataStorm.SampleEvent.ice_read(istr);
        this.value = istr.readByteSeq();
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, DataSample v)
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

    static public DataSample ice_read(com.zeroc.Ice.InputStream istr)
    {
        DataSample v = new DataSample();
        v.ice_readMembers(istr);
        return v;
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, java.util.Optional<DataSample> v)
    {
        if(v != null && v.isPresent())
        {
            ice_write(ostr, tag, v.get());
        }
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, DataSample v)
    {
        if(ostr.writeOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            int pos = ostr.startSize();
            ice_write(ostr, v);
            ostr.endSize(pos);
        }
    }

    static public java.util.Optional<DataSample> ice_read(com.zeroc.Ice.InputStream istr, int tag)
    {
        if(istr.readOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            istr.skip(4);
            return java.util.Optional.of(DataSample.ice_read(istr));
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    private static final DataSample _nullMarshalValue = new DataSample();

    /** @hidden */
    private static final long serialVersionUID = 6838751167248648470L;
}
