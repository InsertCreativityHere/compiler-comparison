//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.7.9
//
// <auto-generated>
//
// Generated from file `Session.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

package com.zeroc.Glacier2;

/**
 * An administrative session control object, which is tied to the
 * lifecycle of a {@link Session}.
 *
 * @see Session
 **/
public interface SessionControlPrx extends com.zeroc.Ice.ObjectPrx
{
    /**
     * Access the object that manages the allowable categories
     * for object identities for this session.
     * @return A StringSet object.
     **/
    default StringSetPrx categories()
    {
        return categories(com.zeroc.Ice.ObjectPrx.noExplicitContext);
    }

    /**
     * Access the object that manages the allowable categories
     * for object identities for this session.
     * @param context The Context map to send with the invocation.
     * @return A StringSet object.
     **/
    default StringSetPrx categories(java.util.Map<String, String> context)
    {
        return _iceI_categoriesAsync(context, true).waitForResponse();
    }

    /**
     * Access the object that manages the allowable categories
     * for object identities for this session.
     * @return A StringSet object.
     **/
    default java.util.concurrent.CompletableFuture<StringSetPrx> categoriesAsync()
    {
        return _iceI_categoriesAsync(com.zeroc.Ice.ObjectPrx.noExplicitContext, false);
    }

    /**
     * Access the object that manages the allowable categories
     * for object identities for this session.
     * @param context The Context map to send with the invocation.
     * @return A StringSet object.
     **/
    default java.util.concurrent.CompletableFuture<StringSetPrx> categoriesAsync(java.util.Map<String, String> context)
    {
        return _iceI_categoriesAsync(context, false);
    }

    /**
     * @hidden
     * @param context -
     * @param sync -
     * @return -
     **/
    default com.zeroc.IceInternal.OutgoingAsync<StringSetPrx> _iceI_categoriesAsync(java.util.Map<String, String> context, boolean sync)
    {
        com.zeroc.IceInternal.OutgoingAsync<StringSetPrx> f = new com.zeroc.IceInternal.OutgoingAsync<>(this, "categories", null, sync, null);
        f.invoke(true, context, null, null, istr -> {
                     StringSetPrx ret;
                     ret = StringSetPrx.uncheckedCast(istr.readProxy());
                     return ret;
                 });
        return f;
    }

    /**
     * Access the object that manages the allowable adapter identities
     * for objects for this session.
     * @return A StringSet object.
     **/
    default StringSetPrx adapterIds()
    {
        return adapterIds(com.zeroc.Ice.ObjectPrx.noExplicitContext);
    }

    /**
     * Access the object that manages the allowable adapter identities
     * for objects for this session.
     * @param context The Context map to send with the invocation.
     * @return A StringSet object.
     **/
    default StringSetPrx adapterIds(java.util.Map<String, String> context)
    {
        return _iceI_adapterIdsAsync(context, true).waitForResponse();
    }

    /**
     * Access the object that manages the allowable adapter identities
     * for objects for this session.
     * @return A StringSet object.
     **/
    default java.util.concurrent.CompletableFuture<StringSetPrx> adapterIdsAsync()
    {
        return _iceI_adapterIdsAsync(com.zeroc.Ice.ObjectPrx.noExplicitContext, false);
    }

    /**
     * Access the object that manages the allowable adapter identities
     * for objects for this session.
     * @param context The Context map to send with the invocation.
     * @return A StringSet object.
     **/
    default java.util.concurrent.CompletableFuture<StringSetPrx> adapterIdsAsync(java.util.Map<String, String> context)
    {
        return _iceI_adapterIdsAsync(context, false);
    }

