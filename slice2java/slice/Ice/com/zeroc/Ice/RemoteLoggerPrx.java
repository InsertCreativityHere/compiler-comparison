// Copyright (c) ZeroC, Inc.
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file 'RemoteLogger.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>

package com.zeroc.Ice;

/**
 * The Ice remote logger interface. An application can implement a RemoteLogger to receive the log messages sent
 * to the local {@link RemoteLogger} of another Ice application.
 **/
public interface RemoteLoggerPrx extends com.zeroc.Ice.ObjectPrx
{
    /**
     * init is called by attachRemoteLogger when a RemoteLogger proxy is attached.
     * @param prefix The prefix of the associated local Logger.
     * @param logMessages Old log messages generated before "now".
     **/
    default void init(String prefix, LogMessage[] logMessages)
    {
        init(prefix, logMessages, com.zeroc.Ice.ObjectPrx.noExplicitContext);
    }

    /**
     * init is called by attachRemoteLogger when a RemoteLogger proxy is attached.
     * @param prefix The prefix of the associated local Logger.
     * @param logMessages Old log messages generated before "now".
     * @param context The Context map to send with the invocation.
     **/
    default void init(String prefix, LogMessage[] logMessages, java.util.Map<String, String> context)
    {
        _iceI_initAsync(prefix, logMessages, context, true).waitForResponse();
    }

    /**
     * init is called by attachRemoteLogger when a RemoteLogger proxy is attached.
     * @param prefix The prefix of the associated local Logger.
     * @param logMessages Old log messages generated before "now".
     * @return A future that will be completed when the invocation completes.
     **/
    default java.util.concurrent.CompletableFuture<Void> initAsync(String prefix, LogMessage[] logMessages)
    {
        return _iceI_initAsync(prefix, logMessages, com.zeroc.Ice.ObjectPrx.noExplicitContext, false);
    }

    /**
     * init is called by attachRemoteLogger when a RemoteLogger proxy is attached.
     * @param prefix The prefix of the associated local Logger.
     * @param logMessages Old log messages generated before "now".
     * @param context The Context map to send with the invocation.
     * @return A future that will be completed when the invocation completes.
     **/
    default java.util.concurrent.CompletableFuture<Void> initAsync(String prefix, LogMessage[] logMessages, java.util.Map<String, String> context)
    {
        return _iceI_initAsync(prefix, logMessages, context, false);
    }

    /**
     * @hidden
     * @param iceP_prefix -
     * @param iceP_logMessages -
     * @param context -
     * @param sync -
     * @return -
     **/
    default com.zeroc.Ice.OutgoingAsync<Void> _iceI_initAsync(String iceP_prefix, LogMessage[] iceP_logMessages, java.util.Map<String, String> context, boolean sync)
    {
        com.zeroc.Ice.OutgoingAsync<Void> f = new com.zeroc.Ice.OutgoingAsync<>(this, "init", null, sync, null);
        f.invoke(false, context, null, ostr -> {
                     ostr.writeString(iceP_prefix);
                     LogMessageSeqHelper.write(ostr, iceP_logMessages);
                 }, null);
        return f;
    }

    /**
     * Log a LogMessage. Note that log may be called by LoggerAdmin before init.
     * @param message The message to log.
     **/
    default void log(LogMessage message)
    {
        log(message, com.zeroc.Ice.ObjectPrx.noExplicitContext);
    }

    /**
     * Log a LogMessage. Note that log may be called by LoggerAdmin before init.
     * @param message The message to log.
     * @param context The Context map to send with the invocation.
     **/
    default void log(LogMessage message, java.util.Map<String, String> context)
    {
        _iceI_logAsync(message, context, true).waitForResponse();
    }

    /**
     * Log a LogMessage. Note that log may be called by LoggerAdmin before init.
     * @param message The message to log.
     * @return A future that will be completed when the invocation completes.
     **/
    default java.util.concurrent.CompletableFuture<Void> logAsync(LogMessage message)
    {
        return _iceI_logAsync(message, com.zeroc.Ice.ObjectPrx.noExplicitContext, false);
    }

    /**
     * Log a LogMessage. Note that log may be called by LoggerAdmin before init.
     * @param message The message to log.
     * @param context The Context map to send with the invocation.
     * @return A future that will be completed when the invocation completes.
     **/
    default java.util.concurrent.CompletableFuture<Void> logAsync(LogMessage message, java.util.Map<String, String> context)
    {
        return _iceI_logAsync(message, context, false);
    }

    /**
     * @hidden
     * @param iceP_message -
     * @param context -
     * @param sync -
     * @return -
     **/
    default com.zeroc.Ice.OutgoingAsync<Void> _iceI_logAsync(LogMessage iceP_message, java.util.Map<String, String> context, boolean sync)
    {
        com.zeroc.Ice.OutgoingAsync<Void> f = new com.zeroc.Ice.OutgoingAsync<>(this, "log", null, sync, null);
        f.invoke(false, context, null, ostr -> {
                     LogMessage.ice_write(ostr, iceP_message);
                 }, null);
        return f;
    }

