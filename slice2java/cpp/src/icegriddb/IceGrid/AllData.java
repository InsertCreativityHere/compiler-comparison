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

package IceGrid;

public class AllData implements java.lang.Cloneable,
                                java.io.Serializable
{
    public java.util.List<com.zeroc.IceGrid.ApplicationInfo> applications;

    public com.zeroc.IceGrid.AdapterInfo[] adapters;

    public com.zeroc.IceGrid.ObjectInfo[] objects;

    public com.zeroc.IceGrid.ObjectInfo[] internalObjects;

    public java.util.Map<java.lang.String, java.lang.Long> serials;

    public AllData()
    {
    }

    public AllData(java.util.List<com.zeroc.IceGrid.ApplicationInfo> applications, com.zeroc.IceGrid.AdapterInfo[] adapters, com.zeroc.IceGrid.ObjectInfo[] objects, com.zeroc.IceGrid.ObjectInfo[] internalObjects, java.util.Map<java.lang.String, java.lang.Long> serials)
    {
        this.applications = applications;
        this.adapters = adapters;
        this.objects = objects;
        this.internalObjects = internalObjects;
        this.serials = serials;
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
            if(this.applications != r.applications)
            {
                if(this.applications == null || r.applications == null || !this.applications.equals(r.applications))
                {
                    return false;
                }
            }
            if(!java.util.Arrays.equals(this.adapters, r.adapters))
            {
                return false;
            }
            if(!java.util.Arrays.equals(this.objects, r.objects))
            {
                return false;
            }
            if(!java.util.Arrays.equals(this.internalObjects, r.internalObjects))
            {
                return false;
            }
            if(this.serials != r.serials)
            {
                if(this.serials == null || r.serials == null || !this.serials.equals(r.serials))
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
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, "::IceGrid::AllData");
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, applications);
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, adapters);
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, objects);
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, internalObjects);
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, serials);
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
        com.zeroc.IceGrid.ApplicationInfoSeqHelper.write(ostr, this.applications);
        com.zeroc.IceGrid.AdapterInfoSeqHelper.write(ostr, this.adapters);
        com.zeroc.IceGrid.ObjectInfoSeqHelper.write(ostr, this.objects);
        com.zeroc.IceGrid.ObjectInfoSeqHelper.write(ostr, this.internalObjects);
        StringLongDictHelper.write(ostr, this.serials);
    }

    public void ice_readMembers(com.zeroc.Ice.InputStream istr)
    {
        this.applications = com.zeroc.IceGrid.ApplicationInfoSeqHelper.read(istr);
        this.adapters = com.zeroc.IceGrid.AdapterInfoSeqHelper.read(istr);
        this.objects = com.zeroc.IceGrid.ObjectInfoSeqHelper.read(istr);
        this.internalObjects = com.zeroc.IceGrid.ObjectInfoSeqHelper.read(istr);
        this.serials = StringLongDictHelper.read(istr);
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
    public static final long serialVersionUID = -1884541908668027197L;
}
