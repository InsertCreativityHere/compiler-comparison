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

public interface MetricsPrx extends com.zeroc.Ice.ObjectPrx
{
    default void op()
    {
        op(com.zeroc.Ice.ObjectPrx.noExplicitContext);
    }

    default void op(java.util.Map<String, String> context)
    {
        _iceI_opAsync(context, true).waitForResponse();
    }

    default java.util.concurrent.CompletableFuture<Void> opAsync()
    {
        return _iceI_opAsync(com.zeroc.Ice.ObjectPrx.noExplicitContext, false);
    }

    default java.util.concurrent.CompletableFuture<Void> opAsync(java.util.Map<String, String> context)
    {
        return _iceI_opAsync(context, false);
    }

    /**
     * @hidden
     * @param context -
     * @param sync -
     * @return -
     **/
    default com.zeroc.IceInternal.OutgoingAsync<Void> _iceI_opAsync(java.util.Map<String, String> context, boolean sync)
    {
        com.zeroc.IceInternal.OutgoingAsync<Void> f = new com.zeroc.IceInternal.OutgoingAsync<>(this, "op", null, sync, null);
        f.invoke(false, context, null, null, null);
        return f;
    }

    default void fail()
    {
        fail(com.zeroc.Ice.ObjectPrx.noExplicitContext);
    }

    default void fail(java.util.Map<String, String> context)
    {
        _iceI_failAsync(context, true).waitForResponse();
    }

    default java.util.concurrent.CompletableFuture<Void> failAsync()
    {
        return _iceI_failAsync(com.zeroc.Ice.ObjectPrx.noExplicitContext, false);
    }

    default java.util.concurrent.CompletableFuture<Void> failAsync(java.util.Map<String, String> context)
    {
        return _iceI_failAsync(context, false);
    }

    /**
     * @hidden
     * @param context -
     * @param sync -
     * @return -
     **/
    default com.zeroc.IceInternal.OutgoingAsync<Void> _iceI_failAsync(java.util.Map<String, String> context, boolean sync)
    {
        com.zeroc.IceInternal.OutgoingAsync<Void> f = new com.zeroc.IceInternal.OutgoingAsync<>(this, "fail", com.zeroc.Ice.OperationMode.Idempotent, sync, null);
        f.invoke(false, context, null, null, null);
        return f;
    }

    default void opWithUserException()
        throws UserEx
    {
        opWithUserException(com.zeroc.Ice.ObjectPrx.noExplicitContext);
    }

    default void opWithUserException(java.util.Map<String, String> context)
        throws UserEx
    {
        try
        {
            _iceI_opWithUserExceptionAsync(context, true).waitForResponseOrUserEx();
        }
        catch(UserEx ex)
        {
            throw ex;
        }
        catch(com.zeroc.Ice.UserException ex)
        {
            throw new com.zeroc.Ice.UnknownUserException(ex.ice_id(), ex);
        }
    }

    default java.util.concurrent.CompletableFuture<Void> opWithUserExceptionAsync()
    {
        return _iceI_opWithUserExceptionAsync(com.zeroc.Ice.ObjectPrx.noExplicitContext, false);
    }

    default java.util.concurrent.CompletableFuture<Void> opWithUserExceptionAsync(java.util.Map<String, String> context)
    {
        return _iceI_opWithUserExceptionAsync(context, false);
    }

    /**
     * @hidden
     * @param context -
     * @param sync -
     * @return -
     **/
    default com.zeroc.IceInternal.OutgoingAsync<Void> _iceI_opWithUserExceptionAsync(java.util.Map<String, String> context, boolean sync)
    {
        com.zeroc.IceInternal.OutgoingAsync<Void> f = new com.zeroc.IceInternal.OutgoingAsync<>(this, "opWithUserException", null, sync, _iceE_opWithUserException);
        f.invoke(true, context, null, null, null);
        return f;
    }

    /** @hidden */
    static final Class<?>[] _iceE_opWithUserException =
    {
        UserEx.class
    };

    default void opWithRequestFailedException()
    {
        opWithRequestFailedException(com.zeroc.Ice.ObjectPrx.noExplicitContext);
    }

