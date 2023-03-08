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

package Test;

public interface RetryPrx extends com.zeroc.Ice.ObjectPrx
{
    default void op(boolean kill)
    {
        op(kill, com.zeroc.Ice.ObjectPrx.noExplicitContext);
    }

    default void op(boolean kill, java.util.Map<String, String> context)
    {
        _iceI_opAsync(kill, context, true).waitForResponse();
    }

    default java.util.concurrent.CompletableFuture<Void> opAsync(boolean kill)
    {
        return _iceI_opAsync(kill, com.zeroc.Ice.ObjectPrx.noExplicitContext, false);
    }

    default java.util.concurrent.CompletableFuture<Void> opAsync(boolean kill, java.util.Map<String, String> context)
    {
        return _iceI_opAsync(kill, context, false);
    }

    /**
     * @hidden
     * @param iceP_kill -
     * @param context -
     * @param sync -
     * @return -
     **/
    default com.zeroc.IceInternal.OutgoingAsync<Void> _iceI_opAsync(boolean iceP_kill, java.util.Map<String, String> context, boolean sync)
    {
        com.zeroc.IceInternal.OutgoingAsync<Void> f = new com.zeroc.IceInternal.OutgoingAsync<>(this, "op", null, sync, null);
        f.invoke(false, context, null, ostr -> {
                     ostr.writeBool(iceP_kill);
                 }, null);
        return f;
    }

    default int opIdempotent(int c)
    {
        return opIdempotent(c, com.zeroc.Ice.ObjectPrx.noExplicitContext);
    }

    default int opIdempotent(int c, java.util.Map<String, String> context)
    {
        return _iceI_opIdempotentAsync(c, context, true).waitForResponse();
    }

    default java.util.concurrent.CompletableFuture<java.lang.Integer> opIdempotentAsync(int c)
    {
        return _iceI_opIdempotentAsync(c, com.zeroc.Ice.ObjectPrx.noExplicitContext, false);
    }

    default java.util.concurrent.CompletableFuture<java.lang.Integer> opIdempotentAsync(int c, java.util.Map<String, String> context)
    {
        return _iceI_opIdempotentAsync(c, context, false);
    }

    /**
     * @hidden
     * @param iceP_c -
     * @param context -
     * @param sync -
     * @return -
     **/
    default com.zeroc.IceInternal.OutgoingAsync<java.lang.Integer> _iceI_opIdempotentAsync(int iceP_c, java.util.Map<String, String> context, boolean sync)
    {
        com.zeroc.IceInternal.OutgoingAsync<java.lang.Integer> f = new com.zeroc.IceInternal.OutgoingAsync<>(this, "opIdempotent", com.zeroc.Ice.OperationMode.Idempotent, sync, null);
        f.invoke(true, context, null, ostr -> {
                     ostr.writeInt(iceP_c);
                 }, istr -> {
                     int ret;
                     ret = istr.readInt();
                     return ret;
                 });
        return f;
    }

    default void opNotIdempotent()
    {
        opNotIdempotent(com.zeroc.Ice.ObjectPrx.noExplicitContext);
    }

    default void opNotIdempotent(java.util.Map<String, String> context)
    {
        _iceI_opNotIdempotentAsync(context, true).waitForResponse();
    }

    default java.util.concurrent.CompletableFuture<Void> opNotIdempotentAsync()
    {
        return _iceI_opNotIdempotentAsync(com.zeroc.Ice.ObjectPrx.noExplicitContext, false);
    }

    default java.util.concurrent.CompletableFuture<Void> opNotIdempotentAsync(java.util.Map<String, String> context)
    {
        return _iceI_opNotIdempotentAsync(context, false);
    }

    /**
     * @hidden
     * @param context -
     * @param sync -
     * @return -
     **/
    default com.zeroc.IceInternal.OutgoingAsync<Void> _iceI_opNotIdempotentAsync(java.util.Map<String, String> context, boolean sync)
    {
        com.zeroc.IceInternal.OutgoingAsync<Void> f = new com.zeroc.IceInternal.OutgoingAsync<>(this, "opNotIdempotent", null, sync, null);
        f.invoke(false, context, null, null, null);
        return f;
    }

    default void opSystemException()
    {
        opSystemException(com.zeroc.Ice.ObjectPrx.noExplicitContext);
    }

