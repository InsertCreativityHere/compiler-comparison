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

public interface ClockPrx extends com.zeroc.Ice.ObjectPrx
{
    default void tick(String time)
    {
        tick(time, com.zeroc.Ice.ObjectPrx.noExplicitContext);
    }

    default void tick(String time, java.util.Map<String, String> context)
    {
        _iceI_tickAsync(time, context, true).waitForResponse();
    }

    default java.util.concurrent.CompletableFuture<Void> tickAsync(String time)
    {
        return _iceI_tickAsync(time, com.zeroc.Ice.ObjectPrx.noExplicitContext, false);
    }

    default java.util.concurrent.CompletableFuture<Void> tickAsync(String time, java.util.Map<String, String> context)
    {
        return _iceI_tickAsync(time, context, false);
    }

    /**
     * @hidden
     * @param iceP_time -
     * @param context -
     * @param sync -
     * @return -
     **/
    default com.zeroc.Ice.OutgoingAsync<Void> _iceI_tickAsync(String iceP_time, java.util.Map<String, String> context, boolean sync)
    {
        com.zeroc.Ice.OutgoingAsync<Void> f = new com.zeroc.Ice.OutgoingAsync<>(this, "tick", null, sync, null);
        f.invoke(false, context, null, ostr -> {
                     ostr.writeString(iceP_time);
                 }, null);
        return f;
    }

    /**
     * Creates a new proxy that implements {@link ClockPrx}.
     * @param communicator The communicator of the new proxy.
     * @param proxyString The string representation of the proxy.
     * @return The new proxy.
     **/
    public static ClockPrx createProxy(com.zeroc.Ice.Communicator communicator, String proxyString)
    {
        return new _ClockPrxI(com.zeroc.Ice.ObjectPrx.createProxy(communicator, proxyString));
    }

    /**
     * Contacts the remote server to verify that the object implements this type.
     * Raises a local exception if a communication error occurs.
     * @param obj The untyped proxy.
     * @return A proxy for this type, or null if the object does not support this type.
     **/
    static ClockPrx checkedCast(com.zeroc.Ice.ObjectPrx obj)
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
    static ClockPrx checkedCast(com.zeroc.Ice.ObjectPrx obj, java.util.Map<String, String> context)
    {
        return (obj != null && obj.ice_isA(ice_staticId(), context)) ? new _ClockPrxI(obj) : null;
    }

    /**
     * Contacts the remote server to verify that a facet of the object implements this type.
     * Raises a local exception if a communication error occurs.
     * @param obj The untyped proxy.
     * @param facet The name of the desired facet.
     * @return A proxy for this type, or null if the object does not support this type.
     **/
    static ClockPrx checkedCast(com.zeroc.Ice.ObjectPrx obj, String facet)
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
    static ClockPrx checkedCast(com.zeroc.Ice.ObjectPrx obj, String facet, java.util.Map<String, String> context)
    {
        return (obj == null) ? null : checkedCast(obj.ice_facet(facet), context);
    }

    /**
     * Downcasts the given proxy to this type without contacting the remote server.
     * @param obj The untyped proxy.
     * @return A proxy for this type.
     **/
    static ClockPrx uncheckedCast(com.zeroc.Ice.ObjectPrx obj)
    {
        return (obj == null) ? null : new _ClockPrxI(obj);
    }

    /**
     * Downcasts the given proxy to this type without contacting the remote server.
     * @param obj The untyped proxy.
     * @param facet The name of the desired facet.
     * @return A proxy for this type.
     **/
    static ClockPrx uncheckedCast(com.zeroc.Ice.ObjectPrx obj, String facet)
    {
        return (obj == null) ? null : new _ClockPrxI(obj.ice_facet(facet));
    }

    @Override
    ClockPrx ice_context(java.util.Map<String, String> newContext);

    @Override
    ClockPrx ice_adapterId(String newAdapterId);

    @Override
    ClockPrx ice_endpoints(com.zeroc.Ice.Endpoint[] newEndpoints);

    @Override
    ClockPrx ice_locatorCacheTimeout(int newTimeout);

    @Override
    ClockPrx ice_invocationTimeout(int newTimeout);

    @Override
    ClockPrx ice_connectionCached(boolean newCache);

    @Override
    ClockPrx ice_endpointSelection(com.zeroc.Ice.EndpointSelectionType newType);

    @Override
    ClockPrx ice_secure(boolean b);

    @Override
    ClockPrx ice_encodingVersion(com.zeroc.Ice.EncodingVersion e);

    @Override
    ClockPrx ice_preferSecure(boolean b);

    @Override
    ClockPrx ice_router(com.zeroc.Ice.RouterPrx router);

    @Override
    ClockPrx ice_locator(com.zeroc.Ice.LocatorPrx locator);

    @Override
    ClockPrx ice_collocationOptimized(boolean b);

    @Override
    ClockPrx ice_twoway();

    @Override
    ClockPrx ice_oneway();

    @Override
    ClockPrx ice_batchOneway();

    @Override
    ClockPrx ice_datagram();

    @Override
    ClockPrx ice_batchDatagram();

    @Override
    ClockPrx ice_compress(boolean co);

    @Override
    ClockPrx ice_connectionId(String connectionId);

    @Override
    ClockPrx ice_fixed(com.zeroc.Ice.Connection connection);

    static String ice_staticId()
    {
        return "::Test::Clock";
    }

    /**
     * @hidden
     **/
    @Override
    default ClockPrx _newInstance(com.zeroc.Ice.Reference ref)
    {
        return new _ClockPrxI(ref);
    }
}
