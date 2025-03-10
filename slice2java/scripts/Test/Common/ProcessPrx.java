// Copyright (c) ZeroC, Inc.
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file 'Controller.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>

package Test.Common;

public interface ProcessPrx extends com.zeroc.Ice.ObjectPrx
{
    default void waitReady(int timeout)
        throws ProcessFailedException
    {
        waitReady(timeout, com.zeroc.Ice.ObjectPrx.noExplicitContext);
    }

    default void waitReady(int timeout, java.util.Map<String, String> context)
        throws ProcessFailedException
    {
        try
        {
            _iceI_waitReadyAsync(timeout, context, true).waitForResponseOrUserEx();
        }
        catch(ProcessFailedException ex)
        {
            throw ex;
        }
        catch(com.zeroc.Ice.UserException ex)
        {
            throw com.zeroc.Ice.UnknownUserException.fromTypeId(ex.ice_id());
        }
    }

    default java.util.concurrent.CompletableFuture<Void> waitReadyAsync(int timeout)
    {
        return _iceI_waitReadyAsync(timeout, com.zeroc.Ice.ObjectPrx.noExplicitContext, false);
    }

    default java.util.concurrent.CompletableFuture<Void> waitReadyAsync(int timeout, java.util.Map<String, String> context)
    {
        return _iceI_waitReadyAsync(timeout, context, false);
    }

    /**
     * @hidden
     * @param iceP_timeout -
     * @param context -
     * @param sync -
     * @return -
     **/
    default com.zeroc.Ice.OutgoingAsync<Void> _iceI_waitReadyAsync(int iceP_timeout, java.util.Map<String, String> context, boolean sync)
    {
        com.zeroc.Ice.OutgoingAsync<Void> f = new com.zeroc.Ice.OutgoingAsync<>(this, "waitReady", null, sync, _iceE_waitReady);
        f.invoke(true, context, null, ostr -> {
                     ostr.writeInt(iceP_timeout);
                 }, null);
        return f;
    }

    /** @hidden */
    static final Class<?>[] _iceE_waitReady =
    {
        ProcessFailedException.class
    };

    default int waitSuccess(int timeout)
        throws ProcessFailedException
    {
        return waitSuccess(timeout, com.zeroc.Ice.ObjectPrx.noExplicitContext);
    }

    default int waitSuccess(int timeout, java.util.Map<String, String> context)
        throws ProcessFailedException
    {
        try
        {
            return _iceI_waitSuccessAsync(timeout, context, true).waitForResponseOrUserEx();
        }
        catch(ProcessFailedException ex)
        {
            throw ex;
        }
        catch(com.zeroc.Ice.UserException ex)
        {
            throw com.zeroc.Ice.UnknownUserException.fromTypeId(ex.ice_id());
        }
    }

    default java.util.concurrent.CompletableFuture<java.lang.Integer> waitSuccessAsync(int timeout)
    {
        return _iceI_waitSuccessAsync(timeout, com.zeroc.Ice.ObjectPrx.noExplicitContext, false);
    }

    default java.util.concurrent.CompletableFuture<java.lang.Integer> waitSuccessAsync(int timeout, java.util.Map<String, String> context)
    {
        return _iceI_waitSuccessAsync(timeout, context, false);
    }

    /**
     * @hidden
     * @param iceP_timeout -
     * @param context -
     * @param sync -
     * @return -
     **/
    default com.zeroc.Ice.OutgoingAsync<java.lang.Integer> _iceI_waitSuccessAsync(int iceP_timeout, java.util.Map<String, String> context, boolean sync)
    {
        com.zeroc.Ice.OutgoingAsync<java.lang.Integer> f = new com.zeroc.Ice.OutgoingAsync<>(this, "waitSuccess", null, sync, _iceE_waitSuccess);
        f.invoke(true, context, null, ostr -> {
                     ostr.writeInt(iceP_timeout);
                 }, istr -> {
                     int ret;
                     ret = istr.readInt();
                     return ret;
                 });
        return f;
    }

    /** @hidden */
    static final Class<?>[] _iceE_waitSuccess =
    {
        ProcessFailedException.class
    };

    default String terminate()
    {
        return terminate(com.zeroc.Ice.ObjectPrx.noExplicitContext);
    }

    default String terminate(java.util.Map<String, String> context)
    {
        return _iceI_terminateAsync(context, true).waitForResponse();
    }

    default java.util.concurrent.CompletableFuture<java.lang.String> terminateAsync()
    {
        return _iceI_terminateAsync(com.zeroc.Ice.ObjectPrx.noExplicitContext, false);
    }

    default java.util.concurrent.CompletableFuture<java.lang.String> terminateAsync(java.util.Map<String, String> context)
    {
        return _iceI_terminateAsync(context, false);
    }

