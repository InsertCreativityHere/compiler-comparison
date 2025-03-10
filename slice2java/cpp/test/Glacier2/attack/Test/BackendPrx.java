// Copyright (c) ZeroC, Inc.
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file 'Backend.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>

package Test;

public interface BackendPrx extends com.zeroc.Ice.ObjectPrx
{
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
    default com.zeroc.Ice.OutgoingAsync<Void> _iceI_shutdownAsync(java.util.Map<String, String> context, boolean sync)
    {
        com.zeroc.Ice.OutgoingAsync<Void> f = new com.zeroc.Ice.OutgoingAsync<>(this, "shutdown", null, sync, null);
        f.invoke(false, context, null, null, null);
        return f;
    }

    /**
     * Creates a new proxy that implements {@link BackendPrx}.
     * @param communicator The communicator of the new proxy.
     * @param proxyString The string representation of the proxy.
     * @return The new proxy.
     **/
    public static BackendPrx createProxy(com.zeroc.Ice.Communicator communicator, String proxyString)
    {
        return new _BackendPrxI(com.zeroc.Ice.ObjectPrx.createProxy(communicator, proxyString));
    }

    /**
     * Contacts the remote server to verify that the object implements this type.
     * Raises a local exception if a communication error occurs.
     * @param obj The untyped proxy.
     * @return A proxy for this type, or null if the object does not support this type.
     **/
    static BackendPrx checkedCast(com.zeroc.Ice.ObjectPrx obj)
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
    static BackendPrx checkedCast(com.zeroc.Ice.ObjectPrx obj, java.util.Map<String, String> context)
    {
        return (obj != null && obj.ice_isA(ice_staticId(), context)) ? new _BackendPrxI(obj) : null;
    }

    /**
     * Contacts the remote server to verify that a facet of the object implements this type.
     * Raises a local exception if a communication error occurs.
     * @param obj The untyped proxy.
     * @param facet The name of the desired facet.
     * @return A proxy for this type, or null if the object does not support this type.
     **/
    static BackendPrx checkedCast(com.zeroc.Ice.ObjectPrx obj, String facet)
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
    static BackendPrx checkedCast(com.zeroc.Ice.ObjectPrx obj, String facet, java.util.Map<String, String> context)
    {
        return (obj == null) ? null : checkedCast(obj.ice_facet(facet), context);
    }

    /**
     * Downcasts the given proxy to this type without contacting the remote server.
     * @param obj The untyped proxy.
     * @return A proxy for this type.
     **/
    static BackendPrx uncheckedCast(com.zeroc.Ice.ObjectPrx obj)
    {
        return (obj == null) ? null : new _BackendPrxI(obj);
    }

    /**
     * Downcasts the given proxy to this type without contacting the remote server.
     * @param obj The untyped proxy.
     * @param facet The name of the desired facet.
     * @return A proxy for this type.
     **/
    static BackendPrx uncheckedCast(com.zeroc.Ice.ObjectPrx obj, String facet)
    {
        return (obj == null) ? null : new _BackendPrxI(obj.ice_facet(facet));
    }

    @Override
    BackendPrx ice_context(java.util.Map<String, String> newContext);

    @Override
    BackendPrx ice_adapterId(String newAdapterId);

    @Override
    BackendPrx ice_endpoints(com.zeroc.Ice.Endpoint[] newEndpoints);

    @Override
    BackendPrx ice_locatorCacheTimeout(int newTimeout);

    @Override
    BackendPrx ice_invocationTimeout(int newTimeout);

    @Override
    BackendPrx ice_connectionCached(boolean newCache);

    @Override
    BackendPrx ice_endpointSelection(com.zeroc.Ice.EndpointSelectionType newType);

    @Override
    BackendPrx ice_secure(boolean b);

    @Override
    BackendPrx ice_encodingVersion(com.zeroc.Ice.EncodingVersion e);

    @Override
    BackendPrx ice_preferSecure(boolean b);

    @Override
    BackendPrx ice_router(com.zeroc.Ice.RouterPrx router);

    @Override
    BackendPrx ice_locator(com.zeroc.Ice.LocatorPrx locator);

    @Override
    BackendPrx ice_collocationOptimized(boolean b);

    @Override
    BackendPrx ice_twoway();

    @Override
    BackendPrx ice_oneway();

    @Override
    BackendPrx ice_batchOneway();

    @Override
    BackendPrx ice_datagram();

    @Override
    BackendPrx ice_batchDatagram();

    @Override
    BackendPrx ice_compress(boolean co);

    @Override
    BackendPrx ice_connectionId(String connectionId);

    @Override
    BackendPrx ice_fixed(com.zeroc.Ice.Connection connection);

    static String ice_staticId()
    {
        return "::Test::Backend";
    }

    /**
     * @hidden
     **/
    @Override
    default BackendPrx _newInstance(com.zeroc.Ice.Reference ref)
    {
        return new _BackendPrxI(ref);
    }
}
