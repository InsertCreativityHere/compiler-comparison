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

public interface MyObjectPrx extends com.zeroc.Ice.ObjectPrx
{
    default int add(int x, int y)
    {
        return add(x, y, com.zeroc.Ice.ObjectPrx.noExplicitContext);
    }

    default int add(int x, int y, java.util.Map<String, String> context)
    {
        return _iceI_addAsync(x, y, context, true).waitForResponse();
    }

    default java.util.concurrent.CompletableFuture<java.lang.Integer> addAsync(int x, int y)
    {
        return _iceI_addAsync(x, y, com.zeroc.Ice.ObjectPrx.noExplicitContext, false);
    }

    default java.util.concurrent.CompletableFuture<java.lang.Integer> addAsync(int x, int y, java.util.Map<String, String> context)
    {
        return _iceI_addAsync(x, y, context, false);
    }

    /**
     * @hidden
     * @param iceP_x -
     * @param iceP_y -
     * @param context -
     * @param sync -
     * @return -
     **/
    default com.zeroc.IceInternal.OutgoingAsync<java.lang.Integer> _iceI_addAsync(int iceP_x, int iceP_y, java.util.Map<String, String> context, boolean sync)
    {
        com.zeroc.IceInternal.OutgoingAsync<java.lang.Integer> f = new com.zeroc.IceInternal.OutgoingAsync<>(this, "add", null, sync, null);
        f.invoke(true, context, null, ostr -> {
                     ostr.writeInt(iceP_x);
                     ostr.writeInt(iceP_y);
                 }, istr -> {
                     int ret;
                     ret = istr.readInt();
                     return ret;
                 });
        return f;
    }

    default int addWithRetry(int x, int y)
    {
        return addWithRetry(x, y, com.zeroc.Ice.ObjectPrx.noExplicitContext);
    }

    default int addWithRetry(int x, int y, java.util.Map<String, String> context)
    {
        return _iceI_addWithRetryAsync(x, y, context, true).waitForResponse();
    }

    default java.util.concurrent.CompletableFuture<java.lang.Integer> addWithRetryAsync(int x, int y)
    {
        return _iceI_addWithRetryAsync(x, y, com.zeroc.Ice.ObjectPrx.noExplicitContext, false);
    }

    default java.util.concurrent.CompletableFuture<java.lang.Integer> addWithRetryAsync(int x, int y, java.util.Map<String, String> context)
    {
        return _iceI_addWithRetryAsync(x, y, context, false);
    }

    /**
     * @hidden
     * @param iceP_x -
     * @param iceP_y -
     * @param context -
     * @param sync -
     * @return -
     **/
    default com.zeroc.IceInternal.OutgoingAsync<java.lang.Integer> _iceI_addWithRetryAsync(int iceP_x, int iceP_y, java.util.Map<String, String> context, boolean sync)
    {
        com.zeroc.IceInternal.OutgoingAsync<java.lang.Integer> f = new com.zeroc.IceInternal.OutgoingAsync<>(this, "addWithRetry", null, sync, null);
        f.invoke(true, context, null, ostr -> {
                     ostr.writeInt(iceP_x);
                     ostr.writeInt(iceP_y);
                 }, istr -> {
                     int ret;
                     ret = istr.readInt();
                     return ret;
                 });
        return f;
    }

    default int badAdd(int x, int y)
        throws InvalidInputException
    {
        return badAdd(x, y, com.zeroc.Ice.ObjectPrx.noExplicitContext);
    }

    default int badAdd(int x, int y, java.util.Map<String, String> context)
        throws InvalidInputException
    {
        try
        {
            return _iceI_badAddAsync(x, y, context, true).waitForResponseOrUserEx();
        }
        catch(InvalidInputException ex)
        {
            throw ex;
        }
        catch(com.zeroc.Ice.UserException ex)
        {
            throw new com.zeroc.Ice.UnknownUserException(ex.ice_id(), ex);
        }
    }

