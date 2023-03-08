//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.7.9
//
// <auto-generated>
//
// Generated from file `Internal.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

package IceGrid;

public interface NodeSession extends com.zeroc.Ice.Object
{
    /**
     * The node call this method to keep the session alive.
     * @param current The Current object for the invocation.
     **/
    void keepAlive(com.zeroc.IceGrid.LoadInfo load, com.zeroc.Ice.Current current);

    /**
     * Set the replica observer. The node calls this method when it's
     * ready to receive notifications for the replicas. It only calls
     * this for the session with the master.
     * @param current The Current object for the invocation.
     **/
    void setReplicaObserver(ReplicaObserverPrx observer, com.zeroc.Ice.Current current);

    /**
     * Return the node session timeout.
     * @param current The Current object for the invocation.
     **/
    int getTimeout(com.zeroc.Ice.Current current);

    /**
     * Return the node observer.
     * @param current The Current object for the invocation.
     **/
    com.zeroc.IceGrid.NodeObserverPrx getObserver(com.zeroc.Ice.Current current);

    /**
     * Ask the registry to load the servers on the node.
     * @param current The Current object for the invocation.
     * @return A completion stage that the servant will complete when the invocation completes.
     **/
    java.util.concurrent.CompletionStage<Void> loadServersAsync(com.zeroc.Ice.Current current);

    /**
     * Get the name of the servers deployed on the node.
     * @param current The Current object for the invocation.
     **/
    String[] getServers(com.zeroc.Ice.Current current);

    /**
     * Wait for the application update to complete (the application is
     * completely updated once all the registry replicas have been
     * updated). This is used by the node to ensure that before to
     * start a server all the replicas have the up-to-date descriptor
     * of the server.
     * @param current The Current object for the invocation.
     * @return A completion stage that the servant will complete when the invocation completes.
     **/
    java.util.concurrent.CompletionStage<Void> waitForApplicationUpdateAsync(String application, int revision, com.zeroc.Ice.Current current);

    /**
     * Destroy the session.
     * @param current The Current object for the invocation.
     **/
    void destroy(com.zeroc.Ice.Current current);

    /** @hidden */
    static final String[] _iceIds =
    {
        "::Ice::Object",
        "::IceGrid::NodeSession"
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
        return "::IceGrid::NodeSession";
    }

    /**
     * @hidden
     * @param obj -
     * @param inS -
     * @param current -
     * @return -
    **/
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutputStream> _iceD_keepAlive(NodeSession obj, final com.zeroc.IceInternal.Incoming inS, com.zeroc.Ice.Current current)
    {
        com.zeroc.Ice.Object._iceCheckMode(null, current.mode);
        com.zeroc.Ice.InputStream istr = inS.startReadParams();
        com.zeroc.IceGrid.LoadInfo iceP_load;
        iceP_load = com.zeroc.IceGrid.LoadInfo.ice_read(istr);
        inS.endReadParams();
        obj.keepAlive(iceP_load, current);
        return inS.setResult(inS.writeEmptyParams());
    }

    /**
     * @hidden
     * @param obj -
     * @param inS -
     * @param current -
     * @return -
    **/
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutputStream> _iceD_setReplicaObserver(NodeSession obj, final com.zeroc.IceInternal.Incoming inS, com.zeroc.Ice.Current current)
    {
        com.zeroc.Ice.Object._iceCheckMode(null, current.mode);
        com.zeroc.Ice.InputStream istr = inS.startReadParams();
        ReplicaObserverPrx iceP_observer;
        iceP_observer = ReplicaObserverPrx.uncheckedCast(istr.readProxy());
        inS.endReadParams();
        obj.setReplicaObserver(iceP_observer, current);
        return inS.setResult(inS.writeEmptyParams());
    }

    /**
     * @hidden
     * @param obj -
     * @param inS -
     * @param current -
     * @return -
    **/
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutputStream> _iceD_getTimeout(NodeSession obj, final com.zeroc.IceInternal.Incoming inS, com.zeroc.Ice.Current current)
    {
        com.zeroc.Ice.Object._iceCheckMode(com.zeroc.Ice.OperationMode.Idempotent, current.mode);
        inS.readEmptyParams();
        int ret = obj.getTimeout(current);
        com.zeroc.Ice.OutputStream ostr = inS.startWriteParams();
        ostr.writeInt(ret);
        inS.endWriteParams(ostr);
        return inS.setResult(ostr);
    }