    default void opWithRequestFailedException(java.util.Map<String, String> context)
    {
        _iceI_opWithRequestFailedExceptionAsync(context, true).waitForResponse();
    }

    default java.util.concurrent.CompletableFuture<Void> opWithRequestFailedExceptionAsync()
    {
        return _iceI_opWithRequestFailedExceptionAsync(com.zeroc.Ice.ObjectPrx.noExplicitContext, false);
    }

    default java.util.concurrent.CompletableFuture<Void> opWithRequestFailedExceptionAsync(java.util.Map<String, String> context)
    {
        return _iceI_opWithRequestFailedExceptionAsync(context, false);
    }

    /**
     * @hidden
     * @param context -
     * @param sync -
     * @return -
     **/
    default com.zeroc.IceInternal.OutgoingAsync<Void> _iceI_opWithRequestFailedExceptionAsync(java.util.Map<String, String> context, boolean sync)
    {
        com.zeroc.IceInternal.OutgoingAsync<Void> f = new com.zeroc.IceInternal.OutgoingAsync<>(this, "opWithRequestFailedException", null, sync, null);
        f.invoke(false, context, null, null, null);
        return f;
    }

    default void opWithLocalException()
    {
        opWithLocalException(com.zeroc.Ice.ObjectPrx.noExplicitContext);
    }

    default void opWithLocalException(java.util.Map<String, String> context)
    {
        _iceI_opWithLocalExceptionAsync(context, true).waitForResponse();
    }

    default java.util.concurrent.CompletableFuture<Void> opWithLocalExceptionAsync()
    {
        return _iceI_opWithLocalExceptionAsync(com.zeroc.Ice.ObjectPrx.noExplicitContext, false);
    }

    default java.util.concurrent.CompletableFuture<Void> opWithLocalExceptionAsync(java.util.Map<String, String> context)
    {
        return _iceI_opWithLocalExceptionAsync(context, false);
    }

    /**
     * @hidden
     * @param context -
     * @param sync -
     * @return -
     **/
    default com.zeroc.IceInternal.OutgoingAsync<Void> _iceI_opWithLocalExceptionAsync(java.util.Map<String, String> context, boolean sync)
    {
        com.zeroc.IceInternal.OutgoingAsync<Void> f = new com.zeroc.IceInternal.OutgoingAsync<>(this, "opWithLocalException", null, sync, null);
        f.invoke(false, context, null, null, null);
        return f;
    }

    default void opWithUnknownException()
    {
        opWithUnknownException(com.zeroc.Ice.ObjectPrx.noExplicitContext);
    }

    default void opWithUnknownException(java.util.Map<String, String> context)
    {
        _iceI_opWithUnknownExceptionAsync(context, true).waitForResponse();
    }

    default java.util.concurrent.CompletableFuture<Void> opWithUnknownExceptionAsync()
    {
        return _iceI_opWithUnknownExceptionAsync(com.zeroc.Ice.ObjectPrx.noExplicitContext, false);
    }

    default java.util.concurrent.CompletableFuture<Void> opWithUnknownExceptionAsync(java.util.Map<String, String> context)
    {
        return _iceI_opWithUnknownExceptionAsync(context, false);
    }

    /**
     * @hidden
     * @param context -
     * @param sync -
     * @return -
     **/
    default com.zeroc.IceInternal.OutgoingAsync<Void> _iceI_opWithUnknownExceptionAsync(java.util.Map<String, String> context, boolean sync)
    {
        com.zeroc.IceInternal.OutgoingAsync<Void> f = new com.zeroc.IceInternal.OutgoingAsync<>(this, "opWithUnknownException", null, sync, null);
        f.invoke(false, context, null, null, null);
        return f;
    }

    default void opByteS(byte[] bs)
    {
        opByteS(bs, com.zeroc.Ice.ObjectPrx.noExplicitContext);
    }

    default void opByteS(byte[] bs, java.util.Map<String, String> context)
    {
        _iceI_opByteSAsync(bs, context, true).waitForResponse();
    }

    default java.util.concurrent.CompletableFuture<Void> opByteSAsync(byte[] bs)
    {
        return _iceI_opByteSAsync(bs, com.zeroc.Ice.ObjectPrx.noExplicitContext, false);
    }

