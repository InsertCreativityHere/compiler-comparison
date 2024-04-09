//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `Test.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

package Test;

public interface ControllerPrx extends com.zeroc.Ice.ObjectPrx
{
    default void activateObjectAdapter(String name, String adapterId, String replicaGroupId)
    {
        activateObjectAdapter(name, adapterId, replicaGroupId, com.zeroc.Ice.ObjectPrx.noExplicitContext);
    }

    default void activateObjectAdapter(String name, String adapterId, String replicaGroupId, java.util.Map<String, String> context)
    {
        _iceI_activateObjectAdapterAsync(name, adapterId, replicaGroupId, context, true).waitForResponse();
    }

    default java.util.concurrent.CompletableFuture<Void> activateObjectAdapterAsync(String name, String adapterId, String replicaGroupId)
    {
        return _iceI_activateObjectAdapterAsync(name, adapterId, replicaGroupId, com.zeroc.Ice.ObjectPrx.noExplicitContext, false);
    }

    default java.util.concurrent.CompletableFuture<Void> activateObjectAdapterAsync(String name, String adapterId, String replicaGroupId, java.util.Map<String, String> context)
    {
        return _iceI_activateObjectAdapterAsync(name, adapterId, replicaGroupId, context, false);
    }

    /**
     * @hidden
     * @param iceP_name -
     * @param iceP_adapterId -
     * @param iceP_replicaGroupId -
     * @param context -
     * @param sync -
     * @return -
     **/
    default com.zeroc.IceInternal.OutgoingAsync<Void> _iceI_activateObjectAdapterAsync(String iceP_name, String iceP_adapterId, String iceP_replicaGroupId, java.util.Map<String, String> context, boolean sync)
    {
        com.zeroc.IceInternal.OutgoingAsync<Void> f = new com.zeroc.IceInternal.OutgoingAsync<>(this, "activateObjectAdapter", null, sync, null);
        f.invoke(false, context, null, ostr -> {
                     ostr.writeString(iceP_name);
                     ostr.writeString(iceP_adapterId);
                     ostr.writeString(iceP_replicaGroupId);
                 }, null);
        return f;
    }

    default void deactivateObjectAdapter(String name)
    {
        deactivateObjectAdapter(name, com.zeroc.Ice.ObjectPrx.noExplicitContext);
    }

    default void deactivateObjectAdapter(String name, java.util.Map<String, String> context)
    {
        _iceI_deactivateObjectAdapterAsync(name, context, true).waitForResponse();
    }

    default java.util.concurrent.CompletableFuture<Void> deactivateObjectAdapterAsync(String name)
    {
        return _iceI_deactivateObjectAdapterAsync(name, com.zeroc.Ice.ObjectPrx.noExplicitContext, false);
    }

    default java.util.concurrent.CompletableFuture<Void> deactivateObjectAdapterAsync(String name, java.util.Map<String, String> context)
    {
        return _iceI_deactivateObjectAdapterAsync(name, context, false);
    }

    /**
     * @hidden
     * @param iceP_name -
     * @param context -
     * @param sync -
     * @return -
     **/
    default com.zeroc.IceInternal.OutgoingAsync<Void> _iceI_deactivateObjectAdapterAsync(String iceP_name, java.util.Map<String, String> context, boolean sync)
    {
        com.zeroc.IceInternal.OutgoingAsync<Void> f = new com.zeroc.IceInternal.OutgoingAsync<>(this, "deactivateObjectAdapter", null, sync, null);
        f.invoke(false, context, null, ostr -> {
                     ostr.writeString(iceP_name);
                 }, null);
        return f;
    }

    default void addObject(String oaName, String id)
    {
        addObject(oaName, id, com.zeroc.Ice.ObjectPrx.noExplicitContext);
    }

    default void addObject(String oaName, String id, java.util.Map<String, String> context)
    {
        _iceI_addObjectAsync(oaName, id, context, true).waitForResponse();
    }

    default java.util.concurrent.CompletableFuture<Void> addObjectAsync(String oaName, String id)
    {
        return _iceI_addObjectAsync(oaName, id, com.zeroc.Ice.ObjectPrx.noExplicitContext, false);
    }

    default java.util.concurrent.CompletableFuture<Void> addObjectAsync(String oaName, String id, java.util.Map<String, String> context)
    {
        return _iceI_addObjectAsync(oaName, id, context, false);
    }

