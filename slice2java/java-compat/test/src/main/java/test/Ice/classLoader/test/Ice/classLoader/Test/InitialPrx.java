//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.7.9
//
// <auto-generated>
//
// Generated from file `Test.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

package test.Ice.classLoader.Test;

public interface InitialPrx extends com.zeroc.Ice.ObjectPrx
{
    default ConcreteClass getConcreteClass()
    {
        return getConcreteClass(com.zeroc.Ice.ObjectPrx.noExplicitContext);
    }

    default ConcreteClass getConcreteClass(java.util.Map<String, String> context)
    {
        return _iceI_getConcreteClassAsync(context, true).waitForResponse();
    }

    default java.util.concurrent.CompletableFuture<ConcreteClass> getConcreteClassAsync()
    {
        return _iceI_getConcreteClassAsync(com.zeroc.Ice.ObjectPrx.noExplicitContext, false);
    }

    default java.util.concurrent.CompletableFuture<ConcreteClass> getConcreteClassAsync(java.util.Map<String, String> context)
    {
        return _iceI_getConcreteClassAsync(context, false);
    }

    /**
     * @hidden
     * @param context -
     * @param sync -
     * @return -
     **/
    default com.zeroc.IceInternal.OutgoingAsync<ConcreteClass> _iceI_getConcreteClassAsync(java.util.Map<String, String> context, boolean sync)
    {
        com.zeroc.IceInternal.OutgoingAsync<ConcreteClass> f = new com.zeroc.IceInternal.OutgoingAsync<>(this, "getConcreteClass", null, sync, null);
        f.invoke(true, context, null, null, istr -> {
                     final com.zeroc.IceInternal.Holder<ConcreteClass> ret = new com.zeroc.IceInternal.Holder<>();
                     istr.readValue(v -> ret.value = v, ConcreteClass.class);
                     istr.readPendingValues();
                     return ret.value;
                 });
        return f;
    }

    default AbstractClass getAbstractClass()
    {
        return getAbstractClass(com.zeroc.Ice.ObjectPrx.noExplicitContext);
    }

    default AbstractClass getAbstractClass(java.util.Map<String, String> context)
    {
        return _iceI_getAbstractClassAsync(context, true).waitForResponse();
    }

    default java.util.concurrent.CompletableFuture<AbstractClass> getAbstractClassAsync()
    {
        return _iceI_getAbstractClassAsync(com.zeroc.Ice.ObjectPrx.noExplicitContext, false);
    }

    default java.util.concurrent.CompletableFuture<AbstractClass> getAbstractClassAsync(java.util.Map<String, String> context)
    {
        return _iceI_getAbstractClassAsync(context, false);
    }

    /**
     * @hidden
     * @param context -
     * @param sync -
     * @return -
     **/
    default com.zeroc.IceInternal.OutgoingAsync<AbstractClass> _iceI_getAbstractClassAsync(java.util.Map<String, String> context, boolean sync)
    {
        com.zeroc.IceInternal.OutgoingAsync<AbstractClass> f = new com.zeroc.IceInternal.OutgoingAsync<>(this, "getAbstractClass", null, sync, null);
        f.invoke(true, context, null, null, istr -> {
                     final com.zeroc.IceInternal.Holder<AbstractClass> ret = new com.zeroc.IceInternal.Holder<>();
                     istr.readValue(v -> ret.value = v, AbstractClass.class);
                     istr.readPendingValues();
                     return ret.value;
                 });
        return f;
    }

    default void throwException()
        throws E
    {
        throwException(com.zeroc.Ice.ObjectPrx.noExplicitContext);
    }

    default void throwException(java.util.Map<String, String> context)
        throws E
    {
        try
        {
            _iceI_throwExceptionAsync(context, true).waitForResponseOrUserEx();
        }
        catch(E ex)
        {
            throw ex;
        }
        catch(com.zeroc.Ice.UserException ex)
        {
            throw new com.zeroc.Ice.UnknownUserException(ex.ice_id(), ex);
        }
    }

    default java.util.concurrent.CompletableFuture<Void> throwExceptionAsync()
    {
        return _iceI_throwExceptionAsync(com.zeroc.Ice.ObjectPrx.noExplicitContext, false);
    }

    default java.util.concurrent.CompletableFuture<Void> throwExceptionAsync(java.util.Map<String, String> context)
    {
        return _iceI_throwExceptionAsync(context, false);
    }

    /**
     * @hidden
     * @param context -
     * @param sync -
     * @return -
     **/
    default com.zeroc.IceInternal.OutgoingAsync<Void> _iceI_throwExceptionAsync(java.util.Map<String, String> context, boolean sync)
    {
        com.zeroc.IceInternal.OutgoingAsync<Void> f = new com.zeroc.IceInternal.OutgoingAsync<>(this, "throwException", null, sync, _iceE_throwException);
        f.invoke(true, context, null, null, null);
        return f;
    }

