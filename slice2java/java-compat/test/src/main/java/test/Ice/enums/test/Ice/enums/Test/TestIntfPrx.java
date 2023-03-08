//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.7.9
//
// <auto-generated>
//
// Generated from file `Test.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

package test.Ice.enums.Test;

public interface TestIntfPrx extends com.zeroc.Ice.ObjectPrx
{
    default TestIntf.OpByteResult opByte(ByteEnum b1)
    {
        return opByte(b1, com.zeroc.Ice.ObjectPrx.noExplicitContext);
    }

    default TestIntf.OpByteResult opByte(ByteEnum b1, java.util.Map<String, String> context)
    {
        return _iceI_opByteAsync(b1, context, true).waitForResponse();
    }

    default java.util.concurrent.CompletableFuture<TestIntf.OpByteResult> opByteAsync(ByteEnum b1)
    {
        return _iceI_opByteAsync(b1, com.zeroc.Ice.ObjectPrx.noExplicitContext, false);
    }

    default java.util.concurrent.CompletableFuture<TestIntf.OpByteResult> opByteAsync(ByteEnum b1, java.util.Map<String, String> context)
    {
        return _iceI_opByteAsync(b1, context, false);
    }

    /**
     * @hidden
     * @param iceP_b1 -
     * @param context -
     * @param sync -
     * @return -
     **/
    default com.zeroc.IceInternal.OutgoingAsync<TestIntf.OpByteResult> _iceI_opByteAsync(ByteEnum iceP_b1, java.util.Map<String, String> context, boolean sync)
    {
        com.zeroc.IceInternal.OutgoingAsync<TestIntf.OpByteResult> f = new com.zeroc.IceInternal.OutgoingAsync<>(this, "opByte", null, sync, null);
        f.invoke(true, context, null, ostr -> {
                     ByteEnum.ice_write(ostr, iceP_b1);
                 }, istr -> {
                     TestIntf.OpByteResult ret = new TestIntf.OpByteResult();
                     ret.read(istr);
                     return ret;
                 });
        return f;
    }

    default TestIntf.OpShortResult opShort(ShortEnum s1)
    {
        return opShort(s1, com.zeroc.Ice.ObjectPrx.noExplicitContext);
    }

    default TestIntf.OpShortResult opShort(ShortEnum s1, java.util.Map<String, String> context)
    {
        return _iceI_opShortAsync(s1, context, true).waitForResponse();
    }

    default java.util.concurrent.CompletableFuture<TestIntf.OpShortResult> opShortAsync(ShortEnum s1)
    {
        return _iceI_opShortAsync(s1, com.zeroc.Ice.ObjectPrx.noExplicitContext, false);
    }

    default java.util.concurrent.CompletableFuture<TestIntf.OpShortResult> opShortAsync(ShortEnum s1, java.util.Map<String, String> context)
    {
        return _iceI_opShortAsync(s1, context, false);
    }

    /**
     * @hidden
     * @param iceP_s1 -
     * @param context -
     * @param sync -
     * @return -
     **/
    default com.zeroc.IceInternal.OutgoingAsync<TestIntf.OpShortResult> _iceI_opShortAsync(ShortEnum iceP_s1, java.util.Map<String, String> context, boolean sync)
    {
        com.zeroc.IceInternal.OutgoingAsync<TestIntf.OpShortResult> f = new com.zeroc.IceInternal.OutgoingAsync<>(this, "opShort", null, sync, null);
        f.invoke(true, context, null, ostr -> {
                     ShortEnum.ice_write(ostr, iceP_s1);
                 }, istr -> {
                     TestIntf.OpShortResult ret = new TestIntf.OpShortResult();
                     ret.read(istr);
                     return ret;
                 });
        return f;
    }

    default TestIntf.OpIntResult opInt(IntEnum i1)
    {
        return opInt(i1, com.zeroc.Ice.ObjectPrx.noExplicitContext);
    }

    default TestIntf.OpIntResult opInt(IntEnum i1, java.util.Map<String, String> context)
    {
        return _iceI_opIntAsync(i1, context, true).waitForResponse();
    }

