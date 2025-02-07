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

public interface TestIntfPrx extends com.zeroc.Ice.ObjectPrx
{
    default int op()
    {
        return op(com.zeroc.Ice.ObjectPrx.noExplicitContext);
    }

    default int op(java.util.Map<String, String> context)
    {
        return _iceI_opAsync(context, true).waitForResponse();
    }

    default java.util.concurrent.CompletableFuture<java.lang.Integer> opAsync()
    {
        return _iceI_opAsync(com.zeroc.Ice.ObjectPrx.noExplicitContext, false);
    }

    default java.util.concurrent.CompletableFuture<java.lang.Integer> opAsync(java.util.Map<String, String> context)
    {
        return _iceI_opAsync(context, false);
    }

    /**
     * @hidden
     * @param context -
     * @param sync -
     * @return -
     **/
    default com.zeroc.Ice.OutgoingAsync<java.lang.Integer> _iceI_opAsync(java.util.Map<String, String> context, boolean sync)
    {
        com.zeroc.Ice.OutgoingAsync<java.lang.Integer> f = new com.zeroc.Ice.OutgoingAsync<>(this, "op", null, sync, null);
        f.invoke(true, context, null, null, istr -> {
                     int ret;
                     ret = istr.readInt();
                     return ret;
                 });
        return f;
    }

    default int callOpOn(TestIntfPrx proxy)
    {
        return callOpOn(proxy, com.zeroc.Ice.ObjectPrx.noExplicitContext);
    }

    default int callOpOn(TestIntfPrx proxy, java.util.Map<String, String> context)
    {
        return _iceI_callOpOnAsync(proxy, context, true).waitForResponse();
    }

    default java.util.concurrent.CompletableFuture<java.lang.Integer> callOpOnAsync(TestIntfPrx proxy)
    {
        return _iceI_callOpOnAsync(proxy, com.zeroc.Ice.ObjectPrx.noExplicitContext, false);
    }

    default java.util.concurrent.CompletableFuture<java.lang.Integer> callOpOnAsync(TestIntfPrx proxy, java.util.Map<String, String> context)
    {
        return _iceI_callOpOnAsync(proxy, context, false);
    }

    /**
     * @hidden
     * @param iceP_proxy -
     * @param context -
     * @param sync -
     * @return -
     **/
    default com.zeroc.Ice.OutgoingAsync<java.lang.Integer> _iceI_callOpOnAsync(TestIntfPrx iceP_proxy, java.util.Map<String, String> context, boolean sync)
    {
        com.zeroc.Ice.OutgoingAsync<java.lang.Integer> f = new com.zeroc.Ice.OutgoingAsync<>(this, "callOpOn", null, sync, null);
        f.invoke(true, context, null, ostr -> {
                     ostr.writeProxy(iceP_proxy);
                 }, istr -> {
                     int ret;
                     ret = istr.readInt();
                     return ret;
                 });
        return f;
    }

    default void throwUserException1()
        throws TestException
    {
        throwUserException1(com.zeroc.Ice.ObjectPrx.noExplicitContext);
    }

    default void throwUserException1(java.util.Map<String, String> context)
        throws TestException
    {
        try
        {
            _iceI_throwUserException1Async(context, true).waitForResponseOrUserEx();
        }
        catch(TestException ex)
        {
            throw ex;
        }
        catch(com.zeroc.Ice.UserException ex)
        {
            throw com.zeroc.Ice.UnknownUserException.fromTypeId(ex.ice_id());
        }
    }

    default java.util.concurrent.CompletableFuture<Void> throwUserException1Async()
    {
        return _iceI_throwUserException1Async(com.zeroc.Ice.ObjectPrx.noExplicitContext, false);
    }

    default java.util.concurrent.CompletableFuture<Void> throwUserException1Async(java.util.Map<String, String> context)
    {
        return _iceI_throwUserException1Async(context, false);
    }

    /**
     * @hidden
     * @param context -
     * @param sync -
     * @return -
     **/
    default com.zeroc.Ice.OutgoingAsync<Void> _iceI_throwUserException1Async(java.util.Map<String, String> context, boolean sync)
    {
        com.zeroc.Ice.OutgoingAsync<Void> f = new com.zeroc.Ice.OutgoingAsync<>(this, "throwUserException1", null, sync, _iceE_throwUserException1);
        f.invoke(true, context, null, null, null);
        return f;
    }

