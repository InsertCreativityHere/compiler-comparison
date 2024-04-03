//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `Locator.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

package com.zeroc.Ice;

/**
 * The Ice locator registry interface. This interface is used by servers to register adapter endpoints with the
 * locator. <p class="Note"> The {@link LocatorRegistry} interface is intended to be used by Ice internals and by
 * locator implementations. Regular user code should not attempt to use any functionality of this interface
 * directly.
 **/
public interface LocatorRegistryPrx extends ObjectPrx
{
    /**
     * Set the adapter endpoints with the locator registry.
     * @param id The adapter id.
     * @param proxy The adapter proxy (a dummy direct proxy created by the adapter). The direct proxy contains the
     * adapter endpoints. The proxy can be null, typically during adapter deactivation.
     * @throws AdapterAlreadyActiveException Raised if an adapter with the same id is already active.
     * @throws AdapterNotFoundException Raised if the adapter cannot be found, or if the locator only allows
     * registered adapters to set their active proxy and the adapter is not registered with the locator.
     **/
    default void setAdapterDirectProxy(String id, ObjectPrx proxy)
        throws AdapterNotFoundException,
               AdapterAlreadyActiveException
    {
        setAdapterDirectProxy(id, proxy, com.zeroc.Ice.ObjectPrx.noExplicitContext);
    }

    /**
     * Set the adapter endpoints with the locator registry.
     * @param id The adapter id.
     * @param proxy The adapter proxy (a dummy direct proxy created by the adapter). The direct proxy contains the
     * adapter endpoints. The proxy can be null, typically during adapter deactivation.
     * @param context The Context map to send with the invocation.
     * @throws AdapterAlreadyActiveException Raised if an adapter with the same id is already active.
     * @throws AdapterNotFoundException Raised if the adapter cannot be found, or if the locator only allows
     * registered adapters to set their active proxy and the adapter is not registered with the locator.
     **/
    default void setAdapterDirectProxy(String id, ObjectPrx proxy, java.util.Map<String, String> context)
        throws AdapterNotFoundException,
               AdapterAlreadyActiveException
    {
        try
        {
            _iceI_setAdapterDirectProxyAsync(id, proxy, context, true).waitForResponseOrUserEx();
        }
        catch(AdapterNotFoundException ex)
        {
            throw ex;
        }
        catch(AdapterAlreadyActiveException ex)
        {
            throw ex;
        }
        catch(UserException ex)
        {
            throw new UnknownUserException(ex.ice_id(), ex);
        }
    }

    /**
     * Set the adapter endpoints with the locator registry.
     * @param id The adapter id.
     * @param proxy The adapter proxy (a dummy direct proxy created by the adapter). The direct proxy contains the
     * adapter endpoints. The proxy can be null, typically during adapter deactivation.
     * @return A future that will be completed when the invocation completes.
     **/
    default java.util.concurrent.CompletableFuture<Void> setAdapterDirectProxyAsync(String id, ObjectPrx proxy)
    {
        return _iceI_setAdapterDirectProxyAsync(id, proxy, com.zeroc.Ice.ObjectPrx.noExplicitContext, false);
    }

    /**
     * Set the adapter endpoints with the locator registry.
     * @param id The adapter id.
     * @param proxy The adapter proxy (a dummy direct proxy created by the adapter). The direct proxy contains the
     * adapter endpoints. The proxy can be null, typically during adapter deactivation.
     * @param context The Context map to send with the invocation.
     * @return A future that will be completed when the invocation completes.
     **/
    default java.util.concurrent.CompletableFuture<Void> setAdapterDirectProxyAsync(String id, ObjectPrx proxy, java.util.Map<String, String> context)
    {
        return _iceI_setAdapterDirectProxyAsync(id, proxy, context, false);
    }