    /** @hidden */
    static final Class<?>[] _iceE_throwException =
    {
        E.class
    };

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
    static InitialPrx checkedCast(com.zeroc.Ice.ObjectPrx obj)
    {
        return com.zeroc.Ice.ObjectPrx._checkedCast(obj, ice_staticId(), InitialPrx.class, _InitialPrxI.class);
    }

    /**
     * Contacts the remote server to verify that the object implements this type.
     * Raises a local exception if a communication error occurs.
     * @param obj The untyped proxy.
     * @param context The Context map to send with the invocation.
     * @return A proxy for this type, or null if the object does not support this type.
     **/
    static InitialPrx checkedCast(com.zeroc.Ice.ObjectPrx obj, java.util.Map<String, String> context)
    {
        return com.zeroc.Ice.ObjectPrx._checkedCast(obj, context, ice_staticId(), InitialPrx.class, _InitialPrxI.class);
    }

    /**
     * Contacts the remote server to verify that a facet of the object implements this type.
     * Raises a local exception if a communication error occurs.
     * @param obj The untyped proxy.
     * @param facet The name of the desired facet.
     * @return A proxy for this type, or null if the object does not support this type.
     **/
    static InitialPrx checkedCast(com.zeroc.Ice.ObjectPrx obj, String facet)
    {
        return com.zeroc.Ice.ObjectPrx._checkedCast(obj, facet, ice_staticId(), InitialPrx.class, _InitialPrxI.class);
    }

    /**
     * Contacts the remote server to verify that a facet of the object implements this type.
     * Raises a local exception if a communication error occurs.
     * @param obj The untyped proxy.
     * @param facet The name of the desired facet.
     * @param context The Context map to send with the invocation.
     * @return A proxy for this type, or null if the object does not support this type.
     **/
    static InitialPrx checkedCast(com.zeroc.Ice.ObjectPrx obj, String facet, java.util.Map<String, String> context)
    {
        return com.zeroc.Ice.ObjectPrx._checkedCast(obj, facet, context, ice_staticId(), InitialPrx.class, _InitialPrxI.class);
    }

    /**
     * Downcasts the given proxy to this type without contacting the remote server.
     * @param obj The untyped proxy.
     * @return A proxy for this type.
     **/
    static InitialPrx uncheckedCast(com.zeroc.Ice.ObjectPrx obj)
    {
        return com.zeroc.Ice.ObjectPrx._uncheckedCast(obj, InitialPrx.class, _InitialPrxI.class);
    }

