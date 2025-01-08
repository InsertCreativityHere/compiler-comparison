//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
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

public interface ReplicaSession extends com.zeroc.Ice.Object
{
    /**
     * The replica call this method to keep the session alive.
     * @param current The Current object for the invocation.
     **/
    void keepAlive(com.zeroc.Ice.Current current);

    /**
     * Return the replica session timeout.
     * @param current The Current object for the invocation.
     **/
    int getTimeout(com.zeroc.Ice.Current current);

    /**
     * Set the database observer. Once the observer is subscribed, it will receive the database and database updates.
     * @param current The Current object for the invocation.
     **/
    void setDatabaseObserver(DatabaseObserverPrx dbObs, java.util.Optional<java.util.Map<java.lang.String, java.lang.Long>> serials, com.zeroc.Ice.Current current)
        throws com.zeroc.IceGrid.ObserverAlreadyRegisteredException,
               com.zeroc.IceGrid.DeploymentException;

    /**
     * This method sets the endpoints of the replica. This allows the master to create proxies with multiple endpoints
     * for replicated objects (e.g.: IceGrid::Query object).
     * @param current The Current object for the invocation.
     **/
    void setEndpoints(java.util.Map<java.lang.String, com.zeroc.Ice.ObjectPrx> endpoints, com.zeroc.Ice.Current current);

    /**
     * Registers the replica well-known objects with the master.
     * @param current The Current object for the invocation.
     **/
    void registerWellKnownObjects(com.zeroc.IceGrid.ObjectInfo[] objects, com.zeroc.Ice.Current current);

    /**
     * Set the adapter direct proxy of the given adapter in the master. This is used to support dynamic registration
     * with the locator registry interface.
     * @param current The Current object for the invocation.
     **/
    void setAdapterDirectProxy(String adapterId, String replicaGroupId, com.zeroc.Ice.ObjectPrx proxy, com.zeroc.Ice.Current current)
        throws com.zeroc.IceGrid.AdapterNotExistException,
               AdapterExistsException;

    /**
     * Notify the master that an update was received. The master might wait for replication updates to be received by
     * all the replicas before to continue.
     * @param current The Current object for the invocation.
     **/
    void receivedUpdate(TopicName name, int serial, String failure, com.zeroc.Ice.Current current);

    /**
     * Destroy the session.
     * @param current The Current object for the invocation.
     **/
    void destroy(com.zeroc.Ice.Current current);

    /** @hidden */
    static final String[] _iceIds =
    {
        "::Ice::Object",
        "::IceGrid::ReplicaSession"
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
        return "::IceGrid::ReplicaSession";
    }

    /** @hidden */
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutgoingResponse> _iceD_keepAlive(ReplicaSession obj, com.zeroc.Ice.IncomingRequest request)
    {
        com.zeroc.Ice.Object._iceCheckMode(null, request.current.mode);
        request.inputStream.skipEmptyEncapsulation();
        obj.keepAlive(request.current);
        return java.util.concurrent.CompletableFuture.completedFuture(request.current.createEmptyOutgoingResponse());
    }

    /** @hidden */
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutgoingResponse> _iceD_getTimeout(ReplicaSession obj, com.zeroc.Ice.IncomingRequest request)
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
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutgoingResponse> _iceD_setDatabaseObserver(ReplicaSession obj, com.zeroc.Ice.IncomingRequest request)
        throws com.zeroc.Ice.UserException
    {
        com.zeroc.Ice.Object._iceCheckMode(com.zeroc.Ice.OperationMode.Idempotent, request.current.mode);
        com.zeroc.Ice.InputStream istr = request.inputStream;
        istr.startEncapsulation();
        DatabaseObserverPrx iceP_dbObs;
        java.util.Optional<java.util.Map<java.lang.String, java.lang.Long>> iceP_serials;
        iceP_dbObs = DatabaseObserverPrx.uncheckedCast(istr.readProxy());
        iceP_serials = StringLongDictHelper.read(istr, 1);
        istr.endEncapsulation();
        obj.setDatabaseObserver(iceP_dbObs, iceP_serials, request.current);
        return java.util.concurrent.CompletableFuture.completedFuture(request.current.createEmptyOutgoingResponse());
    }

