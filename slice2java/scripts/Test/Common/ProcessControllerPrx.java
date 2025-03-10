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

public interface ProcessControllerPrx extends com.zeroc.Ice.ObjectPrx
{
    default ProcessPrx start(String testsuite, String exe, String[] args)
        throws ProcessFailedException
    {
        return start(testsuite, exe, args, com.zeroc.Ice.ObjectPrx.noExplicitContext);
    }

    default ProcessPrx start(String testsuite, String exe, String[] args, java.util.Map<String, String> context)
        throws ProcessFailedException
    {
        try
        {
            return _iceI_startAsync(testsuite, exe, args, context, true).waitForResponseOrUserEx();
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

    default java.util.concurrent.CompletableFuture<ProcessPrx> startAsync(String testsuite, String exe, String[] args)
    {
        return _iceI_startAsync(testsuite, exe, args, com.zeroc.Ice.ObjectPrx.noExplicitContext, false);
    }

    default java.util.concurrent.CompletableFuture<ProcessPrx> startAsync(String testsuite, String exe, String[] args, java.util.Map<String, String> context)
    {
        return _iceI_startAsync(testsuite, exe, args, context, false);
    }

    /**
     * @hidden
     * @param iceP_testsuite -
     * @param iceP_exe -
     * @param iceP_args -
     * @param context -
     * @param sync -
     * @return -
     **/
    default com.zeroc.Ice.OutgoingAsync<ProcessPrx> _iceI_startAsync(String iceP_testsuite, String iceP_exe, String[] iceP_args, java.util.Map<String, String> context, boolean sync)
    {
        com.zeroc.Ice.OutgoingAsync<ProcessPrx> f = new com.zeroc.Ice.OutgoingAsync<>(this, "start", null, sync, _iceE_start);
        f.invoke(true, context, null, ostr -> {
                     ostr.writeString(iceP_testsuite);
                     ostr.writeString(iceP_exe);
                     ostr.writeStringSeq(iceP_args);
                 }, istr -> {
                     ProcessPrx ret;
                     ret = ProcessPrx.uncheckedCast(istr.readProxy());
                     return ret;
                 });
        return f;
    }

    /** @hidden */
    static final Class<?>[] _iceE_start =
    {
        ProcessFailedException.class
    };

    default String getHost(String protocol, boolean ipv6)
    {
        return getHost(protocol, ipv6, com.zeroc.Ice.ObjectPrx.noExplicitContext);
    }

    default String getHost(String protocol, boolean ipv6, java.util.Map<String, String> context)
    {
        return _iceI_getHostAsync(protocol, ipv6, context, true).waitForResponse();
    }

    default java.util.concurrent.CompletableFuture<java.lang.String> getHostAsync(String protocol, boolean ipv6)
    {
        return _iceI_getHostAsync(protocol, ipv6, com.zeroc.Ice.ObjectPrx.noExplicitContext, false);
    }

    default java.util.concurrent.CompletableFuture<java.lang.String> getHostAsync(String protocol, boolean ipv6, java.util.Map<String, String> context)
    {
        return _iceI_getHostAsync(protocol, ipv6, context, false);
    }

    /**
     * @hidden
     * @param iceP_protocol -
     * @param iceP_ipv6 -
     * @param context -
     * @param sync -
     * @return -
     **/
    default com.zeroc.Ice.OutgoingAsync<java.lang.String> _iceI_getHostAsync(String iceP_protocol, boolean iceP_ipv6, java.util.Map<String, String> context, boolean sync)
    {
        com.zeroc.Ice.OutgoingAsync<java.lang.String> f = new com.zeroc.Ice.OutgoingAsync<>(this, "getHost", null, sync, null);
        f.invoke(true, context, null, ostr -> {
                     ostr.writeString(iceP_protocol);
                     ostr.writeBool(iceP_ipv6);
                 }, istr -> {
                     String ret;
                     ret = istr.readString();
                     return ret;
                 });
        return f;
    }

    /**
     * Creates a new proxy that implements {@link ProcessControllerPrx}.
     * @param communicator The communicator of the new proxy.
     * @param proxyString The string representation of the proxy.
     * @return The new proxy.
     **/
    public static ProcessControllerPrx createProxy(com.zeroc.Ice.Communicator communicator, String proxyString)
    {
        return new _ProcessControllerPrxI(com.zeroc.Ice.ObjectPrx.createProxy(communicator, proxyString));
    }

    /**
     * Contacts the remote server to verify that the object implements this type.
     * Raises a local exception if a communication error occurs.
     * @param obj The untyped proxy.
     * @return A proxy for this type, or null if the object does not support this type.
     **/
    static ProcessControllerPrx checkedCast(com.zeroc.Ice.ObjectPrx obj)
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
    static ProcessControllerPrx checkedCast(com.zeroc.Ice.ObjectPrx obj, java.util.Map<String, String> context)
    {
        return (obj != null && obj.ice_isA(ice_staticId(), context)) ? new _ProcessControllerPrxI(obj) : null;
    }

    /**
     * Contacts the remote server to verify that a facet of the object implements this type.
     * Raises a local exception if a communication error occurs.
     * @param obj The untyped proxy.
     * @param facet The name of the desired facet.
     * @return A proxy for this type, or null if the object does not support this type.
     **/
    static ProcessControllerPrx checkedCast(com.zeroc.Ice.ObjectPrx obj, String facet)
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
    static ProcessControllerPrx checkedCast(com.zeroc.Ice.ObjectPrx obj, String facet, java.util.Map<String, String> context)
    {
        return (obj == null) ? null : checkedCast(obj.ice_facet(facet), context);
    }

    /**
     * Downcasts the given proxy to this type without contacting the remote server.
     * @param obj The untyped proxy.
     * @return A proxy for this type.
     **/
    static ProcessControllerPrx uncheckedCast(com.zeroc.Ice.ObjectPrx obj)
    {
        return (obj == null) ? null : new _ProcessControllerPrxI(obj);
    }

    /**
     * Downcasts the given proxy to this type without contacting the remote server.
     * @param obj The untyped proxy.
     * @param facet The name of the desired facet.
     * @return A proxy for this type.
     **/
    static ProcessControllerPrx uncheckedCast(com.zeroc.Ice.ObjectPrx obj, String facet)
    {
        return (obj == null) ? null : new _ProcessControllerPrxI(obj.ice_facet(facet));
    }

    @Override
    ProcessControllerPrx ice_context(java.util.Map<String, String> newContext);

    @Override
    ProcessControllerPrx ice_adapterId(String newAdapterId);

    @Override
    ProcessControllerPrx ice_endpoints(com.zeroc.Ice.Endpoint[] newEndpoints);

    @Override
    ProcessControllerPrx ice_locatorCacheTimeout(int newTimeout);

    @Override
    ProcessControllerPrx ice_invocationTimeout(int newTimeout);

    @Override
    ProcessControllerPrx ice_connectionCached(boolean newCache);

    @Override
    ProcessControllerPrx ice_endpointSelection(com.zeroc.Ice.EndpointSelectionType newType);

    @Override
    ProcessControllerPrx ice_secure(boolean b);

    @Override
    ProcessControllerPrx ice_encodingVersion(com.zeroc.Ice.EncodingVersion e);

    @Override
    ProcessControllerPrx ice_preferSecure(boolean b);

    @Override
    ProcessControllerPrx ice_router(com.zeroc.Ice.RouterPrx router);

    @Override
    ProcessControllerPrx ice_locator(com.zeroc.Ice.LocatorPrx locator);

    @Override
    ProcessControllerPrx ice_collocationOptimized(boolean b);

    @Override
    ProcessControllerPrx ice_twoway();

    @Override
    ProcessControllerPrx ice_oneway();

    @Override
    ProcessControllerPrx ice_batchOneway();

    @Override
    ProcessControllerPrx ice_datagram();

    @Override
    ProcessControllerPrx ice_batchDatagram();

    @Override
    ProcessControllerPrx ice_compress(boolean co);

    @Override
    ProcessControllerPrx ice_connectionId(String connectionId);

    @Override
    ProcessControllerPrx ice_fixed(com.zeroc.Ice.Connection connection);

    static String ice_staticId()
    {
        return "::Test::Common::ProcessController";
    }

    /**
     * @hidden
     **/
    @Override
    default ProcessControllerPrx _newInstance(com.zeroc.Ice.Reference ref)
    {
        return new _ProcessControllerPrxI(ref);
    }
}
