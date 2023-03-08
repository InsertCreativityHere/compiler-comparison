//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.7.9
//
// <auto-generated>
//
// Generated from file `ServerPrivateAMD.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

package test.Ice.slicing.exceptions.serverAMD.Test;

public interface RelayPrx extends com.zeroc.Ice.ObjectPrx
{
    default void knownPreservedAsBase()
        throws Base
    {
        knownPreservedAsBase(com.zeroc.Ice.ObjectPrx.noExplicitContext);
    }

    default void knownPreservedAsBase(java.util.Map<String, String> context)
        throws Base
    {
        try
        {
            _iceI_knownPreservedAsBaseAsync(context, true).waitForResponseOrUserEx();
        }
        catch(Base ex)
        {
            throw ex;
        }
        catch(com.zeroc.Ice.UserException ex)
        {
            throw new com.zeroc.Ice.UnknownUserException(ex.ice_id(), ex);
        }
    }

    default java.util.concurrent.CompletableFuture<Void> knownPreservedAsBaseAsync()
    {
        return _iceI_knownPreservedAsBaseAsync(com.zeroc.Ice.ObjectPrx.noExplicitContext, false);
    }

    default java.util.concurrent.CompletableFuture<Void> knownPreservedAsBaseAsync(java.util.Map<String, String> context)
    {
        return _iceI_knownPreservedAsBaseAsync(context, false);
    }

    /**
     * @hidden
     * @param context -
     * @param sync -
     * @return -
     **/
    default com.zeroc.IceInternal.OutgoingAsync<Void> _iceI_knownPreservedAsBaseAsync(java.util.Map<String, String> context, boolean sync)
    {
        com.zeroc.IceInternal.OutgoingAsync<Void> f = new com.zeroc.IceInternal.OutgoingAsync<>(this, "knownPreservedAsBase", null, sync, _iceE_knownPreservedAsBase);
        f.invoke(true, context, com.zeroc.Ice.FormatType.SlicedFormat, null, null);
        return f;
    }

    /** @hidden */
    static final Class<?>[] _iceE_knownPreservedAsBase =
    {
        Base.class
    };

    default void knownPreservedAsKnownPreserved()
        throws KnownPreserved
    {
        knownPreservedAsKnownPreserved(com.zeroc.Ice.ObjectPrx.noExplicitContext);
    }

    default void knownPreservedAsKnownPreserved(java.util.Map<String, String> context)
        throws KnownPreserved
    {
        try
        {
            _iceI_knownPreservedAsKnownPreservedAsync(context, true).waitForResponseOrUserEx();
        }
        catch(KnownPreserved ex)
        {
            throw ex;
        }
        catch(com.zeroc.Ice.UserException ex)
        {
            throw new com.zeroc.Ice.UnknownUserException(ex.ice_id(), ex);
        }
    }

    default java.util.concurrent.CompletableFuture<Void> knownPreservedAsKnownPreservedAsync()
    {
        return _iceI_knownPreservedAsKnownPreservedAsync(com.zeroc.Ice.ObjectPrx.noExplicitContext, false);
    }

    default java.util.concurrent.CompletableFuture<Void> knownPreservedAsKnownPreservedAsync(java.util.Map<String, String> context)
    {
        return _iceI_knownPreservedAsKnownPreservedAsync(context, false);
    }

    /**
     * @hidden
     * @param context -
     * @param sync -
     * @return -
     **/
    default com.zeroc.IceInternal.OutgoingAsync<Void> _iceI_knownPreservedAsKnownPreservedAsync(java.util.Map<String, String> context, boolean sync)
    {
        com.zeroc.IceInternal.OutgoingAsync<Void> f = new com.zeroc.IceInternal.OutgoingAsync<>(this, "knownPreservedAsKnownPreserved", null, sync, _iceE_knownPreservedAsKnownPreserved);
        f.invoke(true, context, com.zeroc.Ice.FormatType.SlicedFormat, null, null);
        return f;
    }

    /** @hidden */
    static final Class<?>[] _iceE_knownPreservedAsKnownPreserved =
    {
        KnownPreserved.class
    };

    default void unknownPreservedAsBase()
        throws Base
    {
        unknownPreservedAsBase(com.zeroc.Ice.ObjectPrx.noExplicitContext);
    }