    default void opSystemException(java.util.Map<String, String> context)
    {
        _iceI_opSystemExceptionAsync(context, true).waitForResponse();
    }

    default java.util.concurrent.CompletableFuture<Void> opSystemExceptionAsync()
    {
        return _iceI_opSystemExceptionAsync(com.zeroc.Ice.ObjectPrx.noExplicitContext, false);
    }

    default java.util.concurrent.CompletableFuture<Void> opSystemExceptionAsync(java.util.Map<String, String> context)
    {
        return _iceI_opSystemExceptionAsync(context, false);
    }

    /**
     * @hidden
     * @param context -
     * @param sync -
     * @return -
     **/
    default com.zeroc.IceInternal.OutgoingAsync<Void> _iceI_opSystemExceptionAsync(java.util.Map<String, String> context, boolean sync)
    {
        com.zeroc.IceInternal.OutgoingAsync<Void> f = new com.zeroc.IceInternal.OutgoingAsync<>(this, "opSystemException", null, sync, null);
        f.invoke(false, context, null, null, null);
        return f;
    }

    default void sleep(int delay)
    {
        sleep(delay, com.zeroc.Ice.ObjectPrx.noExplicitContext);
    }

    default void sleep(int delay, java.util.Map<String, String> context)
    {
        _iceI_sleepAsync(delay, context, true).waitForResponse();
    }

    default java.util.concurrent.CompletableFuture<Void> sleepAsync(int delay)
    {
        return _iceI_sleepAsync(delay, com.zeroc.Ice.ObjectPrx.noExplicitContext, false);
    }

    default java.util.concurrent.CompletableFuture<Void> sleepAsync(int delay, java.util.Map<String, String> context)
    {
        return _iceI_sleepAsync(delay, context, false);
    }

