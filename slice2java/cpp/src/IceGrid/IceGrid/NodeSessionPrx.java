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

public interface NodeSessionPrx extends com.zeroc.Ice.ObjectPrx
{
    /**
     * The node call this method to keep the session alive.
     **/
    default void keepAlive(com.zeroc.IceGrid.LoadInfo load)
    {
        keepAlive(load, com.zeroc.Ice.ObjectPrx.noExplicitContext);
    }

    /**
     * The node call this method to keep the session alive.
     * @param context The Context map to send with the invocation.
     **/
    default void keepAlive(com.zeroc.IceGrid.LoadInfo load, java.util.Map<String, String> context)
    {
        _iceI_keepAliveAsync(load, context, true).waitForResponse();
    }

    /**
     * The node call this method to keep the session alive.
     * @return A future that will be completed when the invocation completes.
     **/
    default java.util.concurrent.CompletableFuture<Void> keepAliveAsync(com.zeroc.IceGrid.LoadInfo load)
    {
        return _iceI_keepAliveAsync(load, com.zeroc.Ice.ObjectPrx.noExplicitContext, false);
    }

    /**
     * The node call this method to keep the session alive.
     * @param context The Context map to send with the invocation.
     * @return A future that will be completed when the invocation completes.
     **/
    default java.util.concurrent.CompletableFuture<Void> keepAliveAsync(com.zeroc.IceGrid.LoadInfo load, java.util.Map<String, String> context)
    {
        return _iceI_keepAliveAsync(load, context, false);
    }

    /**
     * @hidden
     * @param iceP_load -
     * @param context -
     * @param sync -
     * @return -
     **/
    default com.zeroc.Ice.OutgoingAsync<Void> _iceI_keepAliveAsync(com.zeroc.IceGrid.LoadInfo iceP_load, java.util.Map<String, String> context, boolean sync)
    {
        com.zeroc.Ice.OutgoingAsync<Void> f = new com.zeroc.Ice.OutgoingAsync<>(this, "keepAlive", null, sync, null);
        f.invoke(false, context, null, ostr -> {
                     com.zeroc.IceGrid.LoadInfo.ice_write(ostr, iceP_load);
                 }, null);
        return f;
    }

    /**
     * Set the replica observer. The node calls this method when it's ready to receive notifications for the replicas.
     * It only calls this for the session with the master.
     **/
    default void setReplicaObserver(ReplicaObserverPrx observer)
    {
        setReplicaObserver(observer, com.zeroc.Ice.ObjectPrx.noExplicitContext);
    }

    /**
     * Set the replica observer. The node calls this method when it's ready to receive notifications for the replicas.
     * It only calls this for the session with the master.
     * @param context The Context map to send with the invocation.
     **/
    default void setReplicaObserver(ReplicaObserverPrx observer, java.util.Map<String, String> context)
    {
        _iceI_setReplicaObserverAsync(observer, context, true).waitForResponse();
    }

    /**
     * Set the replica observer. The node calls this method when it's ready to receive notifications for the replicas.
     * It only calls this for the session with the master.
     * @return A future that will be completed when the invocation completes.
     **/
    default java.util.concurrent.CompletableFuture<Void> setReplicaObserverAsync(ReplicaObserverPrx observer)
    {
        return _iceI_setReplicaObserverAsync(observer, com.zeroc.Ice.ObjectPrx.noExplicitContext, false);
    }

    /**
     * Set the replica observer. The node calls this method when it's ready to receive notifications for the replicas.
     * It only calls this for the session with the master.
     * @param context The Context map to send with the invocation.
     * @return A future that will be completed when the invocation completes.
     **/
    default java.util.concurrent.CompletableFuture<Void> setReplicaObserverAsync(ReplicaObserverPrx observer, java.util.Map<String, String> context)
    {
        return _iceI_setReplicaObserverAsync(observer, context, false);
    }

    /**
     * @hidden
     * @param iceP_observer -
     * @param context -
     * @param sync -
     * @return -
     **/
    default com.zeroc.Ice.OutgoingAsync<Void> _iceI_setReplicaObserverAsync(ReplicaObserverPrx iceP_observer, java.util.Map<String, String> context, boolean sync)
    {
        com.zeroc.Ice.OutgoingAsync<Void> f = new com.zeroc.Ice.OutgoingAsync<>(this, "setReplicaObserver", null, sync, null);
        f.invoke(false, context, null, ostr -> {
                     ostr.writeProxy(iceP_observer);
                 }, null);
        return f;
    }