    default void unknownPreservedAsBase(java.util.Map<String, String> context)
        throws Base
    {
        try
        {
            _iceI_unknownPreservedAsBaseAsync(context, true).waitForResponseOrUserEx();
        }
        catch(Base ex)
        {
            throw ex;
        }
        catch(com.zeroc.Ice.UserException ex)
        {
            throw new com.zeroc.Ice.UnknownUserException(ex.ice_id(), ex);
        }
    }

    default java.util.concurrent.CompletableFuture<Void> unknownPreservedAsBaseAsync()
    {
        return _iceI_unknownPreservedAsBaseAsync(com.zeroc.Ice.ObjectPrx.noExplicitContext, false);
    }

    default java.util.concurrent.CompletableFuture<Void> unknownPreservedAsBaseAsync(java.util.Map<String, String> context)
    {
        return _iceI_unknownPreservedAsBaseAsync(context, false);
    }

    /**
     * @hidden
     * @param context -
     * @param sync -
     * @return -
     **/
    default com.zeroc.IceInternal.OutgoingAsync<Void> _iceI_unknownPreservedAsBaseAsync(java.util.Map<String, String> context, boolean sync)
    {
        com.zeroc.IceInternal.OutgoingAsync<Void> f = new com.zeroc.IceInternal.OutgoingAsync<>(this, "unknownPreservedAsBase", null, sync, _iceE_unknownPreservedAsBase);
        f.invoke(true, context, com.zeroc.Ice.FormatType.SlicedFormat, null, null);
        return f;
    }

    /** @hidden */
    static final Class<?>[] _iceE_unknownPreservedAsBase =
    {
        Base.class
    };

    default void unknownPreservedAsKnownPreserved()
        throws KnownPreserved
    {
        unknownPreservedAsKnownPreserved(com.zeroc.Ice.ObjectPrx.noExplicitContext);
    }

    default void unknownPreservedAsKnownPreserved(java.util.Map<String, String> context)
        throws KnownPreserved
    {
        try
        {
            _iceI_unknownPreservedAsKnownPreservedAsync(context, true).waitForResponseOrUserEx();
        }
        catch(KnownPreserved ex)
        {
            throw ex;
        }
        catch(com.zeroc.Ice.UserException ex)
        {
            throw new com.zeroc.Ice.UnknownUserException(ex.ice_id(), ex);
        }
    }

    default java.util.concurrent.CompletableFuture<Void> unknownPreservedAsKnownPreservedAsync()
    {
        return _iceI_unknownPreservedAsKnownPreservedAsync(com.zeroc.Ice.ObjectPrx.noExplicitContext, false);
    }

    default java.util.concurrent.CompletableFuture<Void> unknownPreservedAsKnownPreservedAsync(java.util.Map<String, String> context)
    {
        return _iceI_unknownPreservedAsKnownPreservedAsync(context, false);
    }

    /**
     * @hidden
     * @param context -
     * @param sync -
     * @return -
     **/
    default com.zeroc.IceInternal.OutgoingAsync<Void> _iceI_unknownPreservedAsKnownPreservedAsync(java.util.Map<String, String> context, boolean sync)
    {
        com.zeroc.IceInternal.OutgoingAsync<Void> f = new com.zeroc.IceInternal.OutgoingAsync<>(this, "unknownPreservedAsKnownPreserved", null, sync, _iceE_unknownPreservedAsKnownPreserved);
        f.invoke(true, context, com.zeroc.Ice.FormatType.SlicedFormat, null, null);
        return f;
    }

    /** @hidden */
    static final Class<?>[] _iceE_unknownPreservedAsKnownPreserved =
    {
        KnownPreserved.class
    };

    /**
     * Contacts the remote server to verify that the object implements this type.
     * Raises a local exception if a communication error occurs.
     * @param obj The untyped proxy.
     * @return A proxy for this type, or null if the object does not support this type.
     **/
    static RelayPrx checkedCast(com.zeroc.Ice.ObjectPrx obj)
    {
        return com.zeroc.Ice.ObjectPrx._checkedCast(obj, ice_staticId(), RelayPrx.class, _RelayPrxI.class);
    }

    /**
     * Contacts the remote server to verify that the object implements this type.
     * Raises a local exception if a communication error occurs.
     * @param obj The untyped proxy.
     * @param context The Context map to send with the invocation.
     * @return A proxy for this type, or null if the object does not support this type.
     **/
    static RelayPrx checkedCast(com.zeroc.Ice.ObjectPrx obj, java.util.Map<String, String> context)
    {
        return com.zeroc.Ice.ObjectPrx._checkedCast(obj, context, ice_staticId(), RelayPrx.class, _RelayPrxI.class);
    }