    default java.util.concurrent.CompletableFuture<java.lang.Integer> badAddAsync(int x, int y)
    {
        return _iceI_badAddAsync(x, y, com.zeroc.Ice.ObjectPrx.noExplicitContext, false);
    }

    default java.util.concurrent.CompletableFuture<java.lang.Integer> badAddAsync(int x, int y, java.util.Map<String, String> context)
    {
        return _iceI_badAddAsync(x, y, context, false);
    }

    /**
     * @hidden
     * @param iceP_x -
     * @param iceP_y -
     * @param context -
     * @param sync -
     * @return -
     **/
    default com.zeroc.IceInternal.OutgoingAsync<java.lang.Integer> _iceI_badAddAsync(int iceP_x, int iceP_y, java.util.Map<String, String> context, boolean sync)
    {
        com.zeroc.IceInternal.OutgoingAsync<java.lang.Integer> f = new com.zeroc.IceInternal.OutgoingAsync<>(this, "badAdd", null, sync, _iceE_badAdd);
        f.invoke(true, context, null, ostr -> {
                     ostr.writeInt(iceP_x);
                     ostr.writeInt(iceP_y);
                 }, istr -> {
                     int ret;
                     ret = istr.readInt();
                     return ret;
                 });
        return f;
    }

    /** @hidden */
    static final Class<?>[] _iceE_badAdd =
    {
        InvalidInputException.class
    };

    default int notExistAdd(int x, int y)
    {
        return notExistAdd(x, y, com.zeroc.Ice.ObjectPrx.noExplicitContext);
    }

    default int notExistAdd(int x, int y, java.util.Map<String, String> context)
    {
        return _iceI_notExistAddAsync(x, y, context, true).waitForResponse();
    }

    default java.util.concurrent.CompletableFuture<java.lang.Integer> notExistAddAsync(int x, int y)
    {
        return _iceI_notExistAddAsync(x, y, com.zeroc.Ice.ObjectPrx.noExplicitContext, false);
    }

    default java.util.concurrent.CompletableFuture<java.lang.Integer> notExistAddAsync(int x, int y, java.util.Map<String, String> context)
    {
        return _iceI_notExistAddAsync(x, y, context, false);
    }

    /**
     * @hidden
     * @param iceP_x -
     * @param iceP_y -
     * @param context -
     * @param sync -
     * @return -
     **/
    default com.zeroc.IceInternal.OutgoingAsync<java.lang.Integer> _iceI_notExistAddAsync(int iceP_x, int iceP_y, java.util.Map<String, String> context, boolean sync)
    {
        com.zeroc.IceInternal.OutgoingAsync<java.lang.Integer> f = new com.zeroc.IceInternal.OutgoingAsync<>(this, "notExistAdd", null, sync, null);
        f.invoke(true, context, null, ostr -> {
                     ostr.writeInt(iceP_x);
                     ostr.writeInt(iceP_y);
                 }, istr -> {
                     int ret;
                     ret = istr.readInt();
                     return ret;
                 });
        return f;
    }

    default int amdAdd(int x, int y)
    {
        return amdAdd(x, y, com.zeroc.Ice.ObjectPrx.noExplicitContext);
    }

    default int amdAdd(int x, int y, java.util.Map<String, String> context)
    {
        return _iceI_amdAddAsync(x, y, context, true).waitForResponse();
    }

    default java.util.concurrent.CompletableFuture<java.lang.Integer> amdAddAsync(int x, int y)
    {
        return _iceI_amdAddAsync(x, y, com.zeroc.Ice.ObjectPrx.noExplicitContext, false);
    }

    default java.util.concurrent.CompletableFuture<java.lang.Integer> amdAddAsync(int x, int y, java.util.Map<String, String> context)
    {
        return _iceI_amdAddAsync(x, y, context, false);
    }

