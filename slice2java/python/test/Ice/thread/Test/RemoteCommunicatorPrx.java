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

public interface RemoteCommunicatorPrx extends com.zeroc.Ice.ObjectPrx
{
    default TestIntfPrx getObject()
    {
        return getObject(com.zeroc.Ice.ObjectPrx.noExplicitContext);
    }

    default TestIntfPrx getObject(java.util.Map<String, String> context)
    {
        return _iceI_getObjectAsync(context, true).waitForResponse();
    }

    default java.util.concurrent.CompletableFuture<TestIntfPrx> getObjectAsync()
    {
        return _iceI_getObjectAsync(com.zeroc.Ice.ObjectPrx.noExplicitContext, false);
    }

    default java.util.concurrent.CompletableFuture<TestIntfPrx> getObjectAsync(java.util.Map<String, String> context)
    {
        return _iceI_getObjectAsync(context, false);
    }

    /**
     * @hidden
     * @param context -
     * @param sync -
     * @return -
     **/
    default com.zeroc.IceInternal.OutgoingAsync<TestIntfPrx> _iceI_getObjectAsync(java.util.Map<String, String> context, boolean sync)
    {
        com.zeroc.IceInternal.OutgoingAsync<TestIntfPrx> f = new com.zeroc.IceInternal.OutgoingAsync<>(this, "getObject", null, sync, null);
        f.invoke(true, context, null, null, istr -> {
                     TestIntfPrx ret;
                     ret = TestIntfPrx.uncheckedCast(istr.readProxy());
                     return ret;
                 });
        return f;
    }

    default int getThreadHookStartCount()
    {
        return getThreadHookStartCount(com.zeroc.Ice.ObjectPrx.noExplicitContext);
    }

    default int getThreadHookStartCount(java.util.Map<String, String> context)
    {
        return _iceI_getThreadHookStartCountAsync(context, true).waitForResponse();
    }

    default java.util.concurrent.CompletableFuture<java.lang.Integer> getThreadHookStartCountAsync()
    {
        return _iceI_getThreadHookStartCountAsync(com.zeroc.Ice.ObjectPrx.noExplicitContext, false);
    }

    default java.util.concurrent.CompletableFuture<java.lang.Integer> getThreadHookStartCountAsync(java.util.Map<String, String> context)
    {
        return _iceI_getThreadHookStartCountAsync(context, false);
    }

    /**
     * @hidden
     * @param context -
     * @param sync -
     * @return -
     **/
    default com.zeroc.IceInternal.OutgoingAsync<java.lang.Integer> _iceI_getThreadHookStartCountAsync(java.util.Map<String, String> context, boolean sync)
    {
        com.zeroc.IceInternal.OutgoingAsync<java.lang.Integer> f = new com.zeroc.IceInternal.OutgoingAsync<>(this, "getThreadHookStartCount", null, sync, null);
        f.invoke(true, context, null, null, istr -> {
                     int ret;
                     ret = istr.readInt();
                     return ret;
                 });
        return f;
    }

    default int getThreadHookStopCount()
    {
        return getThreadHookStopCount(com.zeroc.Ice.ObjectPrx.noExplicitContext);
    }

    default int getThreadHookStopCount(java.util.Map<String, String> context)
    {
        return _iceI_getThreadHookStopCountAsync(context, true).waitForResponse();
    }

    default java.util.concurrent.CompletableFuture<java.lang.Integer> getThreadHookStopCountAsync()
    {
        return _iceI_getThreadHookStopCountAsync(com.zeroc.Ice.ObjectPrx.noExplicitContext, false);
    }

    default java.util.concurrent.CompletableFuture<java.lang.Integer> getThreadHookStopCountAsync(java.util.Map<String, String> context)
    {
        return _iceI_getThreadHookStopCountAsync(context, false);
    }

    /**
     * @hidden
     * @param context -
     * @param sync -
     * @return -
     **/
    default com.zeroc.IceInternal.OutgoingAsync<java.lang.Integer> _iceI_getThreadHookStopCountAsync(java.util.Map<String, String> context, boolean sync)
    {
        com.zeroc.IceInternal.OutgoingAsync<java.lang.Integer> f = new com.zeroc.IceInternal.OutgoingAsync<>(this, "getThreadHookStopCount", null, sync, null);
        f.invoke(true, context, null, null, istr -> {
                     int ret;
                     ret = istr.readInt();
                     return ret;
                 });
        return f;
    }

    default int getThreadStartCount()
    {
        return getThreadStartCount(com.zeroc.Ice.ObjectPrx.noExplicitContext);
    }