    /**
     * @hidden
     * @param iceP_delay -
     * @param context -
     * @param sync -
     * @return -
     **/
    default com.zeroc.IceInternal.OutgoingAsync<Void> _iceI_sleepAsync(int iceP_delay, java.util.Map<String, String> context, boolean sync)
    {
        com.zeroc.IceInternal.OutgoingAsync<Void> f = new com.zeroc.IceInternal.OutgoingAsync<>(this, "sleep", com.zeroc.Ice.OperationMode.Idempotent, sync, null);
        f.invoke(false, context, null, ostr -> {
                     ostr.writeInt(iceP_delay);
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
        com.zeroc.IceInternal.OutgoingAsync<Void> f = new com.zeroc.IceInternal.OutgoingAsync<>(this, "shutdown", com.zeroc.Ice.OperationMode.Idempotent, sync, null);
        f.invoke(false, context, null, null, null);
        return f;
    }

    /**
     * Contacts the remote server to verify that the object implements this type.
     * Raises a local exception if a communication error occurs.
     * @param obj The untyped proxy.
     * @return A proxy for this type, or null if the object does not support this type.
     **/
    static RetryPrx checkedCast(com.zeroc.Ice.ObjectPrx obj)
    {
        return com.zeroc.Ice.ObjectPrx._checkedCast(obj, ice_staticId(), RetryPrx.class, _RetryPrxI.class);
    }

    /**
     * Contacts the remote server to verify that the object implements this type.
     * Raises a local exception if a communication error occurs.
     * @param obj The untyped proxy.
     * @param context The Context map to send with the invocation.
     * @return A proxy for this type, or null if the object does not support this type.
     **/
    static RetryPrx checkedCast(com.zeroc.Ice.ObjectPrx obj, java.util.Map<String, String> context)
    {
        return com.zeroc.Ice.ObjectPrx._checkedCast(obj, context, ice_staticId(), RetryPrx.class, _RetryPrxI.class);
    }

    /**
     * Contacts the remote server to verify that a facet of the object implements this type.
     * Raises a local exception if a communication error occurs.
     * @param obj The untyped proxy.
     * @param facet The name of the desired facet.
     * @return A proxy for this type, or null if the object does not support this type.
     **/
    static RetryPrx checkedCast(com.zeroc.Ice.ObjectPrx obj, String facet)
    {
        return com.zeroc.Ice.ObjectPrx._checkedCast(obj, facet, ice_staticId(), RetryPrx.class, _RetryPrxI.class);
    }

    /**
     * Contacts the remote server to verify that a facet of the object implements this type.
     * Raises a local exception if a communication error occurs.
     * @param obj The untyped proxy.
     * @param facet The name of the desired facet.
     * @param context The Context map to send with the invocation.
     * @return A proxy for this type, or null if the object does not support this type.
     **/
    static RetryPrx checkedCast(com.zeroc.Ice.ObjectPrx obj, String facet, java.util.Map<String, String> context)
    {
        return com.zeroc.Ice.ObjectPrx._checkedCast(obj, facet, context, ice_staticId(), RetryPrx.class, _RetryPrxI.class);
    }

    /**
     * Downcasts the given proxy to this type without contacting the remote server.
     * @param obj The untyped proxy.
     * @return A proxy for this type.
     **/
    static RetryPrx uncheckedCast(com.zeroc.Ice.ObjectPrx obj)
    {
        return com.zeroc.Ice.ObjectPrx._uncheckedCast(obj, RetryPrx.class, _RetryPrxI.class);
    }

    /**
     * Downcasts the given proxy to this type without contacting the remote server.
     * @param obj The untyped proxy.
     * @param facet The name of the desired facet.
     * @return A proxy for this type.
     **/
    static RetryPrx uncheckedCast(com.zeroc.Ice.ObjectPrx obj, String facet)
    {
        return com.zeroc.Ice.ObjectPrx._uncheckedCast(obj, facet, RetryPrx.class, _RetryPrxI.class);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for the per-proxy context.
     * @param newContext The context for the new proxy.
     * @return A proxy with the specified per-proxy context.
     **/
    @Override
    default RetryPrx ice_context(java.util.Map<String, String> newContext)
    {
        return (RetryPrx)_ice_context(newContext);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for the adapter ID.
     * @param newAdapterId The adapter ID for the new proxy.
     * @return A proxy with the specified adapter ID.
     **/
    @Override
    default RetryPrx ice_adapterId(String newAdapterId)
    {
        return (RetryPrx)_ice_adapterId(newAdapterId);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for the endpoints.
     * @param newEndpoints The endpoints for the new proxy.
     * @return A proxy with the specified endpoints.
     **/
    @Override
    default RetryPrx ice_endpoints(com.zeroc.Ice.Endpoint[] newEndpoints)
    {
        return (RetryPrx)_ice_endpoints(newEndpoints);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for the locator cache timeout.
     * @param newTimeout The new locator cache timeout (in seconds).
     * @return A proxy with the specified locator cache timeout.
     **/
    @Override
    default RetryPrx ice_locatorCacheTimeout(int newTimeout)
    {
        return (RetryPrx)_ice_locatorCacheTimeout(newTimeout);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for the invocation timeout.
     * @param newTimeout The new invocation timeout (in seconds).
     * @return A proxy with the specified invocation timeout.
     **/
    @Override
    default RetryPrx ice_invocationTimeout(int newTimeout)
    {
        return (RetryPrx)_ice_invocationTimeout(newTimeout);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for connection caching.
     * @param newCache <code>true</code> if the new proxy should cache connections; <code>false</code> otherwise.
     * @return A proxy with the specified caching policy.
     **/
    @Override
    default RetryPrx ice_connectionCached(boolean newCache)
    {
        return (RetryPrx)_ice_connectionCached(newCache);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for the endpoint selection policy.
     * @param newType The new endpoint selection policy.
     * @return A proxy with the specified endpoint selection policy.
     **/
    @Override
    default RetryPrx ice_endpointSelection(com.zeroc.Ice.EndpointSelectionType newType)
    {
        return (RetryPrx)_ice_endpointSelection(newType);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for how it selects endpoints.
     * @param b If <code>b</code> is <code>true</code>, only endpoints that use a secure transport are
     * used by the new proxy. If <code>b</code> is false, the returned proxy uses both secure and
     * insecure endpoints.
     * @return A proxy with the specified selection policy.
     **/
    @Override
    default RetryPrx ice_secure(boolean b)
    {
        return (RetryPrx)_ice_secure(b);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for the encoding used to marshal parameters.
     * @param e The encoding version to use to marshal request parameters.
     * @return A proxy with the specified encoding version.
     **/
    @Override
    default RetryPrx ice_encodingVersion(com.zeroc.Ice.EncodingVersion e)
    {
        return (RetryPrx)_ice_encodingVersion(e);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for its endpoint selection policy.
     * @param b If <code>b</code> is <code>true</code>, the new proxy will use secure endpoints for invocations
     * and only use insecure endpoints if an invocation cannot be made via secure endpoints. If <code>b</code> is
     * <code>false</code>, the proxy prefers insecure endpoints to secure ones.
     * @return A proxy with the specified selection policy.
     **/
    @Override
    default RetryPrx ice_preferSecure(boolean b)
    {
        return (RetryPrx)_ice_preferSecure(b);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for the router.
     * @param router The router for the new proxy.
     * @return A proxy with the specified router.
     **/
    @Override
    default RetryPrx ice_router(com.zeroc.Ice.RouterPrx router)
    {
        return (RetryPrx)_ice_router(router);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for the locator.
     * @param locator The locator for the new proxy.
     * @return A proxy with the specified locator.
     **/
    @Override
    default RetryPrx ice_locator(com.zeroc.Ice.LocatorPrx locator)
    {
        return (RetryPrx)_ice_locator(locator);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for collocation optimization.
     * @param b <code>true</code> if the new proxy enables collocation optimization; <code>false</code> otherwise.
     * @return A proxy with the specified collocation optimization.
     **/
    @Override
    default RetryPrx ice_collocationOptimized(boolean b)
    {
        return (RetryPrx)_ice_collocationOptimized(b);
    }

    /**
     * Returns a proxy that is identical to this proxy, but uses twoway invocations.
     * @return A proxy that uses twoway invocations.
     **/
    @Override
    default RetryPrx ice_twoway()
    {
        return (RetryPrx)_ice_twoway();
    }

    /**
     * Returns a proxy that is identical to this proxy, but uses oneway invocations.
     * @return A proxy that uses oneway invocations.
     **/
    @Override
    default RetryPrx ice_oneway()
    {
        return (RetryPrx)_ice_oneway();
    }

    /**
     * Returns a proxy that is identical to this proxy, but uses batch oneway invocations.
     * @return A proxy that uses batch oneway invocations.
     **/
    @Override
    default RetryPrx ice_batchOneway()
    {
        return (RetryPrx)_ice_batchOneway();
    }

    /**
     * Returns a proxy that is identical to this proxy, but uses datagram invocations.
     * @return A proxy that uses datagram invocations.
     **/
    @Override
    default RetryPrx ice_datagram()
    {
        return (RetryPrx)_ice_datagram();
    }

    /**
     * Returns a proxy that is identical to this proxy, but uses batch datagram invocations.
     * @return A proxy that uses batch datagram invocations.
     **/
    @Override
    default RetryPrx ice_batchDatagram()
    {
        return (RetryPrx)_ice_batchDatagram();
    }

    /**
     * Returns a proxy that is identical to this proxy, except for compression.
     * @param co <code>true</code> enables compression for the new proxy; <code>false</code> disables compression.
     * @return A proxy with the specified compression setting.
     **/
    @Override
    default RetryPrx ice_compress(boolean co)
    {
        return (RetryPrx)_ice_compress(co);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for its connection timeout setting.
     * @param t The connection timeout for the proxy in milliseconds.
     * @return A proxy with the specified timeout.
     **/
    @Override
    default RetryPrx ice_timeout(int t)
    {
        return (RetryPrx)_ice_timeout(t);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for its connection ID.
     * @param connectionId The connection ID for the new proxy. An empty string removes the connection ID.
     * @return A proxy with the specified connection ID.
     **/
    @Override
    default RetryPrx ice_connectionId(String connectionId)
    {
        return (RetryPrx)_ice_connectionId(connectionId);
    }

    /**
     * Returns a proxy that is identical to this proxy, except it's a fixed proxy bound
     * the given connection.@param connection The fixed proxy connection.
     * @return A fixed proxy bound to the given connection.
     **/
    @Override
    default RetryPrx ice_fixed(com.zeroc.Ice.Connection connection)
    {
        return (RetryPrx)_ice_fixed(connection);
    }

    static String ice_staticId()
    {
        return "::Test::Retry";
    }
}