    default java.util.concurrent.CompletableFuture<TestIntf.OpIntResult> opIntAsync(IntEnum i1)
    {
        return _iceI_opIntAsync(i1, com.zeroc.Ice.ObjectPrx.noExplicitContext, false);
    }

    default java.util.concurrent.CompletableFuture<TestIntf.OpIntResult> opIntAsync(IntEnum i1, java.util.Map<String, String> context)
    {
        return _iceI_opIntAsync(i1, context, false);
    }

    /**
     * @hidden
     * @param iceP_i1 -
     * @param context -
     * @param sync -
     * @return -
     **/
    default com.zeroc.IceInternal.OutgoingAsync<TestIntf.OpIntResult> _iceI_opIntAsync(IntEnum iceP_i1, java.util.Map<String, String> context, boolean sync)
    {
        com.zeroc.IceInternal.OutgoingAsync<TestIntf.OpIntResult> f = new com.zeroc.IceInternal.OutgoingAsync<>(this, "opInt", null, sync, null);
        f.invoke(true, context, null, ostr -> {
                     IntEnum.ice_write(ostr, iceP_i1);
                 }, istr -> {
                     TestIntf.OpIntResult ret = new TestIntf.OpIntResult();
                     ret.read(istr);
                     return ret;
                 });
        return f;
    }

    default TestIntf.OpSimpleResult opSimple(SimpleEnum s1)
    {
        return opSimple(s1, com.zeroc.Ice.ObjectPrx.noExplicitContext);
    }

    default TestIntf.OpSimpleResult opSimple(SimpleEnum s1, java.util.Map<String, String> context)
    {
        return _iceI_opSimpleAsync(s1, context, true).waitForResponse();
    }

    default java.util.concurrent.CompletableFuture<TestIntf.OpSimpleResult> opSimpleAsync(SimpleEnum s1)
    {
        return _iceI_opSimpleAsync(s1, com.zeroc.Ice.ObjectPrx.noExplicitContext, false);
    }

    default java.util.concurrent.CompletableFuture<TestIntf.OpSimpleResult> opSimpleAsync(SimpleEnum s1, java.util.Map<String, String> context)
    {
        return _iceI_opSimpleAsync(s1, context, false);
    }

    /**
     * @hidden
     * @param iceP_s1 -
     * @param context -
     * @param sync -
     * @return -
     **/
    default com.zeroc.IceInternal.OutgoingAsync<TestIntf.OpSimpleResult> _iceI_opSimpleAsync(SimpleEnum iceP_s1, java.util.Map<String, String> context, boolean sync)
    {
        com.zeroc.IceInternal.OutgoingAsync<TestIntf.OpSimpleResult> f = new com.zeroc.IceInternal.OutgoingAsync<>(this, "opSimple", null, sync, null);
        f.invoke(true, context, null, ostr -> {
                     SimpleEnum.ice_write(ostr, iceP_s1);
                 }, istr -> {
                     TestIntf.OpSimpleResult ret = new TestIntf.OpSimpleResult();
                     ret.read(istr);
                     return ret;
                 });
        return f;
    }

    default TestIntf.OpByteSeqResult opByteSeq(ByteEnum[] b1)
    {
        return opByteSeq(b1, com.zeroc.Ice.ObjectPrx.noExplicitContext);
    }

    default TestIntf.OpByteSeqResult opByteSeq(ByteEnum[] b1, java.util.Map<String, String> context)
    {
        return _iceI_opByteSeqAsync(b1, context, true).waitForResponse();
    }

    default java.util.concurrent.CompletableFuture<TestIntf.OpByteSeqResult> opByteSeqAsync(ByteEnum[] b1)
    {
        return _iceI_opByteSeqAsync(b1, com.zeroc.Ice.ObjectPrx.noExplicitContext, false);
    }

    default java.util.concurrent.CompletableFuture<TestIntf.OpByteSeqResult> opByteSeqAsync(ByteEnum[] b1, java.util.Map<String, String> context)
    {
        return _iceI_opByteSeqAsync(b1, context, false);
    }

