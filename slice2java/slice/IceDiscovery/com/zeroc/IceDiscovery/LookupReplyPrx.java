//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.7.9
//
// <auto-generated>
//
// Generated from file `IceDiscovery.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

package com.zeroc.IceDiscovery;

/**
 * The LookupReply interface is used by IceDiscovery clients to answer requests
 * received on the Lookup interface.
 **/
public interface LookupReplyPrx extends com.zeroc.Ice.ObjectPrx
{
    /**
     * Reply to the findObjectById request.
     * @param id The identity of the object.
     * @param prx The proxy of the object.
     **/
    default void foundObjectById(com.zeroc.Ice.Identity id, com.zeroc.Ice.ObjectPrx prx)
    {
        foundObjectById(id, prx, com.zeroc.Ice.ObjectPrx.noExplicitContext);
    }

    /**
     * Reply to the findObjectById request.
     * @param id The identity of the object.
     * @param prx The proxy of the object.
     * @param context The Context map to send with the invocation.
     **/
    default void foundObjectById(com.zeroc.Ice.Identity id, com.zeroc.Ice.ObjectPrx prx, java.util.Map<String, String> context)
    {
        _iceI_foundObjectByIdAsync(id, prx, context, true).waitForResponse();
    }

    /**
     * Reply to the findObjectById request.
     * @param id The identity of the object.
     * @param prx The proxy of the object.
     * @return A future that will be completed when the invocation completes.
     **/
    default java.util.concurrent.CompletableFuture<Void> foundObjectByIdAsync(com.zeroc.Ice.Identity id, com.zeroc.Ice.ObjectPrx prx)
    {
        return _iceI_foundObjectByIdAsync(id, prx, com.zeroc.Ice.ObjectPrx.noExplicitContext, false);
    }

    /**
     * Reply to the findObjectById request.
     * @param id The identity of the object.
     * @param prx The proxy of the object.
     * @param context The Context map to send with the invocation.
     * @return A future that will be completed when the invocation completes.
     **/
    default java.util.concurrent.CompletableFuture<Void> foundObjectByIdAsync(com.zeroc.Ice.Identity id, com.zeroc.Ice.ObjectPrx prx, java.util.Map<String, String> context)
    {
        return _iceI_foundObjectByIdAsync(id, prx, context, false);
    }

    /**
     * @hidden
     * @param iceP_id -
     * @param iceP_prx -
     * @param context -
     * @param sync -
     * @return -
     **/
    default com.zeroc.IceInternal.OutgoingAsync<Void> _iceI_foundObjectByIdAsync(com.zeroc.Ice.Identity iceP_id, com.zeroc.Ice.ObjectPrx iceP_prx, java.util.Map<String, String> context, boolean sync)
    {
        com.zeroc.IceInternal.OutgoingAsync<Void> f = new com.zeroc.IceInternal.OutgoingAsync<>(this, "foundObjectById", null, sync, null);
        f.invoke(false, context, null, ostr -> {
                     com.zeroc.Ice.Identity.ice_write(ostr, iceP_id);
                     ostr.writeProxy(iceP_prx);
                 }, null);
        return f;
    }

    /**
     * Reply to the findAdpaterById request.
     * @param id The adapter ID.
     * @param prx The adapter proxy (a dummy proxy created by the adapter).
     * The proxy provides the adapter endpoints.
     * @param isReplicaGroup True if the adapter is also a member of a
     * replica group.
     **/
    default void foundAdapterById(String id, com.zeroc.Ice.ObjectPrx prx, boolean isReplicaGroup)
    {
        foundAdapterById(id, prx, isReplicaGroup, com.zeroc.Ice.ObjectPrx.noExplicitContext);
    }

    /**
     * Reply to the findAdpaterById request.
     * @param id The adapter ID.
     * @param prx The adapter proxy (a dummy proxy created by the adapter).
     * The proxy provides the adapter endpoints.
     * @param isReplicaGroup True if the adapter is also a member of a
     * replica group.
     * @param context The Context map to send with the invocation.
     **/
    default void foundAdapterById(String id, com.zeroc.Ice.ObjectPrx prx, boolean isReplicaGroup, java.util.Map<String, String> context)
    {
        _iceI_foundAdapterByIdAsync(id, prx, isReplicaGroup, context, true).waitForResponse();
    }