    /**
     * @hidden
     * @param context -
     * @param sync -
     * @return -
     **/
    default com.zeroc.Ice.OutgoingAsync<java.lang.String> _iceI_terminateAsync(java.util.Map<String, String> context, boolean sync)
    {
        com.zeroc.Ice.OutgoingAsync<java.lang.String> f = new com.zeroc.Ice.OutgoingAsync<>(this, "terminate", null, sync, null);
        f.invoke(true, context, null, null, istr -> {
                     String ret;
                     ret = istr.readString();
                     return ret;
                 });
        return f;
    }

    /**
     * Creates a new proxy that implements {@link ProcessPrx}.
     * @param communicator The communicator of the new proxy.
     * @param proxyString The string representation of the proxy.
     * @return The new proxy.
     **/
    public static ProcessPrx createProxy(com.zeroc.Ice.Communicator communicator, String proxyString)
    {
        return new _ProcessPrxI(com.zeroc.Ice.ObjectPrx.createProxy(communicator, proxyString));
    }

    /**
     * Contacts the remote server to verify that the object implements this type.
     * Raises a local exception if a communication error occurs.
     * @param obj The untyped proxy.
     * @return A proxy for this type, or null if the object does not support this type.
     **/
    static ProcessPrx checkedCast(com.zeroc.Ice.ObjectPrx obj)
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
    static ProcessPrx checkedCast(com.zeroc.Ice.ObjectPrx obj, java.util.Map<String, String> context)
    {
        return (obj != null && obj.ice_isA(ice_staticId(), context)) ? new _ProcessPrxI(obj) : null;
    }

    /**
     * Contacts the remote server to verify that a facet of the object implements this type.
     * Raises a local exception if a communication error occurs.
     * @param obj The untyped proxy.
     * @param facet The name of the desired facet.
     * @return A proxy for this type, or null if the object does not support this type.
     **/
    static ProcessPrx checkedCast(com.zeroc.Ice.ObjectPrx obj, String facet)
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
    static ProcessPrx checkedCast(com.zeroc.Ice.ObjectPrx obj, String facet, java.util.Map<String, String> context)
    {
        return (obj == null) ? null : checkedCast(obj.ice_facet(facet), context);
    }

    /**
     * Downcasts the given proxy to this type without contacting the remote server.
     * @param obj The untyped proxy.
     * @return A proxy for this type.
     **/
    static ProcessPrx uncheckedCast(com.zeroc.Ice.ObjectPrx obj)
    {
        return (obj == null) ? null : new _ProcessPrxI(obj);
    }

    /**
     * Downcasts the given proxy to this type without contacting the remote server.
     * @param obj The untyped proxy.
     * @param facet The name of the desired facet.
     * @return A proxy for this type.
     **/
    static ProcessPrx uncheckedCast(com.zeroc.Ice.ObjectPrx obj, String facet)
    {
        return (obj == null) ? null : new _ProcessPrxI(obj.ice_facet(facet));
    }

    @Override
    ProcessPrx ice_context(java.util.Map<String, String> newContext);

    @Override
    ProcessPrx ice_adapterId(String newAdapterId);

    @Override
    ProcessPrx ice_endpoints(com.zeroc.Ice.Endpoint[] newEndpoints);

    @Override
    ProcessPrx ice_locatorCacheTimeout(int newTimeout);

    @Override
    ProcessPrx ice_invocationTimeout(int newTimeout);

    @Override
    ProcessPrx ice_connectionCached(boolean newCache);

    @Override
    ProcessPrx ice_endpointSelection(com.zeroc.Ice.EndpointSelectionType newType);

    @Override
    ProcessPrx ice_secure(boolean b);

    @Override
    ProcessPrx ice_encodingVersion(com.zeroc.Ice.EncodingVersion e);

    @Override
    ProcessPrx ice_preferSecure(boolean b);

    @Override
    ProcessPrx ice_router(com.zeroc.Ice.RouterPrx router);

    @Override
    ProcessPrx ice_locator(com.zeroc.Ice.LocatorPrx locator);

    @Override
    ProcessPrx ice_collocationOptimized(boolean b);

    @Override
    ProcessPrx ice_twoway();

    @Override
    ProcessPrx ice_oneway();

    @Override
    ProcessPrx ice_batchOneway();

    @Override
    ProcessPrx ice_datagram();

    @Override
    ProcessPrx ice_batchDatagram();

    @Override
    ProcessPrx ice_compress(boolean co);

    @Override
    ProcessPrx ice_connectionId(String connectionId);

    @Override
    ProcessPrx ice_fixed(com.zeroc.Ice.Connection connection);

    static String ice_staticId()
    {
        return "::Test::Common::Process";
    }

    /**
     * @hidden
     **/
    @Override
    default ProcessPrx _newInstance(com.zeroc.Ice.Reference ref)
    {
        return new _ProcessPrxI(ref);
    }
}
