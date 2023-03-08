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

package Test;

public interface TestIntfPrx extends com.zeroc.Ice.ObjectPrx
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
    default com.zeroc.IceInternal.OutgoingAsync<Void> _iceI_opAsync(java.util.Map<String, String> context, boolean sync)
    {
        com.zeroc.IceInternal.OutgoingAsync<Void> f = new com.zeroc.IceInternal.OutgoingAsync<>(this, "op", null, sync, null);
        f.invoke(false, context, null, null, null);
        return f;
    }

    default void opWithPayload(byte[] seq)
    {
        opWithPayload(seq, com.zeroc.Ice.ObjectPrx.noExplicitContext);
    }

    default void opWithPayload(byte[] seq, java.util.Map<String, String> context)
    {
        _iceI_opWithPayloadAsync(seq, context, true).waitForResponse();
    }

    default java.util.concurrent.CompletableFuture<Void> opWithPayloadAsync(byte[] seq)
    {
        return _iceI_opWithPayloadAsync(seq, com.zeroc.Ice.ObjectPrx.noExplicitContext, false);
    }

    default java.util.concurrent.CompletableFuture<Void> opWithPayloadAsync(byte[] seq, java.util.Map<String, String> context)
    {
        return _iceI_opWithPayloadAsync(seq, context, false);
    }

    /**
     * @hidden
     * @param iceP_seq -
     * @param context -
     * @param sync -
     * @return -
     **/
    default com.zeroc.IceInternal.OutgoingAsync<Void> _iceI_opWithPayloadAsync(byte[] iceP_seq, java.util.Map<String, String> context, boolean sync)
    {
        com.zeroc.IceInternal.OutgoingAsync<Void> f = new com.zeroc.IceInternal.OutgoingAsync<>(this, "opWithPayload", null, sync, null);
        f.invoke(false, context, null, ostr -> {
                     ostr.writeByteSeq(iceP_seq);
                 }, null);
        return f;
    }

    default int opWithResult()
    {
        return opWithResult(com.zeroc.Ice.ObjectPrx.noExplicitContext);
    }

    default int opWithResult(java.util.Map<String, String> context)
    {
        return _iceI_opWithResultAsync(context, true).waitForResponse();
    }

    default java.util.concurrent.CompletableFuture<java.lang.Integer> opWithResultAsync()
    {
        return _iceI_opWithResultAsync(com.zeroc.Ice.ObjectPrx.noExplicitContext, false);
    }

    default java.util.concurrent.CompletableFuture<java.lang.Integer> opWithResultAsync(java.util.Map<String, String> context)
    {
        return _iceI_opWithResultAsync(context, false);
    }

    /**
     * @hidden
     * @param context -
     * @param sync -
     * @return -
     **/
    default com.zeroc.IceInternal.OutgoingAsync<java.lang.Integer> _iceI_opWithResultAsync(java.util.Map<String, String> context, boolean sync)
    {
        com.zeroc.IceInternal.OutgoingAsync<java.lang.Integer> f = new com.zeroc.IceInternal.OutgoingAsync<>(this, "opWithResult", null, sync, null);
        f.invoke(true, context, null, null, istr -> {
                     int ret;
                     ret = istr.readInt();
                     return ret;
                 });
        return f;
    }

    default void opWithUE()
        throws TestIntfException
    {
        opWithUE(com.zeroc.Ice.ObjectPrx.noExplicitContext);
    }

    default void opWithUE(java.util.Map<String, String> context)
        throws TestIntfException
    {
        try
        {
            _iceI_opWithUEAsync(context, true).waitForResponseOrUserEx();
        }
        catch(TestIntfException ex)
        {
            throw ex;
        }
        catch(com.zeroc.Ice.UserException ex)
        {
            throw new com.zeroc.Ice.UnknownUserException(ex.ice_id(), ex);
        }
    }

    default java.util.concurrent.CompletableFuture<Void> opWithUEAsync()
    {
        return _iceI_opWithUEAsync(com.zeroc.Ice.ObjectPrx.noExplicitContext, false);
    }

    default java.util.concurrent.CompletableFuture<Void> opWithUEAsync(java.util.Map<String, String> context)
    {
        return _iceI_opWithUEAsync(context, false);
    }

    /**
     * @hidden
     * @param context -
     * @param sync -
     * @return -
     **/
    default com.zeroc.IceInternal.OutgoingAsync<Void> _iceI_opWithUEAsync(java.util.Map<String, String> context, boolean sync)
    {
        com.zeroc.IceInternal.OutgoingAsync<Void> f = new com.zeroc.IceInternal.OutgoingAsync<>(this, "opWithUE", null, sync, _iceE_opWithUE);
        f.invoke(true, context, null, null, null);
        return f;
    }

    /** @hidden */
    static final Class<?>[] _iceE_opWithUE =
    {
        TestIntfException.class
    };

    default int opWithResultAndUE()
        throws TestIntfException
    {
        return opWithResultAndUE(com.zeroc.Ice.ObjectPrx.noExplicitContext);
    }

    default int opWithResultAndUE(java.util.Map<String, String> context)
        throws TestIntfException
    {
        try
        {
            return _iceI_opWithResultAndUEAsync(context, true).waitForResponseOrUserEx();
        }
        catch(TestIntfException ex)
        {
            throw ex;
        }
        catch(com.zeroc.Ice.UserException ex)
        {
            throw new com.zeroc.Ice.UnknownUserException(ex.ice_id(), ex);
        }
    }

    default java.util.concurrent.CompletableFuture<java.lang.Integer> opWithResultAndUEAsync()
    {
        return _iceI_opWithResultAndUEAsync(com.zeroc.Ice.ObjectPrx.noExplicitContext, false);
    }

    default java.util.concurrent.CompletableFuture<java.lang.Integer> opWithResultAndUEAsync(java.util.Map<String, String> context)
    {
        return _iceI_opWithResultAndUEAsync(context, false);
    }

    /**
     * @hidden
     * @param context -
     * @param sync -
     * @return -
     **/
    default com.zeroc.IceInternal.OutgoingAsync<java.lang.Integer> _iceI_opWithResultAndUEAsync(java.util.Map<String, String> context, boolean sync)
    {
        com.zeroc.IceInternal.OutgoingAsync<java.lang.Integer> f = new com.zeroc.IceInternal.OutgoingAsync<>(this, "opWithResultAndUE", null, sync, _iceE_opWithResultAndUE);
        f.invoke(true, context, null, null, istr -> {
                     int ret;
                     ret = istr.readInt();
                     return ret;
                 });
        return f;
    }

    /** @hidden */
    static final Class<?>[] _iceE_opWithResultAndUE =
    {
        TestIntfException.class
    };

    default void opBatch()
    {
        opBatch(com.zeroc.Ice.ObjectPrx.noExplicitContext);
    }

    default void opBatch(java.util.Map<String, String> context)
    {
        _iceI_opBatchAsync(context, true).waitForResponse();
    }

    default java.util.concurrent.CompletableFuture<Void> opBatchAsync()
    {
        return _iceI_opBatchAsync(com.zeroc.Ice.ObjectPrx.noExplicitContext, false);
    }

    default java.util.concurrent.CompletableFuture<Void> opBatchAsync(java.util.Map<String, String> context)
    {
        return _iceI_opBatchAsync(context, false);
    }

    /**
     * @hidden
     * @param context -
     * @param sync -
     * @return -
     **/
    default com.zeroc.IceInternal.OutgoingAsync<Void> _iceI_opBatchAsync(java.util.Map<String, String> context, boolean sync)
    {
        com.zeroc.IceInternal.OutgoingAsync<Void> f = new com.zeroc.IceInternal.OutgoingAsync<>(this, "opBatch", null, sync, null);
        f.invoke(false, context, null, null, null);
        return f;
    }

    default TestIntf.OpWithArgsResult opWithArgs()
    {
        return opWithArgs(com.zeroc.Ice.ObjectPrx.noExplicitContext);
    }

    default TestIntf.OpWithArgsResult opWithArgs(java.util.Map<String, String> context)
    {
        return _iceI_opWithArgsAsync(context, true).waitForResponse();
    }

    default java.util.concurrent.CompletableFuture<TestIntf.OpWithArgsResult> opWithArgsAsync()
    {
        return _iceI_opWithArgsAsync(com.zeroc.Ice.ObjectPrx.noExplicitContext, false);
    }

    default java.util.concurrent.CompletableFuture<TestIntf.OpWithArgsResult> opWithArgsAsync(java.util.Map<String, String> context)
    {
        return _iceI_opWithArgsAsync(context, false);
    }

    /**
     * @hidden
     * @param context -
     * @param sync -
     * @return -
     **/
    default com.zeroc.IceInternal.OutgoingAsync<TestIntf.OpWithArgsResult> _iceI_opWithArgsAsync(java.util.Map<String, String> context, boolean sync)
    {
        com.zeroc.IceInternal.OutgoingAsync<TestIntf.OpWithArgsResult> f = new com.zeroc.IceInternal.OutgoingAsync<>(this, "opWithArgs", null, sync, null);
        f.invoke(true, context, null, null, istr -> {
                     TestIntf.OpWithArgsResult ret = new TestIntf.OpWithArgsResult();
                     ret.read(istr);
                     return ret;
                 });
        return f;
    }

    default int opBatchCount()
    {
        return opBatchCount(com.zeroc.Ice.ObjectPrx.noExplicitContext);
    }

    default int opBatchCount(java.util.Map<String, String> context)
    {
        return _iceI_opBatchCountAsync(context, true).waitForResponse();
    }

    default java.util.concurrent.CompletableFuture<java.lang.Integer> opBatchCountAsync()
    {
        return _iceI_opBatchCountAsync(com.zeroc.Ice.ObjectPrx.noExplicitContext, false);
    }

    default java.util.concurrent.CompletableFuture<java.lang.Integer> opBatchCountAsync(java.util.Map<String, String> context)
    {
        return _iceI_opBatchCountAsync(context, false);
    }

    /**
     * @hidden
     * @param context -
     * @param sync -
     * @return -
     **/
    default com.zeroc.IceInternal.OutgoingAsync<java.lang.Integer> _iceI_opBatchCountAsync(java.util.Map<String, String> context, boolean sync)
    {
        com.zeroc.IceInternal.OutgoingAsync<java.lang.Integer> f = new com.zeroc.IceInternal.OutgoingAsync<>(this, "opBatchCount", null, sync, null);
        f.invoke(true, context, null, null, istr -> {
                     int ret;
                     ret = istr.readInt();
                     return ret;
                 });
        return f;
    }

    default boolean waitForBatch(int count)
    {
        return waitForBatch(count, com.zeroc.Ice.ObjectPrx.noExplicitContext);
    }

    default boolean waitForBatch(int count, java.util.Map<String, String> context)
    {
        return _iceI_waitForBatchAsync(count, context, true).waitForResponse();
    }

    default java.util.concurrent.CompletableFuture<java.lang.Boolean> waitForBatchAsync(int count)
    {
        return _iceI_waitForBatchAsync(count, com.zeroc.Ice.ObjectPrx.noExplicitContext, false);
    }

    default java.util.concurrent.CompletableFuture<java.lang.Boolean> waitForBatchAsync(int count, java.util.Map<String, String> context)
    {
        return _iceI_waitForBatchAsync(count, context, false);
    }

    /**
     * @hidden
     * @param iceP_count -
     * @param context -
     * @param sync -
     * @return -
     **/
    default com.zeroc.IceInternal.OutgoingAsync<java.lang.Boolean> _iceI_waitForBatchAsync(int iceP_count, java.util.Map<String, String> context, boolean sync)
    {
        com.zeroc.IceInternal.OutgoingAsync<java.lang.Boolean> f = new com.zeroc.IceInternal.OutgoingAsync<>(this, "waitForBatch", null, sync, null);
        f.invoke(true, context, null, ostr -> {
                     ostr.writeInt(iceP_count);
                 }, istr -> {
                     boolean ret;
                     ret = istr.readBool();
                     return ret;
                 });
        return f;
    }

    default void close(CloseMode mode)
    {
        close(mode, com.zeroc.Ice.ObjectPrx.noExplicitContext);
    }

    default void close(CloseMode mode, java.util.Map<String, String> context)
    {
        _iceI_closeAsync(mode, context, true).waitForResponse();
    }

    default java.util.concurrent.CompletableFuture<Void> closeAsync(CloseMode mode)
    {
        return _iceI_closeAsync(mode, com.zeroc.Ice.ObjectPrx.noExplicitContext, false);
    }

    default java.util.concurrent.CompletableFuture<Void> closeAsync(CloseMode mode, java.util.Map<String, String> context)
    {
        return _iceI_closeAsync(mode, context, false);
    }

    /**
     * @hidden
     * @param iceP_mode -
     * @param context -
     * @param sync -
     * @return -
     **/
    default com.zeroc.IceInternal.OutgoingAsync<Void> _iceI_closeAsync(CloseMode iceP_mode, java.util.Map<String, String> context, boolean sync)
    {
        com.zeroc.IceInternal.OutgoingAsync<Void> f = new com.zeroc.IceInternal.OutgoingAsync<>(this, "close", null, sync, null);
        f.invoke(false, context, null, ostr -> {
                     CloseMode.ice_write(ostr, iceP_mode);
                 }, null);
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
    default com.zeroc.IceInternal.OutgoingAsync<Void> _iceI_sleepAsync(int iceP_ms, java.util.Map<String, String> context, boolean sync)
    {
        com.zeroc.IceInternal.OutgoingAsync<Void> f = new com.zeroc.IceInternal.OutgoingAsync<>(this, "sleep", null, sync, null);
        f.invoke(false, context, null, ostr -> {
                     ostr.writeInt(iceP_ms);
                 }, null);
        return f;
    }

    default void startDispatch()
    {
        startDispatch(com.zeroc.Ice.ObjectPrx.noExplicitContext);
    }

    default void startDispatch(java.util.Map<String, String> context)
    {
        _iceI_startDispatchAsync(context, true).waitForResponse();
    }

    default java.util.concurrent.CompletableFuture<Void> startDispatchAsync()
    {
        return _iceI_startDispatchAsync(com.zeroc.Ice.ObjectPrx.noExplicitContext, false);
    }

    default java.util.concurrent.CompletableFuture<Void> startDispatchAsync(java.util.Map<String, String> context)
    {
        return _iceI_startDispatchAsync(context, false);
    }

    /**
     * @hidden
     * @param context -
     * @param sync -
     * @return -
     **/
    default com.zeroc.IceInternal.OutgoingAsync<Void> _iceI_startDispatchAsync(java.util.Map<String, String> context, boolean sync)
    {
        com.zeroc.IceInternal.OutgoingAsync<Void> f = new com.zeroc.IceInternal.OutgoingAsync<>(this, "startDispatch", null, sync, null);
        f.invoke(false, context, null, null, null);
        return f;
    }

    default void finishDispatch()
    {
        finishDispatch(com.zeroc.Ice.ObjectPrx.noExplicitContext);
    }

    default void finishDispatch(java.util.Map<String, String> context)
    {
        _iceI_finishDispatchAsync(context, true).waitForResponse();
    }

    default java.util.concurrent.CompletableFuture<Void> finishDispatchAsync()
    {
        return _iceI_finishDispatchAsync(com.zeroc.Ice.ObjectPrx.noExplicitContext, false);
    }

    default java.util.concurrent.CompletableFuture<Void> finishDispatchAsync(java.util.Map<String, String> context)
    {
        return _iceI_finishDispatchAsync(context, false);
    }

    /**
     * @hidden
     * @param context -
     * @param sync -
     * @return -
     **/
    default com.zeroc.IceInternal.OutgoingAsync<Void> _iceI_finishDispatchAsync(java.util.Map<String, String> context, boolean sync)
    {
        com.zeroc.IceInternal.OutgoingAsync<Void> f = new com.zeroc.IceInternal.OutgoingAsync<>(this, "finishDispatch", null, sync, null);
        f.invoke(false, context, null, null, null);
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

    default boolean supportsAMD()
    {
        return supportsAMD(com.zeroc.Ice.ObjectPrx.noExplicitContext);
    }

    default boolean supportsAMD(java.util.Map<String, String> context)
    {
        return _iceI_supportsAMDAsync(context, true).waitForResponse();
    }

    default java.util.concurrent.CompletableFuture<java.lang.Boolean> supportsAMDAsync()
    {
        return _iceI_supportsAMDAsync(com.zeroc.Ice.ObjectPrx.noExplicitContext, false);
    }

    default java.util.concurrent.CompletableFuture<java.lang.Boolean> supportsAMDAsync(java.util.Map<String, String> context)
    {
        return _iceI_supportsAMDAsync(context, false);
    }

    /**
     * @hidden
     * @param context -
     * @param sync -
     * @return -
     **/
    default com.zeroc.IceInternal.OutgoingAsync<java.lang.Boolean> _iceI_supportsAMDAsync(java.util.Map<String, String> context, boolean sync)
    {
        com.zeroc.IceInternal.OutgoingAsync<java.lang.Boolean> f = new com.zeroc.IceInternal.OutgoingAsync<>(this, "supportsAMD", null, sync, null);
        f.invoke(true, context, null, null, istr -> {
                     boolean ret;
                     ret = istr.readBool();
                     return ret;
                 });
        return f;
    }

    default boolean supportsFunctionalTests()
    {
        return supportsFunctionalTests(com.zeroc.Ice.ObjectPrx.noExplicitContext);
    }

    default boolean supportsFunctionalTests(java.util.Map<String, String> context)
    {
        return _iceI_supportsFunctionalTestsAsync(context, true).waitForResponse();
    }

    default java.util.concurrent.CompletableFuture<java.lang.Boolean> supportsFunctionalTestsAsync()
    {
        return _iceI_supportsFunctionalTestsAsync(com.zeroc.Ice.ObjectPrx.noExplicitContext, false);
    }

    default java.util.concurrent.CompletableFuture<java.lang.Boolean> supportsFunctionalTestsAsync(java.util.Map<String, String> context)
    {
        return _iceI_supportsFunctionalTestsAsync(context, false);
    }

    /**
     * @hidden
     * @param context -
     * @param sync -
     * @return -
     **/
    default com.zeroc.IceInternal.OutgoingAsync<java.lang.Boolean> _iceI_supportsFunctionalTestsAsync(java.util.Map<String, String> context, boolean sync)
    {
        com.zeroc.IceInternal.OutgoingAsync<java.lang.Boolean> f = new com.zeroc.IceInternal.OutgoingAsync<>(this, "supportsFunctionalTests", null, sync, null);
        f.invoke(true, context, null, null, istr -> {
                     boolean ret;
                     ret = istr.readBool();
                     return ret;
                 });
        return f;
    }

    default void pingBiDir(PingReplyPrx reply)
    {
        pingBiDir(reply, com.zeroc.Ice.ObjectPrx.noExplicitContext);
    }

    default void pingBiDir(PingReplyPrx reply, java.util.Map<String, String> context)
    {
        _iceI_pingBiDirAsync(reply, context, true).waitForResponse();
    }

    default java.util.concurrent.CompletableFuture<Void> pingBiDirAsync(PingReplyPrx reply)
    {
        return _iceI_pingBiDirAsync(reply, com.zeroc.Ice.ObjectPrx.noExplicitContext, false);
    }

    default java.util.concurrent.CompletableFuture<Void> pingBiDirAsync(PingReplyPrx reply, java.util.Map<String, String> context)
    {
        return _iceI_pingBiDirAsync(reply, context, false);
    }

    /**
     * @hidden
     * @param iceP_reply -
     * @param context -
     * @param sync -
     * @return -
     **/
    default com.zeroc.IceInternal.OutgoingAsync<Void> _iceI_pingBiDirAsync(PingReplyPrx iceP_reply, java.util.Map<String, String> context, boolean sync)
    {
        com.zeroc.IceInternal.OutgoingAsync<Void> f = new com.zeroc.IceInternal.OutgoingAsync<>(this, "pingBiDir", null, sync, null);
        f.invoke(false, context, null, ostr -> {
                     ostr.writeProxy(iceP_reply);
                 }, null);
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