    /**
     * @hidden
     * @param iceP_oaName -
     * @param iceP_id -
     * @param context -
     * @param sync -
     * @return -
     **/
    default com.zeroc.IceInternal.OutgoingAsync<Void> _iceI_addObjectAsync(String iceP_oaName, String iceP_id, java.util.Map<String, String> context, boolean sync)
    {
        com.zeroc.IceInternal.OutgoingAsync<Void> f = new com.zeroc.IceInternal.OutgoingAsync<>(this, "addObject", null, sync, null);
        f.invoke(false, context, null, ostr -> {
                     ostr.writeString(iceP_oaName);
                     ostr.writeString(iceP_id);
                 }, null);
        return f;
    }

    default void removeObject(String oaName, String id)
    {
        removeObject(oaName, id, com.zeroc.Ice.ObjectPrx.noExplicitContext);
    }

    default void removeObject(String oaName, String id, java.util.Map<String, String> context)
    {
        _iceI_removeObjectAsync(oaName, id, context, true).waitForResponse();
    }

    default java.util.concurrent.CompletableFuture<Void> removeObjectAsync(String oaName, String id)
    {
        return _iceI_removeObjectAsync(oaName, id, com.zeroc.Ice.ObjectPrx.noExplicitContext, false);
    }

    default java.util.concurrent.CompletableFuture<Void> removeObjectAsync(String oaName, String id, java.util.Map<String, String> context)
    {
        return _iceI_removeObjectAsync(oaName, id, context, false);
    }

    /**
     * @hidden
     * @param iceP_oaName -
     * @param iceP_id -
     * @param context -
     * @param sync -
     * @return -
     **/
    default com.zeroc.IceInternal.OutgoingAsync<Void> _iceI_removeObjectAsync(String iceP_oaName, String iceP_id, java.util.Map<String, String> context, boolean sync)
    {
        com.zeroc.IceInternal.OutgoingAsync<Void> f = new com.zeroc.IceInternal.OutgoingAsync<>(this, "removeObject", null, sync, null);
        f.invoke(false, context, null, ostr -> {
                     ostr.writeString(iceP_oaName);
                     ostr.writeString(iceP_id);
                 }, null);
        return f;
    }

    default void shutdown()
    {
        shutdown(com.zeroc.Ice.ObjectPrx.noExplicitContext);
    }

    default void shutdown(java.util.Map<String, String> context)
    {
        _iceI_shutdownAsync(context, true).waitForResponse();
    }

    default java.util.concurrent.CompletableFuture<Void> shutdownAsync()
    {
        return _iceI_shutdownAsync(com.zeroc.Ice.ObjectPrx.noExplicitContext, false);
    }

    default java.util.concurrent.CompletableFuture<Void> shutdownAsync(java.util.Map<String, String> context)
    {
        return _iceI_shutdownAsync(context, false);
    }

    /**
     * @hidden
     * @param context -
     * @param sync -
     * @return -
     **/
    default com.zeroc.IceInternal.OutgoingAsync<Void> _iceI_shutdownAsync(java.util.Map<String, String> context, boolean sync)
    {
        com.zeroc.IceInternal.OutgoingAsync<Void> f = new com.zeroc.IceInternal.OutgoingAsync<>(this, "shutdown", null, sync, null);
        f.invoke(false, context, null, null, null);
        return f;
    }

    /**
     * Contacts the remote server to verify that the object implements this type.
     * Raises a local exception if a communication error occurs.
     * @param obj The untyped proxy.
     * @return A proxy for this type, or null if the object does not support this type.
     **/
    static ControllerPrx checkedCast(com.zeroc.Ice.ObjectPrx obj)
    {
        return com.zeroc.Ice.ObjectPrx._checkedCast(obj, ice_staticId(), ControllerPrx.class, _ControllerPrxI.class);
    }

    /**
     * Contacts the remote server to verify that the object implements this type.
     * Raises a local exception if a communication error occurs.
     * @param obj The untyped proxy.
     * @param context The Context map to send with the invocation.
     * @return A proxy for this type, or null if the object does not support this type.
     **/
    static ControllerPrx checkedCast(com.zeroc.Ice.ObjectPrx obj, java.util.Map<String, String> context)
    {
        return com.zeroc.Ice.ObjectPrx._checkedCast(obj, context, ice_staticId(), ControllerPrx.class, _ControllerPrxI.class);
    }

