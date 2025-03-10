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

package Test.MA;

public interface ICPrx extends Test.MB.IB1Prx,
                               Test.MB.IB2Prx
{
    default ICPrx icop(ICPrx p)
    {
        return icop(p, com.zeroc.Ice.ObjectPrx.noExplicitContext);
    }

    default ICPrx icop(ICPrx p, java.util.Map<String, String> context)
    {
        return _iceI_icopAsync(p, context, true).waitForResponse();
    }

    default java.util.concurrent.CompletableFuture<ICPrx> icopAsync(ICPrx p)
    {
        return _iceI_icopAsync(p, com.zeroc.Ice.ObjectPrx.noExplicitContext, false);
    }

    default java.util.concurrent.CompletableFuture<ICPrx> icopAsync(ICPrx p, java.util.Map<String, String> context)
    {
        return _iceI_icopAsync(p, context, false);
    }

    /**
     * @hidden
     * @param iceP_p -
     * @param context -
     * @param sync -
     * @return -
     **/
    default com.zeroc.Ice.OutgoingAsync<ICPrx> _iceI_icopAsync(ICPrx iceP_p, java.util.Map<String, String> context, boolean sync)
    {
        com.zeroc.Ice.OutgoingAsync<ICPrx> f = new com.zeroc.Ice.OutgoingAsync<>(this, "icop", null, sync, null);
        f.invoke(true, context, null, ostr -> {
                     ostr.writeProxy(iceP_p);
                 }, istr -> {
                     ICPrx ret;
                     ret = ICPrx.uncheckedCast(istr.readProxy());
                     return ret;
                 });
        return f;
    }

    /**
     * Creates a new proxy that implements {@link ICPrx}.
     * @param communicator The communicator of the new proxy.
     * @param proxyString The string representation of the proxy.
     * @return The new proxy.
     **/
    public static ICPrx createProxy(com.zeroc.Ice.Communicator communicator, String proxyString)
    {
        return new _ICPrxI(com.zeroc.Ice.ObjectPrx.createProxy(communicator, proxyString));
    }

    /**
     * Contacts the remote server to verify that the object implements this type.
     * Raises a local exception if a communication error occurs.
     * @param obj The untyped proxy.
     * @return A proxy for this type, or null if the object does not support this type.
     **/
    static ICPrx checkedCast(com.zeroc.Ice.ObjectPrx obj)
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
    static ICPrx checkedCast(com.zeroc.Ice.ObjectPrx obj, java.util.Map<String, String> context)
    {
        return (obj != null && obj.ice_isA(ice_staticId(), context)) ? new _ICPrxI(obj) : null;
    }

    /**
     * Contacts the remote server to verify that a facet of the object implements this type.
     * Raises a local exception if a communication error occurs.
     * @param obj The untyped proxy.
     * @param facet The name of the desired facet.
     * @return A proxy for this type, or null if the object does not support this type.
     **/
    static ICPrx checkedCast(com.zeroc.Ice.ObjectPrx obj, String facet)
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
    static ICPrx checkedCast(com.zeroc.Ice.ObjectPrx obj, String facet, java.util.Map<String, String> context)
    {
        return (obj == null) ? null : checkedCast(obj.ice_facet(facet), context);
    }

    /**
     * Downcasts the given proxy to this type without contacting the remote server.
     * @param obj The untyped proxy.
     * @return A proxy for this type.
     **/
    static ICPrx uncheckedCast(com.zeroc.Ice.ObjectPrx obj)
    {
        return (obj == null) ? null : new _ICPrxI(obj);
    }

    /**
     * Downcasts the given proxy to this type without contacting the remote server.
     * @param obj The untyped proxy.
     * @param facet The name of the desired facet.
     * @return A proxy for this type.
     **/
    static ICPrx uncheckedCast(com.zeroc.Ice.ObjectPrx obj, String facet)
    {
        return (obj == null) ? null : new _ICPrxI(obj.ice_facet(facet));
    }

    @Override
    ICPrx ice_context(java.util.Map<String, String> newContext);

    @Override
    ICPrx ice_adapterId(String newAdapterId);

    @Override
    ICPrx ice_endpoints(com.zeroc.Ice.Endpoint[] newEndpoints);

    @Override
    ICPrx ice_locatorCacheTimeout(int newTimeout);

    @Override
    ICPrx ice_invocationTimeout(int newTimeout);

    @Override
    ICPrx ice_connectionCached(boolean newCache);

    @Override
    ICPrx ice_endpointSelection(com.zeroc.Ice.EndpointSelectionType newType);

    @Override
    ICPrx ice_secure(boolean b);

    @Override
    ICPrx ice_encodingVersion(com.zeroc.Ice.EncodingVersion e);

    @Override
    ICPrx ice_preferSecure(boolean b);

    @Override
    ICPrx ice_router(com.zeroc.Ice.RouterPrx router);

    @Override
    ICPrx ice_locator(com.zeroc.Ice.LocatorPrx locator);

    @Override
    ICPrx ice_collocationOptimized(boolean b);

    @Override
    ICPrx ice_twoway();

    @Override
    ICPrx ice_oneway();

    @Override
    ICPrx ice_batchOneway();

    @Override
    ICPrx ice_datagram();

    @Override
    ICPrx ice_batchDatagram();

    @Override
    ICPrx ice_compress(boolean co);

    @Override
    ICPrx ice_connectionId(String connectionId);

    @Override
    ICPrx ice_fixed(com.zeroc.Ice.Connection connection);

    static String ice_staticId()
    {
        return "::Test::MA::IC";
    }

    /**
     * @hidden
     **/
    @Override
    default ICPrx _newInstance(com.zeroc.Ice.Reference ref)
    {
        return new _ICPrxI(ref);
    }
}