    /**
     * Return the node session timeout.
     **/
    default int getTimeout()
    {
        return getTimeout(com.zeroc.Ice.ObjectPrx.noExplicitContext);
    }

    /**
     * Return the node session timeout.
     * @param context The Context map to send with the invocation.
     **/
    default int getTimeout(java.util.Map<String, String> context)
    {
        return _iceI_getTimeoutAsync(context, true).waitForResponse();
    }

    /**
     * Return the node session timeout.
     * @return A future that will be completed with the result.
     **/
    default java.util.concurrent.CompletableFuture<java.lang.Integer> getTimeoutAsync()
    {
        return _iceI_getTimeoutAsync(com.zeroc.Ice.ObjectPrx.noExplicitContext, false);
    }

    /**
     * Return the node session timeout.
     * @param context The Context map to send with the invocation.
     * @return A future that will be completed with the result.
     **/
    default java.util.concurrent.CompletableFuture<java.lang.Integer> getTimeoutAsync(java.util.Map<String, String> context)
    {
        return _iceI_getTimeoutAsync(context, false);
    }

    /**
     * @hidden
     * @param context -
     * @param sync -
     * @return -
     **/
    default com.zeroc.Ice.OutgoingAsync<java.lang.Integer> _iceI_getTimeoutAsync(java.util.Map<String, String> context, boolean sync)
    {
        com.zeroc.Ice.OutgoingAsync<java.lang.Integer> f = new com.zeroc.Ice.OutgoingAsync<>(this, "getTimeout", com.zeroc.Ice.OperationMode.Idempotent, sync, null);
        f.invoke(true, context, null, null, istr -> {
                     int ret;
                     ret = istr.readInt();
                     return ret;
                 });
        return f;
    }

    /**
     * Return the node observer.
     **/
    default com.zeroc.IceGrid.NodeObserverPrx getObserver()
    {
        return getObserver(com.zeroc.Ice.ObjectPrx.noExplicitContext);
    }

    /**
     * Return the node observer.
     * @param context The Context map to send with the invocation.
     **/
    default com.zeroc.IceGrid.NodeObserverPrx getObserver(java.util.Map<String, String> context)
    {
        return _iceI_getObserverAsync(context, true).waitForResponse();
    }

    /**
     * Return the node observer.
     * @return A future that will be completed with the result.
     **/
    default java.util.concurrent.CompletableFuture<com.zeroc.IceGrid.NodeObserverPrx> getObserverAsync()
    {
        return _iceI_getObserverAsync(com.zeroc.Ice.ObjectPrx.noExplicitContext, false);
    }

    /**
     * Return the node observer.
     * @param context The Context map to send with the invocation.
     * @return A future that will be completed with the result.
     **/
    default java.util.concurrent.CompletableFuture<com.zeroc.IceGrid.NodeObserverPrx> getObserverAsync(java.util.Map<String, String> context)
    {
        return _iceI_getObserverAsync(context, false);
    }

    /**
     * @hidden
     * @param context -
     * @param sync -
     * @return -
     **/
    default com.zeroc.Ice.OutgoingAsync<com.zeroc.IceGrid.NodeObserverPrx> _iceI_getObserverAsync(java.util.Map<String, String> context, boolean sync)
    {
        com.zeroc.Ice.OutgoingAsync<com.zeroc.IceGrid.NodeObserverPrx> f = new com.zeroc.Ice.OutgoingAsync<>(this, "getObserver", com.zeroc.Ice.OperationMode.Idempotent, sync, null);
        f.invoke(true, context, null, null, istr -> {
                     com.zeroc.IceGrid.NodeObserverPrx ret;
                     ret = com.zeroc.IceGrid.NodeObserverPrx.uncheckedCast(istr.readProxy());
                     return ret;
                 });
        return f;
    }