    /**
     * Downcasts the given proxy to this type without contacting the remote server.
     * @param obj The untyped proxy.
     * @param facet The name of the desired facet.
     * @return A proxy for this type.
     **/
    static InitialPrx uncheckedCast(com.zeroc.Ice.ObjectPrx obj, String facet)
    {
        return com.zeroc.Ice.ObjectPrx._uncheckedCast(obj, facet, InitialPrx.class, _InitialPrxI.class);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for the per-proxy context.
     * @param newContext The context for the new proxy.
     * @return A proxy with the specified per-proxy context.
     **/
    @Override
    default InitialPrx ice_context(java.util.Map<String, String> newContext)
    {
        return (InitialPrx)_ice_context(newContext);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for the adapter ID.
     * @param newAdapterId The adapter ID for the new proxy.
     * @return A proxy with the specified adapter ID.
     **/
    @Override
    default InitialPrx ice_adapterId(String newAdapterId)
    {
        return (InitialPrx)_ice_adapterId(newAdapterId);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for the endpoints.
     * @param newEndpoints The endpoints for the new proxy.
     * @return A proxy with the specified endpoints.
     **/
    @Override
    default InitialPrx ice_endpoints(com.zeroc.Ice.Endpoint[] newEndpoints)
    {
        return (InitialPrx)_ice_endpoints(newEndpoints);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for the locator cache timeout.
     * @param newTimeout The new locator cache timeout (in seconds).
     * @return A proxy with the specified locator cache timeout.
     **/
    @Override
    default InitialPrx ice_locatorCacheTimeout(int newTimeout)
    {
        return (InitialPrx)_ice_locatorCacheTimeout(newTimeout);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for the invocation timeout.
     * @param newTimeout The new invocation timeout (in seconds).
     * @return A proxy with the specified invocation timeout.
     **/
    @Override
    default InitialPrx ice_invocationTimeout(int newTimeout)
    {
        return (InitialPrx)_ice_invocationTimeout(newTimeout);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for connection caching.
     * @param newCache <code>true</code> if the new proxy should cache connections; <code>false</code> otherwise.
     * @return A proxy with the specified caching policy.
     **/
    @Override
    default InitialPrx ice_connectionCached(boolean newCache)
    {
        return (InitialPrx)_ice_connectionCached(newCache);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for the endpoint selection policy.
     * @param newType The new endpoint selection policy.
     * @return A proxy with the specified endpoint selection policy.
     **/
    @Override
    default InitialPrx ice_endpointSelection(com.zeroc.Ice.EndpointSelectionType newType)
    {
        return (InitialPrx)_ice_endpointSelection(newType);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for how it selects endpoints.
     * @param b If <code>b</code> is <code>true</code>, only endpoints that use a secure transport are
     * used by the new proxy. If <code>b</code> is false, the returned proxy uses both secure and
     * insecure endpoints.
     * @return A proxy with the specified selection policy.
     **/
    @Override
    default InitialPrx ice_secure(boolean b)
    {
        return (InitialPrx)_ice_secure(b);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for the encoding used to marshal parameters.
     * @param e The encoding version to use to marshal request parameters.
     * @return A proxy with the specified encoding version.
     **/
    @Override
    default InitialPrx ice_encodingVersion(com.zeroc.Ice.EncodingVersion e)
    {
        return (InitialPrx)_ice_encodingVersion(e);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for its endpoint selection policy.
     * @param b If <code>b</code> is <code>true</code>, the new proxy will use secure endpoints for invocations
     * and only use insecure endpoints if an invocation cannot be made via secure endpoints. If <code>b</code> is
     * <code>false</code>, the proxy prefers insecure endpoints to secure ones.
     * @return A proxy with the specified selection policy.
     **/
    @Override
    default InitialPrx ice_preferSecure(boolean b)
    {
        return (InitialPrx)_ice_preferSecure(b);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for the router.
     * @param router The router for the new proxy.
     * @return A proxy with the specified router.
     **/
    @Override
    default InitialPrx ice_router(com.zeroc.Ice.RouterPrx router)
    {
        return (InitialPrx)_ice_router(router);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for the locator.
     * @param locator The locator for the new proxy.
     * @return A proxy with the specified locator.
     **/
    @Override
    default InitialPrx ice_locator(com.zeroc.Ice.LocatorPrx locator)
    {
        return (InitialPrx)_ice_locator(locator);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for collocation optimization.
     * @param b <code>true</code> if the new proxy enables collocation optimization; <code>false</code> otherwise.
     * @return A proxy with the specified collocation optimization.
     **/
    @Override
    default InitialPrx ice_collocationOptimized(boolean b)
    {
        return (InitialPrx)_ice_collocationOptimized(b);
    }

    /**
     * Returns a proxy that is identical to this proxy, but uses twoway invocations.
     * @return A proxy that uses twoway invocations.
     **/
    @Override
    default InitialPrx ice_twoway()
    {
        return (InitialPrx)_ice_twoway();
    }

    /**
     * Returns a proxy that is identical to this proxy, but uses oneway invocations.
     * @return A proxy that uses oneway invocations.
     **/
    @Override
    default InitialPrx ice_oneway()
    {
        return (InitialPrx)_ice_oneway();
    }

    /**
     * Returns a proxy that is identical to this proxy, but uses batch oneway invocations.
     * @return A proxy that uses batch oneway invocations.
     **/
    @Override
    default InitialPrx ice_batchOneway()
    {
        return (InitialPrx)_ice_batchOneway();
    }

    /**
     * Returns a proxy that is identical to this proxy, but uses datagram invocations.
     * @return A proxy that uses datagram invocations.
     **/
    @Override
    default InitialPrx ice_datagram()
    {
        return (InitialPrx)_ice_datagram();
    }

    /**
     * Returns a proxy that is identical to this proxy, but uses batch datagram invocations.
     * @return A proxy that uses batch datagram invocations.
     **/
    @Override
    default InitialPrx ice_batchDatagram()
    {
        return (InitialPrx)_ice_batchDatagram();
    }

    /**
     * Returns a proxy that is identical to this proxy, except for compression.
     * @param co <code>true</code> enables compression for the new proxy; <code>false</code> disables compression.
     * @return A proxy with the specified compression setting.
     **/
    @Override
    default InitialPrx ice_compress(boolean co)
    {
        return (InitialPrx)_ice_compress(co);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for its connection timeout setting.
     * @param t The connection timeout for the proxy in milliseconds.
     * @return A proxy with the specified timeout.
     **/
    @Override
    default InitialPrx ice_timeout(int t)
    {
        return (InitialPrx)_ice_timeout(t);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for its connection ID.
     * @param connectionId The connection ID for the new proxy. An empty string removes the connection ID.
     * @return A proxy with the specified connection ID.
     **/
    @Override
    default InitialPrx ice_connectionId(String connectionId)
    {
        return (InitialPrx)_ice_connectionId(connectionId);
    }

    /**
     * Returns a proxy that is identical to this proxy, except it's a fixed proxy bound
     * the given connection.@param connection The fixed proxy connection.
     * @return A fixed proxy bound to the given connection.
     **/
    @Override
    default InitialPrx ice_fixed(com.zeroc.Ice.Connection connection)
    {
        return (InitialPrx)_ice_fixed(connection);
    }

    static String ice_staticId()
    {
        return "::Test::Initial";
    }
}
