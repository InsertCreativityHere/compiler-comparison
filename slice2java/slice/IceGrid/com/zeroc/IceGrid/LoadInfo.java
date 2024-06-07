//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `Admin.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

package com.zeroc.IceGrid;

/**
 * Information about the load of a node.
 **/
public class LoadInfo implements java.lang.Cloneable,
                                 java.io.Serializable
{
    /**
     * The load average over the past minute.
     **/
    public float avg1;

    /**
     * The load average over the past 5 minutes.
     **/
    public float avg5;

    /**
     * The load average over the past 15 minutes.
     **/
    public float avg15;

    public LoadInfo()
    {
    }

    public LoadInfo(float avg1, float avg5, float avg15)
    {
        this.avg1 = avg1;
        this.avg5 = avg5;
        this.avg15 = avg15;
    }

    public boolean equals(java.lang.Object rhs)
    {
        if(this == rhs)
        {
            return true;
        }
        LoadInfo r = null;
        if(rhs instanceof LoadInfo)
        {
            r = (LoadInfo)rhs;
        }

        if(r != null)
        {
            if(this.avg1 != r.avg1)
            {
                return false;
            }
            if(this.avg5 != r.avg5)
            {
                return false;
            }
            if(this.avg15 != r.avg15)
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
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, "::IceGrid::LoadInfo");
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, avg1);
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, avg5);
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, avg15);
        return h_;
    }

    public LoadInfo clone()
    {
        LoadInfo c = null;
        try
        {
            c = (LoadInfo)super.clone();
        }
        catch(CloneNotSupportedException ex)
        {
            assert false; // impossible
        }
        return c;
    }

    public void ice_writeMembers(com.zeroc.Ice.OutputStream ostr)
    {
        ostr.writeFloat(this.avg1);
        ostr.writeFloat(this.avg5);
        ostr.writeFloat(this.avg15);
    }

    public void ice_readMembers(com.zeroc.Ice.InputStream istr)
    {
        this.avg1 = istr.readFloat();
        this.avg5 = istr.readFloat();
        this.avg15 = istr.readFloat();
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, LoadInfo v)
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

    static public LoadInfo ice_read(com.zeroc.Ice.InputStream istr)
    {
        LoadInfo v = new LoadInfo();
        v.ice_readMembers(istr);
        return v;
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, java.util.Optional<LoadInfo> v)
    {
        if(v != null && v.isPresent())
        {
            ice_write(ostr, tag, v.get());
        }
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, LoadInfo v)
    {
        if(ostr.writeOptional(tag, com.zeroc.Ice.OptionalFormat.VSize))
        {
            ostr.writeSize(12);
            ice_write(ostr, v);
        }
    }

    static public java.util.Optional<LoadInfo> ice_read(com.zeroc.Ice.InputStream istr, int tag)
    {
        if(istr.readOptional(tag, com.zeroc.Ice.OptionalFormat.VSize))
        {
            istr.skipSize();
            return java.util.Optional.of(LoadInfo.ice_read(istr));
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    private static final LoadInfo _nullMarshalValue = new LoadInfo();

    /** @hidden */
    public static final long serialVersionUID = -1621659031360237004L;
}
