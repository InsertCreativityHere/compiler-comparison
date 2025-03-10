// Copyright (c) ZeroC, Inc.
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file 'Descriptor.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>

package com.zeroc.IceGrid;

/**
 * A distribution descriptor defines an IcePatch2 server and the directories to retrieve from the patch server.
 * This descriptor is no longer used. It's provided only for schema compatibility with Ice 3.7 and earlier
 * releases.
 **/
public class DistributionDescriptor implements java.lang.Cloneable,
                                               java.io.Serializable
{
    /**
     * The proxy of the IcePatch2 server.
     **/
    public String icepatch;

    /**
     * The source directories.
     **/
    public java.util.List<java.lang.String> directories;

    public DistributionDescriptor()
    {
        this.icepatch = "";
    }

    public DistributionDescriptor(String icepatch, java.util.List<java.lang.String> directories)
    {
        this.icepatch = icepatch;
        this.directories = directories;
    }

    public boolean equals(java.lang.Object rhs)
    {
        if(this == rhs)
        {
            return true;
        }
        DistributionDescriptor r = null;
        if(rhs instanceof DistributionDescriptor)
        {
            r = (DistributionDescriptor)rhs;
        }

        if(r != null)
        {
            if(this.icepatch != r.icepatch)
            {
                if(this.icepatch == null || r.icepatch == null || !this.icepatch.equals(r.icepatch))
                {
                    return false;
                }
            }
            if(this.directories != r.directories)
            {
                if(this.directories == null || r.directories == null || !this.directories.equals(r.directories))
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
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, "::IceGrid::DistributionDescriptor");
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, icepatch);
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, directories);
        return h_;
    }

    public DistributionDescriptor clone()
    {
        DistributionDescriptor c = null;
        try
        {
            c = (DistributionDescriptor)super.clone();
        }
        catch(CloneNotSupportedException ex)
        {
            assert false; // impossible
        }
        return c;
    }

    public void ice_writeMembers(com.zeroc.Ice.OutputStream ostr)
    {
        ostr.writeString(this.icepatch);
        if(this.directories == null)
        {
            ostr.writeSize(0);
        }
        else
        {
            ostr.writeSize(this.directories.size());
            for(String elem : this.directories)
            {
                ostr.writeString(elem);
            }
        }
    }

    public void ice_readMembers(com.zeroc.Ice.InputStream istr)
    {
        this.icepatch = istr.readString();
        this.directories = new java.util.LinkedList<String>();
        final int len0 = istr.readAndCheckSeqSize(1);
        for(int i0 = 0; i0 < len0; i0++)
        {
            String elem;
            elem = istr.readString();
            this.directories.add(elem);
        }
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, DistributionDescriptor v)
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

    static public DistributionDescriptor ice_read(com.zeroc.Ice.InputStream istr)
    {
        DistributionDescriptor v = new DistributionDescriptor();
        v.ice_readMembers(istr);
        return v;
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, java.util.Optional<DistributionDescriptor> v)
    {
        if(v != null && v.isPresent())
        {
            ice_write(ostr, tag, v.get());
        }
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, DistributionDescriptor v)
    {
        if(ostr.writeOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            int pos = ostr.startSize();
            ice_write(ostr, v);
            ostr.endSize(pos);
        }
    }

    static public java.util.Optional<DistributionDescriptor> ice_read(com.zeroc.Ice.InputStream istr, int tag)
    {
        if(istr.readOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            istr.skip(4);
            return java.util.Optional.of(DistributionDescriptor.ice_read(istr));
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    private static final DistributionDescriptor _nullMarshalValue = new DistributionDescriptor();

    /** @hidden */
    private static final long serialVersionUID = -6140191706663856108L;
}