    default int getThreadStartCount(java.util.Map<String, String> context)
    {
        return _iceI_getThreadStartCountAsync(context, true).waitForResponse();
    }

    default java.util.concurrent.CompletableFuture<java.lang.Integer> getThreadStartCountAsync()
    {
        return _iceI_getThreadStartCountAsync(com.zeroc.Ice.ObjectPrx.noExplicitContext, false);
    }

    default java.util.concurrent.CompletableFuture<java.lang.Integer> getThreadStartCountAsync(java.util.Map<String, String> context)
    {
        return _iceI_getThreadStartCountAsync(context, false);
    }

    /**
     * @hidden
     * @param context -
     * @param sync -
     * @return -
     **/
    default com.zeroc.IceInternal.OutgoingAsync<java.lang.Integer> _iceI_getThreadStartCountAsync(java.util.Map<String, String> context, boolean sync)
    {
        com.zeroc.IceInternal.OutgoingAsync<java.lang.Integer> f = new com.zeroc.IceInternal.OutgoingAsync<>(this, "getThreadStartCount", null, sync, null);
        f.invoke(true, context, null, null, istr -> {
                     int ret;
                     ret = istr.readInt();
                     return ret;
                 });
        return f;
    }

    default int getThreadStopCount()
    {
        return getThreadStopCount(com.zeroc.Ice.ObjectPrx.noExplicitContext);
    }

    default int getThreadStopCount(java.util.Map<String, String> context)
    {
        return _iceI_getThreadStopCountAsync(context, true).waitForResponse();
    }

    default java.util.concurrent.CompletableFuture<java.lang.Integer> getThreadStopCountAsync()
    {
        return _iceI_getThreadStopCountAsync(com.zeroc.Ice.ObjectPrx.noExplicitContext, false);
    }

    default java.util.concurrent.CompletableFuture<java.lang.Integer> getThreadStopCountAsync(java.util.Map<String, String> context)
    {
        return _iceI_getThreadStopCountAsync(context, false);
    }

    /**
     * @hidden
     * @param context -
     * @param sync -
     * @return -
     **/
    default com.zeroc.IceInternal.OutgoingAsync<java.lang.Integer> _iceI_getThreadStopCountAsync(java.util.Map<String, String> context, boolean sync)
    {
        com.zeroc.IceInternal.OutgoingAsync<java.lang.Integer> f = new com.zeroc.IceInternal.OutgoingAsync<>(this, "getThreadStopCount", null, sync, null);
        f.invoke(true, context, null, null, istr -> {
                     int ret;
                     ret = istr.readInt();
                     return ret;
                 });
        return f;
    }

    default void destroy()
    {
        destroy(com.zeroc.Ice.ObjectPrx.noExplicitContext);
    }

    default void destroy(java.util.Map<String, String> context)
    {
        _iceI_destroyAsync(context, true).waitForResponse();
    }

    default java.util.concurrent.CompletableFuture<Void> destroyAsync()
    {
        return _iceI_destroyAsync(com.zeroc.Ice.ObjectPrx.noExplicitContext, false);
    }

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
    static RemoteCommunicatorPrx checkedCast(com.zeroc.Ice.ObjectPrx obj)
    {
        return com.zeroc.Ice.ObjectPrx._checkedCast(obj, ice_staticId(), RemoteCommunicatorPrx.class, _RemoteCommunicatorPrxI.class);
    }

    /**
     * Contacts the remote server to verify that the object implements this type.
     * Raises a local exception if a communication error occurs.
     * @param obj The untyped proxy.
     * @param context The Context map to send with the invocation.
     * @return A proxy for this type, or null if the object does not support this type.
     **/
    static RemoteCommunicatorPrx checkedCast(com.zeroc.Ice.ObjectPrx obj, java.util.Map<String, String> context)
    {
        return com.zeroc.Ice.ObjectPrx._checkedCast(obj, context, ice_staticId(), RemoteCommunicatorPrx.class, _RemoteCommunicatorPrxI.class);
    }

    /**
     * Contacts the remote server to verify that a facet of the object implements this type.
     * Raises a local exception if a communication error occurs.
     * @param obj The untyped proxy.
     * @param facet The name of the desired facet.
     * @return A proxy for this type, or null if the object does not support this type.
     **/
    static RemoteCommunicatorPrx checkedCast(com.zeroc.Ice.ObjectPrx obj, String facet)
    {
        return com.zeroc.Ice.ObjectPrx._checkedCast(obj, facet, ice_staticId(), RemoteCommunicatorPrx.class, _RemoteCommunicatorPrxI.class);
    }

