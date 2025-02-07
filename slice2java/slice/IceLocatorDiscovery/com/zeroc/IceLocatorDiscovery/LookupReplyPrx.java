// Copyright (c) ZeroC, Inc.
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file 'IceLocatorDiscovery.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>

package com.zeroc.IceLocatorDiscovery;

/**
 * The Ice lookup reply interface must be implemented by clients which are searching for Ice locators. Ice locator
 * implementations invoke on this interface to provide their locator proxy.
 *
 * @see Lookup
 **/
public interface LookupReplyPrx extends com.zeroc.Ice.ObjectPrx
{
    /**
     * This method is called by the implementation of the Lookup interface to reply to a findLocator request.
     * @param prx The proxy of the locator.
     **/
    default void foundLocator(com.zeroc.Ice.LocatorPrx prx)
    {
        foundLocator(prx, com.zeroc.Ice.ObjectPrx.noExplicitContext);
    }

    /**
     * This method is called by the implementation of the Lookup interface to reply to a findLocator request.
     * @param prx The proxy of the locator.
     * @param context The Context map to send with the invocation.
     **/
    default void foundLocator(com.zeroc.Ice.LocatorPrx prx, java.util.Map<String, String> context)
    {
        _iceI_foundLocatorAsync(prx, context, true).waitForResponse();
    }

    /**
     * This method is called by the implementation of the Lookup interface to reply to a findLocator request.
     * @param prx The proxy of the locator.
     * @return A future that will be completed when the invocation completes.
     **/
    default java.util.concurrent.CompletableFuture<Void> foundLocatorAsync(com.zeroc.Ice.LocatorPrx prx)
    {
        return _iceI_foundLocatorAsync(prx, com.zeroc.Ice.ObjectPrx.noExplicitContext, false);
    }

    /**
     * This method is called by the implementation of the Lookup interface to reply to a findLocator request.
     * @param prx The proxy of the locator.
     * @param context The Context map to send with the invocation.
     * @return A future that will be completed when the invocation completes.
     **/
    default java.util.concurrent.CompletableFuture<Void> foundLocatorAsync(com.zeroc.Ice.LocatorPrx prx, java.util.Map<String, String> context)
    {
        return _iceI_foundLocatorAsync(prx, context, false);
    }

    /**
     * @hidden
     * @param iceP_prx -
     * @param context -
     * @param sync -
     * @return -
     **/
    default com.zeroc.Ice.OutgoingAsync<Void> _iceI_foundLocatorAsync(com.zeroc.Ice.LocatorPrx iceP_prx, java.util.Map<String, String> context, boolean sync)
    {
        com.zeroc.Ice.OutgoingAsync<Void> f = new com.zeroc.Ice.OutgoingAsync<>(this, "foundLocator", null, sync, null);
        f.invoke(false, context, null, ostr -> {
                     ostr.writeProxy(iceP_prx);
                 }, null);
        return f;
    }

    /**
     * Creates a new proxy that implements {@link LookupReplyPrx}.
     * @param communicator The communicator of the new proxy.
     * @param proxyString The string representation of the proxy.
     * @return The new proxy.
     **/
    public static LookupReplyPrx createProxy(com.zeroc.Ice.Communicator communicator, String proxyString)
    {
        return new _LookupReplyPrxI(com.zeroc.Ice.ObjectPrx.createProxy(communicator, proxyString));
    }

    /**
     * Contacts the remote server to verify that the object implements this type.
     * Raises a local exception if a communication error occurs.
     * @param obj The untyped proxy.
     * @return A proxy for this type, or null if the object does not support this type.
     **/
    static LookupReplyPrx checkedCast(com.zeroc.Ice.ObjectPrx obj)
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
    static LookupReplyPrx checkedCast(com.zeroc.Ice.ObjectPrx obj, java.util.Map<String, String> context)
    {
        return (obj != null && obj.ice_isA(ice_staticId(), context)) ? new _LookupReplyPrxI(obj) : null;
    }

    /**
     * Contacts the remote server to verify that a facet of the object implements this type.
     * Raises a local exception if a communication error occurs.
     * @param obj The untyped proxy.
     * @param facet The name of the desired facet.
     * @return A proxy for this type, or null if the object does not support this type.
     **/
    static LookupReplyPrx checkedCast(com.zeroc.Ice.ObjectPrx obj, String facet)
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
    static LookupReplyPrx checkedCast(com.zeroc.Ice.ObjectPrx obj, String facet, java.util.Map<String, String> context)
    {
        return (obj == null) ? null : checkedCast(obj.ice_facet(facet), context);
    }

    /**
     * Downcasts the given proxy to this type without contacting the remote server.
     * @param obj The untyped proxy.
     * @return A proxy for this type.
     **/
    static LookupReplyPrx uncheckedCast(com.zeroc.Ice.ObjectPrx obj)
    {
        return (obj == null) ? null : new _LookupReplyPrxI(obj);
    }

    /**
     * Downcasts the given proxy to this type without contacting the remote server.
     * @param obj The untyped proxy.
     * @param facet The name of the desired facet.
     * @return A proxy for this type.
     **/
    static LookupReplyPrx uncheckedCast(com.zeroc.Ice.ObjectPrx obj, String facet)
    {
        return (obj == null) ? null : new _LookupReplyPrxI(obj.ice_facet(facet));
    }

    @Override
    LookupReplyPrx ice_context(java.util.Map<String, String> newContext);

    @Override
    LookupReplyPrx ice_adapterId(String newAdapterId);

    @Override
    LookupReplyPrx ice_endpoints(com.zeroc.Ice.Endpoint[] newEndpoints);

    @Override
    LookupReplyPrx ice_locatorCacheTimeout(int newTimeout);

    @Override
    LookupReplyPrx ice_invocationTimeout(int newTimeout);

    @Override
    LookupReplyPrx ice_connectionCached(boolean newCache);

    @Override
    LookupReplyPrx ice_endpointSelection(com.zeroc.Ice.EndpointSelectionType newType);

    @Override
    LookupReplyPrx ice_secure(boolean b);

    @Override
    LookupReplyPrx ice_encodingVersion(com.zeroc.Ice.EncodingVersion e);

    @Override
    LookupReplyPrx ice_preferSecure(boolean b);

    @Override
    LookupReplyPrx ice_router(com.zeroc.Ice.RouterPrx router);

    @Override
    LookupReplyPrx ice_locator(com.zeroc.Ice.LocatorPrx locator);

    @Override
    LookupReplyPrx ice_collocationOptimized(boolean b);

    @Override
    LookupReplyPrx ice_twoway();

    @Override
    LookupReplyPrx ice_oneway();

    @Override
    LookupReplyPrx ice_batchOneway();

    @Override
    LookupReplyPrx ice_datagram();

    @Override
    LookupReplyPrx ice_batchDatagram();

    @Override
    LookupReplyPrx ice_compress(boolean co);

    @Override
    LookupReplyPrx ice_connectionId(String connectionId);

    @Override
    LookupReplyPrx ice_fixed(com.zeroc.Ice.Connection connection);

    static String ice_staticId()
    {
        return "::IceLocatorDiscovery::LookupReply";
    }

    /**
     * @hidden
     **/
    @Override
    default LookupReplyPrx _newInstance(com.zeroc.Ice.Reference ref)
    {
        return new _LookupReplyPrxI(ref);
    }
}
