// Copyright (c) ZeroC, Inc.
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file 'Test.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>

package Test;

public interface CallbackPrx extends com.zeroc.Ice.ObjectPrx
{
    default void ping()
    {
        ping(com.zeroc.Ice.ObjectPrx.noExplicitContext);
    }

    default void ping(java.util.Map<String, String> context)
    {
        _iceI_pingAsync(context, true).waitForResponse();
    }

    default java.util.concurrent.CompletableFuture<Void> pingAsync()
    {
        return _iceI_pingAsync(com.zeroc.Ice.ObjectPrx.noExplicitContext, false);
    }

    default java.util.concurrent.CompletableFuture<Void> pingAsync(java.util.Map<String, String> context)
    {
        return _iceI_pingAsync(context, false);
    }

    /**
     * @hidden
     * @param context -
     * @param sync -
     * @return -
     **/
    default com.zeroc.Ice.OutgoingAsync<Void> _iceI_pingAsync(java.util.Map<String, String> context, boolean sync)
    {
        com.zeroc.Ice.OutgoingAsync<Void> f = new com.zeroc.Ice.OutgoingAsync<>(this, "ping", null, sync, null);
        f.invoke(false, context, null, null, null);
        return f;
    }

    default int getCount()
    {
        return getCount(com.zeroc.Ice.ObjectPrx.noExplicitContext);
    }

    default int getCount(java.util.Map<String, String> context)
    {
        return _iceI_getCountAsync(context, true).waitForResponse();
    }

    default java.util.concurrent.CompletableFuture<java.lang.Integer> getCountAsync()
    {
        return _iceI_getCountAsync(com.zeroc.Ice.ObjectPrx.noExplicitContext, false);
    }

    default java.util.concurrent.CompletableFuture<java.lang.Integer> getCountAsync(java.util.Map<String, String> context)
    {
        return _iceI_getCountAsync(context, false);
    }

    /**
     * @hidden
     * @param context -
     * @param sync -
     * @return -
     **/
    default com.zeroc.Ice.OutgoingAsync<java.lang.Integer> _iceI_getCountAsync(java.util.Map<String, String> context, boolean sync)
    {
        com.zeroc.Ice.OutgoingAsync<java.lang.Integer> f = new com.zeroc.Ice.OutgoingAsync<>(this, "getCount", null, sync, null);
        f.invoke(true, context, null, null, istr -> {
                     int ret;
                     ret = istr.readInt();
                     return ret;
                 });
        return f;
    }

    default void datagram()
    {
        datagram(com.zeroc.Ice.ObjectPrx.noExplicitContext);
    }

    default void datagram(java.util.Map<String, String> context)
    {
        _iceI_datagramAsync(context, true).waitForResponse();
    }

    default java.util.concurrent.CompletableFuture<Void> datagramAsync()
    {
        return _iceI_datagramAsync(com.zeroc.Ice.ObjectPrx.noExplicitContext, false);
    }

    default java.util.concurrent.CompletableFuture<Void> datagramAsync(java.util.Map<String, String> context)
    {
        return _iceI_datagramAsync(context, false);
    }

    /**
     * @hidden
     * @param context -
     * @param sync -
     * @return -
     **/
    default com.zeroc.Ice.OutgoingAsync<Void> _iceI_datagramAsync(java.util.Map<String, String> context, boolean sync)
    {
        com.zeroc.Ice.OutgoingAsync<Void> f = new com.zeroc.Ice.OutgoingAsync<>(this, "datagram", null, sync, null);
        f.invoke(false, context, null, null, null);
        return f;
    }

    default int getDatagramCount()
    {
        return getDatagramCount(com.zeroc.Ice.ObjectPrx.noExplicitContext);
    }

    default int getDatagramCount(java.util.Map<String, String> context)
    {
        return _iceI_getDatagramCountAsync(context, true).waitForResponse();
    }

    default java.util.concurrent.CompletableFuture<java.lang.Integer> getDatagramCountAsync()
    {
        return _iceI_getDatagramCountAsync(com.zeroc.Ice.ObjectPrx.noExplicitContext, false);
    }

    default java.util.concurrent.CompletableFuture<java.lang.Integer> getDatagramCountAsync(java.util.Map<String, String> context)
    {
        return _iceI_getDatagramCountAsync(context, false);
    }

    /**
     * @hidden
     * @param context -
     * @param sync -
     * @return -
     **/
    default com.zeroc.Ice.OutgoingAsync<java.lang.Integer> _iceI_getDatagramCountAsync(java.util.Map<String, String> context, boolean sync)
    {
        com.zeroc.Ice.OutgoingAsync<java.lang.Integer> f = new com.zeroc.Ice.OutgoingAsync<>(this, "getDatagramCount", null, sync, null);
        f.invoke(true, context, null, null, istr -> {
                     int ret;
                     ret = istr.readInt();
                     return ret;
                 });
        return f;
    }