    /**
     * @hidden
     * @param iceP_id -
     * @param iceP_proxy -
     * @param context -
     * @param sync -
     * @return -
     **/
    default com.zeroc.IceInternal.OutgoingAsync<Void> _iceI_setAdapterDirectProxyAsync(String iceP_id, ObjectPrx iceP_proxy, java.util.Map<String, String> context, boolean sync)
    {
        com.zeroc.IceInternal.OutgoingAsync<Void> f = new com.zeroc.IceInternal.OutgoingAsync<>(this, "setAdapterDirectProxy", com.zeroc.Ice.OperationMode.Idempotent, sync, _iceE_setAdapterDirectProxy);
        f.invoke(true, context, null, ostr -> {
                     ostr.writeString(iceP_id);
                     ostr.writeProxy(iceP_proxy);
                 }, null);
        return f;
    }

    /** @hidden */
    static final Class<?>[] _iceE_setAdapterDirectProxy =
    {
        AdapterNotFoundException.class,
        AdapterAlreadyActiveException.class
    };

    /**
     * Set the adapter endpoints with the locator registry.
     * @param adapterId The adapter id.
     * @param replicaGroupId The replica group id.
     * @param proxy The adapter proxy (a dummy direct proxy created by the adapter). The direct proxy contains the
     * adapter endpoints. The proxy can be null, typically during adapter deactivation.
     * @throws AdapterAlreadyActiveException Raised if an adapter with the same id is already active.
     * @throws AdapterNotFoundException Raised if the adapter cannot be found, or if the locator only allows
     * registered adapters to set their active proxy and the adapter is not registered with the locator.
     * @throws InvalidReplicaGroupIdException Raised if the given replica group doesn't match the one registered
     * with the locator registry for this object adapter.
     **/
    default void setReplicatedAdapterDirectProxy(String adapterId, String replicaGroupId, ObjectPrx proxy)
        throws AdapterNotFoundException,
               InvalidReplicaGroupIdException,
               AdapterAlreadyActiveException
    {
        setReplicatedAdapterDirectProxy(adapterId, replicaGroupId, proxy, com.zeroc.Ice.ObjectPrx.noExplicitContext);
    }

    /**
     * Set the adapter endpoints with the locator registry.
     * @param adapterId The adapter id.
     * @param replicaGroupId The replica group id.
     * @param proxy The adapter proxy (a dummy direct proxy created by the adapter). The direct proxy contains the
     * adapter endpoints. The proxy can be null, typically during adapter deactivation.
     * @param context The Context map to send with the invocation.
     * @throws AdapterAlreadyActiveException Raised if an adapter with the same id is already active.
     * @throws AdapterNotFoundException Raised if the adapter cannot be found, or if the locator only allows
     * registered adapters to set their active proxy and the adapter is not registered with the locator.
     * @throws InvalidReplicaGroupIdException Raised if the given replica group doesn't match the one registered
     * with the locator registry for this object adapter.
     **/
    default void setReplicatedAdapterDirectProxy(String adapterId, String replicaGroupId, ObjectPrx proxy, java.util.Map<String, String> context)
        throws AdapterNotFoundException,
               InvalidReplicaGroupIdException,
               AdapterAlreadyActiveException
    {
        try
        {
            _iceI_setReplicatedAdapterDirectProxyAsync(adapterId, replicaGroupId, proxy, context, true).waitForResponseOrUserEx();
        }
        catch(AdapterNotFoundException ex)
        {
            throw ex;
        }
        catch(InvalidReplicaGroupIdException ex)
        {
            throw ex;
        }
        catch(AdapterAlreadyActiveException ex)
        {
            throw ex;
        }
        catch(UserException ex)
        {
            throw new UnknownUserException(ex.ice_id(), ex);
        }
    }

    /**
     * Set the adapter endpoints with the locator registry.
     * @param adapterId The adapter id.
     * @param replicaGroupId The replica group id.
     * @param proxy The adapter proxy (a dummy direct proxy created by the adapter). The direct proxy contains the
     * adapter endpoints. The proxy can be null, typically during adapter deactivation.
     * @return A future that will be completed when the invocation completes.
     **/
    default java.util.concurrent.CompletableFuture<Void> setReplicatedAdapterDirectProxyAsync(String adapterId, String replicaGroupId, ObjectPrx proxy)
    {
        return _iceI_setReplicatedAdapterDirectProxyAsync(adapterId, replicaGroupId, proxy, com.zeroc.Ice.ObjectPrx.noExplicitContext, false);
    }