    /**
     * @hidden
     * @param obj -
     * @param inS -
     * @param current -
     * @return -
    **/
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutputStream> _iceD_getObserver(NodeSession obj, final com.zeroc.IceInternal.Incoming inS, com.zeroc.Ice.Current current)
    {
        com.zeroc.Ice.Object._iceCheckMode(com.zeroc.Ice.OperationMode.Idempotent, current.mode);
        inS.readEmptyParams();
        com.zeroc.IceGrid.NodeObserverPrx ret = obj.getObserver(current);
        com.zeroc.Ice.OutputStream ostr = inS.startWriteParams();
        ostr.writeProxy(ret);
        inS.endWriteParams(ostr);
        return inS.setResult(ostr);
    }

    /**
     * @hidden
     * @param obj -
     * @param inS -
     * @param current -
     * @return -
    **/
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutputStream> _iceD_loadServers(NodeSession obj, final com.zeroc.IceInternal.Incoming inS, com.zeroc.Ice.Current current)
    {
        com.zeroc.Ice.Object._iceCheckMode(com.zeroc.Ice.OperationMode.Idempotent, current.mode);
        inS.readEmptyParams();
        return inS.setResultFuture(obj.loadServersAsync(current));
    }

    /**
     * @hidden
     * @param obj -
     * @param inS -
     * @param current -
     * @return -
    **/
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutputStream> _iceD_getServers(NodeSession obj, final com.zeroc.IceInternal.Incoming inS, com.zeroc.Ice.Current current)
    {
        com.zeroc.Ice.Object._iceCheckMode(com.zeroc.Ice.OperationMode.Idempotent, current.mode);
        inS.readEmptyParams();
        String[] ret = obj.getServers(current);
        com.zeroc.Ice.OutputStream ostr = inS.startWriteParams();
        ostr.writeStringSeq(ret);
        inS.endWriteParams(ostr);
        return inS.setResult(ostr);
    }

    /**
     * @hidden
     * @param obj -
     * @param inS -
     * @param current -
     * @return -
    **/
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutputStream> _iceD_waitForApplicationUpdate(NodeSession obj, final com.zeroc.IceInternal.Incoming inS, com.zeroc.Ice.Current current)
    {
        com.zeroc.Ice.Object._iceCheckMode(null, current.mode);
        com.zeroc.Ice.InputStream istr = inS.startReadParams();
        String iceP_application;
        int iceP_revision;
        iceP_application = istr.readString();
        iceP_revision = istr.readInt();
        inS.endReadParams();
        return inS.setResultFuture(obj.waitForApplicationUpdateAsync(iceP_application, iceP_revision, current));
    }

    /**
     * @hidden
     * @param obj -
     * @param inS -
     * @param current -
     * @return -
    **/
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutputStream> _iceD_destroy(NodeSession obj, final com.zeroc.IceInternal.Incoming inS, com.zeroc.Ice.Current current)
    {
        com.zeroc.Ice.Object._iceCheckMode(null, current.mode);
        inS.readEmptyParams();
        obj.destroy(current);
        return inS.setResult(inS.writeEmptyParams());
    }

    /** @hidden */
    final static String[] _iceOps =
    {
        "destroy",
        "getObserver",
        "getServers",
        "getTimeout",
        "ice_id",
        "ice_ids",
        "ice_isA",
        "ice_ping",
        "keepAlive",
        "loadServers",
        "setReplicaObserver",
        "waitForApplicationUpdate"
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
                return _iceD_destroy(this, in, current);
            }
            case 1:
            {
                return _iceD_getObserver(this, in, current);
            }
            case 2:
            {
                return _iceD_getServers(this, in, current);
            }
            case 3:
            {
                return _iceD_getTimeout(this, in, current);
            }
            case 4:
            {
                return com.zeroc.Ice.Object._iceD_ice_id(this, in, current);
            }
            case 5:
            {
                return com.zeroc.Ice.Object._iceD_ice_ids(this, in, current);
            }
            case 6:
            {
                return com.zeroc.Ice.Object._iceD_ice_isA(this, in, current);
            }
            case 7:
            {
                return com.zeroc.Ice.Object._iceD_ice_ping(this, in, current);
            }
            case 8:
            {
                return _iceD_keepAlive(this, in, current);
            }
            case 9:
            {
                return _iceD_loadServers(this, in, current);
            }
            case 10:
            {
                return _iceD_setReplicaObserver(this, in, current);
            }
            case 11:
            {
                return _iceD_waitForApplicationUpdate(this, in, current);
            }
        }

        assert(false);
        throw new com.zeroc.Ice.OperationNotExistException(current.id, current.facet, current.operation);
    }
}
