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

package test.Ice.serialize.Test;

public interface InitialPrx extends com.zeroc.Ice.ObjectPrx
{
    default byte[] getStruct1()
    {
        return getStruct1(com.zeroc.Ice.ObjectPrx.noExplicitContext);
    }

    default byte[] getStruct1(java.util.Map<String, String> context)
    {
        return _iceI_getStruct1Async(context, true).waitForResponse();
    }

    default java.util.concurrent.CompletableFuture<byte[]> getStruct1Async()
    {
        return _iceI_getStruct1Async(com.zeroc.Ice.ObjectPrx.noExplicitContext, false);
    }

    default java.util.concurrent.CompletableFuture<byte[]> getStruct1Async(java.util.Map<String, String> context)
    {
        return _iceI_getStruct1Async(context, false);
    }

    /**
     * @hidden
     * @param context -
     * @param sync -
     * @return -
     **/
    default com.zeroc.Ice.OutgoingAsync<byte[]> _iceI_getStruct1Async(java.util.Map<String, String> context, boolean sync)
    {
        com.zeroc.Ice.OutgoingAsync<byte[]> f = new com.zeroc.Ice.OutgoingAsync<>(this, "getStruct1", null, sync, null);
        f.invoke(true, context, null, null, istr -> {
                     byte[] ret;
                     ret = istr.readByteSeq();
                     return ret;
                 });
        return f;
    }

    default byte[] getBase()
    {
        return getBase(com.zeroc.Ice.ObjectPrx.noExplicitContext);
    }

    default byte[] getBase(java.util.Map<String, String> context)
    {
        return _iceI_getBaseAsync(context, true).waitForResponse();
    }

    default java.util.concurrent.CompletableFuture<byte[]> getBaseAsync()
    {
        return _iceI_getBaseAsync(com.zeroc.Ice.ObjectPrx.noExplicitContext, false);
    }

    default java.util.concurrent.CompletableFuture<byte[]> getBaseAsync(java.util.Map<String, String> context)
    {
        return _iceI_getBaseAsync(context, false);
    }

    /**
     * @hidden
     * @param context -
     * @param sync -
     * @return -
     **/
    default com.zeroc.Ice.OutgoingAsync<byte[]> _iceI_getBaseAsync(java.util.Map<String, String> context, boolean sync)
    {
        com.zeroc.Ice.OutgoingAsync<byte[]> f = new com.zeroc.Ice.OutgoingAsync<>(this, "getBase", null, sync, null);
        f.invoke(true, context, null, null, istr -> {
                     byte[] ret;
                     ret = istr.readByteSeq();
                     return ret;
                 });
        return f;
    }

    default byte[] getEx()
    {
        return getEx(com.zeroc.Ice.ObjectPrx.noExplicitContext);
    }

    default byte[] getEx(java.util.Map<String, String> context)
    {
        return _iceI_getExAsync(context, true).waitForResponse();
    }

    default java.util.concurrent.CompletableFuture<byte[]> getExAsync()
    {
        return _iceI_getExAsync(com.zeroc.Ice.ObjectPrx.noExplicitContext, false);
    }

    default java.util.concurrent.CompletableFuture<byte[]> getExAsync(java.util.Map<String, String> context)
    {
        return _iceI_getExAsync(context, false);
    }

    /**
     * @hidden
     * @param context -
     * @param sync -
     * @return -
     **/
    default com.zeroc.Ice.OutgoingAsync<byte[]> _iceI_getExAsync(java.util.Map<String, String> context, boolean sync)
    {
        com.zeroc.Ice.OutgoingAsync<byte[]> f = new com.zeroc.Ice.OutgoingAsync<>(this, "getEx", null, sync, null);
        f.invoke(true, context, null, null, istr -> {
                     byte[] ret;
                     ret = istr.readByteSeq();
                     return ret;
                 });
        return f;
    }

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
     * Creates a new proxy that implements {@link InitialPrx}.
     * @param communicator The communicator of the new proxy.
     * @param proxyString The string representation of the proxy.
     * @return The new proxy.
     **/
    public static InitialPrx createProxy(com.zeroc.Ice.Communicator communicator, String proxyString)
    {
        return new _InitialPrxI(com.zeroc.Ice.ObjectPrx.createProxy(communicator, proxyString));
    }