    /**
     * Set the adapter endpoints with the locator registry.
     * @param adapterId The adapter id.
     * @param replicaGroupId The replica group id.
     * @param proxy The adapter proxy (a dummy direct proxy created by the adapter). The direct proxy contains the
     * adapter endpoints. The proxy can be null, typically during adapter deactivation.
     * @param context The Context map to send with the invocation.
     * @return A future that will be completed when the invocation completes.
     **/
    default java.util.concurrent.CompletableFuture<Void> setReplicatedAdapterDirectProxyAsync(String adapterId, String replicaGroupId, ObjectPrx proxy, java.util.Map<String, String> context)
    {
        return _iceI_setReplicatedAdapterDirectProxyAsync(adapterId, replicaGroupId, proxy, context, false);
    }

    /**
     * @hidden
     * @param iceP_adapterId -
     * @param iceP_replicaGroupId -
     * @param iceP_proxy -
     * @param context -
     * @param sync -
     * @return -
     **/
    default com.zeroc.IceInternal.OutgoingAsync<Void> _iceI_setReplicatedAdapterDirectProxyAsync(String iceP_adapterId, String iceP_replicaGroupId, ObjectPrx iceP_proxy, java.util.Map<String, String> context, boolean sync)
    {
        com.zeroc.IceInternal.OutgoingAsync<Void> f = new com.zeroc.IceInternal.OutgoingAsync<>(this, "setReplicatedAdapterDirectProxy", com.zeroc.Ice.OperationMode.Idempotent, sync, _iceE_setReplicatedAdapterDirectProxy);
        f.invoke(true, context, null, ostr -> {
                     ostr.writeString(iceP_adapterId);
                     ostr.writeString(iceP_replicaGroupId);
                     ostr.writeProxy(iceP_proxy);
                 }, null);
        return f;
    }

    /** @hidden */
    static final Class<?>[] _iceE_setReplicatedAdapterDirectProxy =
    {
        AdapterNotFoundException.class,
        InvalidReplicaGroupIdException.class,
        AdapterAlreadyActiveException.class
    };

    /**
     * Set the process proxy for a server.
     * @param id The server id.
     * @param proxy The process proxy. The proxy is never null.
     * @throws ServerNotFoundException Raised if the server cannot be found.
     **/
    default void setServerProcessProxy(String id, ProcessPrx proxy)
        throws ServerNotFoundException
    {
        setServerProcessProxy(id, proxy, com.zeroc.Ice.ObjectPrx.noExplicitContext);
    }

    /**
     * Set the process proxy for a server.
     * @param id The server id.
     * @param proxy The process proxy. The proxy is never null.
     * @param context The Context map to send with the invocation.
     * @throws ServerNotFoundException Raised if the server cannot be found.
     **/
    default void setServerProcessProxy(String id, ProcessPrx proxy, java.util.Map<String, String> context)
        throws ServerNotFoundException
    {
        try
        {
            _iceI_setServerProcessProxyAsync(id, proxy, context, true).waitForResponseOrUserEx();
        }
        catch(ServerNotFoundException ex)
        {
            throw ex;
        }
        catch(UserException ex)
        {
            throw new UnknownUserException(ex.ice_id(), ex);
        }
    }

    /**
     * Set the process proxy for a server.
     * @param id The server id.
     * @param proxy The process proxy. The proxy is never null.
     * @return A future that will be completed when the invocation completes.
     **/
    default java.util.concurrent.CompletableFuture<Void> setServerProcessProxyAsync(String id, ProcessPrx proxy)
    {
        return _iceI_setServerProcessProxyAsync(id, proxy, com.zeroc.Ice.ObjectPrx.noExplicitContext, false);
    }

