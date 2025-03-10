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

public interface ReplicaObserverPrx extends com.zeroc.Ice.ObjectPrx
{
    /**
     * Initialization of the replica observer.
     **/
    default void replicaInit(InternalRegistryPrx[] replicas)
    {
        replicaInit(replicas, com.zeroc.Ice.ObjectPrx.noExplicitContext);
    }

    /**
     * Initialization of the replica observer.
     * @param context The Context map to send with the invocation.
     **/
    default void replicaInit(InternalRegistryPrx[] replicas, java.util.Map<String, String> context)
    {
        _iceI_replicaInitAsync(replicas, context, true).waitForResponse();
    }

    /**
     * Initialization of the replica observer.
     * @return A future that will be completed when the invocation completes.
     **/
    default java.util.concurrent.CompletableFuture<Void> replicaInitAsync(InternalRegistryPrx[] replicas)
    {
        return _iceI_replicaInitAsync(replicas, com.zeroc.Ice.ObjectPrx.noExplicitContext, false);
    }

    /**
     * Initialization of the replica observer.
     * @param context The Context map to send with the invocation.
     * @return A future that will be completed when the invocation completes.
     **/
    default java.util.concurrent.CompletableFuture<Void> replicaInitAsync(InternalRegistryPrx[] replicas, java.util.Map<String, String> context)
    {
        return _iceI_replicaInitAsync(replicas, context, false);
    }

    /**
     * @hidden
     * @param iceP_replicas -
     * @param context -
     * @param sync -
     * @return -
     **/
    default com.zeroc.Ice.OutgoingAsync<Void> _iceI_replicaInitAsync(InternalRegistryPrx[] iceP_replicas, java.util.Map<String, String> context, boolean sync)
    {
        com.zeroc.Ice.OutgoingAsync<Void> f = new com.zeroc.Ice.OutgoingAsync<>(this, "replicaInit", null, sync, null);
        f.invoke(false, context, null, ostr -> {
                     InternalRegistryPrxSeqHelper.write(ostr, iceP_replicas);
                 }, null);
        return f;
    }

    /**
     * Notification that a replica has been added. The node should establish a session with this new replica.
     **/
    default void replicaAdded(InternalRegistryPrx replica)
    {
        replicaAdded(replica, com.zeroc.Ice.ObjectPrx.noExplicitContext);
    }

    /**
     * Notification that a replica has been added. The node should establish a session with this new replica.
     * @param context The Context map to send with the invocation.
     **/
    default void replicaAdded(InternalRegistryPrx replica, java.util.Map<String, String> context)
    {
        _iceI_replicaAddedAsync(replica, context, true).waitForResponse();
    }

    /**
     * Notification that a replica has been added. The node should establish a session with this new replica.
     * @return A future that will be completed when the invocation completes.
     **/
    default java.util.concurrent.CompletableFuture<Void> replicaAddedAsync(InternalRegistryPrx replica)
    {
        return _iceI_replicaAddedAsync(replica, com.zeroc.Ice.ObjectPrx.noExplicitContext, false);
    }

    /**
     * Notification that a replica has been added. The node should establish a session with this new replica.
     * @param context The Context map to send with the invocation.
     * @return A future that will be completed when the invocation completes.
     **/
    default java.util.concurrent.CompletableFuture<Void> replicaAddedAsync(InternalRegistryPrx replica, java.util.Map<String, String> context)
    {
        return _iceI_replicaAddedAsync(replica, context, false);
    }

    /**
     * @hidden
     * @param iceP_replica -
     * @param context -
     * @param sync -
     * @return -
     **/
    default com.zeroc.Ice.OutgoingAsync<Void> _iceI_replicaAddedAsync(InternalRegistryPrx iceP_replica, java.util.Map<String, String> context, boolean sync)
    {
        com.zeroc.Ice.OutgoingAsync<Void> f = new com.zeroc.Ice.OutgoingAsync<>(this, "replicaAdded", null, sync, null);
        f.invoke(false, context, null, ostr -> {
                     ostr.writeProxy(iceP_replica);
                 }, null);
        return f;
    }

    /**
     * Notification that a replica has been removed. The node should destroy the session to this replica.
     **/
    default void replicaRemoved(InternalRegistryPrx replica)
    {
        replicaRemoved(replica, com.zeroc.Ice.ObjectPrx.noExplicitContext);
    }

    /**
     * Notification that a replica has been removed. The node should destroy the session to this replica.
     * @param context The Context map to send with the invocation.
     **/
    default void replicaRemoved(InternalRegistryPrx replica, java.util.Map<String, String> context)
    {
        _iceI_replicaRemovedAsync(replica, context, true).waitForResponse();
    }

    /**
     * Notification that a replica has been removed. The node should destroy the session to this replica.
     * @return A future that will be completed when the invocation completes.
     **/
    default java.util.concurrent.CompletableFuture<Void> replicaRemovedAsync(InternalRegistryPrx replica)
    {
        return _iceI_replicaRemovedAsync(replica, com.zeroc.Ice.ObjectPrx.noExplicitContext, false);
    }

    /**
     * Notification that a replica has been removed. The node should destroy the session to this replica.
     * @param context The Context map to send with the invocation.
     * @return A future that will be completed when the invocation completes.
     **/
    default java.util.concurrent.CompletableFuture<Void> replicaRemovedAsync(InternalRegistryPrx replica, java.util.Map<String, String> context)
    {
        return _iceI_replicaRemovedAsync(replica, context, false);
    }