    default java.util.concurrent.CompletableFuture<Void> opByteSAsync(byte[] bs, java.util.Map<String, String> context)
    {
        return _iceI_opByteSAsync(bs, context, false);
    }

    /**
     * @hidden
     * @param iceP_bs -
     * @param context -
     * @param sync -
     * @return -
     **/
    default com.zeroc.IceInternal.OutgoingAsync<Void> _iceI_opByteSAsync(byte[] iceP_bs, java.util.Map<String, String> context, boolean sync)
    {
        com.zeroc.IceInternal.OutgoingAsync<Void> f = new com.zeroc.IceInternal.OutgoingAsync<>(this, "opByteS", null, sync, null);
        f.invoke(false, context, null, ostr -> {
                     ostr.writeByteSeq(iceP_bs);
                 }, null);
        return f;
    }

    default com.zeroc.Ice.ObjectPrx getAdmin()
    {
        return getAdmin(com.zeroc.Ice.ObjectPrx.noExplicitContext);
    }

    default com.zeroc.Ice.ObjectPrx getAdmin(java.util.Map<String, String> context)
    {
        return _iceI_getAdminAsync(context, true).waitForResponse();
    }

    default java.util.concurrent.CompletableFuture<com.zeroc.Ice.ObjectPrx> getAdminAsync()
    {
        return _iceI_getAdminAsync(com.zeroc.Ice.ObjectPrx.noExplicitContext, false);
    }

    default java.util.concurrent.CompletableFuture<com.zeroc.Ice.ObjectPrx> getAdminAsync(java.util.Map<String, String> context)
    {
        return _iceI_getAdminAsync(context, false);
    }