    /**
     * @hidden
     * @param iceP_b1 -
     * @param context -
     * @param sync -
     * @return -
     **/
    default com.zeroc.IceInternal.OutgoingAsync<TestIntf.OpByteSeqResult> _iceI_opByteSeqAsync(ByteEnum[] iceP_b1, java.util.Map<String, String> context, boolean sync)
    {
        com.zeroc.IceInternal.OutgoingAsync<TestIntf.OpByteSeqResult> f = new com.zeroc.IceInternal.OutgoingAsync<>(this, "opByteSeq", null, sync, null);
        f.invoke(true, context, null, ostr -> {
                     ByteEnumSeqHelper.write(ostr, iceP_b1);
                 }, istr -> {
                     TestIntf.OpByteSeqResult ret = new TestIntf.OpByteSeqResult();
                     ret.read(istr);
                     return ret;
                 });
        return f;
    }

    default TestIntf.OpShortSeqResult opShortSeq(ShortEnum[] s1)
    {
        return opShortSeq(s1, com.zeroc.Ice.ObjectPrx.noExplicitContext);
    }

    default TestIntf.OpShortSeqResult opShortSeq(ShortEnum[] s1, java.util.Map<String, String> context)
    {
        return _iceI_opShortSeqAsync(s1, context, true).waitForResponse();
    }

    default java.util.concurrent.CompletableFuture<TestIntf.OpShortSeqResult> opShortSeqAsync(ShortEnum[] s1)
    {
        return _iceI_opShortSeqAsync(s1, com.zeroc.Ice.ObjectPrx.noExplicitContext, false);
    }

    default java.util.concurrent.CompletableFuture<TestIntf.OpShortSeqResult> opShortSeqAsync(ShortEnum[] s1, java.util.Map<String, String> context)
    {
        return _iceI_opShortSeqAsync(s1, context, false);
    }

    /**
     * @hidden
     * @param iceP_s1 -
     * @param context -
     * @param sync -
     * @return -
     **/
    default com.zeroc.IceInternal.OutgoingAsync<TestIntf.OpShortSeqResult> _iceI_opShortSeqAsync(ShortEnum[] iceP_s1, java.util.Map<String, String> context, boolean sync)
    {
        com.zeroc.IceInternal.OutgoingAsync<TestIntf.OpShortSeqResult> f = new com.zeroc.IceInternal.OutgoingAsync<>(this, "opShortSeq", null, sync, null);
        f.invoke(true, context, null, ostr -> {
                     ShortEnumSeqHelper.write(ostr, iceP_s1);
                 }, istr -> {
                     TestIntf.OpShortSeqResult ret = new TestIntf.OpShortSeqResult();
                     ret.read(istr);
                     return ret;
                 });
        return f;
    }

    default TestIntf.OpIntSeqResult opIntSeq(IntEnum[] i1)
    {
        return opIntSeq(i1, com.zeroc.Ice.ObjectPrx.noExplicitContext);
    }

    default TestIntf.OpIntSeqResult opIntSeq(IntEnum[] i1, java.util.Map<String, String> context)
    {
        return _iceI_opIntSeqAsync(i1, context, true).waitForResponse();
    }

    default java.util.concurrent.CompletableFuture<TestIntf.OpIntSeqResult> opIntSeqAsync(IntEnum[] i1)
    {
        return _iceI_opIntSeqAsync(i1, com.zeroc.Ice.ObjectPrx.noExplicitContext, false);
    }

    default java.util.concurrent.CompletableFuture<TestIntf.OpIntSeqResult> opIntSeqAsync(IntEnum[] i1, java.util.Map<String, String> context)
    {
        return _iceI_opIntSeqAsync(i1, context, false);
    }

