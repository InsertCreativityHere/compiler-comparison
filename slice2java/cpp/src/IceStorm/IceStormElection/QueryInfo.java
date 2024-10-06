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

public class QueryInfo implements java.lang.Cloneable,
                                  java.io.Serializable
{
    /**
     * The node id.
     **/
    public int id;

    /**
     * The nodes coordinator.
     **/
    public int coord;

    /**
     * The nodes group name.
     **/
    public String group;

    /**
     * The replica the node is managing.
     **/
    public com.zeroc.Ice.ObjectPrx replica;

    /**
     * The node state.
     **/
    public NodeState state;

    /**
     * The sequence of nodes in this nodes group.
     **/
    public GroupInfo[] up;

    /**
     * The highest priority node that this node has seen.
     **/
    public int max;

    public QueryInfo()
    {
        this.group = "";
        this.state = NodeState.NodeStateInactive;
    }

    public QueryInfo(int id, int coord, String group, com.zeroc.Ice.ObjectPrx replica, NodeState state, GroupInfo[] up, int max)
    {
        this.id = id;
        this.coord = coord;
        this.group = group;
        this.replica = replica;
        this.state = state;
        this.up = up;
        this.max = max;
    }

    public boolean equals(java.lang.Object rhs)
    {
        if(this == rhs)
        {
            return true;
        }
        QueryInfo r = null;
        if(rhs instanceof QueryInfo)
        {
            r = (QueryInfo)rhs;
        }

        if(r != null)
        {
            if(this.id != r.id)
            {
                return false;
            }
            if(this.coord != r.coord)
            {
                return false;
            }
            if(this.group != r.group)
            {
                if(this.group == null || r.group == null || !this.group.equals(r.group))
                {
                    return false;
                }
            }
            if(this.replica != r.replica)
            {
                if(this.replica == null || r.replica == null || !this.replica.equals(r.replica))
                {
                    return false;
                }
            }
            if(this.state != r.state)
            {
                if(this.state == null || r.state == null || !this.state.equals(r.state))
                {
                    return false;
                }
            }
            if(!java.util.Arrays.equals(this.up, r.up))
            {
                return false;
            }
            if(this.max != r.max)
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
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, "::IceStormElection::QueryInfo");
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, id);
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, coord);
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, group);
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, replica);
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, state);
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, up);
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, max);
        return h_;
    }

    public QueryInfo clone()
    {
        QueryInfo c = null;
        try
        {
            c = (QueryInfo)super.clone();
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
        ostr.writeInt(this.coord);
        ostr.writeString(this.group);
        ostr.writeProxy(this.replica);
        NodeState.ice_write(ostr, this.state);
        GroupInfoSeqHelper.write(ostr, this.up);
        ostr.writeInt(this.max);
    }

    public void ice_readMembers(com.zeroc.Ice.InputStream istr)
    {
        this.id = istr.readInt();
        this.coord = istr.readInt();
        this.group = istr.readString();
        this.replica = istr.readProxy();
        this.state = NodeState.ice_read(istr);
        this.up = GroupInfoSeqHelper.read(istr);
        this.max = istr.readInt();
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, QueryInfo v)
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

    static public QueryInfo ice_read(com.zeroc.Ice.InputStream istr)
    {
        QueryInfo v = new QueryInfo();
        v.ice_readMembers(istr);
        return v;
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, java.util.Optional<QueryInfo> v)
    {
        if(v != null && v.isPresent())
        {
            ice_write(ostr, tag, v.get());
        }
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, QueryInfo v)
    {
        if(ostr.writeOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            int pos = ostr.startSize();
            ice_write(ostr, v);
            ostr.endSize(pos);
        }
    }

    static public java.util.Optional<QueryInfo> ice_read(com.zeroc.Ice.InputStream istr, int tag)
    {
        if(istr.readOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            istr.skip(4);
            return java.util.Optional.of(QueryInfo.ice_read(istr));
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    private static final QueryInfo _nullMarshalValue = new QueryInfo();

    /** @hidden */
    private static final long serialVersionUID = 3918459441563974032L;
}