    /**
     * @hidden
     * @param iceP_replica -
     * @param context -
     * @param sync -
     * @return -
     **/
    default com.zeroc.Ice.OutgoingAsync<Void> _iceI_replicaRemovedAsync(InternalRegistryPrx iceP_replica, java.util.Map<String, String> context, boolean sync)
    {
        com.zeroc.Ice.OutgoingAsync<Void> f = new com.zeroc.Ice.OutgoingAsync<>(this, "replicaRemoved", null, sync, null);
        f.invoke(false, context, null, ostr -> {
                     ostr.writeProxy(iceP_replica);
                 }, null);
        return f;
    }

    /**
     * Creates a new proxy that implements {@link ReplicaObserverPrx}.
     * @param communicator The communicator of the new proxy.
     * @param proxyString The string representation of the proxy.
     * @return The new proxy.
     **/
    public static ReplicaObserverPrx createProxy(com.zeroc.Ice.Communicator communicator, String proxyString)
    {
        return new _ReplicaObserverPrxI(com.zeroc.Ice.ObjectPrx.createProxy(communicator, proxyString));
    }

    /**
     * Contacts the remote server to verify that the object implements this type.
     * Raises a local exception if a communication error occurs.
     * @param obj The untyped proxy.
     * @return A proxy for this type, or null if the object does not support this type.
     **/
    static ReplicaObserverPrx checkedCast(com.zeroc.Ice.ObjectPrx obj)
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
    static ReplicaObserverPrx checkedCast(com.zeroc.Ice.ObjectPrx obj, java.util.Map<String, String> context)
    {
        return (obj != null && obj.ice_isA(ice_staticId(), context)) ? new _ReplicaObserverPrxI(obj) : null;
    }

    /**
     * Contacts the remote server to verify that a facet of the object implements this type.
     * Raises a local exception if a communication error occurs.
     * @param obj The untyped proxy.
     * @param facet The name of the desired facet.
     * @return A proxy for this type, or null if the object does not support this type.
     **/
    static ReplicaObserverPrx checkedCast(com.zeroc.Ice.ObjectPrx obj, String facet)
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
    static ReplicaObserverPrx checkedCast(com.zeroc.Ice.ObjectPrx obj, String facet, java.util.Map<String, String> context)
    {
        return (obj == null) ? null : checkedCast(obj.ice_facet(facet), context);
    }

    /**
     * Downcasts the given proxy to this type without contacting the remote server.
     * @param obj The untyped proxy.
     * @return A proxy for this type.
     **/
    static ReplicaObserverPrx uncheckedCast(com.zeroc.Ice.ObjectPrx obj)
    {
        return (obj == null) ? null : new _ReplicaObserverPrxI(obj);
    }

    /**
     * Downcasts the given proxy to this type without contacting the remote server.
     * @param obj The untyped proxy.
     * @param facet The name of the desired facet.
     * @return A proxy for this type.
     **/
    static ReplicaObserverPrx uncheckedCast(com.zeroc.Ice.ObjectPrx obj, String facet)
    {
        return (obj == null) ? null : new _ReplicaObserverPrxI(obj.ice_facet(facet));
    }

    @Override
    ReplicaObserverPrx ice_context(java.util.Map<String, String> newContext);

    @Override
    ReplicaObserverPrx ice_adapterId(String newAdapterId);

    @Override
    ReplicaObserverPrx ice_endpoints(com.zeroc.Ice.Endpoint[] newEndpoints);

    @Override
    ReplicaObserverPrx ice_locatorCacheTimeout(int newTimeout);

    @Override
    ReplicaObserverPrx ice_invocationTimeout(int newTimeout);

    @Override
    ReplicaObserverPrx ice_connectionCached(boolean newCache);

    @Override
    ReplicaObserverPrx ice_endpointSelection(com.zeroc.Ice.EndpointSelectionType newType);

    @Override
    ReplicaObserverPrx ice_secure(boolean b);

    @Override
    ReplicaObserverPrx ice_encodingVersion(com.zeroc.Ice.EncodingVersion e);

    @Override
    ReplicaObserverPrx ice_preferSecure(boolean b);

    @Override
    ReplicaObserverPrx ice_router(com.zeroc.Ice.RouterPrx router);

    @Override
    ReplicaObserverPrx ice_locator(com.zeroc.Ice.LocatorPrx locator);

    @Override
    ReplicaObserverPrx ice_collocationOptimized(boolean b);

    @Override
    ReplicaObserverPrx ice_twoway();

    @Override
    ReplicaObserverPrx ice_oneway();

    @Override
    ReplicaObserverPrx ice_batchOneway();

    @Override
    ReplicaObserverPrx ice_datagram();

    @Override
    ReplicaObserverPrx ice_batchDatagram();

    @Override
    ReplicaObserverPrx ice_compress(boolean co);

    @Override
    ReplicaObserverPrx ice_connectionId(String connectionId);

    @Override
    ReplicaObserverPrx ice_fixed(com.zeroc.Ice.Connection connection);

    static String ice_staticId()
    {
        return "::IceGrid::ReplicaObserver";
    }

    /**
     * @hidden
     **/
    @Override
    default ReplicaObserverPrx _newInstance(com.zeroc.Ice.Reference ref)
    {
        return new _ReplicaObserverPrxI(ref);
    }
}