    /**
     * Set the process proxy for a server.
     * @param id The server id.
     * @param proxy The process proxy. The proxy is never null.
     * @param context The Context map to send with the invocation.
     * @return A future that will be completed when the invocation completes.
     **/
    default java.util.concurrent.CompletableFuture<Void> setServerProcessProxyAsync(String id, ProcessPrx proxy, java.util.Map<String, String> context)
    {
        return _iceI_setServerProcessProxyAsync(id, proxy, context, false);
    }

    /**
     * @hidden
     * @param iceP_id -
     * @param iceP_proxy -
     * @param context -
     * @param sync -
     * @return -
     **/
    default com.zeroc.IceInternal.OutgoingAsync<Void> _iceI_setServerProcessProxyAsync(String iceP_id, ProcessPrx iceP_proxy, java.util.Map<String, String> context, boolean sync)
    {
        com.zeroc.IceInternal.OutgoingAsync<Void> f = new com.zeroc.IceInternal.OutgoingAsync<>(this, "setServerProcessProxy", com.zeroc.Ice.OperationMode.Idempotent, sync, _iceE_setServerProcessProxy);
        f.invoke(true, context, null, ostr -> {
                     ostr.writeString(iceP_id);
                     ostr.writeProxy(iceP_proxy);
                 }, null);
        return f;
    }

    /** @hidden */
    static final Class<?>[] _iceE_setServerProcessProxy =
    {
        ServerNotFoundException.class
    };

    /**
     * Contacts the remote server to verify that the object implements this type.
     * Raises a local exception if a communication error occurs.
     * @param obj The untyped proxy.
     * @return A proxy for this type, or null if the object does not support this type.
     **/
    static LocatorRegistryPrx checkedCast(ObjectPrx obj)
    {
        return ObjectPrx._checkedCast(obj, ice_staticId(), LocatorRegistryPrx.class, _LocatorRegistryPrxI.class);
    }

    /**
     * Contacts the remote server to verify that the object implements this type.
     * Raises a local exception if a communication error occurs.
     * @param obj The untyped proxy.
     * @param context The Context map to send with the invocation.
     * @return A proxy for this type, or null if the object does not support this type.
     **/
    static LocatorRegistryPrx checkedCast(ObjectPrx obj, java.util.Map<String, String> context)
    {
        return ObjectPrx._checkedCast(obj, context, ice_staticId(), LocatorRegistryPrx.class, _LocatorRegistryPrxI.class);
    }

    /**
     * Contacts the remote server to verify that a facet of the object implements this type.
     * Raises a local exception if a communication error occurs.
     * @param obj The untyped proxy.
     * @param facet The name of the desired facet.
     * @return A proxy for this type, or null if the object does not support this type.
     **/
    static LocatorRegistryPrx checkedCast(ObjectPrx obj, String facet)
    {
        return ObjectPrx._checkedCast(obj, facet, ice_staticId(), LocatorRegistryPrx.class, _LocatorRegistryPrxI.class);
    }

    /**
     * Contacts the remote server to verify that a facet of the object implements this type.
     * Raises a local exception if a communication error occurs.
     * @param obj The untyped proxy.
     * @param facet The name of the desired facet.
     * @param context The Context map to send with the invocation.
     * @return A proxy for this type, or null if the object does not support this type.
     **/
    static LocatorRegistryPrx checkedCast(ObjectPrx obj, String facet, java.util.Map<String, String> context)
    {
        return ObjectPrx._checkedCast(obj, facet, context, ice_staticId(), LocatorRegistryPrx.class, _LocatorRegistryPrxI.class);
    }

    /**
     * Downcasts the given proxy to this type without contacting the remote server.
     * @param obj The untyped proxy.
     * @return A proxy for this type.
     **/
    static LocatorRegistryPrx uncheckedCast(ObjectPrx obj)
    {
        return ObjectPrx._uncheckedCast(obj, LocatorRegistryPrx.class, _LocatorRegistryPrxI.class);
    }