    /**
     * Reply to the findAdpaterById request.
     * @param id The adapter ID.
     * @param prx The adapter proxy (a dummy proxy created by the adapter).
     * The proxy provides the adapter endpoints.
     * @param isReplicaGroup True if the adapter is also a member of a
     * replica group.
     * @return A future that will be completed when the invocation completes.
     **/
    default java.util.concurrent.CompletableFuture<Void> foundAdapterByIdAsync(String id, com.zeroc.Ice.ObjectPrx prx, boolean isReplicaGroup)
    {
        return _iceI_foundAdapterByIdAsync(id, prx, isReplicaGroup, com.zeroc.Ice.ObjectPrx.noExplicitContext, false);
    }

    /**
     * Reply to the findAdpaterById request.
     * @param id The adapter ID.
     * @param prx The adapter proxy (a dummy proxy created by the adapter).
     * The proxy provides the adapter endpoints.
     * @param isReplicaGroup True if the adapter is also a member of a
     * replica group.
     * @param context The Context map to send with the invocation.
     * @return A future that will be completed when the invocation completes.
     **/
    default java.util.concurrent.CompletableFuture<Void> foundAdapterByIdAsync(String id, com.zeroc.Ice.ObjectPrx prx, boolean isReplicaGroup, java.util.Map<String, String> context)
    {
        return _iceI_foundAdapterByIdAsync(id, prx, isReplicaGroup, context, false);
    }

    /**
     * @hidden
     * @param iceP_id -
     * @param iceP_prx -
     * @param iceP_isReplicaGroup -
     * @param context -
     * @param sync -
     * @return -
     **/
    default com.zeroc.IceInternal.OutgoingAsync<Void> _iceI_foundAdapterByIdAsync(String iceP_id, com.zeroc.Ice.ObjectPrx iceP_prx, boolean iceP_isReplicaGroup, java.util.Map<String, String> context, boolean sync)
    {
        com.zeroc.IceInternal.OutgoingAsync<Void> f = new com.zeroc.IceInternal.OutgoingAsync<>(this, "foundAdapterById", null, sync, null);
        f.invoke(false, context, null, ostr -> {
                     ostr.writeString(iceP_id);
                     ostr.writeProxy(iceP_prx);
                     ostr.writeBool(iceP_isReplicaGroup);
                 }, null);
        return f;
    }

    /**
     * Contacts the remote server to verify that the object implements this type.
     * Raises a local exception if a communication error occurs.
     * @param obj The untyped proxy.
     * @return A proxy for this type, or null if the object does not support this type.
     **/
    static LookupReplyPrx checkedCast(com.zeroc.Ice.ObjectPrx obj)
    {
        return com.zeroc.Ice.ObjectPrx._checkedCast(obj, ice_staticId(), LookupReplyPrx.class, _LookupReplyPrxI.class);
    }

    /**
     * Contacts the remote server to verify that the object implements this type.
     * Raises a local exception if a communication error occurs.
     * @param obj The untyped proxy.
     * @param context The Context map to send with the invocation.
     * @return A proxy for this type, or null if the object does not support this type.
     **/
    static LookupReplyPrx checkedCast(com.zeroc.Ice.ObjectPrx obj, java.util.Map<String, String> context)
    {
        return com.zeroc.Ice.ObjectPrx._checkedCast(obj, context, ice_staticId(), LookupReplyPrx.class, _LookupReplyPrxI.class);
    }

    /**
     * Contacts the remote server to verify that a facet of the object implements this type.
     * Raises a local exception if a communication error occurs.
     * @param obj The untyped proxy.
     * @param facet The name of the desired facet.
     * @return A proxy for this type, or null if the object does not support this type.
     **/
    static LookupReplyPrx checkedCast(com.zeroc.Ice.ObjectPrx obj, String facet)
    {
        return com.zeroc.Ice.ObjectPrx._checkedCast(obj, facet, ice_staticId(), LookupReplyPrx.class, _LookupReplyPrxI.class);
    }

