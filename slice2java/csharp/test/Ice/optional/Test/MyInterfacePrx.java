//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `TestAMD.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

package Test;

public interface MyInterfacePrx extends com.zeroc.Ice.ObjectPrx
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
    default com.zeroc.Ice.OutgoingAsync<Void> _iceI_opAsync(java.util.Map<String, String> context, boolean sync)
    {
        com.zeroc.Ice.OutgoingAsync<Void> f = new com.zeroc.Ice.OutgoingAsync<>(this, "op", null, sync, null);
        f.invoke(false, context, null, null, null);
        return f;
    }

    /**
     * Creates a new proxy that implements {@link MyInterfacePrx}.
     * @param communicator The communicator of the new proxy.
     * @param proxyString The string representation of the proxy.
     * @return The new proxy.
     **/
    public static MyInterfacePrx createProxy(com.zeroc.Ice.Communicator communicator, String proxyString)
    {
        return new _MyInterfacePrxI(com.zeroc.Ice.ObjectPrx.createProxy(communicator, proxyString));
    }

    /**
     * Contacts the remote server to verify that the object implements this type.
     * Raises a local exception if a communication error occurs.
     * @param obj The untyped proxy.
     * @return A proxy for this type, or null if the object does not support this type.
     **/
    static MyInterfacePrx checkedCast(com.zeroc.Ice.ObjectPrx obj)
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
    static MyInterfacePrx checkedCast(com.zeroc.Ice.ObjectPrx obj, java.util.Map<String, String> context)
    {
        return (obj != null && obj.ice_isA(ice_staticId(), context)) ? new _MyInterfacePrxI(obj) : null;
    }

    /**
     * Contacts the remote server to verify that a facet of the object implements this type.
     * Raises a local exception if a communication error occurs.
     * @param obj The untyped proxy.
     * @param facet The name of the desired facet.
     * @return A proxy for this type, or null if the object does not support this type.
     **/
    static MyInterfacePrx checkedCast(com.zeroc.Ice.ObjectPrx obj, String facet)
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
    static MyInterfacePrx checkedCast(com.zeroc.Ice.ObjectPrx obj, String facet, java.util.Map<String, String> context)
    {
        return (obj == null) ? null : checkedCast(obj.ice_facet(facet), context);
    }

    /**
     * Downcasts the given proxy to this type without contacting the remote server.
     * @param obj The untyped proxy.
     * @return A proxy for this type.
     **/
    static MyInterfacePrx uncheckedCast(com.zeroc.Ice.ObjectPrx obj)
    {
        return (obj == null) ? null : new _MyInterfacePrxI(obj);
    }

    /**
     * Downcasts the given proxy to this type without contacting the remote server.
     * @param obj The untyped proxy.
     * @param facet The name of the desired facet.
     * @return A proxy for this type.
     **/
    static MyInterfacePrx uncheckedCast(com.zeroc.Ice.ObjectPrx obj, String facet)
    {
        return (obj == null) ? null : new _MyInterfacePrxI(obj.ice_facet(facet));
    }

    @Override
    MyInterfacePrx ice_context(java.util.Map<String, String> newContext);

    @Override
    MyInterfacePrx ice_adapterId(String newAdapterId);

    @Override
    MyInterfacePrx ice_endpoints(com.zeroc.Ice.Endpoint[] newEndpoints);

    @Override
    MyInterfacePrx ice_locatorCacheTimeout(int newTimeout);

    @Override
    MyInterfacePrx ice_invocationTimeout(int newTimeout);

    @Override
    MyInterfacePrx ice_connectionCached(boolean newCache);

    @Override
    MyInterfacePrx ice_endpointSelection(com.zeroc.Ice.EndpointSelectionType newType);

    @Override
    MyInterfacePrx ice_secure(boolean b);

    @Override
    MyInterfacePrx ice_encodingVersion(com.zeroc.Ice.EncodingVersion e);

    @Override
    MyInterfacePrx ice_preferSecure(boolean b);

    @Override
    MyInterfacePrx ice_router(com.zeroc.Ice.RouterPrx router);

    @Override
    MyInterfacePrx ice_locator(com.zeroc.Ice.LocatorPrx locator);

    @Override
    MyInterfacePrx ice_collocationOptimized(boolean b);

    @Override
    MyInterfacePrx ice_twoway();

    @Override
    MyInterfacePrx ice_oneway();

    @Override
    MyInterfacePrx ice_batchOneway();

    @Override
    MyInterfacePrx ice_datagram();

    @Override
    MyInterfacePrx ice_batchDatagram();

    @Override
    MyInterfacePrx ice_compress(boolean co);

    @Override
    MyInterfacePrx ice_connectionId(String connectionId);

    @Override
    MyInterfacePrx ice_fixed(com.zeroc.Ice.Connection connection);

    static String ice_staticId()
    {
        return "::Test::MyInterface";
    }

    /**
     * @hidden
     **/
    @Override
    default MyInterfacePrx _newInstance(com.zeroc.Ice.Reference ref)
    {
        return new _MyInterfacePrxI(ref);
    }
}