    /**
     * Creates a new proxy that implements {@link CallbackPrx}.
     * @param communicator The communicator of the new proxy.
     * @param proxyString The string representation of the proxy.
     * @return The new proxy.
     **/
    public static CallbackPrx createProxy(com.zeroc.Ice.Communicator communicator, String proxyString)
    {
        return new _CallbackPrxI(com.zeroc.Ice.ObjectPrx.createProxy(communicator, proxyString));
    }

    /**
     * Contacts the remote server to verify that the object implements this type.
     * Raises a local exception if a communication error occurs.
     * @param obj The untyped proxy.
     * @return A proxy for this type, or null if the object does not support this type.
     **/
    static CallbackPrx checkedCast(com.zeroc.Ice.ObjectPrx obj)
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
    static CallbackPrx checkedCast(com.zeroc.Ice.ObjectPrx obj, java.util.Map<String, String> context)
    {
        return (obj != null && obj.ice_isA(ice_staticId(), context)) ? new _CallbackPrxI(obj) : null;
    }

    /**
     * Contacts the remote server to verify that a facet of the object implements this type.
     * Raises a local exception if a communication error occurs.
     * @param obj The untyped proxy.
     * @param facet The name of the desired facet.
     * @return A proxy for this type, or null if the object does not support this type.
     **/
    static CallbackPrx checkedCast(com.zeroc.Ice.ObjectPrx obj, String facet)
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
    static CallbackPrx checkedCast(com.zeroc.Ice.ObjectPrx obj, String facet, java.util.Map<String, String> context)
    {
        return (obj == null) ? null : checkedCast(obj.ice_facet(facet), context);
    }

    /**
     * Downcasts the given proxy to this type without contacting the remote server.
     * @param obj The untyped proxy.
     * @return A proxy for this type.
     **/
    static CallbackPrx uncheckedCast(com.zeroc.Ice.ObjectPrx obj)
    {
        return (obj == null) ? null : new _CallbackPrxI(obj);
    }

    /**
     * Downcasts the given proxy to this type without contacting the remote server.
     * @param obj The untyped proxy.
     * @param facet The name of the desired facet.
     * @return A proxy for this type.
     **/
    static CallbackPrx uncheckedCast(com.zeroc.Ice.ObjectPrx obj, String facet)
    {
        return (obj == null) ? null : new _CallbackPrxI(obj.ice_facet(facet));
    }

    @Override
    CallbackPrx ice_context(java.util.Map<String, String> newContext);

    @Override
    CallbackPrx ice_adapterId(String newAdapterId);

    @Override
    CallbackPrx ice_endpoints(com.zeroc.Ice.Endpoint[] newEndpoints);

    @Override
    CallbackPrx ice_locatorCacheTimeout(int newTimeout);

    @Override
    CallbackPrx ice_invocationTimeout(int newTimeout);

    @Override
    CallbackPrx ice_connectionCached(boolean newCache);

    @Override
    CallbackPrx ice_endpointSelection(com.zeroc.Ice.EndpointSelectionType newType);

    @Override
    CallbackPrx ice_secure(boolean b);

    @Override
    CallbackPrx ice_encodingVersion(com.zeroc.Ice.EncodingVersion e);

    @Override
    CallbackPrx ice_preferSecure(boolean b);

    @Override
    CallbackPrx ice_router(com.zeroc.Ice.RouterPrx router);

    @Override
    CallbackPrx ice_locator(com.zeroc.Ice.LocatorPrx locator);

    @Override
    CallbackPrx ice_collocationOptimized(boolean b);

    @Override
    CallbackPrx ice_twoway();

    @Override
    CallbackPrx ice_oneway();

    @Override
    CallbackPrx ice_batchOneway();

    @Override
    CallbackPrx ice_datagram();

    @Override
    CallbackPrx ice_batchDatagram();

    @Override
    CallbackPrx ice_compress(boolean co);

    @Override
    CallbackPrx ice_connectionId(String connectionId);

    @Override
    CallbackPrx ice_fixed(com.zeroc.Ice.Connection connection);

    static String ice_staticId()
    {
        return "::Test::Callback";
    }

    /**
     * @hidden
     **/
    @Override
    default CallbackPrx _newInstance(com.zeroc.Ice.Reference ref)
    {
        return new _CallbackPrxI(ref);
    }
}
