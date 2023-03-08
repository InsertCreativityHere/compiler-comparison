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

package test.Ice.hold.Test;

public interface HoldPrx extends com.zeroc.Ice.ObjectPrx
{
    default void putOnHold(int seconds)
    {
        putOnHold(seconds, com.zeroc.Ice.ObjectPrx.noExplicitContext);
    }

    default void putOnHold(int seconds, java.util.Map<String, String> context)
    {
        _iceI_putOnHoldAsync(seconds, context, true).waitForResponse();
    }

    default java.util.concurrent.CompletableFuture<Void> putOnHoldAsync(int seconds)
    {
        return _iceI_putOnHoldAsync(seconds, com.zeroc.Ice.ObjectPrx.noExplicitContext, false);
    }

    default java.util.concurrent.CompletableFuture<Void> putOnHoldAsync(int seconds, java.util.Map<String, String> context)
    {
        return _iceI_putOnHoldAsync(seconds, context, false);
    }

    /**
     * @hidden
     * @param iceP_seconds -
     * @param context -
     * @param sync -
     * @return -
     **/
    default com.zeroc.IceInternal.OutgoingAsync<Void> _iceI_putOnHoldAsync(int iceP_seconds, java.util.Map<String, String> context, boolean sync)
    {
        com.zeroc.IceInternal.OutgoingAsync<Void> f = new com.zeroc.IceInternal.OutgoingAsync<>(this, "putOnHold", null, sync, null);
        f.invoke(false, context, null, ostr -> {
                     ostr.writeInt(iceP_seconds);
                 }, null);
        return f;
    }

    default void waitForHold()
    {
        waitForHold(com.zeroc.Ice.ObjectPrx.noExplicitContext);
    }

    default void waitForHold(java.util.Map<String, String> context)
    {
        _iceI_waitForHoldAsync(context, true).waitForResponse();
    }

    default java.util.concurrent.CompletableFuture<Void> waitForHoldAsync()
    {
        return _iceI_waitForHoldAsync(com.zeroc.Ice.ObjectPrx.noExplicitContext, false);
    }

    default java.util.concurrent.CompletableFuture<Void> waitForHoldAsync(java.util.Map<String, String> context)
    {
        return _iceI_waitForHoldAsync(context, false);
    }

    /**
     * @hidden
     * @param context -
     * @param sync -
     * @return -
     **/
    default com.zeroc.IceInternal.OutgoingAsync<Void> _iceI_waitForHoldAsync(java.util.Map<String, String> context, boolean sync)
    {
        com.zeroc.IceInternal.OutgoingAsync<Void> f = new com.zeroc.IceInternal.OutgoingAsync<>(this, "waitForHold", null, sync, null);
        f.invoke(false, context, null, null, null);
        return f;
    }

    default int set(int value, int delay)
    {
        return set(value, delay, com.zeroc.Ice.ObjectPrx.noExplicitContext);
    }

    default int set(int value, int delay, java.util.Map<String, String> context)
    {
        return _iceI_setAsync(value, delay, context, true).waitForResponse();
    }

    default java.util.concurrent.CompletableFuture<java.lang.Integer> setAsync(int value, int delay)
    {
        return _iceI_setAsync(value, delay, com.zeroc.Ice.ObjectPrx.noExplicitContext, false);
    }

    default java.util.concurrent.CompletableFuture<java.lang.Integer> setAsync(int value, int delay, java.util.Map<String, String> context)
    {
        return _iceI_setAsync(value, delay, context, false);
    }