    /** @hidden */
    static final Class<?>[] _iceE_throwUserException1 =
    {
        TestException.class
    };

    default void throwUserException2()
        throws TestException
    {
        throwUserException2(com.zeroc.Ice.ObjectPrx.noExplicitContext);
    }

    default void throwUserException2(java.util.Map<String, String> context)
        throws TestException
    {
        try
        {
            _iceI_throwUserException2Async(context, true).waitForResponseOrUserEx();
        }
        catch(TestException ex)
        {
            throw ex;
        }
        catch(com.zeroc.Ice.UserException ex)
        {
            throw com.zeroc.Ice.UnknownUserException.fromTypeId(ex.ice_id());
        }
    }

    default java.util.concurrent.CompletableFuture<Void> throwUserException2Async()
    {
        return _iceI_throwUserException2Async(com.zeroc.Ice.ObjectPrx.noExplicitContext, false);
    }

    default java.util.concurrent.CompletableFuture<Void> throwUserException2Async(java.util.Map<String, String> context)
    {
        return _iceI_throwUserException2Async(context, false);
    }

    /**
     * @hidden
     * @param context -
     * @param sync -
     * @return -
     **/
    default com.zeroc.Ice.OutgoingAsync<Void> _iceI_throwUserException2Async(java.util.Map<String, String> context, boolean sync)
    {
        com.zeroc.Ice.OutgoingAsync<Void> f = new com.zeroc.Ice.OutgoingAsync<>(this, "throwUserException2", null, sync, _iceE_throwUserException2);
        f.invoke(true, context, null, null, null);
        return f;
    }

    /** @hidden */
    static final Class<?>[] _iceE_throwUserException2 =
    {
        TestException.class
    };

    default void throwUnhandledException1()
    {
        throwUnhandledException1(com.zeroc.Ice.ObjectPrx.noExplicitContext);
    }

    default void throwUnhandledException1(java.util.Map<String, String> context)
    {
        _iceI_throwUnhandledException1Async(context, true).waitForResponse();
    }

    default java.util.concurrent.CompletableFuture<Void> throwUnhandledException1Async()
    {
        return _iceI_throwUnhandledException1Async(com.zeroc.Ice.ObjectPrx.noExplicitContext, false);
    }

    default java.util.concurrent.CompletableFuture<Void> throwUnhandledException1Async(java.util.Map<String, String> context)
    {
        return _iceI_throwUnhandledException1Async(context, false);
    }

    /**
     * @hidden
     * @param context -
     * @param sync -
     * @return -
     **/
    default com.zeroc.Ice.OutgoingAsync<Void> _iceI_throwUnhandledException1Async(java.util.Map<String, String> context, boolean sync)
    {
        com.zeroc.Ice.OutgoingAsync<Void> f = new com.zeroc.Ice.OutgoingAsync<>(this, "throwUnhandledException1", null, sync, null);
        f.invoke(false, context, null, null, null);
        return f;
    }

    default void throwUnhandledException2()
    {
        throwUnhandledException2(com.zeroc.Ice.ObjectPrx.noExplicitContext);
    }

    default void throwUnhandledException2(java.util.Map<String, String> context)
    {
        _iceI_throwUnhandledException2Async(context, true).waitForResponse();
    }

    default java.util.concurrent.CompletableFuture<Void> throwUnhandledException2Async()
    {
        return _iceI_throwUnhandledException2Async(com.zeroc.Ice.ObjectPrx.noExplicitContext, false);
    }

    default java.util.concurrent.CompletableFuture<Void> throwUnhandledException2Async(java.util.Map<String, String> context)
    {
        return _iceI_throwUnhandledException2Async(context, false);
    }

    /**
     * @hidden
     * @param context -
     * @param sync -
     * @return -
     **/
    default com.zeroc.Ice.OutgoingAsync<Void> _iceI_throwUnhandledException2Async(java.util.Map<String, String> context, boolean sync)
    {
        com.zeroc.Ice.OutgoingAsync<Void> f = new com.zeroc.Ice.OutgoingAsync<>(this, "throwUnhandledException2", null, sync, null);
        f.invoke(false, context, null, null, null);
        return f;
    }

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
     * Creates a new proxy that implements {@link TestIntfPrx}.
     * @param communicator The communicator of the new proxy.
     * @param proxyString The string representation of the proxy.
     * @return The new proxy.
     **/
    public static TestIntfPrx createProxy(com.zeroc.Ice.Communicator communicator, String proxyString)
    {
        return new _TestIntfPrxI(com.zeroc.Ice.ObjectPrx.createProxy(communicator, proxyString));
    }

