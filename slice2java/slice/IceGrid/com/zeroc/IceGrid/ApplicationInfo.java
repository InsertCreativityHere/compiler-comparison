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
 * Information about an IceGrid application.
 **/
public class ApplicationInfo implements java.lang.Cloneable,
                                        java.io.Serializable
{
    /**
     * Unique application identifier.
     **/
    public String uuid;

    /**
     * The creation time.
     **/
    public long createTime;

    /**
     * The user who created the application.
     **/
    public String createUser;

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
     * The application descriptor
     **/
    public ApplicationDescriptor descriptor;

    public ApplicationInfo()
    {
        this.uuid = "";
        this.createUser = "";
        this.updateUser = "";
        this.descriptor = new ApplicationDescriptor();
    }

    public ApplicationInfo(String uuid, long createTime, String createUser, long updateTime, String updateUser, int revision, ApplicationDescriptor descriptor)
    {
        this.uuid = uuid;
        this.createTime = createTime;
        this.createUser = createUser;
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
        ApplicationInfo r = null;
        if(rhs instanceof ApplicationInfo)
        {
            r = (ApplicationInfo)rhs;
        }

        if(r != null)
        {
            if(this.uuid != r.uuid)
            {
                if(this.uuid == null || r.uuid == null || !this.uuid.equals(r.uuid))
                {
                    return false;
                }
            }
            if(this.createTime != r.createTime)
            {
                return false;
            }
            if(this.createUser != r.createUser)
            {
                if(this.createUser == null || r.createUser == null || !this.createUser.equals(r.createUser))
                {
                    return false;
                }
            }
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
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, "::IceGrid::ApplicationInfo");
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, uuid);
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, createTime);
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, createUser);
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, updateTime);
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, updateUser);
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, revision);
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, descriptor);
        return h_;
    }

    public ApplicationInfo clone()
    {
        ApplicationInfo c = null;
        try
        {
            c = (ApplicationInfo)super.clone();
        }
        catch(CloneNotSupportedException ex)
        {
            assert false; // impossible
        }
        return c;
    }

    public void ice_writeMembers(com.zeroc.Ice.OutputStream ostr)
    {
        ostr.writeString(this.uuid);
        ostr.writeLong(this.createTime);
        ostr.writeString(this.createUser);
        ostr.writeLong(this.updateTime);
        ostr.writeString(this.updateUser);
        ostr.writeInt(this.revision);
        ApplicationDescriptor.ice_write(ostr, this.descriptor);
    }

    public void ice_readMembers(com.zeroc.Ice.InputStream istr)
    {
        this.uuid = istr.readString();
        this.createTime = istr.readLong();
        this.createUser = istr.readString();
        this.updateTime = istr.readLong();
        this.updateUser = istr.readString();
        this.revision = istr.readInt();
        this.descriptor = ApplicationDescriptor.ice_read(istr);
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, ApplicationInfo v)
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

    static public ApplicationInfo ice_read(com.zeroc.Ice.InputStream istr)
    {
        ApplicationInfo v = new ApplicationInfo();
        v.ice_readMembers(istr);
        return v;
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, java.util.Optional<ApplicationInfo> v)
    {
        if(v != null && v.isPresent())
        {
            ice_write(ostr, tag, v.get());
        }
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, ApplicationInfo v)
    {
        if(ostr.writeOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            int pos = ostr.startSize();
            ice_write(ostr, v);
            ostr.endSize(pos);
        }
    }

    static public java.util.Optional<ApplicationInfo> ice_read(com.zeroc.Ice.InputStream istr, int tag)
    {
        if(istr.readOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            istr.skip(4);
            return java.util.Optional.of(ApplicationInfo.ice_read(istr));
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    private static final ApplicationInfo _nullMarshalValue = new ApplicationInfo();

    /** @hidden */
    private static final long serialVersionUID = 6298318148563372546L;
}