    /**
     * Contacts the remote server to verify that a facet of the object implements this type.
     * Raises a local exception if a communication error occurs.
     * @param obj The untyped proxy.
     * @param facet The name of the desired facet.
     * @param context The Context map to send with the invocation.
     * @return A proxy for this type, or null if the object does not support this type.
     **/
    static RemoteCommunicatorPrx checkedCast(com.zeroc.Ice.ObjectPrx obj, String facet, java.util.Map<String, String> context)
    {
        return com.zeroc.Ice.ObjectPrx._checkedCast(obj, facet, context, ice_staticId(), RemoteCommunicatorPrx.class, _RemoteCommunicatorPrxI.class);
    }

    /**
     * Downcasts the given proxy to this type without contacting the remote server.
     * @param obj The untyped proxy.
     * @return A proxy for this type.
     **/
    static RemoteCommunicatorPrx uncheckedCast(com.zeroc.Ice.ObjectPrx obj)
    {
        return com.zeroc.Ice.ObjectPrx._uncheckedCast(obj, RemoteCommunicatorPrx.class, _RemoteCommunicatorPrxI.class);
    }

    /**
     * Downcasts the given proxy to this type without contacting the remote server.
     * @param obj The untyped proxy.
     * @param facet The name of the desired facet.
     * @return A proxy for this type.
     **/
    static RemoteCommunicatorPrx uncheckedCast(com.zeroc.Ice.ObjectPrx obj, String facet)
    {
        return com.zeroc.Ice.ObjectPrx._uncheckedCast(obj, facet, RemoteCommunicatorPrx.class, _RemoteCommunicatorPrxI.class);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for the per-proxy context.
     * @param newContext The context for the new proxy.
     * @return A proxy with the specified per-proxy context.
     **/
    @Override
    default RemoteCommunicatorPrx ice_context(java.util.Map<String, String> newContext)
    {
        return (RemoteCommunicatorPrx)_ice_context(newContext);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for the adapter ID.
     * @param newAdapterId The adapter ID for the new proxy.
     * @return A proxy with the specified adapter ID.
     **/
    @Override
    default RemoteCommunicatorPrx ice_adapterId(String newAdapterId)
    {
        return (RemoteCommunicatorPrx)_ice_adapterId(newAdapterId);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for the endpoints.
     * @param newEndpoints The endpoints for the new proxy.
     * @return A proxy with the specified endpoints.
     **/
    @Override
    default RemoteCommunicatorPrx ice_endpoints(com.zeroc.Ice.Endpoint[] newEndpoints)
    {
        return (RemoteCommunicatorPrx)_ice_endpoints(newEndpoints);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for the locator cache timeout.
     * @param newTimeout The new locator cache timeout (in seconds).
     * @return A proxy with the specified locator cache timeout.
     **/
    @Override
    default RemoteCommunicatorPrx ice_locatorCacheTimeout(int newTimeout)
    {
        return (RemoteCommunicatorPrx)_ice_locatorCacheTimeout(newTimeout);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for the invocation timeout.
     * @param newTimeout The new invocation timeout (in seconds).
     * @return A proxy with the specified invocation timeout.
     **/
    @Override
    default RemoteCommunicatorPrx ice_invocationTimeout(int newTimeout)
    {
        return (RemoteCommunicatorPrx)_ice_invocationTimeout(newTimeout);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for connection caching.
     * @param newCache <code>true</code> if the new proxy should cache connections; <code>false</code> otherwise.
     * @return A proxy with the specified caching policy.
     **/
    @Override
    default RemoteCommunicatorPrx ice_connectionCached(boolean newCache)
    {
        return (RemoteCommunicatorPrx)_ice_connectionCached(newCache);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for the endpoint selection policy.
     * @param newType The new endpoint selection policy.
     * @return A proxy with the specified endpoint selection policy.
     **/
    @Override
    default RemoteCommunicatorPrx ice_endpointSelection(com.zeroc.Ice.EndpointSelectionType newType)
    {
        return (RemoteCommunicatorPrx)_ice_endpointSelection(newType);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for how it selects endpoints.
     * @param b If <code>b</code> is <code>true</code>, only endpoints that use a secure transport are
     * used by the new proxy. If <code>b</code> is false, the returned proxy uses both secure and
     * insecure endpoints.
     * @return A proxy with the specified selection policy.
     **/
    @Override
    default RemoteCommunicatorPrx ice_secure(boolean b)
    {
        return (RemoteCommunicatorPrx)_ice_secure(b);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for the encoding used to marshal parameters.
     * @param e The encoding version to use to marshal request parameters.
     * @return A proxy with the specified encoding version.
     **/
    @Override
    default RemoteCommunicatorPrx ice_encodingVersion(com.zeroc.Ice.EncodingVersion e)
    {
        return (RemoteCommunicatorPrx)_ice_encodingVersion(e);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for its endpoint selection policy.
     * @param b If <code>b</code> is <code>true</code>, the new proxy will use secure endpoints for invocations
     * and only use insecure endpoints if an invocation cannot be made via secure endpoints. If <code>b</code> is
     * <code>false</code>, the proxy prefers insecure endpoints to secure ones.
     * @return A proxy with the specified selection policy.
     **/
    @Override
    default RemoteCommunicatorPrx ice_preferSecure(boolean b)
    {
        return (RemoteCommunicatorPrx)_ice_preferSecure(b);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for the router.
     * @param router The router for the new proxy.
     * @return A proxy with the specified router.
     **/
    @Override
    default RemoteCommunicatorPrx ice_router(com.zeroc.Ice.RouterPrx router)
    {
        return (RemoteCommunicatorPrx)_ice_router(router);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for the locator.
     * @param locator The locator for the new proxy.
     * @return A proxy with the specified locator.
     **/
    @Override
    default RemoteCommunicatorPrx ice_locator(com.zeroc.Ice.LocatorPrx locator)
    {
        return (RemoteCommunicatorPrx)_ice_locator(locator);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for collocation optimization.
     * @param b <code>true</code> if the new proxy enables collocation optimization; <code>false</code> otherwise.
     * @return A proxy with the specified collocation optimization.
     **/
    @Override
    default RemoteCommunicatorPrx ice_collocationOptimized(boolean b)
    {
        return (RemoteCommunicatorPrx)_ice_collocationOptimized(b);
    }

    /**
     * Returns a proxy that is identical to this proxy, but uses twoway invocations.
     * @return A proxy that uses twoway invocations.
     **/
    @Override
    default RemoteCommunicatorPrx ice_twoway()
    {
        return (RemoteCommunicatorPrx)_ice_twoway();
    }

    /**
     * Returns a proxy that is identical to this proxy, but uses oneway invocations.
     * @return A proxy that uses oneway invocations.
     **/
    @Override
    default RemoteCommunicatorPrx ice_oneway()
    {
        return (RemoteCommunicatorPrx)_ice_oneway();
    }

    /**
     * Returns a proxy that is identical to this proxy, but uses batch oneway invocations.
     * @return A proxy that uses batch oneway invocations.
     **/
    @Override
    default RemoteCommunicatorPrx ice_batchOneway()
    {
        return (RemoteCommunicatorPrx)_ice_batchOneway();
    }

    /**
     * Returns a proxy that is identical to this proxy, but uses datagram invocations.
     * @return A proxy that uses datagram invocations.
     **/
    @Override
    default RemoteCommunicatorPrx ice_datagram()
    {
        return (RemoteCommunicatorPrx)_ice_datagram();
    }

    /**
     * Returns a proxy that is identical to this proxy, but uses batch datagram invocations.
     * @return A proxy that uses batch datagram invocations.
     **/
    @Override
    default RemoteCommunicatorPrx ice_batchDatagram()
    {
        return (RemoteCommunicatorPrx)_ice_batchDatagram();
    }

    /**
     * Returns a proxy that is identical to this proxy, except for compression.
     * @param co <code>true</code> enables compression for the new proxy; <code>false</code> disables compression.
     * @return A proxy with the specified compression setting.
     **/
    @Override
    default RemoteCommunicatorPrx ice_compress(boolean co)
    {
        return (RemoteCommunicatorPrx)_ice_compress(co);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for its connection timeout setting.
     * @param t The connection timeout for the proxy in milliseconds.
     * @return A proxy with the specified timeout.
     **/
    @Override
    default RemoteCommunicatorPrx ice_timeout(int t)
    {
        return (RemoteCommunicatorPrx)_ice_timeout(t);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for its connection ID.
     * @param connectionId The connection ID for the new proxy. An empty string removes the connection ID.
     * @return A proxy with the specified connection ID.
     **/
    @Override
    default RemoteCommunicatorPrx ice_connectionId(String connectionId)
    {
        return (RemoteCommunicatorPrx)_ice_connectionId(connectionId);
    }

    /**
     * Returns a proxy that is identical to this proxy, except it's a fixed proxy bound
     * the given connection.@param connection The fixed proxy connection.
     * @return A fixed proxy bound to the given connection.
     **/
    @Override
    default RemoteCommunicatorPrx ice_fixed(com.zeroc.Ice.Connection connection)
    {
        return (RemoteCommunicatorPrx)_ice_fixed(connection);
    }

    static String ice_staticId()
    {
        return "::Test::RemoteCommunicator";
    }
}
