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

public class DataSamples implements java.lang.Cloneable,
                                    java.io.Serializable
{
    /**
     * The id of the writer or reader.
     **/
    public long id;

    /**
     * The samples.
     **/
    public DataSample[] samples;

    public DataSamples()
    {
    }

    public DataSamples(long id, DataSample[] samples)
    {
        this.id = id;
        this.samples = samples;
    }

    public boolean equals(java.lang.Object rhs)
    {
        if(this == rhs)
        {
            return true;
        }
        DataSamples r = null;
        if(rhs instanceof DataSamples)
        {
            r = (DataSamples)rhs;
        }

        if(r != null)
        {
            if(this.id != r.id)
            {
                return false;
            }
            if(!java.util.Arrays.equals(this.samples, r.samples))
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
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, "::DataStormContract::DataSamples");
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, id);
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, samples);
        return h_;
    }

    public DataSamples clone()
    {
        DataSamples c = null;
        try
        {
            c = (DataSamples)super.clone();
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
        DataSampleSeqHelper.write(ostr, this.samples);
    }

    public void ice_readMembers(com.zeroc.Ice.InputStream istr)
    {
        this.id = istr.readLong();
        this.samples = DataSampleSeqHelper.read(istr);
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, DataSamples v)
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

    static public DataSamples ice_read(com.zeroc.Ice.InputStream istr)
    {
        DataSamples v = new DataSamples();
        v.ice_readMembers(istr);
        return v;
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, java.util.Optional<DataSamples> v)
    {
        if(v != null && v.isPresent())
        {
            ice_write(ostr, tag, v.get());
        }
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, DataSamples v)
    {
        if(ostr.writeOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            int pos = ostr.startSize();
            ice_write(ostr, v);
            ostr.endSize(pos);
        }
    }

    static public java.util.Optional<DataSamples> ice_read(com.zeroc.Ice.InputStream istr, int tag)
    {
        if(istr.readOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            istr.skip(4);
            return java.util.Optional.of(DataSamples.ice_read(istr));
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    private static final DataSamples _nullMarshalValue = new DataSamples();

    /** @hidden */
    private static final long serialVersionUID = 6017484035873149357L;
}