    /**
     * Ask the registry to load the servers on the node.
     **/
    default void loadServers()
    {
        loadServers(com.zeroc.Ice.ObjectPrx.noExplicitContext);
    }

    /**
     * Ask the registry to load the servers on the node.
     * @param context The Context map to send with the invocation.
     **/
    default void loadServers(java.util.Map<String, String> context)
    {
        _iceI_loadServersAsync(context, true).waitForResponse();
    }

    /**
     * Ask the registry to load the servers on the node.
     * @return A future that will be completed when the invocation completes.
     **/
    default java.util.concurrent.CompletableFuture<Void> loadServersAsync()
    {
        return _iceI_loadServersAsync(com.zeroc.Ice.ObjectPrx.noExplicitContext, false);
    }

    /**
     * Ask the registry to load the servers on the node.
     * @param context The Context map to send with the invocation.
     * @return A future that will be completed when the invocation completes.
     **/
    default java.util.concurrent.CompletableFuture<Void> loadServersAsync(java.util.Map<String, String> context)
    {
        return _iceI_loadServersAsync(context, false);
    }

    /**
     * @hidden
     * @param context -
     * @param sync -
     * @return -
     **/
    default com.zeroc.Ice.OutgoingAsync<Void> _iceI_loadServersAsync(java.util.Map<String, String> context, boolean sync)
    {
        com.zeroc.Ice.OutgoingAsync<Void> f = new com.zeroc.Ice.OutgoingAsync<>(this, "loadServers", com.zeroc.Ice.OperationMode.Idempotent, sync, null);
        f.invoke(false, context, null, null, null);
        return f;
    }

    /**
     * Get the name of the servers deployed on the node.
     **/
    default String[] getServers()
    {
        return getServers(com.zeroc.Ice.ObjectPrx.noExplicitContext);
    }

    /**
     * Get the name of the servers deployed on the node.
     * @param context The Context map to send with the invocation.
     **/
    default String[] getServers(java.util.Map<String, String> context)
    {
        return _iceI_getServersAsync(context, true).waitForResponse();
    }

    /**
     * Get the name of the servers deployed on the node.
     * @return A future that will be completed with the result.
     **/
    default java.util.concurrent.CompletableFuture<String[]> getServersAsync()
    {
        return _iceI_getServersAsync(com.zeroc.Ice.ObjectPrx.noExplicitContext, false);
    }

    /**
     * Get the name of the servers deployed on the node.
     * @param context The Context map to send with the invocation.
     * @return A future that will be completed with the result.
     **/
    default java.util.concurrent.CompletableFuture<String[]> getServersAsync(java.util.Map<String, String> context)
    {
        return _iceI_getServersAsync(context, false);
    }

    /**
     * @hidden
     * @param context -
     * @param sync -
     * @return -
     **/
    default com.zeroc.Ice.OutgoingAsync<String[]> _iceI_getServersAsync(java.util.Map<String, String> context, boolean sync)
    {
        com.zeroc.Ice.OutgoingAsync<String[]> f = new com.zeroc.Ice.OutgoingAsync<>(this, "getServers", com.zeroc.Ice.OperationMode.Idempotent, sync, null);
        f.invoke(true, context, null, null, istr -> {
                     String[] ret;
                     ret = istr.readStringSeq();
                     return ret;
                 });
        return f;
    }

    /**
     * Wait for the application update to complete (the application is completely updated once all the registry
     * replicas have been updated). This is used by the node to ensure that before to start a server all the
     * replicas have the up-to-date descriptor of the server.
     **/
    default void waitForApplicationUpdate(String application, int revision)
    {
        waitForApplicationUpdate(application, revision, com.zeroc.Ice.ObjectPrx.noExplicitContext);
    }

    /**
     * Wait for the application update to complete (the application is completely updated once all the registry
     * replicas have been updated). This is used by the node to ensure that before to start a server all the
     * replicas have the up-to-date descriptor of the server.
     * @param context The Context map to send with the invocation.
     **/
    default void waitForApplicationUpdate(String application, int revision, java.util.Map<String, String> context)
    {
        _iceI_waitForApplicationUpdateAsync(application, revision, context, true).waitForResponse();
    }