    /**
     * Contacts the remote server to verify that a facet of the object implements this type.
     * Raises a local exception if a communication error occurs.
     * @param obj The untyped proxy.
     * @param facet The name of the desired facet.
     * @return A proxy for this type, or null if the object does not support this type.
     **/
    static ControllerPrx checkedCast(com.zeroc.Ice.ObjectPrx obj, String facet)
    {
        return com.zeroc.Ice.ObjectPrx._checkedCast(obj, facet, ice_staticId(), ControllerPrx.class, _ControllerPrxI.class);
    }

    /**
     * Contacts the remote server to verify that a facet of the object implements this type.
     * Raises a local exception if a communication error occurs.
     * @param obj The untyped proxy.
     * @param facet The name of the desired facet.
     * @param context The Context map to send with the invocation.
     * @return A proxy for this type, or null if the object does not support this type.
     **/
    static ControllerPrx checkedCast(com.zeroc.Ice.ObjectPrx obj, String facet, java.util.Map<String, String> context)
    {
        return com.zeroc.Ice.ObjectPrx._checkedCast(obj, facet, context, ice_staticId(), ControllerPrx.class, _ControllerPrxI.class);
    }

    /**
     * Downcasts the given proxy to this type without contacting the remote server.
     * @param obj The untyped proxy.
     * @return A proxy for this type.
     **/
    static ControllerPrx uncheckedCast(com.zeroc.Ice.ObjectPrx obj)
    {
        return com.zeroc.Ice.ObjectPrx._uncheckedCast(obj, ControllerPrx.class, _ControllerPrxI.class);
    }

