//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.7.9
//
// <auto-generated>
//
// Generated from file `IceStormInternal.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

package IceStorm;

/**
 * Internal operations for a topic manager.
 *
 * @see TopicManager
 **/
public interface TopicManagerInternal extends com.zeroc.IceStorm.TopicManager
{
    /**
     * Return the replica node proxy for this topic manager.
     * @param current The Current object for the invocation.
     * @return The replica proxy, or null if this instance is not
     * replicated.
     **/
    IceStormElection.NodePrx getReplicaNode(com.zeroc.Ice.Current current);

    /** @hidden */
    static final String[] _iceIds =
    {
        "::Ice::Object",
        "::IceStorm::TopicManager",
        "::IceStorm::TopicManagerInternal"
    };

    @Override
    default String[] ice_ids(com.zeroc.Ice.Current current)
    {
        return _iceIds;
    }

    @Override
    default String ice_id(com.zeroc.Ice.Current current)
    {
        return ice_staticId();
    }

    static String ice_staticId()
    {
        return "::IceStorm::TopicManagerInternal";
    }

    /**
     * @hidden
     * @param obj -
     * @param inS -
     * @param current -
     * @return -
    **/
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutputStream> _iceD_getReplicaNode(TopicManagerInternal obj, final com.zeroc.IceInternal.Incoming inS, com.zeroc.Ice.Current current)
    {
        com.zeroc.Ice.Object._iceCheckMode(com.zeroc.Ice.OperationMode.Idempotent, current.mode);
        inS.readEmptyParams();
        IceStormElection.NodePrx ret = obj.getReplicaNode(current);
        com.zeroc.Ice.OutputStream ostr = inS.startWriteParams();
        ostr.writeProxy(ret);
        inS.endWriteParams(ostr);
        return inS.setResult(ostr);
    }

    /** @hidden */
    final static String[] _iceOps =
    {
        "create",
        "getReplicaNode",
        "getSliceChecksums",
        "ice_id",
        "ice_ids",
        "ice_isA",
        "ice_ping",
        "retrieve",
        "retrieveAll"
    };

    /** @hidden */
    @Override
    default java.util.concurrent.CompletionStage<com.zeroc.Ice.OutputStream> _iceDispatch(com.zeroc.IceInternal.Incoming in, com.zeroc.Ice.Current current)
        throws com.zeroc.Ice.UserException
    {
        int pos = java.util.Arrays.binarySearch(_iceOps, current.operation);
        if(pos < 0)
        {
            throw new com.zeroc.Ice.OperationNotExistException(current.id, current.facet, current.operation);
        }

        switch(pos)
        {
            case 0:
            {
                return com.zeroc.IceStorm.TopicManager._iceD_create(this, in, current);
            }
            case 1:
            {
                return _iceD_getReplicaNode(this, in, current);
            }
            case 2:
            {
                return com.zeroc.IceStorm.TopicManager._iceD_getSliceChecksums(this, in, current);
            }
            case 3:
            {
                return com.zeroc.Ice.Object._iceD_ice_id(this, in, current);
            }
            case 4:
            {
                return com.zeroc.Ice.Object._iceD_ice_ids(this, in, current);
            }
            case 5:
            {
                return com.zeroc.Ice.Object._iceD_ice_isA(this, in, current);
            }
            case 6:
            {
                return com.zeroc.Ice.Object._iceD_ice_ping(this, in, current);
            }
            case 7:
            {
                return com.zeroc.IceStorm.TopicManager._iceD_retrieve(this, in, current);
            }
            case 8:
            {
                return com.zeroc.IceStorm.TopicManager._iceD_retrieveAll(this, in, current);
            }
        }

        assert(false);
        throw new com.zeroc.Ice.OperationNotExistException(current.id, current.facet, current.operation);
    }
}