    /**
     * @hidden
     * @param context -
     * @param sync -
     * @return -
     **/
    default com.zeroc.IceInternal.OutgoingAsync<StringSetPrx> _iceI_adapterIdsAsync(java.util.Map<String, String> context, boolean sync)
    {
        com.zeroc.IceInternal.OutgoingAsync<StringSetPrx> f = new com.zeroc.IceInternal.OutgoingAsync<>(this, "adapterIds", null, sync, null);
        f.invoke(true, context, null, null, istr -> {
                     StringSetPrx ret;
                     ret = StringSetPrx.uncheckedCast(istr.readProxy());
                     return ret;
                 });
        return f;
    }

    /**
     * Access the object that manages the allowable object identities
     * for this session.
     * @return An IdentitySet object.
     **/
    default IdentitySetPrx identities()
    {
        return identities(com.zeroc.Ice.ObjectPrx.noExplicitContext);
    }

    /**
     * Access the object that manages the allowable object identities
     * for this session.
     * @param context The Context map to send with the invocation.
     * @return An IdentitySet object.
     **/
    default IdentitySetPrx identities(java.util.Map<String, String> context)
    {
        return _iceI_identitiesAsync(context, true).waitForResponse();
    }

    /**
     * Access the object that manages the allowable object identities
     * for this session.
     * @return An IdentitySet object.
     **/
    default java.util.concurrent.CompletableFuture<IdentitySetPrx> identitiesAsync()
    {
        return _iceI_identitiesAsync(com.zeroc.Ice.ObjectPrx.noExplicitContext, false);
    }

    /**
     * Access the object that manages the allowable object identities
     * for this session.
     * @param context The Context map to send with the invocation.
     * @return An IdentitySet object.
     **/
    default java.util.concurrent.CompletableFuture<IdentitySetPrx> identitiesAsync(java.util.Map<String, String> context)
    {
        return _iceI_identitiesAsync(context, false);
    }

    /**
     * @hidden
     * @param context -
     * @param sync -
     * @return -
     **/
    default com.zeroc.IceInternal.OutgoingAsync<IdentitySetPrx> _iceI_identitiesAsync(java.util.Map<String, String> context, boolean sync)
    {
        com.zeroc.IceInternal.OutgoingAsync<IdentitySetPrx> f = new com.zeroc.IceInternal.OutgoingAsync<>(this, "identities", null, sync, null);
        f.invoke(true, context, null, null, istr -> {
                     IdentitySetPrx ret;
                     ret = IdentitySetPrx.uncheckedCast(istr.readProxy());
                     return ret;
                 });
        return f;
    }

    /**
     * Get the session timeout.
     * @return The timeout.
     **/
    default int getSessionTimeout()
    {
        return getSessionTimeout(com.zeroc.Ice.ObjectPrx.noExplicitContext);
    }

    /**
     * Get the session timeout.
     * @param context The Context map to send with the invocation.
     * @return The timeout.
     **/
    default int getSessionTimeout(java.util.Map<String, String> context)
    {
        return _iceI_getSessionTimeoutAsync(context, true).waitForResponse();
    }

    /**
     * Get the session timeout.
     * @return The timeout.
     **/
    default java.util.concurrent.CompletableFuture<java.lang.Integer> getSessionTimeoutAsync()
    {
        return _iceI_getSessionTimeoutAsync(com.zeroc.Ice.ObjectPrx.noExplicitContext, false);
    }

    /**
     * Get the session timeout.
     * @param context The Context map to send with the invocation.
     * @return The timeout.
     **/
    default java.util.concurrent.CompletableFuture<java.lang.Integer> getSessionTimeoutAsync(java.util.Map<String, String> context)
    {
        return _iceI_getSessionTimeoutAsync(context, false);
    }

    /**
     * @hidden
     * @param context -
     * @param sync -
     * @return -
     **/
    default com.zeroc.IceInternal.OutgoingAsync<java.lang.Integer> _iceI_getSessionTimeoutAsync(java.util.Map<String, String> context, boolean sync)
    {
        com.zeroc.IceInternal.OutgoingAsync<java.lang.Integer> f = new com.zeroc.IceInternal.OutgoingAsync<>(this, "getSessionTimeout", com.zeroc.Ice.OperationMode.Idempotent, sync, null);
        f.invoke(true, context, null, null, istr -> {
                     int ret;
                     ret = istr.readInt();
                     return ret;
                 });
        return f;
    }