    /**
     * @hidden
     * @param iceP_i1 -
     * @param context -
     * @param sync -
     * @return -
     **/
    default com.zeroc.IceInternal.OutgoingAsync<TestIntf.OpIntSeqResult> _iceI_opIntSeqAsync(IntEnum[] iceP_i1, java.util.Map<String, String> context, boolean sync)
    {
        com.zeroc.IceInternal.OutgoingAsync<TestIntf.OpIntSeqResult> f = new com.zeroc.IceInternal.OutgoingAsync<>(this, "opIntSeq", null, sync, null);
        f.invoke(true, context, null, ostr -> {
                     IntEnumSeqHelper.write(ostr, iceP_i1);
                 }, istr -> {
                     TestIntf.OpIntSeqResult ret = new TestIntf.OpIntSeqResult();
                     ret.read(istr);
                     return ret;
                 });
        return f;
    }

    default TestIntf.OpSimpleSeqResult opSimpleSeq(SimpleEnum[] s1)
    {
        return opSimpleSeq(s1, com.zeroc.Ice.ObjectPrx.noExplicitContext);
    }

    default TestIntf.OpSimpleSeqResult opSimpleSeq(SimpleEnum[] s1, java.util.Map<String, String> context)
    {
        return _iceI_opSimpleSeqAsync(s1, context, true).waitForResponse();
    }

    default java.util.concurrent.CompletableFuture<TestIntf.OpSimpleSeqResult> opSimpleSeqAsync(SimpleEnum[] s1)
    {
        return _iceI_opSimpleSeqAsync(s1, com.zeroc.Ice.ObjectPrx.noExplicitContext, false);
    }

    default java.util.concurrent.CompletableFuture<TestIntf.OpSimpleSeqResult> opSimpleSeqAsync(SimpleEnum[] s1, java.util.Map<String, String> context)
    {
        return _iceI_opSimpleSeqAsync(s1, context, false);
    }

