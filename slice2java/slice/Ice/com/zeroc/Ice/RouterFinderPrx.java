//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `Router.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

package com.zeroc.Ice;

/**
 * This interface should be implemented by services implementing the Ice::Router interface. It should be advertised
 * through an Ice object with the identity `Ice/RouterFinder'. This allows clients to retrieve the router proxy
 * with just the endpoint information of the service.
 **/
public interface RouterFinderPrx extends ObjectPrx
{
    /**
     * Get the router proxy implemented by the process hosting this finder object. The proxy might point to several
     * replicas. This proxy is never null.
     * @return The router proxy.
     **/
    default RouterPrx getRouter()
    {
        return getRouter(com.zeroc.Ice.ObjectPrx.noExplicitContext);
    }

    /**
     * Get the router proxy implemented by the process hosting this finder object. The proxy might point to several
     * replicas. This proxy is never null.
     * @param context The Context map to send with the invocation.
     * @return The router proxy.
     **/
    default RouterPrx getRouter(java.util.Map<String, String> context)
    {
        return _iceI_getRouterAsync(context, true).waitForResponse();
    }

    /**
     * Get the router proxy implemented by the process hosting this finder object. The proxy might point to several
     * replicas. This proxy is never null.
     * @return The router proxy.
     **/
    default java.util.concurrent.CompletableFuture<RouterPrx> getRouterAsync()
    {
        return _iceI_getRouterAsync(com.zeroc.Ice.ObjectPrx.noExplicitContext, false);
    }

    /**
     * Get the router proxy implemented by the process hosting this finder object. The proxy might point to several
     * replicas. This proxy is never null.
     * @param context The Context map to send with the invocation.
     * @return The router proxy.
     **/
    default java.util.concurrent.CompletableFuture<RouterPrx> getRouterAsync(java.util.Map<String, String> context)
    {
        return _iceI_getRouterAsync(context, false);
    }

    /**
     * @hidden
     * @param context -
     * @param sync -
     * @return -
     **/
    default com.zeroc.IceInternal.OutgoingAsync<RouterPrx> _iceI_getRouterAsync(java.util.Map<String, String> context, boolean sync)
    {
        com.zeroc.IceInternal.OutgoingAsync<RouterPrx> f = new com.zeroc.IceInternal.OutgoingAsync<>(this, "getRouter", null, sync, null);
        f.invoke(true, context, null, null, istr -> {
                     RouterPrx ret;
                     ret = RouterPrx.uncheckedCast(istr.readProxy());
                     return ret;
                 });
        return f;
    }

    /**
     * Contacts the remote server to verify that the object implements this type.
     * Raises a local exception if a communication error occurs.
     * @param obj The untyped proxy.
     * @return A proxy for this type, or null if the object does not support this type.
     **/
    static RouterFinderPrx checkedCast(ObjectPrx obj)
    {
        return ObjectPrx._checkedCast(obj, ice_staticId(), RouterFinderPrx.class, _RouterFinderPrxI.class);
    }

    /**
     * Contacts the remote server to verify that the object implements this type.
     * Raises a local exception if a communication error occurs.
     * @param obj The untyped proxy.
     * @param context The Context map to send with the invocation.
     * @return A proxy for this type, or null if the object does not support this type.
     **/
    static RouterFinderPrx checkedCast(ObjectPrx obj, java.util.Map<String, String> context)
    {
        return ObjectPrx._checkedCast(obj, context, ice_staticId(), RouterFinderPrx.class, _RouterFinderPrxI.class);
    }

    /**
     * Contacts the remote server to verify that a facet of the object implements this type.
     * Raises a local exception if a communication error occurs.
     * @param obj The untyped proxy.
     * @param facet The name of the desired facet.
     * @return A proxy for this type, or null if the object does not support this type.
     **/
    static RouterFinderPrx checkedCast(ObjectPrx obj, String facet)
    {
        return ObjectPrx._checkedCast(obj, facet, ice_staticId(), RouterFinderPrx.class, _RouterFinderPrxI.class);
    }