    /**
     * @hidden
     * @param iceP_x -
     * @param iceP_y -
     * @param context -
     * @param sync -
     * @return -
     **/
    default com.zeroc.IceInternal.OutgoingAsync<java.lang.Integer> _iceI_amdAddAsync(int iceP_x, int iceP_y, java.util.Map<String, String> context, boolean sync)
    {
        com.zeroc.IceInternal.OutgoingAsync<java.lang.Integer> f = new com.zeroc.IceInternal.OutgoingAsync<>(this, "amdAdd", null, sync, null);
        f.invoke(true, context, null, ostr -> {
                     ostr.writeInt(iceP_x);
                     ostr.writeInt(iceP_y);
                 }, istr -> {
                     int ret;
                     ret = istr.readInt();
                     return ret;
                 });
        return f;
    }

    default int amdAddWithRetry(int x, int y)
    {
        return amdAddWithRetry(x, y, com.zeroc.Ice.ObjectPrx.noExplicitContext);
    }

    default int amdAddWithRetry(int x, int y, java.util.Map<String, String> context)
    {
        return _iceI_amdAddWithRetryAsync(x, y, context, true).waitForResponse();
    }

    default java.util.concurrent.CompletableFuture<java.lang.Integer> amdAddWithRetryAsync(int x, int y)
    {
        return _iceI_amdAddWithRetryAsync(x, y, com.zeroc.Ice.ObjectPrx.noExplicitContext, false);
    }

    default java.util.concurrent.CompletableFuture<java.lang.Integer> amdAddWithRetryAsync(int x, int y, java.util.Map<String, String> context)
    {
        return _iceI_amdAddWithRetryAsync(x, y, context, false);
    }

    /**
     * @hidden
     * @param iceP_x -
     * @param iceP_y -
     * @param context -
     * @param sync -
     * @return -
     **/
    default com.zeroc.IceInternal.OutgoingAsync<java.lang.Integer> _iceI_amdAddWithRetryAsync(int iceP_x, int iceP_y, java.util.Map<String, String> context, boolean sync)
    {
        com.zeroc.IceInternal.OutgoingAsync<java.lang.Integer> f = new com.zeroc.IceInternal.OutgoingAsync<>(this, "amdAddWithRetry", null, sync, null);
        f.invoke(true, context, null, ostr -> {
                     ostr.writeInt(iceP_x);
                     ostr.writeInt(iceP_y);
                 }, istr -> {
                     int ret;
                     ret = istr.readInt();
                     return ret;
                 });
        return f;
    }

    default int amdBadAdd(int x, int y)
        throws InvalidInputException
    {
        return amdBadAdd(x, y, com.zeroc.Ice.ObjectPrx.noExplicitContext);
    }

    default int amdBadAdd(int x, int y, java.util.Map<String, String> context)
        throws InvalidInputException
    {
        try
        {
            return _iceI_amdBadAddAsync(x, y, context, true).waitForResponseOrUserEx();
        }
        catch(InvalidInputException ex)
        {
            throw ex;
        }
        catch(com.zeroc.Ice.UserException ex)
        {
            throw new com.zeroc.Ice.UnknownUserException(ex.ice_id(), ex);
        }
    }

    default java.util.concurrent.CompletableFuture<java.lang.Integer> amdBadAddAsync(int x, int y)
    {
        return _iceI_amdBadAddAsync(x, y, com.zeroc.Ice.ObjectPrx.noExplicitContext, false);
    }

    default java.util.concurrent.CompletableFuture<java.lang.Integer> amdBadAddAsync(int x, int y, java.util.Map<String, String> context)
    {
        return _iceI_amdBadAddAsync(x, y, context, false);
    }

    /**
     * @hidden
     * @param iceP_x -
     * @param iceP_y -
     * @param context -
     * @param sync -
     * @return -
     **/
    default com.zeroc.IceInternal.OutgoingAsync<java.lang.Integer> _iceI_amdBadAddAsync(int iceP_x, int iceP_y, java.util.Map<String, String> context, boolean sync)
    {
        com.zeroc.IceInternal.OutgoingAsync<java.lang.Integer> f = new com.zeroc.IceInternal.OutgoingAsync<>(this, "amdBadAdd", null, sync, _iceE_amdBadAdd);
        f.invoke(true, context, null, ostr -> {
                     ostr.writeInt(iceP_x);
                     ostr.writeInt(iceP_y);
                 }, istr -> {
                     int ret;
                     ret = istr.readInt();
                     return ret;
                 });
        return f;
    }

