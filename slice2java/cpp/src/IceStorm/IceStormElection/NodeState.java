// Copyright (c) ZeroC, Inc.
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file 'Election.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>

package IceStormElection;

/**
 * The node state.
 **/
public enum NodeState
{
    /**
     * The node is inactive and awaiting an election.
     **/
    NodeStateInactive(0),
    /**
     * The node is electing a leader.
     **/
    NodeStateElection(1),
    /**
     * The replica group is reorganizing.
     **/
    NodeStateReorganization(2),
    /**
     * The replica group is active & replicating.
     **/
    NodeStateNormal(3);

    public int value()
    {
        return _value;
    }

    public static NodeState valueOf(int v)
    {
        switch(v)
        {
        case 0:
            return NodeStateInactive;
        case 1:
            return NodeStateElection;
        case 2:
            return NodeStateReorganization;
        case 3:
            return NodeStateNormal;
        }
        return null;
    }

    private NodeState(int v)
    {
        _value = v;
    }

    public void ice_write(com.zeroc.Ice.OutputStream ostr)
    {
        ostr.writeEnum(_value, 3);
    }

    public static void ice_write(com.zeroc.Ice.OutputStream ostr, NodeState v)
    {
        if(v == null)
        {
            ostr.writeEnum(IceStormElection.NodeState.NodeStateInactive.value(), 3);
        }
        else
        {
            ostr.writeEnum(v.value(), 3);
        }
    }

    public static NodeState ice_read(com.zeroc.Ice.InputStream istr)
    {
        int v = istr.readEnum(3);
        return validate(v);
    }

    public static void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, java.util.Optional<NodeState> v)
    {
        if(v != null && v.isPresent())
        {
            ice_write(ostr, tag, v.get());
        }
    }

    public static void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, NodeState v)
    {
        if(ostr.writeOptional(tag, com.zeroc.Ice.OptionalFormat.Size))
        {
            ice_write(ostr, v);
        }
    }

    public static java.util.Optional<NodeState> ice_read(com.zeroc.Ice.InputStream istr, int tag)
    {
        if(istr.readOptional(tag, com.zeroc.Ice.OptionalFormat.Size))
        {
            return java.util.Optional.of(ice_read(istr));
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    private static NodeState validate(int v)
    {
        final NodeState e = valueOf(v);
        if(e == null)
        {
            throw new com.zeroc.Ice.MarshalException("enumerator value " + v + " is out of range");
        }
        return e;
    }

    private final int _value;
}