    /**
     * Contacts the remote server to verify that a facet of the object implements this type.
     * Raises a local exception if a communication error occurs.
     * @param obj The untyped proxy.
     * @param facet The name of the desired facet.
     * @return A proxy for this type, or null if the object does not support this type.
     **/
    static RelayPrx checkedCast(com.zeroc.Ice.ObjectPrx obj, String facet)
    {
        return com.zeroc.Ice.ObjectPrx._checkedCast(obj, facet, ice_staticId(), RelayPrx.class, _RelayPrxI.class);
    }

    /**
     * Contacts the remote server to verify that a facet of the object implements this type.
     * Raises a local exception if a communication error occurs.
     * @param obj The untyped proxy.
     * @param facet The name of the desired facet.
     * @param context The Context map to send with the invocation.
     * @return A proxy for this type, or null if the object does not support this type.
     **/
    static RelayPrx checkedCast(com.zeroc.Ice.ObjectPrx obj, String facet, java.util.Map<String, String> context)
    {
        return com.zeroc.Ice.ObjectPrx._checkedCast(obj, facet, context, ice_staticId(), RelayPrx.class, _RelayPrxI.class);
    }

    /**
     * Downcasts the given proxy to this type without contacting the remote server.
     * @param obj The untyped proxy.
     * @return A proxy for this type.
     **/
    static RelayPrx uncheckedCast(com.zeroc.Ice.ObjectPrx obj)
    {
        return com.zeroc.Ice.ObjectPrx._uncheckedCast(obj, RelayPrx.class, _RelayPrxI.class);
    }

