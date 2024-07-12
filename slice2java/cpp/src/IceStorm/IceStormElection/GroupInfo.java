//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `Election.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

package IceStormElection;

/**
 * The group info.
 **/
public class GroupInfo implements java.lang.Cloneable,
                                  java.io.Serializable
{
    /**
     * The identity of the node.
     **/
    public int id;

    /**
     * The last known log update for this node.
     **/
    public LogUpdate llu;

    public GroupInfo()
    {
        this.llu = new LogUpdate();
    }

    public GroupInfo(int id, LogUpdate llu)
    {
        this.id = id;
        this.llu = llu;
    }

    public boolean equals(java.lang.Object rhs)
    {
        if(this == rhs)
        {
            return true;
        }
        GroupInfo r = null;
        if(rhs instanceof GroupInfo)
        {
            r = (GroupInfo)rhs;
        }

        if(r != null)
        {
            if(this.id != r.id)
            {
                return false;
            }
            if(this.llu != r.llu)
            {
                if(this.llu == null || r.llu == null || !this.llu.equals(r.llu))
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
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, "::IceStormElection::GroupInfo");
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, id);
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, llu);
        return h_;
    }

    public GroupInfo clone()
    {
        GroupInfo c = null;
        try
        {
            c = (GroupInfo)super.clone();
        }
        catch(CloneNotSupportedException ex)
        {
            assert false; // impossible
        }
        return c;
    }

    public void ice_writeMembers(com.zeroc.Ice.OutputStream ostr)
    {
        ostr.writeInt(this.id);
        LogUpdate.ice_write(ostr, this.llu);
    }

    public void ice_readMembers(com.zeroc.Ice.InputStream istr)
    {
        this.id = istr.readInt();
        this.llu = LogUpdate.ice_read(istr);
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, GroupInfo v)
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

    static public GroupInfo ice_read(com.zeroc.Ice.InputStream istr)
    {
        GroupInfo v = new GroupInfo();
        v.ice_readMembers(istr);
        return v;
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, java.util.Optional<GroupInfo> v)
    {
        if(v != null && v.isPresent())
        {
            ice_write(ostr, tag, v.get());
        }
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, GroupInfo v)
    {
        if(ostr.writeOptional(tag, com.zeroc.Ice.OptionalFormat.VSize))
        {
            ostr.writeSize(20);
            ice_write(ostr, v);
        }
    }

    static public java.util.Optional<GroupInfo> ice_read(com.zeroc.Ice.InputStream istr, int tag)
    {
        if(istr.readOptional(tag, com.zeroc.Ice.OptionalFormat.VSize))
        {
            istr.skipSize();
            return java.util.Optional.of(GroupInfo.ice_read(istr));
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    private static final GroupInfo _nullMarshalValue = new GroupInfo();

    /** @hidden */
    private static final long serialVersionUID = -804572557305719723L;
}