    /**
     * @hidden
     * @param iceP_s1 -
     * @param context -
     * @param sync -
     * @return -
     **/
    default com.zeroc.IceInternal.OutgoingAsync<TestIntf.OpSimpleSeqResult> _iceI_opSimpleSeqAsync(SimpleEnum[] iceP_s1, java.util.Map<String, String> context, boolean sync)
    {
        com.zeroc.IceInternal.OutgoingAsync<TestIntf.OpSimpleSeqResult> f = new com.zeroc.IceInternal.OutgoingAsync<>(this, "opSimpleSeq", null, sync, null);
        f.invoke(true, context, null, ostr -> {
                     SimpleEnumSeqHelper.write(ostr, iceP_s1);
                 }, istr -> {
                     TestIntf.OpSimpleSeqResult ret = new TestIntf.OpSimpleSeqResult();
                     ret.read(istr);
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
    default com.zeroc.IceInternal.OutgoingAsync<Void> _iceI_shutdownAsync(java.util.Map<String, String> context, boolean sync)
    {
        com.zeroc.IceInternal.OutgoingAsync<Void> f = new com.zeroc.IceInternal.OutgoingAsync<>(this, "shutdown", null, sync, null);
        f.invoke(false, context, null, null, null);
        return f;
    }

    /**
     * Contacts the remote server to verify that the object implements this type.
     * Raises a local exception if a communication error occurs.
     * @param obj The untyped proxy.
     * @return A proxy for this type, or null if the object does not support this type.
     **/
    static TestIntfPrx checkedCast(com.zeroc.Ice.ObjectPrx obj)
    {
        return com.zeroc.Ice.ObjectPrx._checkedCast(obj, ice_staticId(), TestIntfPrx.class, _TestIntfPrxI.class);
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
        return com.zeroc.Ice.ObjectPrx._checkedCast(obj, context, ice_staticId(), TestIntfPrx.class, _TestIntfPrxI.class);
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
        return com.zeroc.Ice.ObjectPrx._checkedCast(obj, facet, ice_staticId(), TestIntfPrx.class, _TestIntfPrxI.class);
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
        return com.zeroc.Ice.ObjectPrx._checkedCast(obj, facet, context, ice_staticId(), TestIntfPrx.class, _TestIntfPrxI.class);
    }

    /**
     * Downcasts the given proxy to this type without contacting the remote server.
     * @param obj The untyped proxy.
     * @return A proxy for this type.
     **/
    static TestIntfPrx uncheckedCast(com.zeroc.Ice.ObjectPrx obj)
    {
        return com.zeroc.Ice.ObjectPrx._uncheckedCast(obj, TestIntfPrx.class, _TestIntfPrxI.class);
    }

    /**
     * Downcasts the given proxy to this type without contacting the remote server.
     * @param obj The untyped proxy.
     * @param facet The name of the desired facet.
     * @return A proxy for this type.
     **/
    static TestIntfPrx uncheckedCast(com.zeroc.Ice.ObjectPrx obj, String facet)
    {
        return com.zeroc.Ice.ObjectPrx._uncheckedCast(obj, facet, TestIntfPrx.class, _TestIntfPrxI.class);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for the per-proxy context.
     * @param newContext The context for the new proxy.
     * @return A proxy with the specified per-proxy context.
     **/
    @Override
    default TestIntfPrx ice_context(java.util.Map<String, String> newContext)
    {
        return (TestIntfPrx)_ice_context(newContext);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for the adapter ID.
     * @param newAdapterId The adapter ID for the new proxy.
     * @return A proxy with the specified adapter ID.
     **/
    @Override
    default TestIntfPrx ice_adapterId(String newAdapterId)
    {
        return (TestIntfPrx)_ice_adapterId(newAdapterId);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for the endpoints.
     * @param newEndpoints The endpoints for the new proxy.
     * @return A proxy with the specified endpoints.
     **/
    @Override
    default TestIntfPrx ice_endpoints(com.zeroc.Ice.Endpoint[] newEndpoints)
    {
        return (TestIntfPrx)_ice_endpoints(newEndpoints);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for the locator cache timeout.
     * @param newTimeout The new locator cache timeout (in seconds).
     * @return A proxy with the specified locator cache timeout.
     **/
    @Override
    default TestIntfPrx ice_locatorCacheTimeout(int newTimeout)
    {
        return (TestIntfPrx)_ice_locatorCacheTimeout(newTimeout);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for the invocation timeout.
     * @param newTimeout The new invocation timeout (in seconds).
     * @return A proxy with the specified invocation timeout.
     **/
    @Override
    default TestIntfPrx ice_invocationTimeout(int newTimeout)
    {
        return (TestIntfPrx)_ice_invocationTimeout(newTimeout);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for connection caching.
     * @param newCache <code>true</code> if the new proxy should cache connections; <code>false</code> otherwise.
     * @return A proxy with the specified caching policy.
     **/
    @Override
    default TestIntfPrx ice_connectionCached(boolean newCache)
    {
        return (TestIntfPrx)_ice_connectionCached(newCache);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for the endpoint selection policy.
     * @param newType The new endpoint selection policy.
     * @return A proxy with the specified endpoint selection policy.
     **/
    @Override
    default TestIntfPrx ice_endpointSelection(com.zeroc.Ice.EndpointSelectionType newType)
    {
        return (TestIntfPrx)_ice_endpointSelection(newType);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for how it selects endpoints.
     * @param b If <code>b</code> is <code>true</code>, only endpoints that use a secure transport are
     * used by the new proxy. If <code>b</code> is false, the returned proxy uses both secure and
     * insecure endpoints.
     * @return A proxy with the specified selection policy.
     **/
    @Override
    default TestIntfPrx ice_secure(boolean b)
    {
        return (TestIntfPrx)_ice_secure(b);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for the encoding used to marshal parameters.
     * @param e The encoding version to use to marshal request parameters.
     * @return A proxy with the specified encoding version.
     **/
    @Override
    default TestIntfPrx ice_encodingVersion(com.zeroc.Ice.EncodingVersion e)
    {
        return (TestIntfPrx)_ice_encodingVersion(e);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for its endpoint selection policy.
     * @param b If <code>b</code> is <code>true</code>, the new proxy will use secure endpoints for invocations
     * and only use insecure endpoints if an invocation cannot be made via secure endpoints. If <code>b</code> is
     * <code>false</code>, the proxy prefers insecure endpoints to secure ones.
     * @return A proxy with the specified selection policy.
     **/
    @Override
    default TestIntfPrx ice_preferSecure(boolean b)
    {
        return (TestIntfPrx)_ice_preferSecure(b);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for the router.
     * @param router The router for the new proxy.
     * @return A proxy with the specified router.
     **/
    @Override
    default TestIntfPrx ice_router(com.zeroc.Ice.RouterPrx router)
    {
        return (TestIntfPrx)_ice_router(router);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for the locator.
     * @param locator The locator for the new proxy.
     * @return A proxy with the specified locator.
     **/
    @Override
    default TestIntfPrx ice_locator(com.zeroc.Ice.LocatorPrx locator)
    {
        return (TestIntfPrx)_ice_locator(locator);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for collocation optimization.
     * @param b <code>true</code> if the new proxy enables collocation optimization; <code>false</code> otherwise.
     * @return A proxy with the specified collocation optimization.
     **/
    @Override
    default TestIntfPrx ice_collocationOptimized(boolean b)
    {
        return (TestIntfPrx)_ice_collocationOptimized(b);
    }

    /**
     * Returns a proxy that is identical to this proxy, but uses twoway invocations.
     * @return A proxy that uses twoway invocations.
     **/
    @Override
    default TestIntfPrx ice_twoway()
    {
        return (TestIntfPrx)_ice_twoway();
    }

    /**
     * Returns a proxy that is identical to this proxy, but uses oneway invocations.
     * @return A proxy that uses oneway invocations.
     **/
    @Override
    default TestIntfPrx ice_oneway()
    {
        return (TestIntfPrx)_ice_oneway();
    }

    /**
     * Returns a proxy that is identical to this proxy, but uses batch oneway invocations.
     * @return A proxy that uses batch oneway invocations.
     **/
    @Override
    default TestIntfPrx ice_batchOneway()
    {
        return (TestIntfPrx)_ice_batchOneway();
    }

    /**
     * Returns a proxy that is identical to this proxy, but uses datagram invocations.
     * @return A proxy that uses datagram invocations.
     **/
    @Override
    default TestIntfPrx ice_datagram()
    {
        return (TestIntfPrx)_ice_datagram();
    }

    /**
     * Returns a proxy that is identical to this proxy, but uses batch datagram invocations.
     * @return A proxy that uses batch datagram invocations.
     **/
    @Override
    default TestIntfPrx ice_batchDatagram()
    {
        return (TestIntfPrx)_ice_batchDatagram();
    }

    /**
     * Returns a proxy that is identical to this proxy, except for compression.
     * @param co <code>true</code> enables compression for the new proxy; <code>false</code> disables compression.
     * @return A proxy with the specified compression setting.
     **/
    @Override
    default TestIntfPrx ice_compress(boolean co)
    {
        return (TestIntfPrx)_ice_compress(co);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for its connection timeout setting.
     * @param t The connection timeout for the proxy in milliseconds.
     * @return A proxy with the specified timeout.
     **/
    @Override
    default TestIntfPrx ice_timeout(int t)
    {
        return (TestIntfPrx)_ice_timeout(t);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for its connection ID.
     * @param connectionId The connection ID for the new proxy. An empty string removes the connection ID.
     * @return A proxy with the specified connection ID.
     **/
    @Override
    default TestIntfPrx ice_connectionId(String connectionId)
    {
        return (TestIntfPrx)_ice_connectionId(connectionId);
    }

    /**
     * Returns a proxy that is identical to this proxy, except it's a fixed proxy bound
     * the given connection.@param connection The fixed proxy connection.
     * @return A fixed proxy bound to the given connection.
     **/
    @Override
    default TestIntfPrx ice_fixed(com.zeroc.Ice.Connection connection)
    {
        return (TestIntfPrx)_ice_fixed(connection);
    }

    static String ice_staticId()
    {
        return "::Test::TestIntf";
    }
}