    /**
     * Wait for the application update to complete (the application is completely updated once all the registry
     * replicas have been updated). This is used by the node to ensure that before to start a server all the
     * replicas have the up-to-date descriptor of the server.
     * @return A future that will be completed when the invocation completes.
     **/
    default java.util.concurrent.CompletableFuture<Void> waitForApplicationUpdateAsync(String application, int revision)
    {
        return _iceI_waitForApplicationUpdateAsync(application, revision, com.zeroc.Ice.ObjectPrx.noExplicitContext, false);
    }

    /**
     * Wait for the application update to complete (the application is completely updated once all the registry
     * replicas have been updated). This is used by the node to ensure that before to start a server all the
     * replicas have the up-to-date descriptor of the server.
     * @param context The Context map to send with the invocation.
     * @return A future that will be completed when the invocation completes.
     **/
    default java.util.concurrent.CompletableFuture<Void> waitForApplicationUpdateAsync(String application, int revision, java.util.Map<String, String> context)
    {
        return _iceI_waitForApplicationUpdateAsync(application, revision, context, false);
    }

    /**
     * @hidden
     * @param iceP_application -
     * @param iceP_revision -
     * @param context -
     * @param sync -
     * @return -
     **/
    default com.zeroc.Ice.OutgoingAsync<Void> _iceI_waitForApplicationUpdateAsync(String iceP_application, int iceP_revision, java.util.Map<String, String> context, boolean sync)
    {
        com.zeroc.Ice.OutgoingAsync<Void> f = new com.zeroc.Ice.OutgoingAsync<>(this, "waitForApplicationUpdate", null, sync, null);
        f.invoke(false, context, null, ostr -> {
                     ostr.writeString(iceP_application);
                     ostr.writeInt(iceP_revision);
                 }, null);
        return f;
    }

    /**
     * Destroy the session.
     **/
    default void destroy()
    {
        destroy(com.zeroc.Ice.ObjectPrx.noExplicitContext);
    }

    /**
     * Destroy the session.
     * @param context The Context map to send with the invocation.
     **/
    default void destroy(java.util.Map<String, String> context)
    {
        _iceI_destroyAsync(context, true).waitForResponse();
    }

    /**
     * Destroy the session.
     * @return A future that will be completed when the invocation completes.
     **/
    default java.util.concurrent.CompletableFuture<Void> destroyAsync()
    {
        return _iceI_destroyAsync(com.zeroc.Ice.ObjectPrx.noExplicitContext, false);
    }

    /**
     * Destroy the session.
     * @param context The Context map to send with the invocation.
     * @return A future that will be completed when the invocation completes.
     **/
    default java.util.concurrent.CompletableFuture<Void> destroyAsync(java.util.Map<String, String> context)
    {
        return _iceI_destroyAsync(context, false);
    }

    /**
     * @hidden
     * @param context -
     * @param sync -
     * @return -
     **/
    default com.zeroc.Ice.OutgoingAsync<Void> _iceI_destroyAsync(java.util.Map<String, String> context, boolean sync)
    {
        com.zeroc.Ice.OutgoingAsync<Void> f = new com.zeroc.Ice.OutgoingAsync<>(this, "destroy", null, sync, null);
        f.invoke(false, context, null, null, null);
        return f;
    }

    /**
     * Creates a new proxy that implements {@link NodeSessionPrx}.
     * @param communicator The communicator of the new proxy.
     * @param proxyString The string representation of the proxy.
     * @return The new proxy.
     **/
    public static NodeSessionPrx createProxy(com.zeroc.Ice.Communicator communicator, String proxyString)
    {
        return new _NodeSessionPrxI(com.zeroc.Ice.ObjectPrx.createProxy(communicator, proxyString));
    }

    /**
     * Contacts the remote server to verify that the object implements this type.
     * Raises a local exception if a communication error occurs.
     * @param obj The untyped proxy.
     * @return A proxy for this type, or null if the object does not support this type.
     **/
    static NodeSessionPrx checkedCast(com.zeroc.Ice.ObjectPrx obj)
    {
        return checkedCast(obj, noExplicitContext);
    }