    /**
     * Contacts the remote server to verify that the object implements this type.
     * Raises a local exception if a communication error occurs.
     * @param obj The untyped proxy.
     * @return A proxy for this type, or null if the object does not support this type.
     **/
    static InitialPrx checkedCast(com.zeroc.Ice.ObjectPrx obj)
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
    static InitialPrx checkedCast(com.zeroc.Ice.ObjectPrx obj, java.util.Map<String, String> context)
    {
        return (obj != null && obj.ice_isA(ice_staticId(), context)) ? new _InitialPrxI(obj) : null;
    }

    /**
     * Contacts the remote server to verify that a facet of the object implements this type.
     * Raises a local exception if a communication error occurs.
     * @param obj The untyped proxy.
     * @param facet The name of the desired facet.
     * @return A proxy for this type, or null if the object does not support this type.
     **/
    static InitialPrx checkedCast(com.zeroc.Ice.ObjectPrx obj, String facet)
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
    static InitialPrx checkedCast(com.zeroc.Ice.ObjectPrx obj, String facet, java.util.Map<String, String> context)
    {
        return (obj == null) ? null : checkedCast(obj.ice_facet(facet), context);
    }

    /**
     * Downcasts the given proxy to this type without contacting the remote server.
     * @param obj The untyped proxy.
     * @return A proxy for this type.
     **/
    static InitialPrx uncheckedCast(com.zeroc.Ice.ObjectPrx obj)
    {
        return (obj == null) ? null : new _InitialPrxI(obj);
    }

    /**
     * Downcasts the given proxy to this type without contacting the remote server.
     * @param obj The untyped proxy.
     * @param facet The name of the desired facet.
     * @return A proxy for this type.
     **/
    static InitialPrx uncheckedCast(com.zeroc.Ice.ObjectPrx obj, String facet)
    {
        return (obj == null) ? null : new _InitialPrxI(obj.ice_facet(facet));
    }

    @Override
    InitialPrx ice_context(java.util.Map<String, String> newContext);

    @Override
    InitialPrx ice_adapterId(String newAdapterId);

    @Override
    InitialPrx ice_endpoints(com.zeroc.Ice.Endpoint[] newEndpoints);

    @Override
    InitialPrx ice_locatorCacheTimeout(int newTimeout);

    @Override
    InitialPrx ice_invocationTimeout(int newTimeout);

    @Override
    InitialPrx ice_connectionCached(boolean newCache);

    @Override
    InitialPrx ice_endpointSelection(com.zeroc.Ice.EndpointSelectionType newType);

    @Override
    InitialPrx ice_secure(boolean b);

    @Override
    InitialPrx ice_encodingVersion(com.zeroc.Ice.EncodingVersion e);

    @Override
    InitialPrx ice_preferSecure(boolean b);

    @Override
    InitialPrx ice_router(com.zeroc.Ice.RouterPrx router);

    @Override
    InitialPrx ice_locator(com.zeroc.Ice.LocatorPrx locator);

    @Override
    InitialPrx ice_collocationOptimized(boolean b);

    @Override
    InitialPrx ice_twoway();

    @Override
    InitialPrx ice_oneway();

    @Override
    InitialPrx ice_batchOneway();

    @Override
    InitialPrx ice_datagram();

    @Override
    InitialPrx ice_batchDatagram();

    @Override
    InitialPrx ice_compress(boolean co);

    @Override
    InitialPrx ice_connectionId(String connectionId);

    @Override
    InitialPrx ice_fixed(com.zeroc.Ice.Connection connection);

    static String ice_staticId()
    {
        return "::Test::Initial";
    }

    /**
     * @hidden
     **/
    @Override
    default InitialPrx _newInstance(com.zeroc.Ice.Reference ref)
    {
        return new _InitialPrxI(ref);
    }
}