    /**
     * Contacts the remote server to verify that a facet of the object implements this type.
     * Raises a local exception if a communication error occurs.
     * @param obj The untyped proxy.
     * @param facet The name of the desired facet.
     * @param context The Context map to send with the invocation.
     * @return A proxy for this type, or null if the object does not support this type.
     **/
    static LookupReplyPrx checkedCast(com.zeroc.Ice.ObjectPrx obj, String facet, java.util.Map<String, String> context)
    {
        return com.zeroc.Ice.ObjectPrx._checkedCast(obj, facet, context, ice_staticId(), LookupReplyPrx.class, _LookupReplyPrxI.class);
    }

    /**
     * Downcasts the given proxy to this type without contacting the remote server.
     * @param obj The untyped proxy.
     * @return A proxy for this type.
     **/
    static LookupReplyPrx uncheckedCast(com.zeroc.Ice.ObjectPrx obj)
    {
        return com.zeroc.Ice.ObjectPrx._uncheckedCast(obj, LookupReplyPrx.class, _LookupReplyPrxI.class);
    }

    /**
     * Downcasts the given proxy to this type without contacting the remote server.
     * @param obj The untyped proxy.
     * @param facet The name of the desired facet.
     * @return A proxy for this type.
     **/
    static LookupReplyPrx uncheckedCast(com.zeroc.Ice.ObjectPrx obj, String facet)
    {
        return com.zeroc.Ice.ObjectPrx._uncheckedCast(obj, facet, LookupReplyPrx.class, _LookupReplyPrxI.class);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for the per-proxy context.
     * @param newContext The context for the new proxy.
     * @return A proxy with the specified per-proxy context.
     **/
    @Override
    default LookupReplyPrx ice_context(java.util.Map<String, String> newContext)
    {
        return (LookupReplyPrx)_ice_context(newContext);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for the adapter ID.
     * @param newAdapterId The adapter ID for the new proxy.
     * @return A proxy with the specified adapter ID.
     **/
    @Override
    default LookupReplyPrx ice_adapterId(String newAdapterId)
    {
        return (LookupReplyPrx)_ice_adapterId(newAdapterId);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for the endpoints.
     * @param newEndpoints The endpoints for the new proxy.
     * @return A proxy with the specified endpoints.
     **/
    @Override
    default LookupReplyPrx ice_endpoints(com.zeroc.Ice.Endpoint[] newEndpoints)
    {
        return (LookupReplyPrx)_ice_endpoints(newEndpoints);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for the locator cache timeout.
     * @param newTimeout The new locator cache timeout (in seconds).
     * @return A proxy with the specified locator cache timeout.
     **/
    @Override
    default LookupReplyPrx ice_locatorCacheTimeout(int newTimeout)
    {
        return (LookupReplyPrx)_ice_locatorCacheTimeout(newTimeout);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for the invocation timeout.
     * @param newTimeout The new invocation timeout (in seconds).
     * @return A proxy with the specified invocation timeout.
     **/
    @Override
    default LookupReplyPrx ice_invocationTimeout(int newTimeout)
    {
        return (LookupReplyPrx)_ice_invocationTimeout(newTimeout);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for connection caching.
     * @param newCache <code>true</code> if the new proxy should cache connections; <code>false</code> otherwise.
     * @return A proxy with the specified caching policy.
     **/
    @Override
    default LookupReplyPrx ice_connectionCached(boolean newCache)
    {
        return (LookupReplyPrx)_ice_connectionCached(newCache);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for the endpoint selection policy.
     * @param newType The new endpoint selection policy.
     * @return A proxy with the specified endpoint selection policy.
     **/
    @Override
    default LookupReplyPrx ice_endpointSelection(com.zeroc.Ice.EndpointSelectionType newType)
    {
        return (LookupReplyPrx)_ice_endpointSelection(newType);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for how it selects endpoints.
     * @param b If <code>b</code> is <code>true</code>, only endpoints that use a secure transport are
     * used by the new proxy. If <code>b</code> is false, the returned proxy uses both secure and
     * insecure endpoints.
     * @return A proxy with the specified selection policy.
     **/
    @Override
    default LookupReplyPrx ice_secure(boolean b)
    {
        return (LookupReplyPrx)_ice_secure(b);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for the encoding used to marshal parameters.
     * @param e The encoding version to use to marshal request parameters.
     * @return A proxy with the specified encoding version.
     **/
    @Override
    default LookupReplyPrx ice_encodingVersion(com.zeroc.Ice.EncodingVersion e)
    {
        return (LookupReplyPrx)_ice_encodingVersion(e);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for its endpoint selection policy.
     * @param b If <code>b</code> is <code>true</code>, the new proxy will use secure endpoints for invocations
     * and only use insecure endpoints if an invocation cannot be made via secure endpoints. If <code>b</code> is
     * <code>false</code>, the proxy prefers insecure endpoints to secure ones.
     * @return A proxy with the specified selection policy.
     **/
    @Override
    default LookupReplyPrx ice_preferSecure(boolean b)
    {
        return (LookupReplyPrx)_ice_preferSecure(b);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for the router.
     * @param router The router for the new proxy.
     * @return A proxy with the specified router.
     **/
    @Override
    default LookupReplyPrx ice_router(com.zeroc.Ice.RouterPrx router)
    {
        return (LookupReplyPrx)_ice_router(router);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for the locator.
     * @param locator The locator for the new proxy.
     * @return A proxy with the specified locator.
     **/
    @Override
    default LookupReplyPrx ice_locator(com.zeroc.Ice.LocatorPrx locator)
    {
        return (LookupReplyPrx)_ice_locator(locator);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for collocation optimization.
     * @param b <code>true</code> if the new proxy enables collocation optimization; <code>false</code> otherwise.
     * @return A proxy with the specified collocation optimization.
     **/
    @Override
    default LookupReplyPrx ice_collocationOptimized(boolean b)
    {
        return (LookupReplyPrx)_ice_collocationOptimized(b);
    }

    /**
     * Returns a proxy that is identical to this proxy, but uses twoway invocations.
     * @return A proxy that uses twoway invocations.
     **/
    @Override
    default LookupReplyPrx ice_twoway()
    {
        return (LookupReplyPrx)_ice_twoway();
    }

    /**
     * Returns a proxy that is identical to this proxy, but uses oneway invocations.
     * @return A proxy that uses oneway invocations.
     **/
    @Override
    default LookupReplyPrx ice_oneway()
    {
        return (LookupReplyPrx)_ice_oneway();
    }

    /**
     * Returns a proxy that is identical to this proxy, but uses batch oneway invocations.
     * @return A proxy that uses batch oneway invocations.
     **/
    @Override
    default LookupReplyPrx ice_batchOneway()
    {
        return (LookupReplyPrx)_ice_batchOneway();
    }

    /**
     * Returns a proxy that is identical to this proxy, but uses datagram invocations.
     * @return A proxy that uses datagram invocations.
     **/
    @Override
    default LookupReplyPrx ice_datagram()
    {
        return (LookupReplyPrx)_ice_datagram();
    }

    /**
     * Returns a proxy that is identical to this proxy, but uses batch datagram invocations.
     * @return A proxy that uses batch datagram invocations.
     **/
    @Override
    default LookupReplyPrx ice_batchDatagram()
    {
        return (LookupReplyPrx)_ice_batchDatagram();
    }

    /**
     * Returns a proxy that is identical to this proxy, except for compression.
     * @param co <code>true</code> enables compression for the new proxy; <code>false</code> disables compression.
     * @return A proxy with the specified compression setting.
     **/
    @Override
    default LookupReplyPrx ice_compress(boolean co)
    {
        return (LookupReplyPrx)_ice_compress(co);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for its connection timeout setting.
     * @param t The connection timeout for the proxy in milliseconds.
     * @return A proxy with the specified timeout.
     **/
    @Override
    default LookupReplyPrx ice_timeout(int t)
    {
        return (LookupReplyPrx)_ice_timeout(t);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for its connection ID.
     * @param connectionId The connection ID for the new proxy. An empty string removes the connection ID.
     * @return A proxy with the specified connection ID.
     **/
    @Override
    default LookupReplyPrx ice_connectionId(String connectionId)
    {
        return (LookupReplyPrx)_ice_connectionId(connectionId);
    }

    /**
     * Returns a proxy that is identical to this proxy, except it's a fixed proxy bound
     * the given connection.@param connection The fixed proxy connection.
     * @return A fixed proxy bound to the given connection.
     **/
    @Override
    default LookupReplyPrx ice_fixed(com.zeroc.Ice.Connection connection)
    {
        return (LookupReplyPrx)_ice_fixed(connection);
    }

    static String ice_staticId()
    {
        return "::IceDiscovery::LookupReply";
    }
}