    /**
     * Downcasts the given proxy to this type without contacting the remote server.
     * @param obj The untyped proxy.
     * @param facet The name of the desired facet.
     * @return A proxy for this type.
     **/
    static LocatorRegistryPrx uncheckedCast(ObjectPrx obj, String facet)
    {
        return ObjectPrx._uncheckedCast(obj, facet, LocatorRegistryPrx.class, _LocatorRegistryPrxI.class);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for the per-proxy context.
     * @param newContext The context for the new proxy.
     * @return A proxy with the specified per-proxy context.
     **/
    @Override
    default LocatorRegistryPrx ice_context(java.util.Map<String, String> newContext)
    {
        return (LocatorRegistryPrx)_ice_context(newContext);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for the adapter ID.
     * @param newAdapterId The adapter ID for the new proxy.
     * @return A proxy with the specified adapter ID.
     **/
    @Override
    default LocatorRegistryPrx ice_adapterId(String newAdapterId)
    {
        return (LocatorRegistryPrx)_ice_adapterId(newAdapterId);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for the endpoints.
     * @param newEndpoints The endpoints for the new proxy.
     * @return A proxy with the specified endpoints.
     **/
    @Override
    default LocatorRegistryPrx ice_endpoints(Endpoint[] newEndpoints)
    {
        return (LocatorRegistryPrx)_ice_endpoints(newEndpoints);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for the locator cache timeout.
     * @param newTimeout The new locator cache timeout (in seconds).
     * @return A proxy with the specified locator cache timeout.
     **/
    @Override
    default LocatorRegistryPrx ice_locatorCacheTimeout(int newTimeout)
    {
        return (LocatorRegistryPrx)_ice_locatorCacheTimeout(newTimeout);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for the invocation timeout.
     * @param newTimeout The new invocation timeout (in seconds).
     * @return A proxy with the specified invocation timeout.
     **/
    @Override
    default LocatorRegistryPrx ice_invocationTimeout(int newTimeout)
    {
        return (LocatorRegistryPrx)_ice_invocationTimeout(newTimeout);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for connection caching.
     * @param newCache <code>true</code> if the new proxy should cache connections; <code>false</code> otherwise.
     * @return A proxy with the specified caching policy.
     **/
    @Override
    default LocatorRegistryPrx ice_connectionCached(boolean newCache)
    {
        return (LocatorRegistryPrx)_ice_connectionCached(newCache);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for the endpoint selection policy.
     * @param newType The new endpoint selection policy.
     * @return A proxy with the specified endpoint selection policy.
     **/
    @Override
    default LocatorRegistryPrx ice_endpointSelection(EndpointSelectionType newType)
    {
        return (LocatorRegistryPrx)_ice_endpointSelection(newType);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for how it selects endpoints.
     * @param b If <code>b</code> is <code>true</code>, only endpoints that use a secure transport are
     * used by the new proxy. If <code>b</code> is false, the returned proxy uses both secure and
     * insecure endpoints.
     * @return A proxy with the specified selection policy.
     **/
    @Override
    default LocatorRegistryPrx ice_secure(boolean b)
    {
        return (LocatorRegistryPrx)_ice_secure(b);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for the encoding used to marshal parameters.
     * @param e The encoding version to use to marshal request parameters.
     * @return A proxy with the specified encoding version.
     **/
    @Override
    default LocatorRegistryPrx ice_encodingVersion(EncodingVersion e)
    {
        return (LocatorRegistryPrx)_ice_encodingVersion(e);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for its endpoint selection policy.
     * @param b If <code>b</code> is <code>true</code>, the new proxy will use secure endpoints for invocations
     * and only use insecure endpoints if an invocation cannot be made via secure endpoints. If <code>b</code> is
     * <code>false</code>, the proxy prefers insecure endpoints to secure ones.
     * @return A proxy with the specified selection policy.
     **/
    @Override
    default LocatorRegistryPrx ice_preferSecure(boolean b)
    {
        return (LocatorRegistryPrx)_ice_preferSecure(b);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for the router.
     * @param router The router for the new proxy.
     * @return A proxy with the specified router.
     **/
    @Override
    default LocatorRegistryPrx ice_router(RouterPrx router)
    {
        return (LocatorRegistryPrx)_ice_router(router);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for the locator.
     * @param locator The locator for the new proxy.
     * @return A proxy with the specified locator.
     **/
    @Override
    default LocatorRegistryPrx ice_locator(LocatorPrx locator)
    {
        return (LocatorRegistryPrx)_ice_locator(locator);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for collocation optimization.
     * @param b <code>true</code> if the new proxy enables collocation optimization; <code>false</code> otherwise.
     * @return A proxy with the specified collocation optimization.
     **/
    @Override
    default LocatorRegistryPrx ice_collocationOptimized(boolean b)
    {
        return (LocatorRegistryPrx)_ice_collocationOptimized(b);
    }

    /**
     * Returns a proxy that is identical to this proxy, but uses twoway invocations.
     * @return A proxy that uses twoway invocations.
     **/
    @Override
    default LocatorRegistryPrx ice_twoway()
    {
        return (LocatorRegistryPrx)_ice_twoway();
    }

    /**
     * Returns a proxy that is identical to this proxy, but uses oneway invocations.
     * @return A proxy that uses oneway invocations.
     **/
    @Override
    default LocatorRegistryPrx ice_oneway()
    {
        return (LocatorRegistryPrx)_ice_oneway();
    }

    /**
     * Returns a proxy that is identical to this proxy, but uses batch oneway invocations.
     * @return A proxy that uses batch oneway invocations.
     **/
    @Override
    default LocatorRegistryPrx ice_batchOneway()
    {
        return (LocatorRegistryPrx)_ice_batchOneway();
    }

    /**
     * Returns a proxy that is identical to this proxy, but uses datagram invocations.
     * @return A proxy that uses datagram invocations.
     **/
    @Override
    default LocatorRegistryPrx ice_datagram()
    {
        return (LocatorRegistryPrx)_ice_datagram();
    }

    /**
     * Returns a proxy that is identical to this proxy, but uses batch datagram invocations.
     * @return A proxy that uses batch datagram invocations.
     **/
    @Override
    default LocatorRegistryPrx ice_batchDatagram()
    {
        return (LocatorRegistryPrx)_ice_batchDatagram();
    }

    /**
     * Returns a proxy that is identical to this proxy, except for compression.
     * @param co <code>true</code> enables compression for the new proxy; <code>false</code> disables compression.
     * @return A proxy with the specified compression setting.
     **/
    @Override
    default LocatorRegistryPrx ice_compress(boolean co)
    {
        return (LocatorRegistryPrx)_ice_compress(co);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for its connection timeout setting.
     * @param t The connection timeout for the proxy in milliseconds.
     * @return A proxy with the specified timeout.
     **/
    @Override
    default LocatorRegistryPrx ice_timeout(int t)
    {
        return (LocatorRegistryPrx)_ice_timeout(t);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for its connection ID.
     * @param connectionId The connection ID for the new proxy. An empty string removes the connection ID.
     * @return A proxy with the specified connection ID.
     **/
    @Override
    default LocatorRegistryPrx ice_connectionId(String connectionId)
    {
        return (LocatorRegistryPrx)_ice_connectionId(connectionId);
    }

    /**
     * Returns a proxy that is identical to this proxy, except it's a fixed proxy bound
     * the given connection.@param connection The fixed proxy connection.
     * @return A fixed proxy bound to the given connection.
     **/
    @Override
    default LocatorRegistryPrx ice_fixed(com.zeroc.Ice.Connection connection)
    {
        return (LocatorRegistryPrx)_ice_fixed(connection);
    }

    static String ice_staticId()
    {
        return "::Ice::LocatorRegistry";
    }
}
