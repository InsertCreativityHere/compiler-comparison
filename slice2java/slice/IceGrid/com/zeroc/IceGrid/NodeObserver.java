//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.7.9
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
 * The node observer interface. Observers should implement this
 * interface to receive information about the state of the IceGrid
 * nodes.
 **/
public interface NodeObserver extends com.zeroc.Ice.Object
{
    /**
     * The <code>nodeInit</code> operation indicates the current state
     * of nodes. It is called after the registration of an observer.
     * @param nodes The current state of the nodes.
     * @param current The Current object for the invocation.
     **/
    void nodeInit(NodeDynamicInfo[] nodes, com.zeroc.Ice.Current current);

    /**
     * The <code>nodeUp</code> operation is called to notify an observer that a node
     * came up.
     * @param node The node state.
     * @param current The Current object for the invocation.
     **/
    void nodeUp(NodeDynamicInfo node, com.zeroc.Ice.Current current);

    /**
     * The <code>nodeDown</code> operation is called to notify an observer that a node
     * went down.
     * @param name The node name.
     * @param current The Current object for the invocation.
     **/
    void nodeDown(String name, com.zeroc.Ice.Current current);

    /**
     * The <code>updateServer</code> operation is called to notify an observer that
     * the state of a server changed.
     * @param node The node hosting the server.
     * @param updatedInfo The new server state.
     * @param current The Current object for the invocation.
     **/
    void updateServer(String node, ServerDynamicInfo updatedInfo, com.zeroc.Ice.Current current);

    /**
     * The <code>updateAdapter</code> operation is called to notify an observer that
     * the state of an adapter changed.
     * @param node The node hosting the adapter.
     * @param updatedInfo The new adapter state.
     * @param current The Current object for the invocation.
     **/
    void updateAdapter(String node, AdapterDynamicInfo updatedInfo, com.zeroc.Ice.Current current);

    /** @hidden */
    static final String[] _iceIds =
    {
        "::Ice::Object",
        "::IceGrid::NodeObserver"
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
        return "::IceGrid::NodeObserver";
    }

    /**
     * @hidden
     * @param obj -
     * @param inS -
     * @param current -
     * @return -
    **/
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutputStream> _iceD_nodeInit(NodeObserver obj, final com.zeroc.IceInternal.Incoming inS, com.zeroc.Ice.Current current)
    {
        com.zeroc.Ice.Object._iceCheckMode(null, current.mode);
        com.zeroc.Ice.InputStream istr = inS.startReadParams();
        NodeDynamicInfo[] iceP_nodes;
        iceP_nodes = NodeDynamicInfoSeqHelper.read(istr);
        inS.endReadParams();
        obj.nodeInit(iceP_nodes, current);
        return inS.setResult(inS.writeEmptyParams());
    }

    /**
     * @hidden
     * @param obj -
     * @param inS -
     * @param current -
     * @return -
    **/
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutputStream> _iceD_nodeUp(NodeObserver obj, final com.zeroc.IceInternal.Incoming inS, com.zeroc.Ice.Current current)
    {
        com.zeroc.Ice.Object._iceCheckMode(null, current.mode);
        com.zeroc.Ice.InputStream istr = inS.startReadParams();
        NodeDynamicInfo iceP_node;
        iceP_node = NodeDynamicInfo.ice_read(istr);
        inS.endReadParams();
        obj.nodeUp(iceP_node, current);
        return inS.setResult(inS.writeEmptyParams());
    }

    /**
     * @hidden
     * @param obj -
     * @param inS -
     * @param current -
     * @return -
    **/
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutputStream> _iceD_nodeDown(NodeObserver obj, final com.zeroc.IceInternal.Incoming inS, com.zeroc.Ice.Current current)
    {
        com.zeroc.Ice.Object._iceCheckMode(null, current.mode);
        com.zeroc.Ice.InputStream istr = inS.startReadParams();
        String iceP_name;
        iceP_name = istr.readString();
        inS.endReadParams();
        obj.nodeDown(iceP_name, current);
        return inS.setResult(inS.writeEmptyParams());
    }

    /**
     * @hidden
     * @param obj -
     * @param inS -
     * @param current -
     * @return -
    **/
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutputStream> _iceD_updateServer(NodeObserver obj, final com.zeroc.IceInternal.Incoming inS, com.zeroc.Ice.Current current)
    {
        com.zeroc.Ice.Object._iceCheckMode(null, current.mode);
        com.zeroc.Ice.InputStream istr = inS.startReadParams();
        String iceP_node;
        ServerDynamicInfo iceP_updatedInfo;
        iceP_node = istr.readString();
        iceP_updatedInfo = ServerDynamicInfo.ice_read(istr);
        inS.endReadParams();
        obj.updateServer(iceP_node, iceP_updatedInfo, current);
        return inS.setResult(inS.writeEmptyParams());
    }

    /**
     * @hidden
     * @param obj -
     * @param inS -
     * @param current -
     * @return -
    **/
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutputStream> _iceD_updateAdapter(NodeObserver obj, final com.zeroc.IceInternal.Incoming inS, com.zeroc.Ice.Current current)
    {
        com.zeroc.Ice.Object._iceCheckMode(null, current.mode);
        com.zeroc.Ice.InputStream istr = inS.startReadParams();
        String iceP_node;
        AdapterDynamicInfo iceP_updatedInfo;
        iceP_node = istr.readString();
        iceP_updatedInfo = AdapterDynamicInfo.ice_read(istr);
        inS.endReadParams();
        obj.updateAdapter(iceP_node, iceP_updatedInfo, current);
        return inS.setResult(inS.writeEmptyParams());
    }

    /** @hidden */
    final static String[] _iceOps =
    {
        "ice_id",
        "ice_ids",
        "ice_isA",
        "ice_ping",
        "nodeDown",
        "nodeInit",
        "nodeUp",
        "updateAdapter",
        "updateServer"
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
                return com.zeroc.Ice.Object._iceD_ice_id(this, in, current);
            }
            case 1:
            {
                return com.zeroc.Ice.Object._iceD_ice_ids(this, in, current);
            }
            case 2:
            {
                return com.zeroc.Ice.Object._iceD_ice_isA(this, in, current);
            }
            case 3:
            {
                return com.zeroc.Ice.Object._iceD_ice_ping(this, in, current);
            }
            case 4:
            {
                return _iceD_nodeDown(this, in, current);
            }
            case 5:
            {
                return _iceD_nodeInit(this, in, current);
            }
            case 6:
            {
                return _iceD_nodeUp(this, in, current);
            }
            case 7:
            {
                return _iceD_updateAdapter(this, in, current);
            }
            case 8:
            {
                return _iceD_updateServer(this, in, current);
            }
        }

        assert(false);
        throw new com.zeroc.Ice.OperationNotExistException(current.id, current.facet, current.operation);
    }
}
