// Copyright (c) ZeroC, Inc.
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file 'Router.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>

package com.zeroc.Ice;

/**
 * This interface should be implemented by services implementing the Ice::Router interface. It should be advertised
 * through an Ice object with the identity 'Ice/RouterFinder'. This allows clients to retrieve the router proxy
 * with just the endpoint information of the service.
 **/
public interface RouterFinderPrx extends com.zeroc.Ice.ObjectPrx
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
    default com.zeroc.Ice.OutgoingAsync<RouterPrx> _iceI_getRouterAsync(java.util.Map<String, String> context, boolean sync)
    {
        com.zeroc.Ice.OutgoingAsync<RouterPrx> f = new com.zeroc.Ice.OutgoingAsync<>(this, "getRouter", null, sync, null);
        f.invoke(true, context, null, null, istr -> {
                     RouterPrx ret;
                     ret = RouterPrx.uncheckedCast(istr.readProxy());
                     return ret;
                 });
        return f;
    }

    /**
     * Creates a new proxy that implements {@link RouterFinderPrx}.
     * @param communicator The communicator of the new proxy.
     * @param proxyString The string representation of the proxy.
     * @return The new proxy.
     **/
    public static RouterFinderPrx createProxy(com.zeroc.Ice.Communicator communicator, String proxyString)
    {
        return new _RouterFinderPrxI(com.zeroc.Ice.ObjectPrx.createProxy(communicator, proxyString));
    }

    /**
     * Contacts the remote server to verify that the object implements this type.
     * Raises a local exception if a communication error occurs.
     * @param obj The untyped proxy.
     * @return A proxy for this type, or null if the object does not support this type.
     **/
    static RouterFinderPrx checkedCast(com.zeroc.Ice.ObjectPrx obj)
    {
        return checkedCast(obj, noExplicitContext);
    }

    /**
     * Contacts the remote server to verify that the object implements this type.
     * Raises a local exception if a communication error occurs.
     * @param obj The untyped proxy.
     * @param context The Context map to send with the invocation.
     * @return A proxy for this type, or null if the object does not support this type.
     **/
    static RouterFinderPrx checkedCast(com.zeroc.Ice.ObjectPrx obj, java.util.Map<String, String> context)
    {
        return (obj != null && obj.ice_isA(ice_staticId(), context)) ? new _RouterFinderPrxI(obj) : null;
    }

    /**
     * Contacts the remote server to verify that a facet of the object implements this type.
     * Raises a local exception if a communication error occurs.
     * @param obj The untyped proxy.
     * @param facet The name of the desired facet.
     * @return A proxy for this type, or null if the object does not support this type.
     **/
    static RouterFinderPrx checkedCast(com.zeroc.Ice.ObjectPrx obj, String facet)
    {
        return checkedCast(obj, facet, noExplicitContext);
    }

    /**
     * Contacts the remote server to verify that a facet of the object implements this type.
     * Raises a local exception if a communication error occurs.
     * @param obj The untyped proxy.
     * @param facet The name of the desired facet.
     * @param context The Context map to send with the invocation.
     * @return A proxy for this type, or null if the object does not support this type.
     **/
    static RouterFinderPrx checkedCast(com.zeroc.Ice.ObjectPrx obj, String facet, java.util.Map<String, String> context)
    {
        return (obj == null) ? null : checkedCast(obj.ice_facet(facet), context);
    }

    /**
     * Downcasts the given proxy to this type without contacting the remote server.
     * @param obj The untyped proxy.
     * @return A proxy for this type.
     **/
    static RouterFinderPrx uncheckedCast(com.zeroc.Ice.ObjectPrx obj)
    {
        return (obj == null) ? null : new _RouterFinderPrxI(obj);
    }

    /**
     * Downcasts the given proxy to this type without contacting the remote server.
     * @param obj The untyped proxy.
     * @param facet The name of the desired facet.
     * @return A proxy for this type.
     **/
    static RouterFinderPrx uncheckedCast(com.zeroc.Ice.ObjectPrx obj, String facet)
    {
        return (obj == null) ? null : new _RouterFinderPrxI(obj.ice_facet(facet));
    }

    @Override
    RouterFinderPrx ice_context(java.util.Map<String, String> newContext);

    @Override
    RouterFinderPrx ice_adapterId(String newAdapterId);

    @Override
    RouterFinderPrx ice_endpoints(com.zeroc.Ice.Endpoint[] newEndpoints);

    @Override
    RouterFinderPrx ice_locatorCacheTimeout(int newTimeout);

    @Override
    RouterFinderPrx ice_invocationTimeout(int newTimeout);

    @Override
    RouterFinderPrx ice_connectionCached(boolean newCache);

    @Override
    RouterFinderPrx ice_endpointSelection(com.zeroc.Ice.EndpointSelectionType newType);

    @Override
    RouterFinderPrx ice_secure(boolean b);

    @Override
    RouterFinderPrx ice_encodingVersion(com.zeroc.Ice.EncodingVersion e);

    @Override
    RouterFinderPrx ice_preferSecure(boolean b);

    @Override
    RouterFinderPrx ice_router(com.zeroc.Ice.RouterPrx router);

    @Override
    RouterFinderPrx ice_locator(com.zeroc.Ice.LocatorPrx locator);

    @Override
    RouterFinderPrx ice_collocationOptimized(boolean b);

    @Override
    RouterFinderPrx ice_twoway();

    @Override
    RouterFinderPrx ice_oneway();

    @Override
    RouterFinderPrx ice_batchOneway();

    @Override
    RouterFinderPrx ice_datagram();

    @Override
    RouterFinderPrx ice_batchDatagram();

    @Override
    RouterFinderPrx ice_compress(boolean co);

    @Override
    RouterFinderPrx ice_connectionId(String connectionId);

    @Override
    RouterFinderPrx ice_fixed(com.zeroc.Ice.Connection connection);

    static String ice_staticId()
    {
        return "::Ice::RouterFinder";
    }

    /**
     * @hidden
     **/
    @Override
    default RouterFinderPrx _newInstance(com.zeroc.Ice.Reference ref)
    {
        return new _RouterFinderPrxI(ref);
    }
}
