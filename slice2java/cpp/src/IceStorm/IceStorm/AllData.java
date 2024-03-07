//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `DBTypes.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

package IceStorm;

public class AllData implements java.lang.Cloneable,
                                java.io.Serializable
{
    public java.util.Map<java.lang.String, IceStormElection.LogUpdate> llus;

    public java.util.Map<SubscriberRecordKey, SubscriberRecord> subscribers;

    public AllData()
    {
    }

    public AllData(java.util.Map<java.lang.String, IceStormElection.LogUpdate> llus, java.util.Map<SubscriberRecordKey, SubscriberRecord> subscribers)
    {
        this.llus = llus;
        this.subscribers = subscribers;
    }

    public boolean equals(java.lang.Object rhs)
    {
        if(this == rhs)
        {
            return true;
        }
        AllData r = null;
        if(rhs instanceof AllData)
        {
            r = (AllData)rhs;
        }

        if(r != null)
        {
            if(this.llus != r.llus)
            {
                if(this.llus == null || r.llus == null || !this.llus.equals(r.llus))
                {
                    return false;
                }
            }
            if(this.subscribers != r.subscribers)
            {
                if(this.subscribers == null || r.subscribers == null || !this.subscribers.equals(r.subscribers))
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
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, "::IceStorm::AllData");
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, llus);
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, subscribers);
        return h_;
    }

    public AllData clone()
    {
        AllData c = null;
        try
        {
            c = (AllData)super.clone();
        }
        catch(CloneNotSupportedException ex)
        {
            assert false; // impossible
        }
        return c;
    }

    public void ice_writeMembers(com.zeroc.Ice.OutputStream ostr)
    {
        IceStormElection.StringLogUpdateDictHelper.write(ostr, this.llus);
        SubscriberRecordDictHelper.write(ostr, this.subscribers);
    }

    public void ice_readMembers(com.zeroc.Ice.InputStream istr)
    {
        this.llus = IceStormElection.StringLogUpdateDictHelper.read(istr);
        this.subscribers = SubscriberRecordDictHelper.read(istr);
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, AllData v)
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

    static public AllData ice_read(com.zeroc.Ice.InputStream istr)
    {
        AllData v = new AllData();
        v.ice_readMembers(istr);
        return v;
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, java.util.Optional<AllData> v)
    {
        if(v != null && v.isPresent())
        {
            ice_write(ostr, tag, v.get());
        }
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, AllData v)
    {
        if(ostr.writeOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            int pos = ostr.startSize();
            ice_write(ostr, v);
            ostr.endSize(pos);
        }
    }

    static public java.util.Optional<AllData> ice_read(com.zeroc.Ice.InputStream istr, int tag)
    {
        if(istr.readOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            istr.skip(4);
            return java.util.Optional.of(AllData.ice_read(istr));
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    private static final AllData _nullMarshalValue = new AllData();

    /** @hidden */
    public static final long serialVersionUID = -6181958925416983077L;
}