    /**
     * Downcasts the given proxy to this type without contacting the remote server.
     * @param obj The untyped proxy.
     * @param facet The name of the desired facet.
     * @return A proxy for this type.
     **/
    static ControllerPrx uncheckedCast(com.zeroc.Ice.ObjectPrx obj, String facet)
    {
        return com.zeroc.Ice.ObjectPrx._uncheckedCast(obj, facet, ControllerPrx.class, _ControllerPrxI.class);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for the per-proxy context.
     * @param newContext The context for the new proxy.
     * @return A proxy with the specified per-proxy context.
     **/
    @Override
    default ControllerPrx ice_context(java.util.Map<String, String> newContext)
    {
        return (ControllerPrx)_ice_context(newContext);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for the adapter ID.
     * @param newAdapterId The adapter ID for the new proxy.
     * @return A proxy with the specified adapter ID.
     **/
    @Override
    default ControllerPrx ice_adapterId(String newAdapterId)
    {
        return (ControllerPrx)_ice_adapterId(newAdapterId);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for the endpoints.
     * @param newEndpoints The endpoints for the new proxy.
     * @return A proxy with the specified endpoints.
     **/
    @Override
    default ControllerPrx ice_endpoints(com.zeroc.Ice.Endpoint[] newEndpoints)
    {
        return (ControllerPrx)_ice_endpoints(newEndpoints);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for the locator cache timeout.
     * @param newTimeout The new locator cache timeout (in seconds).
     * @return A proxy with the specified locator cache timeout.
     **/
    @Override
    default ControllerPrx ice_locatorCacheTimeout(int newTimeout)
    {
        return (ControllerPrx)_ice_locatorCacheTimeout(newTimeout);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for the invocation timeout.
     * @param newTimeout The new invocation timeout (in seconds).
     * @return A proxy with the specified invocation timeout.
     **/
    @Override
    default ControllerPrx ice_invocationTimeout(int newTimeout)
    {
        return (ControllerPrx)_ice_invocationTimeout(newTimeout);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for connection caching.
     * @param newCache <code>true</code> if the new proxy should cache connections; <code>false</code> otherwise.
     * @return A proxy with the specified caching policy.
     **/
    @Override
    default ControllerPrx ice_connectionCached(boolean newCache)
    {
        return (ControllerPrx)_ice_connectionCached(newCache);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for the endpoint selection policy.
     * @param newType The new endpoint selection policy.
     * @return A proxy with the specified endpoint selection policy.
     **/
    @Override
    default ControllerPrx ice_endpointSelection(com.zeroc.Ice.EndpointSelectionType newType)
    {
        return (ControllerPrx)_ice_endpointSelection(newType);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for how it selects endpoints.
     * @param b If <code>b</code> is <code>true</code>, only endpoints that use a secure transport are
     * used by the new proxy. If <code>b</code> is false, the returned proxy uses both secure and
     * insecure endpoints.
     * @return A proxy with the specified selection policy.
     **/
    @Override
    default ControllerPrx ice_secure(boolean b)
    {
        return (ControllerPrx)_ice_secure(b);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for the encoding used to marshal parameters.
     * @param e The encoding version to use to marshal request parameters.
     * @return A proxy with the specified encoding version.
     **/
    @Override
    default ControllerPrx ice_encodingVersion(com.zeroc.Ice.EncodingVersion e)
    {
        return (ControllerPrx)_ice_encodingVersion(e);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for its endpoint selection policy.
     * @param b If <code>b</code> is <code>true</code>, the new proxy will use secure endpoints for invocations
     * and only use insecure endpoints if an invocation cannot be made via secure endpoints. If <code>b</code> is
     * <code>false</code>, the proxy prefers insecure endpoints to secure ones.
     * @return A proxy with the specified selection policy.
     **/
    @Override
    default ControllerPrx ice_preferSecure(boolean b)
    {
        return (ControllerPrx)_ice_preferSecure(b);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for the router.
     * @param router The router for the new proxy.
     * @return A proxy with the specified router.
     **/
    @Override
    default ControllerPrx ice_router(com.zeroc.Ice.RouterPrx router)
    {
        return (ControllerPrx)_ice_router(router);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for the locator.
     * @param locator The locator for the new proxy.
     * @return A proxy with the specified locator.
     **/
    @Override
    default ControllerPrx ice_locator(com.zeroc.Ice.LocatorPrx locator)
    {
        return (ControllerPrx)_ice_locator(locator);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for collocation optimization.
     * @param b <code>true</code> if the new proxy enables collocation optimization; <code>false</code> otherwise.
     * @return A proxy with the specified collocation optimization.
     **/
    @Override
    default ControllerPrx ice_collocationOptimized(boolean b)
    {
        return (ControllerPrx)_ice_collocationOptimized(b);
    }

    /**
     * Returns a proxy that is identical to this proxy, but uses twoway invocations.
     * @return A proxy that uses twoway invocations.
     **/
    @Override
    default ControllerPrx ice_twoway()
    {
        return (ControllerPrx)_ice_twoway();
    }

    /**
     * Returns a proxy that is identical to this proxy, but uses oneway invocations.
     * @return A proxy that uses oneway invocations.
     **/
    @Override
    default ControllerPrx ice_oneway()
    {
        return (ControllerPrx)_ice_oneway();
    }

    /**
     * Returns a proxy that is identical to this proxy, but uses batch oneway invocations.
     * @return A proxy that uses batch oneway invocations.
     **/
    @Override
    default ControllerPrx ice_batchOneway()
    {
        return (ControllerPrx)_ice_batchOneway();
    }

    /**
     * Returns a proxy that is identical to this proxy, but uses datagram invocations.
     * @return A proxy that uses datagram invocations.
     **/
    @Override
    default ControllerPrx ice_datagram()
    {
        return (ControllerPrx)_ice_datagram();
    }

    /**
     * Returns a proxy that is identical to this proxy, but uses batch datagram invocations.
     * @return A proxy that uses batch datagram invocations.
     **/
    @Override
    default ControllerPrx ice_batchDatagram()
    {
        return (ControllerPrx)_ice_batchDatagram();
    }

    /**
     * Returns a proxy that is identical to this proxy, except for compression.
     * @param co <code>true</code> enables compression for the new proxy; <code>false</code> disables compression.
     * @return A proxy with the specified compression setting.
     **/
    @Override
    default ControllerPrx ice_compress(boolean co)
    {
        return (ControllerPrx)_ice_compress(co);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for its connection timeout setting.
     * @param t The connection timeout for the proxy in milliseconds.
     * @return A proxy with the specified timeout.
     **/
    @Override
    default ControllerPrx ice_timeout(int t)
    {
        return (ControllerPrx)_ice_timeout(t);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for its connection ID.
     * @param connectionId The connection ID for the new proxy. An empty string removes the connection ID.
     * @return A proxy with the specified connection ID.
     **/
    @Override
    default ControllerPrx ice_connectionId(String connectionId)
    {
        return (ControllerPrx)_ice_connectionId(connectionId);
    }

    /**
     * Returns a proxy that is identical to this proxy, except it's a fixed proxy bound
     * the given connection.@param connection The fixed proxy connection.
     * @return A fixed proxy bound to the given connection.
     **/
    @Override
    default ControllerPrx ice_fixed(com.zeroc.Ice.Connection connection)
    {
        return (ControllerPrx)_ice_fixed(connection);
    }

    static String ice_staticId()
    {
        return "::Test::Controller";
    }
}