    /** @hidden */
    static final Class<?>[] _iceE_amdBadAdd =
    {
        InvalidInputException.class
    };

    default int amdNotExistAdd(int x, int y)
    {
        return amdNotExistAdd(x, y, com.zeroc.Ice.ObjectPrx.noExplicitContext);
    }

    default int amdNotExistAdd(int x, int y, java.util.Map<String, String> context)
    {
        return _iceI_amdNotExistAddAsync(x, y, context, true).waitForResponse();
    }

    default java.util.concurrent.CompletableFuture<java.lang.Integer> amdNotExistAddAsync(int x, int y)
    {
        return _iceI_amdNotExistAddAsync(x, y, com.zeroc.Ice.ObjectPrx.noExplicitContext, false);
    }

    default java.util.concurrent.CompletableFuture<java.lang.Integer> amdNotExistAddAsync(int x, int y, java.util.Map<String, String> context)
    {
        return _iceI_amdNotExistAddAsync(x, y, context, false);
    }

    /**
     * @hidden
     * @param iceP_x -
     * @param iceP_y -
     * @param context -
     * @param sync -
     * @return -
     **/
    default com.zeroc.IceInternal.OutgoingAsync<java.lang.Integer> _iceI_amdNotExistAddAsync(int iceP_x, int iceP_y, java.util.Map<String, String> context, boolean sync)
    {
        com.zeroc.IceInternal.OutgoingAsync<java.lang.Integer> f = new com.zeroc.IceInternal.OutgoingAsync<>(this, "amdNotExistAdd", null, sync, null);
        f.invoke(true, context, null, ostr -> {
                     ostr.writeInt(iceP_x);
                     ostr.writeInt(iceP_y);
                 }, istr -> {
                     int ret;
                     ret = istr.readInt();
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
    static MyObjectPrx checkedCast(com.zeroc.Ice.ObjectPrx obj)
    {
        return com.zeroc.Ice.ObjectPrx._checkedCast(obj, ice_staticId(), MyObjectPrx.class, _MyObjectPrxI.class);
    }

    /**
     * Contacts the remote server to verify that the object implements this type.
     * Raises a local exception if a communication error occurs.
     * @param obj The untyped proxy.
     * @param context The Context map to send with the invocation.
     * @return A proxy for this type, or null if the object does not support this type.
     **/
    static MyObjectPrx checkedCast(com.zeroc.Ice.ObjectPrx obj, java.util.Map<String, String> context)
    {
        return com.zeroc.Ice.ObjectPrx._checkedCast(obj, context, ice_staticId(), MyObjectPrx.class, _MyObjectPrxI.class);
    }

    /**
     * Contacts the remote server to verify that a facet of the object implements this type.
     * Raises a local exception if a communication error occurs.
     * @param obj The untyped proxy.
     * @param facet The name of the desired facet.
     * @return A proxy for this type, or null if the object does not support this type.
     **/
    static MyObjectPrx checkedCast(com.zeroc.Ice.ObjectPrx obj, String facet)
    {
        return com.zeroc.Ice.ObjectPrx._checkedCast(obj, facet, ice_staticId(), MyObjectPrx.class, _MyObjectPrxI.class);
    }

    /**
     * Contacts the remote server to verify that a facet of the object implements this type.
     * Raises a local exception if a communication error occurs.
     * @param obj The untyped proxy.
     * @param facet The name of the desired facet.
     * @param context The Context map to send with the invocation.
     * @return A proxy for this type, or null if the object does not support this type.
     **/
    static MyObjectPrx checkedCast(com.zeroc.Ice.ObjectPrx obj, String facet, java.util.Map<String, String> context)
    {
        return com.zeroc.Ice.ObjectPrx._checkedCast(obj, facet, context, ice_staticId(), MyObjectPrx.class, _MyObjectPrxI.class);
    }

    /**
     * Downcasts the given proxy to this type without contacting the remote server.
     * @param obj The untyped proxy.
     * @return A proxy for this type.
     **/
    static MyObjectPrx uncheckedCast(com.zeroc.Ice.ObjectPrx obj)
    {
        return com.zeroc.Ice.ObjectPrx._uncheckedCast(obj, MyObjectPrx.class, _MyObjectPrxI.class);
    }

    /**
     * Downcasts the given proxy to this type without contacting the remote server.
     * @param obj The untyped proxy.
     * @param facet The name of the desired facet.
     * @return A proxy for this type.
     **/
    static MyObjectPrx uncheckedCast(com.zeroc.Ice.ObjectPrx obj, String facet)
    {
        return com.zeroc.Ice.ObjectPrx._uncheckedCast(obj, facet, MyObjectPrx.class, _MyObjectPrxI.class);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for the per-proxy context.
     * @param newContext The context for the new proxy.
     * @return A proxy with the specified per-proxy context.
     **/
    @Override
    default MyObjectPrx ice_context(java.util.Map<String, String> newContext)
    {
        return (MyObjectPrx)_ice_context(newContext);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for the adapter ID.
     * @param newAdapterId The adapter ID for the new proxy.
     * @return A proxy with the specified adapter ID.
     **/
    @Override
    default MyObjectPrx ice_adapterId(String newAdapterId)
    {
        return (MyObjectPrx)_ice_adapterId(newAdapterId);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for the endpoints.
     * @param newEndpoints The endpoints for the new proxy.
     * @return A proxy with the specified endpoints.
     **/
    @Override
    default MyObjectPrx ice_endpoints(com.zeroc.Ice.Endpoint[] newEndpoints)
    {
        return (MyObjectPrx)_ice_endpoints(newEndpoints);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for the locator cache timeout.
     * @param newTimeout The new locator cache timeout (in seconds).
     * @return A proxy with the specified locator cache timeout.
     **/
    @Override
    default MyObjectPrx ice_locatorCacheTimeout(int newTimeout)
    {
        return (MyObjectPrx)_ice_locatorCacheTimeout(newTimeout);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for the invocation timeout.
     * @param newTimeout The new invocation timeout (in seconds).
     * @return A proxy with the specified invocation timeout.
     **/
    @Override
    default MyObjectPrx ice_invocationTimeout(int newTimeout)
    {
        return (MyObjectPrx)_ice_invocationTimeout(newTimeout);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for connection caching.
     * @param newCache <code>true</code> if the new proxy should cache connections; <code>false</code> otherwise.
     * @return A proxy with the specified caching policy.
     **/
    @Override
    default MyObjectPrx ice_connectionCached(boolean newCache)
    {
        return (MyObjectPrx)_ice_connectionCached(newCache);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for the endpoint selection policy.
     * @param newType The new endpoint selection policy.
     * @return A proxy with the specified endpoint selection policy.
     **/
    @Override
    default MyObjectPrx ice_endpointSelection(com.zeroc.Ice.EndpointSelectionType newType)
    {
        return (MyObjectPrx)_ice_endpointSelection(newType);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for how it selects endpoints.
     * @param b If <code>b</code> is <code>true</code>, only endpoints that use a secure transport are
     * used by the new proxy. If <code>b</code> is false, the returned proxy uses both secure and
     * insecure endpoints.
     * @return A proxy with the specified selection policy.
     **/
    @Override
    default MyObjectPrx ice_secure(boolean b)
    {
        return (MyObjectPrx)_ice_secure(b);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for the encoding used to marshal parameters.
     * @param e The encoding version to use to marshal request parameters.
     * @return A proxy with the specified encoding version.
     **/
    @Override
    default MyObjectPrx ice_encodingVersion(com.zeroc.Ice.EncodingVersion e)
    {
        return (MyObjectPrx)_ice_encodingVersion(e);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for its endpoint selection policy.
     * @param b If <code>b</code> is <code>true</code>, the new proxy will use secure endpoints for invocations
     * and only use insecure endpoints if an invocation cannot be made via secure endpoints. If <code>b</code> is
     * <code>false</code>, the proxy prefers insecure endpoints to secure ones.
     * @return A proxy with the specified selection policy.
     **/
    @Override
    default MyObjectPrx ice_preferSecure(boolean b)
    {
        return (MyObjectPrx)_ice_preferSecure(b);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for the router.
     * @param router The router for the new proxy.
     * @return A proxy with the specified router.
     **/
    @Override
    default MyObjectPrx ice_router(com.zeroc.Ice.RouterPrx router)
    {
        return (MyObjectPrx)_ice_router(router);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for the locator.
     * @param locator The locator for the new proxy.
     * @return A proxy with the specified locator.
     **/
    @Override
    default MyObjectPrx ice_locator(com.zeroc.Ice.LocatorPrx locator)
    {
        return (MyObjectPrx)_ice_locator(locator);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for collocation optimization.
     * @param b <code>true</code> if the new proxy enables collocation optimization; <code>false</code> otherwise.
     * @return A proxy with the specified collocation optimization.
     **/
    @Override
    default MyObjectPrx ice_collocationOptimized(boolean b)
    {
        return (MyObjectPrx)_ice_collocationOptimized(b);
    }

    /**
     * Returns a proxy that is identical to this proxy, but uses twoway invocations.
     * @return A proxy that uses twoway invocations.
     **/
    @Override
    default MyObjectPrx ice_twoway()
    {
        return (MyObjectPrx)_ice_twoway();
    }

    /**
     * Returns a proxy that is identical to this proxy, but uses oneway invocations.
     * @return A proxy that uses oneway invocations.
     **/
    @Override
    default MyObjectPrx ice_oneway()
    {
        return (MyObjectPrx)_ice_oneway();
    }

    /**
     * Returns a proxy that is identical to this proxy, but uses batch oneway invocations.
     * @return A proxy that uses batch oneway invocations.
     **/
    @Override
    default MyObjectPrx ice_batchOneway()
    {
        return (MyObjectPrx)_ice_batchOneway();
    }

    /**
     * Returns a proxy that is identical to this proxy, but uses datagram invocations.
     * @return A proxy that uses datagram invocations.
     **/
    @Override
    default MyObjectPrx ice_datagram()
    {
        return (MyObjectPrx)_ice_datagram();
    }

    /**
     * Returns a proxy that is identical to this proxy, but uses batch datagram invocations.
     * @return A proxy that uses batch datagram invocations.
     **/
    @Override
    default MyObjectPrx ice_batchDatagram()
    {
        return (MyObjectPrx)_ice_batchDatagram();
    }

    /**
     * Returns a proxy that is identical to this proxy, except for compression.
     * @param co <code>true</code> enables compression for the new proxy; <code>false</code> disables compression.
     * @return A proxy with the specified compression setting.
     **/
    @Override
    default MyObjectPrx ice_compress(boolean co)
    {
        return (MyObjectPrx)_ice_compress(co);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for its connection timeout setting.
     * @param t The connection timeout for the proxy in milliseconds.
     * @return A proxy with the specified timeout.
     **/
    @Override
    default MyObjectPrx ice_timeout(int t)
    {
        return (MyObjectPrx)_ice_timeout(t);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for its connection ID.
     * @param connectionId The connection ID for the new proxy. An empty string removes the connection ID.
     * @return A proxy with the specified connection ID.
     **/
    @Override
    default MyObjectPrx ice_connectionId(String connectionId)
    {
        return (MyObjectPrx)_ice_connectionId(connectionId);
    }

    /**
     * Returns a proxy that is identical to this proxy, except it's a fixed proxy bound
     * the given connection.@param connection The fixed proxy connection.
     * @return A fixed proxy bound to the given connection.
     **/
    @Override
    default MyObjectPrx ice_fixed(com.zeroc.Ice.Connection connection)
    {
        return (MyObjectPrx)_ice_fixed(connection);
    }

    static String ice_staticId()
    {
        return "::Test::MyObject";
    }
}