    /**
     * Contacts the remote server to verify that the object implements this type.
     * Raises a local exception if a communication error occurs.
     * @param obj The untyped proxy.
     * @return A proxy for this type, or null if the object does not support this type.
     **/
    static TestIntfPrx checkedCast(com.zeroc.Ice.ObjectPrx obj)
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
    static TestIntfPrx checkedCast(com.zeroc.Ice.ObjectPrx obj, java.util.Map<String, String> context)
    {
        return (obj != null && obj.ice_isA(ice_staticId(), context)) ? new _TestIntfPrxI(obj) : null;
    }

    /**
     * Contacts the remote server to verify that a facet of the object implements this type.
     * Raises a local exception if a communication error occurs.
     * @param obj The untyped proxy.
     * @param facet The name of the desired facet.
     * @return A proxy for this type, or null if the object does not support this type.
     **/
    static TestIntfPrx checkedCast(com.zeroc.Ice.ObjectPrx obj, String facet)
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
    static TestIntfPrx checkedCast(com.zeroc.Ice.ObjectPrx obj, String facet, java.util.Map<String, String> context)
    {
        return (obj == null) ? null : checkedCast(obj.ice_facet(facet), context);
    }

    /**
     * Downcasts the given proxy to this type without contacting the remote server.
     * @param obj The untyped proxy.
     * @return A proxy for this type.
     **/
    static TestIntfPrx uncheckedCast(com.zeroc.Ice.ObjectPrx obj)
    {
        return (obj == null) ? null : new _TestIntfPrxI(obj);
    }

    /**
     * Downcasts the given proxy to this type without contacting the remote server.
     * @param obj The untyped proxy.
     * @param facet The name of the desired facet.
     * @return A proxy for this type.
     **/
    static TestIntfPrx uncheckedCast(com.zeroc.Ice.ObjectPrx obj, String facet)
    {
        return (obj == null) ? null : new _TestIntfPrxI(obj.ice_facet(facet));
    }

    @Override
    TestIntfPrx ice_context(java.util.Map<String, String> newContext);

    @Override
    TestIntfPrx ice_adapterId(String newAdapterId);

    @Override
    TestIntfPrx ice_endpoints(com.zeroc.Ice.Endpoint[] newEndpoints);

    @Override
    TestIntfPrx ice_locatorCacheTimeout(int newTimeout);

    @Override
    TestIntfPrx ice_invocationTimeout(int newTimeout);

    @Override
    TestIntfPrx ice_connectionCached(boolean newCache);

    @Override
    TestIntfPrx ice_endpointSelection(com.zeroc.Ice.EndpointSelectionType newType);

    @Override
    TestIntfPrx ice_secure(boolean b);

    @Override
    TestIntfPrx ice_encodingVersion(com.zeroc.Ice.EncodingVersion e);

    @Override
    TestIntfPrx ice_preferSecure(boolean b);

    @Override
    TestIntfPrx ice_router(com.zeroc.Ice.RouterPrx router);

    @Override
    TestIntfPrx ice_locator(com.zeroc.Ice.LocatorPrx locator);

    @Override
    TestIntfPrx ice_collocationOptimized(boolean b);

    @Override
    TestIntfPrx ice_twoway();

    @Override
    TestIntfPrx ice_oneway();

    @Override
    TestIntfPrx ice_batchOneway();

    @Override
    TestIntfPrx ice_datagram();

    @Override
    TestIntfPrx ice_batchDatagram();

    @Override
    TestIntfPrx ice_compress(boolean co);

    @Override
    TestIntfPrx ice_connectionId(String connectionId);

    @Override
    TestIntfPrx ice_fixed(com.zeroc.Ice.Connection connection);

    static String ice_staticId()
    {
        return "::Test::TestIntf";
    }

    /**
     * @hidden
     **/
    @Override
    default TestIntfPrx _newInstance(com.zeroc.Ice.Reference ref)
    {
        return new _TestIntfPrxI(ref);
    }
}
