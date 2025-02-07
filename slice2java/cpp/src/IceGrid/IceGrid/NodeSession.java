// Copyright (c) ZeroC, Inc.
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file 'Internal.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>

package IceGrid;

public interface NodeSession extends com.zeroc.Ice.Object
{
    /**
     * The node call this method to keep the session alive.
     * @param current The Current object for the invocation.
     **/
    void keepAlive(com.zeroc.IceGrid.LoadInfo load, com.zeroc.Ice.Current current);

    /**
     * Set the replica observer. The node calls this method when it's ready to receive notifications for the replicas.
     * It only calls this for the session with the master.
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
     * Wait for the application update to complete (the application is completely updated once all the registry
     * replicas have been updated). This is used by the node to ensure that before to start a server all the
     * replicas have the up-to-date descriptor of the server.
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

    /** @hidden */
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutgoingResponse> _iceD_keepAlive(NodeSession obj, com.zeroc.Ice.IncomingRequest request)
    {
        com.zeroc.Ice.Object._iceCheckMode(null, request.current.mode);
        com.zeroc.Ice.InputStream istr = request.inputStream;
        istr.startEncapsulation();
        com.zeroc.IceGrid.LoadInfo iceP_load;
        iceP_load = com.zeroc.IceGrid.LoadInfo.ice_read(istr);
        istr.endEncapsulation();
        obj.keepAlive(iceP_load, request.current);
        return java.util.concurrent.CompletableFuture.completedFuture(request.current.createEmptyOutgoingResponse());
    }

    /** @hidden */
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutgoingResponse> _iceD_setReplicaObserver(NodeSession obj, com.zeroc.Ice.IncomingRequest request)
    {
        com.zeroc.Ice.Object._iceCheckMode(null, request.current.mode);
        com.zeroc.Ice.InputStream istr = request.inputStream;
        istr.startEncapsulation();
        ReplicaObserverPrx iceP_observer;
        iceP_observer = ReplicaObserverPrx.uncheckedCast(istr.readProxy());
        istr.endEncapsulation();
        obj.setReplicaObserver(iceP_observer, request.current);
        return java.util.concurrent.CompletableFuture.completedFuture(request.current.createEmptyOutgoingResponse());
    }

    /** @hidden */
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutgoingResponse> _iceD_getTimeout(NodeSession obj, com.zeroc.Ice.IncomingRequest request)
    {
        com.zeroc.Ice.Object._iceCheckMode(com.zeroc.Ice.OperationMode.Idempotent, request.current.mode);
        request.inputStream.skipEmptyEncapsulation();
        int ret = obj.getTimeout(request.current);
        var ostr = request.current.startReplyStream();
        ostr.startEncapsulation(request.current.encoding, null);
        ostr.writeInt(ret);
        ostr.endEncapsulation();
        return java.util.concurrent.CompletableFuture.completedFuture(new com.zeroc.Ice.OutgoingResponse(ostr));
    }

    /** @hidden */
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutgoingResponse> _iceD_getObserver(NodeSession obj, com.zeroc.Ice.IncomingRequest request)
    {
        com.zeroc.Ice.Object._iceCheckMode(com.zeroc.Ice.OperationMode.Idempotent, request.current.mode);
        request.inputStream.skipEmptyEncapsulation();
        com.zeroc.IceGrid.NodeObserverPrx ret = obj.getObserver(request.current);
        var ostr = request.current.startReplyStream();
        ostr.startEncapsulation(request.current.encoding, null);
        ostr.writeProxy(ret);
        ostr.endEncapsulation();
        return java.util.concurrent.CompletableFuture.completedFuture(new com.zeroc.Ice.OutgoingResponse(ostr));
    }

    /** @hidden */
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutgoingResponse> _iceD_loadServers(NodeSession obj, com.zeroc.Ice.IncomingRequest request)
    {
        com.zeroc.Ice.Object._iceCheckMode(com.zeroc.Ice.OperationMode.Idempotent, request.current.mode);
        request.inputStream.skipEmptyEncapsulation();
        var result = obj.loadServersAsync(request.current);
        return result.thenApply(r -> request.current.createEmptyOutgoingResponse());
    }

    /** @hidden */
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutgoingResponse> _iceD_getServers(NodeSession obj, com.zeroc.Ice.IncomingRequest request)
    {
        com.zeroc.Ice.Object._iceCheckMode(com.zeroc.Ice.OperationMode.Idempotent, request.current.mode);
        request.inputStream.skipEmptyEncapsulation();
        String[] ret = obj.getServers(request.current);
        var ostr = request.current.startReplyStream();
        ostr.startEncapsulation(request.current.encoding, null);
        ostr.writeStringSeq(ret);
        ostr.endEncapsulation();
        return java.util.concurrent.CompletableFuture.completedFuture(new com.zeroc.Ice.OutgoingResponse(ostr));
    }

    /** @hidden */
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutgoingResponse> _iceD_waitForApplicationUpdate(NodeSession obj, com.zeroc.Ice.IncomingRequest request)
    {
        com.zeroc.Ice.Object._iceCheckMode(null, request.current.mode);
        com.zeroc.Ice.InputStream istr = request.inputStream;
        istr.startEncapsulation();
        String iceP_application;
        int iceP_revision;
        iceP_application = istr.readString();
        iceP_revision = istr.readInt();
        istr.endEncapsulation();
        var result = obj.waitForApplicationUpdateAsync(iceP_application, iceP_revision, request.current);
        return result.thenApply(r -> request.current.createEmptyOutgoingResponse());
    }

    /** @hidden */
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutgoingResponse> _iceD_destroy(NodeSession obj, com.zeroc.Ice.IncomingRequest request)
    {
        com.zeroc.Ice.Object._iceCheckMode(null, request.current.mode);
        request.inputStream.skipEmptyEncapsulation();
        obj.destroy(request.current);
        return java.util.concurrent.CompletableFuture.completedFuture(request.current.createEmptyOutgoingResponse());
    }

    @Override
    default java.util.concurrent.CompletionStage<com.zeroc.Ice.OutgoingResponse> dispatch(com.zeroc.Ice.IncomingRequest request)
        throws com.zeroc.Ice.UserException
    {
        return switch (request.current.operation)
        {
            case "keepAlive" -> NodeSession._iceD_keepAlive(this, request);
            case "setReplicaObserver" -> NodeSession._iceD_setReplicaObserver(this, request);
            case "getTimeout" -> NodeSession._iceD_getTimeout(this, request);
            case "getObserver" -> NodeSession._iceD_getObserver(this, request);
            case "loadServers" -> NodeSession._iceD_loadServers(this, request);
            case "getServers" -> NodeSession._iceD_getServers(this, request);
            case "waitForApplicationUpdate" -> NodeSession._iceD_waitForApplicationUpdate(this, request);
            case "destroy" -> NodeSession._iceD_destroy(this, request);
            case "ice_id" -> com.zeroc.Ice.Object._iceD_ice_id(this, request);
            case "ice_ids" -> com.zeroc.Ice.Object._iceD_ice_ids(this, request);
            case "ice_isA" -> com.zeroc.Ice.Object._iceD_ice_isA(this, request);
            case "ice_ping" -> com.zeroc.Ice.Object._iceD_ice_ping(this, request);
            default -> throw new com.zeroc.Ice.OperationNotExistException();
        };
    }
}
