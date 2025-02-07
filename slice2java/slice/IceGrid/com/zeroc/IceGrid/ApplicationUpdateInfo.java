// Copyright (c) ZeroC, Inc.
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file 'Admin.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>

package com.zeroc.IceGrid;

/**
 * Information about updates to an IceGrid application.
 **/
public class ApplicationUpdateInfo implements java.lang.Cloneable,
                                              java.io.Serializable
{
    /**
     * The update time.
     **/
    public long updateTime;

    /**
     * The user who updated the application.
     **/
    public String updateUser;

    /**
     * The application revision number.
     **/
    public int revision;

    /**
     * The update descriptor.
     **/
    public ApplicationUpdateDescriptor descriptor;

    public ApplicationUpdateInfo()
    {
        this.updateUser = "";
        this.descriptor = new ApplicationUpdateDescriptor();
    }

    public ApplicationUpdateInfo(long updateTime, String updateUser, int revision, ApplicationUpdateDescriptor descriptor)
    {
        this.updateTime = updateTime;
        this.updateUser = updateUser;
        this.revision = revision;
        this.descriptor = descriptor;
    }

    public boolean equals(java.lang.Object rhs)
    {
        if(this == rhs)
        {
            return true;
        }
        ApplicationUpdateInfo r = null;
        if(rhs instanceof ApplicationUpdateInfo)
        {
            r = (ApplicationUpdateInfo)rhs;
        }

        if(r != null)
        {
            if(this.updateTime != r.updateTime)
            {
                return false;
            }
            if(this.updateUser != r.updateUser)
            {
                if(this.updateUser == null || r.updateUser == null || !this.updateUser.equals(r.updateUser))
                {
                    return false;
                }
            }
            if(this.revision != r.revision)
            {
                return false;
            }
            if(this.descriptor != r.descriptor)
            {
                if(this.descriptor == null || r.descriptor == null || !this.descriptor.equals(r.descriptor))
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
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, "::IceGrid::ApplicationUpdateInfo");
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, updateTime);
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, updateUser);
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, revision);
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, descriptor);
        return h_;
    }

    public ApplicationUpdateInfo clone()
    {
        ApplicationUpdateInfo c = null;
        try
        {
            c = (ApplicationUpdateInfo)super.clone();
        }
        catch(CloneNotSupportedException ex)
        {
            assert false; // impossible
        }
        return c;
    }

    public void ice_writeMembers(com.zeroc.Ice.OutputStream ostr)
    {
        ostr.writeLong(this.updateTime);
        ostr.writeString(this.updateUser);
        ostr.writeInt(this.revision);
        ApplicationUpdateDescriptor.ice_write(ostr, this.descriptor);
    }

    public void ice_readMembers(com.zeroc.Ice.InputStream istr)
    {
        this.updateTime = istr.readLong();
        this.updateUser = istr.readString();
        this.revision = istr.readInt();
        this.descriptor = ApplicationUpdateDescriptor.ice_read(istr);
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, ApplicationUpdateInfo v)
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

    static public ApplicationUpdateInfo ice_read(com.zeroc.Ice.InputStream istr)
    {
        ApplicationUpdateInfo v = new ApplicationUpdateInfo();
        v.ice_readMembers(istr);
        return v;
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, java.util.Optional<ApplicationUpdateInfo> v)
    {
        if(v != null && v.isPresent())
        {
            ice_write(ostr, tag, v.get());
        }
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, ApplicationUpdateInfo v)
    {
        if(ostr.writeOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            int pos = ostr.startSize();
            ice_write(ostr, v);
            ostr.endSize(pos);
        }
    }

    static public java.util.Optional<ApplicationUpdateInfo> ice_read(com.zeroc.Ice.InputStream istr, int tag)
    {
        if(istr.readOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            istr.skip(4);
            return java.util.Optional.of(ApplicationUpdateInfo.ice_read(istr));
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    private static final ApplicationUpdateInfo _nullMarshalValue = new ApplicationUpdateInfo();

    /** @hidden */
    private static final long serialVersionUID = -5566494813953889153L;
}