    /**
     * Contacts the remote server to verify that a facet of the object implements this type.
     * Raises a local exception if a communication error occurs.
     * @param obj The untyped proxy.
     * @param facet The name of the desired facet.
     * @param context The Context map to send with the invocation.
     * @return A proxy for this type, or null if the object does not support this type.
     **/
    static RouterFinderPrx checkedCast(ObjectPrx obj, String facet, java.util.Map<String, String> context)
    {
        return ObjectPrx._checkedCast(obj, facet, context, ice_staticId(), RouterFinderPrx.class, _RouterFinderPrxI.class);
    }

    /**
     * Downcasts the given proxy to this type without contacting the remote server.
     * @param obj The untyped proxy.
     * @return A proxy for this type.
     **/
    static RouterFinderPrx uncheckedCast(ObjectPrx obj)
    {
        return ObjectPrx._uncheckedCast(obj, RouterFinderPrx.class, _RouterFinderPrxI.class);
    }

    /**
     * Downcasts the given proxy to this type without contacting the remote server.
     * @param obj The untyped proxy.
     * @param facet The name of the desired facet.
     * @return A proxy for this type.
     **/
    static RouterFinderPrx uncheckedCast(ObjectPrx obj, String facet)
    {
        return ObjectPrx._uncheckedCast(obj, facet, RouterFinderPrx.class, _RouterFinderPrxI.class);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for the per-proxy context.
     * @param newContext The context for the new proxy.
     * @return A proxy with the specified per-proxy context.
     **/
    @Override
    default RouterFinderPrx ice_context(java.util.Map<String, String> newContext)
    {
        return (RouterFinderPrx)_ice_context(newContext);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for the adapter ID.
     * @param newAdapterId The adapter ID for the new proxy.
     * @return A proxy with the specified adapter ID.
     **/
    @Override
    default RouterFinderPrx ice_adapterId(String newAdapterId)
    {
        return (RouterFinderPrx)_ice_adapterId(newAdapterId);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for the endpoints.
     * @param newEndpoints The endpoints for the new proxy.
     * @return A proxy with the specified endpoints.
     **/
    @Override
    default RouterFinderPrx ice_endpoints(Endpoint[] newEndpoints)
    {
        return (RouterFinderPrx)_ice_endpoints(newEndpoints);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for the locator cache timeout.
     * @param newTimeout The new locator cache timeout (in seconds).
     * @return A proxy with the specified locator cache timeout.
     **/
    @Override
    default RouterFinderPrx ice_locatorCacheTimeout(int newTimeout)
    {
        return (RouterFinderPrx)_ice_locatorCacheTimeout(newTimeout);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for the invocation timeout.
     * @param newTimeout The new invocation timeout (in seconds).
     * @return A proxy with the specified invocation timeout.
     **/
    @Override
    default RouterFinderPrx ice_invocationTimeout(int newTimeout)
    {
        return (RouterFinderPrx)_ice_invocationTimeout(newTimeout);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for connection caching.
     * @param newCache <code>true</code> if the new proxy should cache connections; <code>false</code> otherwise.
     * @return A proxy with the specified caching policy.
     **/
    @Override
    default RouterFinderPrx ice_connectionCached(boolean newCache)
    {
        return (RouterFinderPrx)_ice_connectionCached(newCache);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for the endpoint selection policy.
     * @param newType The new endpoint selection policy.
     * @return A proxy with the specified endpoint selection policy.
     **/
    @Override
    default RouterFinderPrx ice_endpointSelection(EndpointSelectionType newType)
    {
        return (RouterFinderPrx)_ice_endpointSelection(newType);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for how it selects endpoints.
     * @param b If <code>b</code> is <code>true</code>, only endpoints that use a secure transport are
     * used by the new proxy. If <code>b</code> is false, the returned proxy uses both secure and
     * insecure endpoints.
     * @return A proxy with the specified selection policy.
     **/
    @Override
    default RouterFinderPrx ice_secure(boolean b)
    {
        return (RouterFinderPrx)_ice_secure(b);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for the encoding used to marshal parameters.
     * @param e The encoding version to use to marshal request parameters.
     * @return A proxy with the specified encoding version.
     **/
    @Override
    default RouterFinderPrx ice_encodingVersion(EncodingVersion e)
    {
        return (RouterFinderPrx)_ice_encodingVersion(e);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for its endpoint selection policy.
     * @param b If <code>b</code> is <code>true</code>, the new proxy will use secure endpoints for invocations
     * and only use insecure endpoints if an invocation cannot be made via secure endpoints. If <code>b</code> is
     * <code>false</code>, the proxy prefers insecure endpoints to secure ones.
     * @return A proxy with the specified selection policy.
     **/
    @Override
    default RouterFinderPrx ice_preferSecure(boolean b)
    {
        return (RouterFinderPrx)_ice_preferSecure(b);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for the router.
     * @param router The router for the new proxy.
     * @return A proxy with the specified router.
     **/
    @Override
    default RouterFinderPrx ice_router(RouterPrx router)
    {
        return (RouterFinderPrx)_ice_router(router);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for the locator.
     * @param locator The locator for the new proxy.
     * @return A proxy with the specified locator.
     **/
    @Override
    default RouterFinderPrx ice_locator(LocatorPrx locator)
    {
        return (RouterFinderPrx)_ice_locator(locator);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for collocation optimization.
     * @param b <code>true</code> if the new proxy enables collocation optimization; <code>false</code> otherwise.
     * @return A proxy with the specified collocation optimization.
     **/
    @Override
    default RouterFinderPrx ice_collocationOptimized(boolean b)
    {
        return (RouterFinderPrx)_ice_collocationOptimized(b);
    }

    /**
     * Returns a proxy that is identical to this proxy, but uses twoway invocations.
     * @return A proxy that uses twoway invocations.
     **/
    @Override
    default RouterFinderPrx ice_twoway()
    {
        return (RouterFinderPrx)_ice_twoway();
    }

    /**
     * Returns a proxy that is identical to this proxy, but uses oneway invocations.
     * @return A proxy that uses oneway invocations.
     **/
    @Override
    default RouterFinderPrx ice_oneway()
    {
        return (RouterFinderPrx)_ice_oneway();
    }

    /**
     * Returns a proxy that is identical to this proxy, but uses batch oneway invocations.
     * @return A proxy that uses batch oneway invocations.
     **/
    @Override
    default RouterFinderPrx ice_batchOneway()
    {
        return (RouterFinderPrx)_ice_batchOneway();
    }

    /**
     * Returns a proxy that is identical to this proxy, but uses datagram invocations.
     * @return A proxy that uses datagram invocations.
     **/
    @Override
    default RouterFinderPrx ice_datagram()
    {
        return (RouterFinderPrx)_ice_datagram();
    }

    /**
     * Returns a proxy that is identical to this proxy, but uses batch datagram invocations.
     * @return A proxy that uses batch datagram invocations.
     **/
    @Override
    default RouterFinderPrx ice_batchDatagram()
    {
        return (RouterFinderPrx)_ice_batchDatagram();
    }

    /**
     * Returns a proxy that is identical to this proxy, except for compression.
     * @param co <code>true</code> enables compression for the new proxy; <code>false</code> disables compression.
     * @return A proxy with the specified compression setting.
     **/
    @Override
    default RouterFinderPrx ice_compress(boolean co)
    {
        return (RouterFinderPrx)_ice_compress(co);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for its connection timeout setting.
     * @param t The connection timeout for the proxy in milliseconds.
     * @return A proxy with the specified timeout.
     **/
    @Override
    default RouterFinderPrx ice_timeout(int t)
    {
        return (RouterFinderPrx)_ice_timeout(t);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for its connection ID.
     * @param connectionId The connection ID for the new proxy. An empty string removes the connection ID.
     * @return A proxy with the specified connection ID.
     **/
    @Override
    default RouterFinderPrx ice_connectionId(String connectionId)
    {
        return (RouterFinderPrx)_ice_connectionId(connectionId);
    }

    /**
     * Returns a proxy that is identical to this proxy, except it's a fixed proxy bound
     * the given connection.@param connection The fixed proxy connection.
     * @return A fixed proxy bound to the given connection.
     **/
    @Override
    default RouterFinderPrx ice_fixed(com.zeroc.Ice.Connection connection)
    {
        return (RouterFinderPrx)_ice_fixed(connection);
    }

    static String ice_staticId()
    {
        return "::Ice::RouterFinder";
    }
}