    /**
     * Destroy the associated session.
     **/
    default void destroy()
    {
        destroy(com.zeroc.Ice.ObjectPrx.noExplicitContext);
    }

    /**
     * Destroy the associated session.
     * @param context The Context map to send with the invocation.
     **/
    default void destroy(java.util.Map<String, String> context)
    {
        _iceI_destroyAsync(context, true).waitForResponse();
    }

    /**
     * Destroy the associated session.
     * @return A future that will be completed when the invocation completes.
     **/
    default java.util.concurrent.CompletableFuture<Void> destroyAsync()
    {
        return _iceI_destroyAsync(com.zeroc.Ice.ObjectPrx.noExplicitContext, false);
    }

    /**
     * Destroy the associated session.
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
    default com.zeroc.IceInternal.OutgoingAsync<Void> _iceI_destroyAsync(java.util.Map<String, String> context, boolean sync)
    {
        com.zeroc.IceInternal.OutgoingAsync<Void> f = new com.zeroc.IceInternal.OutgoingAsync<>(this, "destroy", null, sync, null);
        f.invoke(false, context, null, null, null);
        return f;
    }

    /**
     * Contacts the remote server to verify that the object implements this type.
     * Raises a local exception if a communication error occurs.
     * @param obj The untyped proxy.
     * @return A proxy for this type, or null if the object does not support this type.
     **/
    static SessionControlPrx checkedCast(com.zeroc.Ice.ObjectPrx obj)
    {
        return com.zeroc.Ice.ObjectPrx._checkedCast(obj, ice_staticId(), SessionControlPrx.class, _SessionControlPrxI.class);
    }

    /**
     * Contacts the remote server to verify that the object implements this type.
     * Raises a local exception if a communication error occurs.
     * @param obj The untyped proxy.
     * @param context The Context map to send with the invocation.
     * @return A proxy for this type, or null if the object does not support this type.
     **/
    static SessionControlPrx checkedCast(com.zeroc.Ice.ObjectPrx obj, java.util.Map<String, String> context)
    {
        return com.zeroc.Ice.ObjectPrx._checkedCast(obj, context, ice_staticId(), SessionControlPrx.class, _SessionControlPrxI.class);
    }

    /**
     * Contacts the remote server to verify that a facet of the object implements this type.
     * Raises a local exception if a communication error occurs.
     * @param obj The untyped proxy.
     * @param facet The name of the desired facet.
     * @return A proxy for this type, or null if the object does not support this type.
     **/
    static SessionControlPrx checkedCast(com.zeroc.Ice.ObjectPrx obj, String facet)
    {
        return com.zeroc.Ice.ObjectPrx._checkedCast(obj, facet, ice_staticId(), SessionControlPrx.class, _SessionControlPrxI.class);
    }

    /**
     * Contacts the remote server to verify that a facet of the object implements this type.
     * Raises a local exception if a communication error occurs.
     * @param obj The untyped proxy.
     * @param facet The name of the desired facet.
     * @param context The Context map to send with the invocation.
     * @return A proxy for this type, or null if the object does not support this type.
     **/
    static SessionControlPrx checkedCast(com.zeroc.Ice.ObjectPrx obj, String facet, java.util.Map<String, String> context)
    {
        return com.zeroc.Ice.ObjectPrx._checkedCast(obj, facet, context, ice_staticId(), SessionControlPrx.class, _SessionControlPrxI.class);
    }

    /**
     * Downcasts the given proxy to this type without contacting the remote server.
     * @param obj The untyped proxy.
     * @return A proxy for this type.
     **/
    static SessionControlPrx uncheckedCast(com.zeroc.Ice.ObjectPrx obj)
    {
        return com.zeroc.Ice.ObjectPrx._uncheckedCast(obj, SessionControlPrx.class, _SessionControlPrxI.class);
    }