    /**
     * @hidden
     * @param iceP_value -
     * @param iceP_delay -
     * @param context -
     * @param sync -
     * @return -
     **/
    default com.zeroc.IceInternal.OutgoingAsync<java.lang.Integer> _iceI_setAsync(int iceP_value, int iceP_delay, java.util.Map<String, String> context, boolean sync)
    {
        com.zeroc.IceInternal.OutgoingAsync<java.lang.Integer> f = new com.zeroc.IceInternal.OutgoingAsync<>(this, "set", null, sync, null);
        f.invoke(true, context, null, ostr -> {
                     ostr.writeInt(iceP_value);
                     ostr.writeInt(iceP_delay);
                 }, istr -> {
                     int ret;
                     ret = istr.readInt();
                     return ret;
                 });
        return f;
    }

    default void setOneway(int value, int expected)
    {
        setOneway(value, expected, com.zeroc.Ice.ObjectPrx.noExplicitContext);
    }

    default void setOneway(int value, int expected, java.util.Map<String, String> context)
    {
        _iceI_setOnewayAsync(value, expected, context, true).waitForResponse();
    }

    default java.util.concurrent.CompletableFuture<Void> setOnewayAsync(int value, int expected)
    {
        return _iceI_setOnewayAsync(value, expected, com.zeroc.Ice.ObjectPrx.noExplicitContext, false);
    }

    default java.util.concurrent.CompletableFuture<Void> setOnewayAsync(int value, int expected, java.util.Map<String, String> context)
    {
        return _iceI_setOnewayAsync(value, expected, context, false);
    }