    /**
     * Contacts the remote server to verify that the object implements this type.
     * Raises a local exception if a communication error occurs.
     * @param obj The untyped proxy.
     * @param context The Context map to send with the invocation.
     * @return A proxy for this type, or null if the object does not support this type.
     **/
    static NodeSessionPrx checkedCast(com.zeroc.Ice.ObjectPrx obj, java.util.Map<String, String> context)
    {
        return (obj != null && obj.ice_isA(ice_staticId(), context)) ? new _NodeSessionPrxI(obj) : null;
    }

    /**
     * Contacts the remote server to verify that a facet of the object implements this type.
     * Raises a local exception if a communication error occurs.
     * @param obj The untyped proxy.
     * @param facet The name of the desired facet.
     * @return A proxy for this type, or null if the object does not support this type.
     **/
    static NodeSessionPrx checkedCast(com.zeroc.Ice.ObjectPrx obj, String facet)
    {
        return checkedCast(obj, facet, noExplicitContext);
    }

    /**
     * Contacts the remote server to verify that a facet of the object implements this type.
     * Raises a local exception if a communication error occurs.
     * @param obj The untyped proxy.
     * @param facet The name of the desired facet.
     * @param context The Context map to send with the invocation.
     * @return A proxy for this type, or null if the object does not support this type.
     **/
    static NodeSessionPrx checkedCast(com.zeroc.Ice.ObjectPrx obj, String facet, java.util.Map<String, String> context)
    {
        return (obj == null) ? null : checkedCast(obj.ice_facet(facet), context);
    }

    /**
     * Downcasts the given proxy to this type without contacting the remote server.
     * @param obj The untyped proxy.
     * @return A proxy for this type.
     **/
    static NodeSessionPrx uncheckedCast(com.zeroc.Ice.ObjectPrx obj)
    {
        return (obj == null) ? null : new _NodeSessionPrxI(obj);
    }

    /**
     * Downcasts the given proxy to this type without contacting the remote server.
     * @param obj The untyped proxy.
     * @param facet The name of the desired facet.
     * @return A proxy for this type.
     **/
    static NodeSessionPrx uncheckedCast(com.zeroc.Ice.ObjectPrx obj, String facet)
    {
        return (obj == null) ? null : new _NodeSessionPrxI(obj.ice_facet(facet));
    }

    @Override
    NodeSessionPrx ice_context(java.util.Map<String, String> newContext);

    @Override
    NodeSessionPrx ice_adapterId(String newAdapterId);

    @Override
    NodeSessionPrx ice_endpoints(com.zeroc.Ice.Endpoint[] newEndpoints);

    @Override
    NodeSessionPrx ice_locatorCacheTimeout(int newTimeout);

    @Override
    NodeSessionPrx ice_invocationTimeout(int newTimeout);

    @Override
    NodeSessionPrx ice_connectionCached(boolean newCache);

    @Override
    NodeSessionPrx ice_endpointSelection(com.zeroc.Ice.EndpointSelectionType newType);

    @Override
    NodeSessionPrx ice_secure(boolean b);

    @Override
    NodeSessionPrx ice_encodingVersion(com.zeroc.Ice.EncodingVersion e);

    @Override
    NodeSessionPrx ice_preferSecure(boolean b);

    @Override
    NodeSessionPrx ice_router(com.zeroc.Ice.RouterPrx router);

    @Override
    NodeSessionPrx ice_locator(com.zeroc.Ice.LocatorPrx locator);

    @Override
    NodeSessionPrx ice_collocationOptimized(boolean b);

    @Override
    NodeSessionPrx ice_twoway();

    @Override
    NodeSessionPrx ice_oneway();

    @Override
    NodeSessionPrx ice_batchOneway();

    @Override
    NodeSessionPrx ice_datagram();

    @Override
    NodeSessionPrx ice_batchDatagram();

    @Override
    NodeSessionPrx ice_compress(boolean co);

    @Override
    NodeSessionPrx ice_connectionId(String connectionId);

    @Override
    NodeSessionPrx ice_fixed(com.zeroc.Ice.Connection connection);

    static String ice_staticId()
    {
        return "::IceGrid::NodeSession";
    }

    /**
     * @hidden
     **/
    @Override
    default NodeSessionPrx _newInstance(com.zeroc.Ice.Reference ref)
    {
        return new _NodeSessionPrxI(ref);
    }
}