    /**
     * @hidden
     * @param context -
     * @param sync -
     * @return -
     **/
    default com.zeroc.IceInternal.OutgoingAsync<com.zeroc.Ice.ObjectPrx> _iceI_getAdminAsync(java.util.Map<String, String> context, boolean sync)
    {
        com.zeroc.IceInternal.OutgoingAsync<com.zeroc.Ice.ObjectPrx> f = new com.zeroc.IceInternal.OutgoingAsync<>(this, "getAdmin", null, sync, null);
        f.invoke(true, context, null, null, istr -> {
                     com.zeroc.Ice.ObjectPrx ret;
                     ret = istr.readProxy();
                     return ret;
                 });
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
    static MetricsPrx checkedCast(com.zeroc.Ice.ObjectPrx obj)
    {
        return com.zeroc.Ice.ObjectPrx._checkedCast(obj, ice_staticId(), MetricsPrx.class, _MetricsPrxI.class);
    }

    /**
     * Contacts the remote server to verify that the object implements this type.
     * Raises a local exception if a communication error occurs.
     * @param obj The untyped proxy.
     * @param context The Context map to send with the invocation.
     * @return A proxy for this type, or null if the object does not support this type.
     **/
    static MetricsPrx checkedCast(com.zeroc.Ice.ObjectPrx obj, java.util.Map<String, String> context)
    {
        return com.zeroc.Ice.ObjectPrx._checkedCast(obj, context, ice_staticId(), MetricsPrx.class, _MetricsPrxI.class);
    }

    /**
     * Contacts the remote server to verify that a facet of the object implements this type.
     * Raises a local exception if a communication error occurs.
     * @param obj The untyped proxy.
     * @param facet The name of the desired facet.
     * @return A proxy for this type, or null if the object does not support this type.
     **/
    static MetricsPrx checkedCast(com.zeroc.Ice.ObjectPrx obj, String facet)
    {
        return com.zeroc.Ice.ObjectPrx._checkedCast(obj, facet, ice_staticId(), MetricsPrx.class, _MetricsPrxI.class);
    }

    /**
     * Contacts the remote server to verify that a facet of the object implements this type.
     * Raises a local exception if a communication error occurs.
     * @param obj The untyped proxy.
     * @param facet The name of the desired facet.
     * @param context The Context map to send with the invocation.
     * @return A proxy for this type, or null if the object does not support this type.
     **/
    static MetricsPrx checkedCast(com.zeroc.Ice.ObjectPrx obj, String facet, java.util.Map<String, String> context)
    {
        return com.zeroc.Ice.ObjectPrx._checkedCast(obj, facet, context, ice_staticId(), MetricsPrx.class, _MetricsPrxI.class);
    }

    /**
     * Downcasts the given proxy to this type without contacting the remote server.
     * @param obj The untyped proxy.
     * @return A proxy for this type.
     **/
    static MetricsPrx uncheckedCast(com.zeroc.Ice.ObjectPrx obj)
    {
        return com.zeroc.Ice.ObjectPrx._uncheckedCast(obj, MetricsPrx.class, _MetricsPrxI.class);
    }

    /**
     * Downcasts the given proxy to this type without contacting the remote server.
     * @param obj The untyped proxy.
     * @param facet The name of the desired facet.
     * @return A proxy for this type.
     **/
    static MetricsPrx uncheckedCast(com.zeroc.Ice.ObjectPrx obj, String facet)
    {
        return com.zeroc.Ice.ObjectPrx._uncheckedCast(obj, facet, MetricsPrx.class, _MetricsPrxI.class);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for the per-proxy context.
     * @param newContext The context for the new proxy.
     * @return A proxy with the specified per-proxy context.
     **/
    @Override
    default MetricsPrx ice_context(java.util.Map<String, String> newContext)
    {
        return (MetricsPrx)_ice_context(newContext);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for the adapter ID.
     * @param newAdapterId The adapter ID for the new proxy.
     * @return A proxy with the specified adapter ID.
     **/
    @Override
    default MetricsPrx ice_adapterId(String newAdapterId)
    {
        return (MetricsPrx)_ice_adapterId(newAdapterId);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for the endpoints.
     * @param newEndpoints The endpoints for the new proxy.
     * @return A proxy with the specified endpoints.
     **/
    @Override
    default MetricsPrx ice_endpoints(com.zeroc.Ice.Endpoint[] newEndpoints)
    {
        return (MetricsPrx)_ice_endpoints(newEndpoints);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for the locator cache timeout.
     * @param newTimeout The new locator cache timeout (in seconds).
     * @return A proxy with the specified locator cache timeout.
     **/
    @Override
    default MetricsPrx ice_locatorCacheTimeout(int newTimeout)
    {
        return (MetricsPrx)_ice_locatorCacheTimeout(newTimeout);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for the invocation timeout.
     * @param newTimeout The new invocation timeout (in seconds).
     * @return A proxy with the specified invocation timeout.
     **/
    @Override
    default MetricsPrx ice_invocationTimeout(int newTimeout)
    {
        return (MetricsPrx)_ice_invocationTimeout(newTimeout);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for connection caching.
     * @param newCache <code>true</code> if the new proxy should cache connections; <code>false</code> otherwise.
     * @return A proxy with the specified caching policy.
     **/
    @Override
    default MetricsPrx ice_connectionCached(boolean newCache)
    {
        return (MetricsPrx)_ice_connectionCached(newCache);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for the endpoint selection policy.
     * @param newType The new endpoint selection policy.
     * @return A proxy with the specified endpoint selection policy.
     **/
    @Override
    default MetricsPrx ice_endpointSelection(com.zeroc.Ice.EndpointSelectionType newType)
    {
        return (MetricsPrx)_ice_endpointSelection(newType);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for how it selects endpoints.
     * @param b If <code>b</code> is <code>true</code>, only endpoints that use a secure transport are
     * used by the new proxy. If <code>b</code> is false, the returned proxy uses both secure and
     * insecure endpoints.
     * @return A proxy with the specified selection policy.
     **/
    @Override
    default MetricsPrx ice_secure(boolean b)
    {
        return (MetricsPrx)_ice_secure(b);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for the encoding used to marshal parameters.
     * @param e The encoding version to use to marshal request parameters.
     * @return A proxy with the specified encoding version.
     **/
    @Override
    default MetricsPrx ice_encodingVersion(com.zeroc.Ice.EncodingVersion e)
    {
        return (MetricsPrx)_ice_encodingVersion(e);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for its endpoint selection policy.
     * @param b If <code>b</code> is <code>true</code>, the new proxy will use secure endpoints for invocations
     * and only use insecure endpoints if an invocation cannot be made via secure endpoints. If <code>b</code> is
     * <code>false</code>, the proxy prefers insecure endpoints to secure ones.
     * @return A proxy with the specified selection policy.
     **/
    @Override
    default MetricsPrx ice_preferSecure(boolean b)
    {
        return (MetricsPrx)_ice_preferSecure(b);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for the router.
     * @param router The router for the new proxy.
     * @return A proxy with the specified router.
     **/
    @Override
    default MetricsPrx ice_router(com.zeroc.Ice.RouterPrx router)
    {
        return (MetricsPrx)_ice_router(router);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for the locator.
     * @param locator The locator for the new proxy.
     * @return A proxy with the specified locator.
     **/
    @Override
    default MetricsPrx ice_locator(com.zeroc.Ice.LocatorPrx locator)
    {
        return (MetricsPrx)_ice_locator(locator);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for collocation optimization.
     * @param b <code>true</code> if the new proxy enables collocation optimization; <code>false</code> otherwise.
     * @return A proxy with the specified collocation optimization.
     **/
    @Override
    default MetricsPrx ice_collocationOptimized(boolean b)
    {
        return (MetricsPrx)_ice_collocationOptimized(b);
    }

    /**
     * Returns a proxy that is identical to this proxy, but uses twoway invocations.
     * @return A proxy that uses twoway invocations.
     **/
    @Override
    default MetricsPrx ice_twoway()
    {
        return (MetricsPrx)_ice_twoway();
    }

    /**
     * Returns a proxy that is identical to this proxy, but uses oneway invocations.
     * @return A proxy that uses oneway invocations.
     **/
    @Override
    default MetricsPrx ice_oneway()
    {
        return (MetricsPrx)_ice_oneway();
    }

    /**
     * Returns a proxy that is identical to this proxy, but uses batch oneway invocations.
     * @return A proxy that uses batch oneway invocations.
     **/
    @Override
    default MetricsPrx ice_batchOneway()
    {
        return (MetricsPrx)_ice_batchOneway();
    }

    /**
     * Returns a proxy that is identical to this proxy, but uses datagram invocations.
     * @return A proxy that uses datagram invocations.
     **/
    @Override
    default MetricsPrx ice_datagram()
    {
        return (MetricsPrx)_ice_datagram();
    }

    /**
     * Returns a proxy that is identical to this proxy, but uses batch datagram invocations.
     * @return A proxy that uses batch datagram invocations.
     **/
    @Override
    default MetricsPrx ice_batchDatagram()
    {
        return (MetricsPrx)_ice_batchDatagram();
    }

    /**
     * Returns a proxy that is identical to this proxy, except for compression.
     * @param co <code>true</code> enables compression for the new proxy; <code>false</code> disables compression.
     * @return A proxy with the specified compression setting.
     **/
    @Override
    default MetricsPrx ice_compress(boolean co)
    {
        return (MetricsPrx)_ice_compress(co);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for its connection timeout setting.
     * @param t The connection timeout for the proxy in milliseconds.
     * @return A proxy with the specified timeout.
     **/
    @Override
    default MetricsPrx ice_timeout(int t)
    {
        return (MetricsPrx)_ice_timeout(t);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for its connection ID.
     * @param connectionId The connection ID for the new proxy. An empty string removes the connection ID.
     * @return A proxy with the specified connection ID.
     **/
    @Override
    default MetricsPrx ice_connectionId(String connectionId)
    {
        return (MetricsPrx)_ice_connectionId(connectionId);
    }

    /**
     * Returns a proxy that is identical to this proxy, except it's a fixed proxy bound
     * the given connection.@param connection The fixed proxy connection.
     * @return A fixed proxy bound to the given connection.
     **/
    @Override
    default MetricsPrx ice_fixed(com.zeroc.Ice.Connection connection)
    {
        return (MetricsPrx)_ice_fixed(connection);
    }

    static String ice_staticId()
    {
        return "::Test::Metrics";
    }
}