    /**
     * Downcasts the given proxy to this type without contacting the remote server.
     * @param obj The untyped proxy.
     * @param facet The name of the desired facet.
     * @return A proxy for this type.
     **/
    static RelayPrx uncheckedCast(com.zeroc.Ice.ObjectPrx obj, String facet)
    {
        return com.zeroc.Ice.ObjectPrx._uncheckedCast(obj, facet, RelayPrx.class, _RelayPrxI.class);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for the per-proxy context.
     * @param newContext The context for the new proxy.
     * @return A proxy with the specified per-proxy context.
     **/
    @Override
    default RelayPrx ice_context(java.util.Map<String, String> newContext)
    {
        return (RelayPrx)_ice_context(newContext);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for the adapter ID.
     * @param newAdapterId The adapter ID for the new proxy.
     * @return A proxy with the specified adapter ID.
     **/
    @Override
    default RelayPrx ice_adapterId(String newAdapterId)
    {
        return (RelayPrx)_ice_adapterId(newAdapterId);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for the endpoints.
     * @param newEndpoints The endpoints for the new proxy.
     * @return A proxy with the specified endpoints.
     **/
    @Override
    default RelayPrx ice_endpoints(com.zeroc.Ice.Endpoint[] newEndpoints)
    {
        return (RelayPrx)_ice_endpoints(newEndpoints);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for the locator cache timeout.
     * @param newTimeout The new locator cache timeout (in seconds).
     * @return A proxy with the specified locator cache timeout.
     **/
    @Override
    default RelayPrx ice_locatorCacheTimeout(int newTimeout)
    {
        return (RelayPrx)_ice_locatorCacheTimeout(newTimeout);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for the invocation timeout.
     * @param newTimeout The new invocation timeout (in seconds).
     * @return A proxy with the specified invocation timeout.
     **/
    @Override
    default RelayPrx ice_invocationTimeout(int newTimeout)
    {
        return (RelayPrx)_ice_invocationTimeout(newTimeout);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for connection caching.
     * @param newCache <code>true</code> if the new proxy should cache connections; <code>false</code> otherwise.
     * @return A proxy with the specified caching policy.
     **/
    @Override
    default RelayPrx ice_connectionCached(boolean newCache)
    {
        return (RelayPrx)_ice_connectionCached(newCache);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for the endpoint selection policy.
     * @param newType The new endpoint selection policy.
     * @return A proxy with the specified endpoint selection policy.
     **/
    @Override
    default RelayPrx ice_endpointSelection(com.zeroc.Ice.EndpointSelectionType newType)
    {
        return (RelayPrx)_ice_endpointSelection(newType);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for how it selects endpoints.
     * @param b If <code>b</code> is <code>true</code>, only endpoints that use a secure transport are
     * used by the new proxy. If <code>b</code> is false, the returned proxy uses both secure and
     * insecure endpoints.
     * @return A proxy with the specified selection policy.
     **/
    @Override
    default RelayPrx ice_secure(boolean b)
    {
        return (RelayPrx)_ice_secure(b);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for the encoding used to marshal parameters.
     * @param e The encoding version to use to marshal request parameters.
     * @return A proxy with the specified encoding version.
     **/
    @Override
    default RelayPrx ice_encodingVersion(com.zeroc.Ice.EncodingVersion e)
    {
        return (RelayPrx)_ice_encodingVersion(e);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for its endpoint selection policy.
     * @param b If <code>b</code> is <code>true</code>, the new proxy will use secure endpoints for invocations
     * and only use insecure endpoints if an invocation cannot be made via secure endpoints. If <code>b</code> is
     * <code>false</code>, the proxy prefers insecure endpoints to secure ones.
     * @return A proxy with the specified selection policy.
     **/
    @Override
    default RelayPrx ice_preferSecure(boolean b)
    {
        return (RelayPrx)_ice_preferSecure(b);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for the router.
     * @param router The router for the new proxy.
     * @return A proxy with the specified router.
     **/
    @Override
    default RelayPrx ice_router(com.zeroc.Ice.RouterPrx router)
    {
        return (RelayPrx)_ice_router(router);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for the locator.
     * @param locator The locator for the new proxy.
     * @return A proxy with the specified locator.
     **/
    @Override
    default RelayPrx ice_locator(com.zeroc.Ice.LocatorPrx locator)
    {
        return (RelayPrx)_ice_locator(locator);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for collocation optimization.
     * @param b <code>true</code> if the new proxy enables collocation optimization; <code>false</code> otherwise.
     * @return A proxy with the specified collocation optimization.
     **/
    @Override
    default RelayPrx ice_collocationOptimized(boolean b)
    {
        return (RelayPrx)_ice_collocationOptimized(b);
    }

    /**
     * Returns a proxy that is identical to this proxy, but uses twoway invocations.
     * @return A proxy that uses twoway invocations.
     **/
    @Override
    default RelayPrx ice_twoway()
    {
        return (RelayPrx)_ice_twoway();
    }

    /**
     * Returns a proxy that is identical to this proxy, but uses oneway invocations.
     * @return A proxy that uses oneway invocations.
     **/
    @Override
    default RelayPrx ice_oneway()
    {
        return (RelayPrx)_ice_oneway();
    }

    /**
     * Returns a proxy that is identical to this proxy, but uses batch oneway invocations.
     * @return A proxy that uses batch oneway invocations.
     **/
    @Override
    default RelayPrx ice_batchOneway()
    {
        return (RelayPrx)_ice_batchOneway();
    }

    /**
     * Returns a proxy that is identical to this proxy, but uses datagram invocations.
     * @return A proxy that uses datagram invocations.
     **/
    @Override
    default RelayPrx ice_datagram()
    {
        return (RelayPrx)_ice_datagram();
    }

    /**
     * Returns a proxy that is identical to this proxy, but uses batch datagram invocations.
     * @return A proxy that uses batch datagram invocations.
     **/
    @Override
    default RelayPrx ice_batchDatagram()
    {
        return (RelayPrx)_ice_batchDatagram();
    }

    /**
     * Returns a proxy that is identical to this proxy, except for compression.
     * @param co <code>true</code> enables compression for the new proxy; <code>false</code> disables compression.
     * @return A proxy with the specified compression setting.
     **/
    @Override
    default RelayPrx ice_compress(boolean co)
    {
        return (RelayPrx)_ice_compress(co);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for its connection timeout setting.
     * @param t The connection timeout for the proxy in milliseconds.
     * @return A proxy with the specified timeout.
     **/
    @Override
    default RelayPrx ice_timeout(int t)
    {
        return (RelayPrx)_ice_timeout(t);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for its connection ID.
     * @param connectionId The connection ID for the new proxy. An empty string removes the connection ID.
     * @return A proxy with the specified connection ID.
     **/
    @Override
    default RelayPrx ice_connectionId(String connectionId)
    {
        return (RelayPrx)_ice_connectionId(connectionId);
    }

    /**
     * Returns a proxy that is identical to this proxy, except it's a fixed proxy bound
     * the given connection.@param connection The fixed proxy connection.
     * @return A fixed proxy bound to the given connection.
     **/
    @Override
    default RelayPrx ice_fixed(com.zeroc.Ice.Connection connection)
    {
        return (RelayPrx)_ice_fixed(connection);
    }

    static String ice_staticId()
    {
        return "::Test::Relay";
    }
}