    /**
     * Downcasts the given proxy to this type without contacting the remote server.
     * @param obj The untyped proxy.
     * @param facet The name of the desired facet.
     * @return A proxy for this type.
     **/
    static SessionControlPrx uncheckedCast(com.zeroc.Ice.ObjectPrx obj, String facet)
    {
        return com.zeroc.Ice.ObjectPrx._uncheckedCast(obj, facet, SessionControlPrx.class, _SessionControlPrxI.class);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for the per-proxy context.
     * @param newContext The context for the new proxy.
     * @return A proxy with the specified per-proxy context.
     **/
    @Override
    default SessionControlPrx ice_context(java.util.Map<String, String> newContext)
    {
        return (SessionControlPrx)_ice_context(newContext);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for the adapter ID.
     * @param newAdapterId The adapter ID for the new proxy.
     * @return A proxy with the specified adapter ID.
     **/
    @Override
    default SessionControlPrx ice_adapterId(String newAdapterId)
    {
        return (SessionControlPrx)_ice_adapterId(newAdapterId);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for the endpoints.
     * @param newEndpoints The endpoints for the new proxy.
     * @return A proxy with the specified endpoints.
     **/
    @Override
    default SessionControlPrx ice_endpoints(com.zeroc.Ice.Endpoint[] newEndpoints)
    {
        return (SessionControlPrx)_ice_endpoints(newEndpoints);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for the locator cache timeout.
     * @param newTimeout The new locator cache timeout (in seconds).
     * @return A proxy with the specified locator cache timeout.
     **/
    @Override
    default SessionControlPrx ice_locatorCacheTimeout(int newTimeout)
    {
        return (SessionControlPrx)_ice_locatorCacheTimeout(newTimeout);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for the invocation timeout.
     * @param newTimeout The new invocation timeout (in seconds).
     * @return A proxy with the specified invocation timeout.
     **/
    @Override
    default SessionControlPrx ice_invocationTimeout(int newTimeout)
    {
        return (SessionControlPrx)_ice_invocationTimeout(newTimeout);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for connection caching.
     * @param newCache <code>true</code> if the new proxy should cache connections; <code>false</code> otherwise.
     * @return A proxy with the specified caching policy.
     **/
    @Override
    default SessionControlPrx ice_connectionCached(boolean newCache)
    {
        return (SessionControlPrx)_ice_connectionCached(newCache);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for the endpoint selection policy.
     * @param newType The new endpoint selection policy.
     * @return A proxy with the specified endpoint selection policy.
     **/
    @Override
    default SessionControlPrx ice_endpointSelection(com.zeroc.Ice.EndpointSelectionType newType)
    {
        return (SessionControlPrx)_ice_endpointSelection(newType);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for how it selects endpoints.
     * @param b If <code>b</code> is <code>true</code>, only endpoints that use a secure transport are
     * used by the new proxy. If <code>b</code> is false, the returned proxy uses both secure and
     * insecure endpoints.
     * @return A proxy with the specified selection policy.
     **/
    @Override
    default SessionControlPrx ice_secure(boolean b)
    {
        return (SessionControlPrx)_ice_secure(b);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for the encoding used to marshal parameters.
     * @param e The encoding version to use to marshal request parameters.
     * @return A proxy with the specified encoding version.
     **/
    @Override
    default SessionControlPrx ice_encodingVersion(com.zeroc.Ice.EncodingVersion e)
    {
        return (SessionControlPrx)_ice_encodingVersion(e);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for its endpoint selection policy.
     * @param b If <code>b</code> is <code>true</code>, the new proxy will use secure endpoints for invocations
     * and only use insecure endpoints if an invocation cannot be made via secure endpoints. If <code>b</code> is
     * <code>false</code>, the proxy prefers insecure endpoints to secure ones.
     * @return A proxy with the specified selection policy.
     **/
    @Override
    default SessionControlPrx ice_preferSecure(boolean b)
    {
        return (SessionControlPrx)_ice_preferSecure(b);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for the router.
     * @param router The router for the new proxy.
     * @return A proxy with the specified router.
     **/
    @Override
    default SessionControlPrx ice_router(com.zeroc.Ice.RouterPrx router)
    {
        return (SessionControlPrx)_ice_router(router);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for the locator.
     * @param locator The locator for the new proxy.
     * @return A proxy with the specified locator.
     **/
    @Override
    default SessionControlPrx ice_locator(com.zeroc.Ice.LocatorPrx locator)
    {
        return (SessionControlPrx)_ice_locator(locator);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for collocation optimization.
     * @param b <code>true</code> if the new proxy enables collocation optimization; <code>false</code> otherwise.
     * @return A proxy with the specified collocation optimization.
     **/
    @Override
    default SessionControlPrx ice_collocationOptimized(boolean b)
    {
        return (SessionControlPrx)_ice_collocationOptimized(b);
    }

    /**
     * Returns a proxy that is identical to this proxy, but uses twoway invocations.
     * @return A proxy that uses twoway invocations.
     **/
    @Override
    default SessionControlPrx ice_twoway()
    {
        return (SessionControlPrx)_ice_twoway();
    }

    /**
     * Returns a proxy that is identical to this proxy, but uses oneway invocations.
     * @return A proxy that uses oneway invocations.
     **/
    @Override
    default SessionControlPrx ice_oneway()
    {
        return (SessionControlPrx)_ice_oneway();
    }

    /**
     * Returns a proxy that is identical to this proxy, but uses batch oneway invocations.
     * @return A proxy that uses batch oneway invocations.
     **/
    @Override
    default SessionControlPrx ice_batchOneway()
    {
        return (SessionControlPrx)_ice_batchOneway();
    }

    /**
     * Returns a proxy that is identical to this proxy, but uses datagram invocations.
     * @return A proxy that uses datagram invocations.
     **/
    @Override
    default SessionControlPrx ice_datagram()
    {
        return (SessionControlPrx)_ice_datagram();
    }

    /**
     * Returns a proxy that is identical to this proxy, but uses batch datagram invocations.
     * @return A proxy that uses batch datagram invocations.
     **/
    @Override
    default SessionControlPrx ice_batchDatagram()
    {
        return (SessionControlPrx)_ice_batchDatagram();
    }

    /**
     * Returns a proxy that is identical to this proxy, except for compression.
     * @param co <code>true</code> enables compression for the new proxy; <code>false</code> disables compression.
     * @return A proxy with the specified compression setting.
     **/
    @Override
    default SessionControlPrx ice_compress(boolean co)
    {
        return (SessionControlPrx)_ice_compress(co);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for its connection timeout setting.
     * @param t The connection timeout for the proxy in milliseconds.
     * @return A proxy with the specified timeout.
     **/
    @Override
    default SessionControlPrx ice_timeout(int t)
    {
        return (SessionControlPrx)_ice_timeout(t);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for its connection ID.
     * @param connectionId The connection ID for the new proxy. An empty string removes the connection ID.
     * @return A proxy with the specified connection ID.
     **/
    @Override
    default SessionControlPrx ice_connectionId(String connectionId)
    {
        return (SessionControlPrx)_ice_connectionId(connectionId);
    }

    /**
     * Returns a proxy that is identical to this proxy, except it's a fixed proxy bound
     * the given connection.@param connection The fixed proxy connection.
     * @return A fixed proxy bound to the given connection.
     **/
    @Override
    default SessionControlPrx ice_fixed(com.zeroc.Ice.Connection connection)
    {
        return (SessionControlPrx)_ice_fixed(connection);
    }

    static String ice_staticId()
    {
        return "::Glacier2::SessionControl";
    }
}