    /**
     * Creates a new proxy that implements {@link RemoteLoggerPrx}.
     * @param communicator The communicator of the new proxy.
     * @param proxyString The string representation of the proxy.
     * @return The new proxy.
     **/
    public static RemoteLoggerPrx createProxy(com.zeroc.Ice.Communicator communicator, String proxyString)
    {
        return new _RemoteLoggerPrxI(com.zeroc.Ice.ObjectPrx.createProxy(communicator, proxyString));
    }

    /**
     * Contacts the remote server to verify that the object implements this type.
     * Raises a local exception if a communication error occurs.
     * @param obj The untyped proxy.
     * @return A proxy for this type, or null if the object does not support this type.
     **/
    static RemoteLoggerPrx checkedCast(com.zeroc.Ice.ObjectPrx obj)
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
    static RemoteLoggerPrx checkedCast(com.zeroc.Ice.ObjectPrx obj, java.util.Map<String, String> context)
    {
        return (obj != null && obj.ice_isA(ice_staticId(), context)) ? new _RemoteLoggerPrxI(obj) : null;
    }

    /**
     * Contacts the remote server to verify that a facet of the object implements this type.
     * Raises a local exception if a communication error occurs.
     * @param obj The untyped proxy.
     * @param facet The name of the desired facet.
     * @return A proxy for this type, or null if the object does not support this type.
     **/
    static RemoteLoggerPrx checkedCast(com.zeroc.Ice.ObjectPrx obj, String facet)
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
    static RemoteLoggerPrx checkedCast(com.zeroc.Ice.ObjectPrx obj, String facet, java.util.Map<String, String> context)
    {
        return (obj == null) ? null : checkedCast(obj.ice_facet(facet), context);
    }

    /**
     * Downcasts the given proxy to this type without contacting the remote server.
     * @param obj The untyped proxy.
     * @return A proxy for this type.
     **/
    static RemoteLoggerPrx uncheckedCast(com.zeroc.Ice.ObjectPrx obj)
    {
        return (obj == null) ? null : new _RemoteLoggerPrxI(obj);
    }

    /**
     * Downcasts the given proxy to this type without contacting the remote server.
     * @param obj The untyped proxy.
     * @param facet The name of the desired facet.
     * @return A proxy for this type.
     **/
    static RemoteLoggerPrx uncheckedCast(com.zeroc.Ice.ObjectPrx obj, String facet)
    {
        return (obj == null) ? null : new _RemoteLoggerPrxI(obj.ice_facet(facet));
    }

    @Override
    RemoteLoggerPrx ice_context(java.util.Map<String, String> newContext);

    @Override
    RemoteLoggerPrx ice_adapterId(String newAdapterId);

    @Override
    RemoteLoggerPrx ice_endpoints(com.zeroc.Ice.Endpoint[] newEndpoints);

    @Override
    RemoteLoggerPrx ice_locatorCacheTimeout(int newTimeout);

    @Override
    RemoteLoggerPrx ice_invocationTimeout(int newTimeout);

    @Override
    RemoteLoggerPrx ice_connectionCached(boolean newCache);

    @Override
    RemoteLoggerPrx ice_endpointSelection(com.zeroc.Ice.EndpointSelectionType newType);

    @Override
    RemoteLoggerPrx ice_secure(boolean b);

    @Override
    RemoteLoggerPrx ice_encodingVersion(com.zeroc.Ice.EncodingVersion e);

    @Override
    RemoteLoggerPrx ice_preferSecure(boolean b);

    @Override
    RemoteLoggerPrx ice_router(com.zeroc.Ice.RouterPrx router);

    @Override
    RemoteLoggerPrx ice_locator(com.zeroc.Ice.LocatorPrx locator);

    @Override
    RemoteLoggerPrx ice_collocationOptimized(boolean b);

    @Override
    RemoteLoggerPrx ice_twoway();

    @Override
    RemoteLoggerPrx ice_oneway();

    @Override
    RemoteLoggerPrx ice_batchOneway();

    @Override
    RemoteLoggerPrx ice_datagram();

    @Override
    RemoteLoggerPrx ice_batchDatagram();

    @Override
    RemoteLoggerPrx ice_compress(boolean co);

    @Override
    RemoteLoggerPrx ice_connectionId(String connectionId);

    @Override
    RemoteLoggerPrx ice_fixed(com.zeroc.Ice.Connection connection);

    static String ice_staticId()
    {
        return "::Ice::RemoteLogger";
    }

    /**
     * @hidden
     **/
    @Override
    default RemoteLoggerPrx _newInstance(com.zeroc.Ice.Reference ref)
    {
        return new _RemoteLoggerPrxI(ref);
    }
}
