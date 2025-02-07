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

public interface WrongOperationPrx extends com.zeroc.Ice.ObjectPrx
{
    default void noSuchOperation()
    {
        noSuchOperation(com.zeroc.Ice.ObjectPrx.noExplicitContext);
    }

    default void noSuchOperation(java.util.Map<String, String> context)
    {
        _iceI_noSuchOperationAsync(context, true).waitForResponse();
    }

    default java.util.concurrent.CompletableFuture<Void> noSuchOperationAsync()
    {
        return _iceI_noSuchOperationAsync(com.zeroc.Ice.ObjectPrx.noExplicitContext, false);
    }

    default java.util.concurrent.CompletableFuture<Void> noSuchOperationAsync(java.util.Map<String, String> context)
    {
        return _iceI_noSuchOperationAsync(context, false);
    }

    /**
     * @hidden
     * @param context -
     * @param sync -
     * @return -
     **/
    default com.zeroc.Ice.OutgoingAsync<Void> _iceI_noSuchOperationAsync(java.util.Map<String, String> context, boolean sync)
    {
        com.zeroc.Ice.OutgoingAsync<Void> f = new com.zeroc.Ice.OutgoingAsync<>(this, "noSuchOperation", null, sync, null);
        f.invoke(false, context, null, null, null);
        return f;
    }

    /**
     * Creates a new proxy that implements {@link WrongOperationPrx}.
     * @param communicator The communicator of the new proxy.
     * @param proxyString The string representation of the proxy.
     * @return The new proxy.
     **/
    public static WrongOperationPrx createProxy(com.zeroc.Ice.Communicator communicator, String proxyString)
    {
        return new _WrongOperationPrxI(com.zeroc.Ice.ObjectPrx.createProxy(communicator, proxyString));
    }

    /**
     * Contacts the remote server to verify that the object implements this type.
     * Raises a local exception if a communication error occurs.
     * @param obj The untyped proxy.
     * @return A proxy for this type, or null if the object does not support this type.
     **/
    static WrongOperationPrx checkedCast(com.zeroc.Ice.ObjectPrx obj)
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
    static WrongOperationPrx checkedCast(com.zeroc.Ice.ObjectPrx obj, java.util.Map<String, String> context)
    {
        return (obj != null && obj.ice_isA(ice_staticId(), context)) ? new _WrongOperationPrxI(obj) : null;
    }

    /**
     * Contacts the remote server to verify that a facet of the object implements this type.
     * Raises a local exception if a communication error occurs.
     * @param obj The untyped proxy.
     * @param facet The name of the desired facet.
     * @return A proxy for this type, or null if the object does not support this type.
     **/
    static WrongOperationPrx checkedCast(com.zeroc.Ice.ObjectPrx obj, String facet)
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
    static WrongOperationPrx checkedCast(com.zeroc.Ice.ObjectPrx obj, String facet, java.util.Map<String, String> context)
    {
        return (obj == null) ? null : checkedCast(obj.ice_facet(facet), context);
    }

    /**
     * Downcasts the given proxy to this type without contacting the remote server.
     * @param obj The untyped proxy.
     * @return A proxy for this type.
     **/
    static WrongOperationPrx uncheckedCast(com.zeroc.Ice.ObjectPrx obj)
    {
        return (obj == null) ? null : new _WrongOperationPrxI(obj);
    }

    /**
     * Downcasts the given proxy to this type without contacting the remote server.
     * @param obj The untyped proxy.
     * @param facet The name of the desired facet.
     * @return A proxy for this type.
     **/
    static WrongOperationPrx uncheckedCast(com.zeroc.Ice.ObjectPrx obj, String facet)
    {
        return (obj == null) ? null : new _WrongOperationPrxI(obj.ice_facet(facet));
    }

    @Override
    WrongOperationPrx ice_context(java.util.Map<String, String> newContext);

    @Override
    WrongOperationPrx ice_adapterId(String newAdapterId);

    @Override
    WrongOperationPrx ice_endpoints(com.zeroc.Ice.Endpoint[] newEndpoints);

    @Override
    WrongOperationPrx ice_locatorCacheTimeout(int newTimeout);

    @Override
    WrongOperationPrx ice_invocationTimeout(int newTimeout);

    @Override
    WrongOperationPrx ice_connectionCached(boolean newCache);

    @Override
    WrongOperationPrx ice_endpointSelection(com.zeroc.Ice.EndpointSelectionType newType);

    @Override
    WrongOperationPrx ice_secure(boolean b);

    @Override
    WrongOperationPrx ice_encodingVersion(com.zeroc.Ice.EncodingVersion e);

    @Override
    WrongOperationPrx ice_preferSecure(boolean b);

    @Override
    WrongOperationPrx ice_router(com.zeroc.Ice.RouterPrx router);

    @Override
    WrongOperationPrx ice_locator(com.zeroc.Ice.LocatorPrx locator);

    @Override
    WrongOperationPrx ice_collocationOptimized(boolean b);

    @Override
    WrongOperationPrx ice_twoway();

    @Override
    WrongOperationPrx ice_oneway();

    @Override
    WrongOperationPrx ice_batchOneway();

    @Override
    WrongOperationPrx ice_datagram();

    @Override
    WrongOperationPrx ice_batchDatagram();

    @Override
    WrongOperationPrx ice_compress(boolean co);

    @Override
    WrongOperationPrx ice_connectionId(String connectionId);

    @Override
    WrongOperationPrx ice_fixed(com.zeroc.Ice.Connection connection);

    static String ice_staticId()
    {
        return "::Test::WrongOperation";
    }

    /**
     * @hidden
     **/
    @Override
    default WrongOperationPrx _newInstance(com.zeroc.Ice.Reference ref)
    {
        return new _WrongOperationPrxI(ref);
    }
}