    /** @hidden */
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutgoingResponse> _iceD_setEndpoints(ReplicaSession obj, com.zeroc.Ice.IncomingRequest request)
    {
        com.zeroc.Ice.Object._iceCheckMode(com.zeroc.Ice.OperationMode.Idempotent, request.current.mode);
        com.zeroc.Ice.InputStream istr = request.inputStream;
        istr.startEncapsulation();
        java.util.Map<java.lang.String, com.zeroc.Ice.ObjectPrx> iceP_endpoints;
        iceP_endpoints = com.zeroc.IceGrid.StringObjectProxyDictHelper.read(istr);
        istr.endEncapsulation();
        obj.setEndpoints(iceP_endpoints, request.current);
        return java.util.concurrent.CompletableFuture.completedFuture(request.current.createEmptyOutgoingResponse());
    }

    /** @hidden */
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutgoingResponse> _iceD_registerWellKnownObjects(ReplicaSession obj, com.zeroc.Ice.IncomingRequest request)
    {
        com.zeroc.Ice.Object._iceCheckMode(com.zeroc.Ice.OperationMode.Idempotent, request.current.mode);
        com.zeroc.Ice.InputStream istr = request.inputStream;
        istr.startEncapsulation();
        com.zeroc.IceGrid.ObjectInfo[] iceP_objects;
        iceP_objects = com.zeroc.IceGrid.ObjectInfoSeqHelper.read(istr);
        istr.endEncapsulation();
        obj.registerWellKnownObjects(iceP_objects, request.current);
        return java.util.concurrent.CompletableFuture.completedFuture(request.current.createEmptyOutgoingResponse());
    }

    /** @hidden */
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutgoingResponse> _iceD_setAdapterDirectProxy(ReplicaSession obj, com.zeroc.Ice.IncomingRequest request)
        throws com.zeroc.Ice.UserException
    {
        com.zeroc.Ice.Object._iceCheckMode(com.zeroc.Ice.OperationMode.Idempotent, request.current.mode);
        com.zeroc.Ice.InputStream istr = request.inputStream;
        istr.startEncapsulation();
        String iceP_adapterId;
        String iceP_replicaGroupId;
        com.zeroc.Ice.ObjectPrx iceP_proxy;
        iceP_adapterId = istr.readString();
        iceP_replicaGroupId = istr.readString();
        iceP_proxy = istr.readProxy();
        istr.endEncapsulation();
        obj.setAdapterDirectProxy(iceP_adapterId, iceP_replicaGroupId, iceP_proxy, request.current);
        return java.util.concurrent.CompletableFuture.completedFuture(request.current.createEmptyOutgoingResponse());
    }

    /** @hidden */
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutgoingResponse> _iceD_receivedUpdate(ReplicaSession obj, com.zeroc.Ice.IncomingRequest request)
    {
        com.zeroc.Ice.Object._iceCheckMode(null, request.current.mode);
        com.zeroc.Ice.InputStream istr = request.inputStream;
        istr.startEncapsulation();
        TopicName iceP_name;
        int iceP_serial;
        String iceP_failure;
        iceP_name = TopicName.ice_read(istr);
        iceP_serial = istr.readInt();
        iceP_failure = istr.readString();
        istr.endEncapsulation();
        obj.receivedUpdate(iceP_name, iceP_serial, iceP_failure, request.current);
        return java.util.concurrent.CompletableFuture.completedFuture(request.current.createEmptyOutgoingResponse());
    }

    /** @hidden */
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutgoingResponse> _iceD_destroy(ReplicaSession obj, com.zeroc.Ice.IncomingRequest request)
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
            case "keepAlive" -> ReplicaSession._iceD_keepAlive(this, request);
            case "getTimeout" -> ReplicaSession._iceD_getTimeout(this, request);
            case "setDatabaseObserver" -> ReplicaSession._iceD_setDatabaseObserver(this, request);
            case "setEndpoints" -> ReplicaSession._iceD_setEndpoints(this, request);
            case "registerWellKnownObjects" -> ReplicaSession._iceD_registerWellKnownObjects(this, request);
            case "setAdapterDirectProxy" -> ReplicaSession._iceD_setAdapterDirectProxy(this, request);
            case "receivedUpdate" -> ReplicaSession._iceD_receivedUpdate(this, request);
            case "destroy" -> ReplicaSession._iceD_destroy(this, request);
            case "ice_id" -> com.zeroc.Ice.Object._iceD_ice_id(this, request);
            case "ice_ids" -> com.zeroc.Ice.Object._iceD_ice_ids(this, request);
            case "ice_isA" -> com.zeroc.Ice.Object._iceD_ice_isA(this, request);
            case "ice_ping" -> com.zeroc.Ice.Object._iceD_ice_ping(this, request);
            default -> throw new com.zeroc.Ice.OperationNotExistException();
        };
    }
}
