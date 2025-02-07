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

public interface DelayedTestIntfPrx extends com.zeroc.Ice.ObjectPrx
{
    default void sleep(int ms)
    {
        sleep(ms, com.zeroc.Ice.ObjectPrx.noExplicitContext);
    }

    default void sleep(int ms, java.util.Map<String, String> context)
    {
        _iceI_sleepAsync(ms, context, true).waitForResponse();
    }

    default java.util.concurrent.CompletableFuture<Void> sleepAsync(int ms)
    {
        return _iceI_sleepAsync(ms, com.zeroc.Ice.ObjectPrx.noExplicitContext, false);
    }

    default java.util.concurrent.CompletableFuture<Void> sleepAsync(int ms, java.util.Map<String, String> context)
    {
        return _iceI_sleepAsync(ms, context, false);
    }

    /**
     * @hidden
     * @param iceP_ms -
     * @param context -
     * @param sync -
     * @return -
     **/
    default com.zeroc.Ice.OutgoingAsync<Void> _iceI_sleepAsync(int iceP_ms, java.util.Map<String, String> context, boolean sync)
    {
        com.zeroc.Ice.OutgoingAsync<Void> f = new com.zeroc.Ice.OutgoingAsync<>(this, "sleep", null, sync, null);
        f.invoke(false, context, null, ostr -> {
                     ostr.writeInt(iceP_ms);
                 }, null);
        return f;
    }

    /**
     * Creates a new proxy that implements {@link DelayedTestIntfPrx}.
     * @param communicator The communicator of the new proxy.
     * @param proxyString The string representation of the proxy.
     * @return The new proxy.
     **/
    public static DelayedTestIntfPrx createProxy(com.zeroc.Ice.Communicator communicator, String proxyString)
    {
        return new _DelayedTestIntfPrxI(com.zeroc.Ice.ObjectPrx.createProxy(communicator, proxyString));
    }

    /**
     * Contacts the remote server to verify that the object implements this type.
     * Raises a local exception if a communication error occurs.
     * @param obj The untyped proxy.
     * @return A proxy for this type, or null if the object does not support this type.
     **/
    static DelayedTestIntfPrx checkedCast(com.zeroc.Ice.ObjectPrx obj)
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
    static DelayedTestIntfPrx checkedCast(com.zeroc.Ice.ObjectPrx obj, java.util.Map<String, String> context)
    {
        return (obj != null && obj.ice_isA(ice_staticId(), context)) ? new _DelayedTestIntfPrxI(obj) : null;
    }

    /**
     * Contacts the remote server to verify that a facet of the object implements this type.
     * Raises a local exception if a communication error occurs.
     * @param obj The untyped proxy.
     * @param facet The name of the desired facet.
     * @return A proxy for this type, or null if the object does not support this type.
     **/
    static DelayedTestIntfPrx checkedCast(com.zeroc.Ice.ObjectPrx obj, String facet)
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
    static DelayedTestIntfPrx checkedCast(com.zeroc.Ice.ObjectPrx obj, String facet, java.util.Map<String, String> context)
    {
        return (obj == null) ? null : checkedCast(obj.ice_facet(facet), context);
    }

    /**
     * Downcasts the given proxy to this type without contacting the remote server.
     * @param obj The untyped proxy.
     * @return A proxy for this type.
     **/
    static DelayedTestIntfPrx uncheckedCast(com.zeroc.Ice.ObjectPrx obj)
    {
        return (obj == null) ? null : new _DelayedTestIntfPrxI(obj);
    }

    /**
     * Downcasts the given proxy to this type without contacting the remote server.
     * @param obj The untyped proxy.
     * @param facet The name of the desired facet.
     * @return A proxy for this type.
     **/
    static DelayedTestIntfPrx uncheckedCast(com.zeroc.Ice.ObjectPrx obj, String facet)
    {
        return (obj == null) ? null : new _DelayedTestIntfPrxI(obj.ice_facet(facet));
    }

    @Override
    DelayedTestIntfPrx ice_context(java.util.Map<String, String> newContext);

    @Override
    DelayedTestIntfPrx ice_adapterId(String newAdapterId);

    @Override
    DelayedTestIntfPrx ice_endpoints(com.zeroc.Ice.Endpoint[] newEndpoints);

    @Override
    DelayedTestIntfPrx ice_locatorCacheTimeout(int newTimeout);

    @Override
    DelayedTestIntfPrx ice_invocationTimeout(int newTimeout);

    @Override
    DelayedTestIntfPrx ice_connectionCached(boolean newCache);

    @Override
    DelayedTestIntfPrx ice_endpointSelection(com.zeroc.Ice.EndpointSelectionType newType);

    @Override
    DelayedTestIntfPrx ice_secure(boolean b);

    @Override
    DelayedTestIntfPrx ice_encodingVersion(com.zeroc.Ice.EncodingVersion e);

    @Override
    DelayedTestIntfPrx ice_preferSecure(boolean b);

    @Override
    DelayedTestIntfPrx ice_router(com.zeroc.Ice.RouterPrx router);

    @Override
    DelayedTestIntfPrx ice_locator(com.zeroc.Ice.LocatorPrx locator);

    @Override
    DelayedTestIntfPrx ice_collocationOptimized(boolean b);

    @Override
    DelayedTestIntfPrx ice_twoway();

    @Override
    DelayedTestIntfPrx ice_oneway();

    @Override
    DelayedTestIntfPrx ice_batchOneway();

    @Override
    DelayedTestIntfPrx ice_datagram();

    @Override
    DelayedTestIntfPrx ice_batchDatagram();

    @Override
    DelayedTestIntfPrx ice_compress(boolean co);

    @Override
    DelayedTestIntfPrx ice_connectionId(String connectionId);

    @Override
    DelayedTestIntfPrx ice_fixed(com.zeroc.Ice.Connection connection);

    static String ice_staticId()
    {
        return "::Test::DelayedTestIntf";
    }

    /**
     * @hidden
     **/
    @Override
    default DelayedTestIntfPrx _newInstance(com.zeroc.Ice.Reference ref)
    {
        return new _DelayedTestIntfPrxI(ref);
    }
}