    /**
     * @hidden
     * @param iceP_value -
     * @param iceP_expected -
     * @param context -
     * @param sync -
     * @return -
     **/
    default com.zeroc.IceInternal.OutgoingAsync<Void> _iceI_setOnewayAsync(int iceP_value, int iceP_expected, java.util.Map<String, String> context, boolean sync)
    {
        com.zeroc.IceInternal.OutgoingAsync<Void> f = new com.zeroc.IceInternal.OutgoingAsync<>(this, "setOneway", null, sync, null);
        f.invoke(false, context, null, ostr -> {
                     ostr.writeInt(iceP_value);
                     ostr.writeInt(iceP_expected);
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
    static HoldPrx checkedCast(com.zeroc.Ice.ObjectPrx obj)
    {
        return com.zeroc.Ice.ObjectPrx._checkedCast(obj, ice_staticId(), HoldPrx.class, _HoldPrxI.class);
    }

    /**
     * Contacts the remote server to verify that the object implements this type.
     * Raises a local exception if a communication error occurs.
     * @param obj The untyped proxy.
     * @param context The Context map to send with the invocation.
     * @return A proxy for this type, or null if the object does not support this type.
     **/
    static HoldPrx checkedCast(com.zeroc.Ice.ObjectPrx obj, java.util.Map<String, String> context)
    {
        return com.zeroc.Ice.ObjectPrx._checkedCast(obj, context, ice_staticId(), HoldPrx.class, _HoldPrxI.class);
    }

    /**
     * Contacts the remote server to verify that a facet of the object implements this type.
     * Raises a local exception if a communication error occurs.
     * @param obj The untyped proxy.
     * @param facet The name of the desired facet.
     * @return A proxy for this type, or null if the object does not support this type.
     **/
    static HoldPrx checkedCast(com.zeroc.Ice.ObjectPrx obj, String facet)
    {
        return com.zeroc.Ice.ObjectPrx._checkedCast(obj, facet, ice_staticId(), HoldPrx.class, _HoldPrxI.class);
    }

    /**
     * Contacts the remote server to verify that a facet of the object implements this type.
     * Raises a local exception if a communication error occurs.
     * @param obj The untyped proxy.
     * @param facet The name of the desired facet.
     * @param context The Context map to send with the invocation.
     * @return A proxy for this type, or null if the object does not support this type.
     **/
    static HoldPrx checkedCast(com.zeroc.Ice.ObjectPrx obj, String facet, java.util.Map<String, String> context)
    {
        return com.zeroc.Ice.ObjectPrx._checkedCast(obj, facet, context, ice_staticId(), HoldPrx.class, _HoldPrxI.class);
    }

    /**
     * Downcasts the given proxy to this type without contacting the remote server.
     * @param obj The untyped proxy.
     * @return A proxy for this type.
     **/
    static HoldPrx uncheckedCast(com.zeroc.Ice.ObjectPrx obj)
    {
        return com.zeroc.Ice.ObjectPrx._uncheckedCast(obj, HoldPrx.class, _HoldPrxI.class);
    }

    /**
     * Downcasts the given proxy to this type without contacting the remote server.
     * @param obj The untyped proxy.
     * @param facet The name of the desired facet.
     * @return A proxy for this type.
     **/
    static HoldPrx uncheckedCast(com.zeroc.Ice.ObjectPrx obj, String facet)
    {
        return com.zeroc.Ice.ObjectPrx._uncheckedCast(obj, facet, HoldPrx.class, _HoldPrxI.class);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for the per-proxy context.
     * @param newContext The context for the new proxy.
     * @return A proxy with the specified per-proxy context.
     **/
    @Override
    default HoldPrx ice_context(java.util.Map<String, String> newContext)
    {
        return (HoldPrx)_ice_context(newContext);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for the adapter ID.
     * @param newAdapterId The adapter ID for the new proxy.
     * @return A proxy with the specified adapter ID.
     **/
    @Override
    default HoldPrx ice_adapterId(String newAdapterId)
    {
        return (HoldPrx)_ice_adapterId(newAdapterId);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for the endpoints.
     * @param newEndpoints The endpoints for the new proxy.
     * @return A proxy with the specified endpoints.
     **/
    @Override
    default HoldPrx ice_endpoints(com.zeroc.Ice.Endpoint[] newEndpoints)
    {
        return (HoldPrx)_ice_endpoints(newEndpoints);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for the locator cache timeout.
     * @param newTimeout The new locator cache timeout (in seconds).
     * @return A proxy with the specified locator cache timeout.
     **/
    @Override
    default HoldPrx ice_locatorCacheTimeout(int newTimeout)
    {
        return (HoldPrx)_ice_locatorCacheTimeout(newTimeout);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for the invocation timeout.
     * @param newTimeout The new invocation timeout (in seconds).
     * @return A proxy with the specified invocation timeout.
     **/
    @Override
    default HoldPrx ice_invocationTimeout(int newTimeout)
    {
        return (HoldPrx)_ice_invocationTimeout(newTimeout);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for connection caching.
     * @param newCache <code>true</code> if the new proxy should cache connections; <code>false</code> otherwise.
     * @return A proxy with the specified caching policy.
     **/
    @Override
    default HoldPrx ice_connectionCached(boolean newCache)
    {
        return (HoldPrx)_ice_connectionCached(newCache);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for the endpoint selection policy.
     * @param newType The new endpoint selection policy.
     * @return A proxy with the specified endpoint selection policy.
     **/
    @Override
    default HoldPrx ice_endpointSelection(com.zeroc.Ice.EndpointSelectionType newType)
    {
        return (HoldPrx)_ice_endpointSelection(newType);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for how it selects endpoints.
     * @param b If <code>b</code> is <code>true</code>, only endpoints that use a secure transport are
     * used by the new proxy. If <code>b</code> is false, the returned proxy uses both secure and
     * insecure endpoints.
     * @return A proxy with the specified selection policy.
     **/
    @Override
    default HoldPrx ice_secure(boolean b)
    {
        return (HoldPrx)_ice_secure(b);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for the encoding used to marshal parameters.
     * @param e The encoding version to use to marshal request parameters.
     * @return A proxy with the specified encoding version.
     **/
    @Override
    default HoldPrx ice_encodingVersion(com.zeroc.Ice.EncodingVersion e)
    {
        return (HoldPrx)_ice_encodingVersion(e);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for its endpoint selection policy.
     * @param b If <code>b</code> is <code>true</code>, the new proxy will use secure endpoints for invocations
     * and only use insecure endpoints if an invocation cannot be made via secure endpoints. If <code>b</code> is
     * <code>false</code>, the proxy prefers insecure endpoints to secure ones.
     * @return A proxy with the specified selection policy.
     **/
    @Override
    default HoldPrx ice_preferSecure(boolean b)
    {
        return (HoldPrx)_ice_preferSecure(b);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for the router.
     * @param router The router for the new proxy.
     * @return A proxy with the specified router.
     **/
    @Override
    default HoldPrx ice_router(com.zeroc.Ice.RouterPrx router)
    {
        return (HoldPrx)_ice_router(router);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for the locator.
     * @param locator The locator for the new proxy.
     * @return A proxy with the specified locator.
     **/
    @Override
    default HoldPrx ice_locator(com.zeroc.Ice.LocatorPrx locator)
    {
        return (HoldPrx)_ice_locator(locator);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for collocation optimization.
     * @param b <code>true</code> if the new proxy enables collocation optimization; <code>false</code> otherwise.
     * @return A proxy with the specified collocation optimization.
     **/
    @Override
    default HoldPrx ice_collocationOptimized(boolean b)
    {
        return (HoldPrx)_ice_collocationOptimized(b);
    }

    /**
     * Returns a proxy that is identical to this proxy, but uses twoway invocations.
     * @return A proxy that uses twoway invocations.
     **/
    @Override
    default HoldPrx ice_twoway()
    {
        return (HoldPrx)_ice_twoway();
    }

    /**
     * Returns a proxy that is identical to this proxy, but uses oneway invocations.
     * @return A proxy that uses oneway invocations.
     **/
    @Override
    default HoldPrx ice_oneway()
    {
        return (HoldPrx)_ice_oneway();
    }

    /**
     * Returns a proxy that is identical to this proxy, but uses batch oneway invocations.
     * @return A proxy that uses batch oneway invocations.
     **/
    @Override
    default HoldPrx ice_batchOneway()
    {
        return (HoldPrx)_ice_batchOneway();
    }

    /**
     * Returns a proxy that is identical to this proxy, but uses datagram invocations.
     * @return A proxy that uses datagram invocations.
     **/
    @Override
    default HoldPrx ice_datagram()
    {
        return (HoldPrx)_ice_datagram();
    }

    /**
     * Returns a proxy that is identical to this proxy, but uses batch datagram invocations.
     * @return A proxy that uses batch datagram invocations.
     **/
    @Override
    default HoldPrx ice_batchDatagram()
    {
        return (HoldPrx)_ice_batchDatagram();
    }

    /**
     * Returns a proxy that is identical to this proxy, except for compression.
     * @param co <code>true</code> enables compression for the new proxy; <code>false</code> disables compression.
     * @return A proxy with the specified compression setting.
     **/
    @Override
    default HoldPrx ice_compress(boolean co)
    {
        return (HoldPrx)_ice_compress(co);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for its connection timeout setting.
     * @param t The connection timeout for the proxy in milliseconds.
     * @return A proxy with the specified timeout.
     **/
    @Override
    default HoldPrx ice_timeout(int t)
    {
        return (HoldPrx)_ice_timeout(t);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for its connection ID.
     * @param connectionId The connection ID for the new proxy. An empty string removes the connection ID.
     * @return A proxy with the specified connection ID.
     **/
    @Override
    default HoldPrx ice_connectionId(String connectionId)
    {
        return (HoldPrx)_ice_connectionId(connectionId);
    }

    /**
     * Returns a proxy that is identical to this proxy, except it's a fixed proxy bound
     * the given connection.@param connection The fixed proxy connection.
     * @return A fixed proxy bound to the given connection.
     **/
    @Override
    default HoldPrx ice_fixed(com.zeroc.Ice.Connection connection)
    {
        return (HoldPrx)_ice_fixed(connection);
    }

    static String ice_staticId()
    {
        return "::Test::Hold";
    }
}
