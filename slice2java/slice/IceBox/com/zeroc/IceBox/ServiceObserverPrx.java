// Copyright (c) ZeroC, Inc.
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file 'ServiceManager.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>

package com.zeroc.IceBox;

/**
 * An Observer interface implemented by admin clients interested in the status of services.
 *
 * @see ServiceManager
 **/
public interface ServiceObserverPrx extends com.zeroc.Ice.ObjectPrx
{
    /**
     * Receives the names of the services that were started.
     * @param services The names of the services.
     **/
    default void servicesStarted(String[] services)
    {
        servicesStarted(services, com.zeroc.Ice.ObjectPrx.noExplicitContext);
    }

    /**
     * Receives the names of the services that were started.
     * @param services The names of the services.
     * @param context The Context map to send with the invocation.
     **/
    default void servicesStarted(String[] services, java.util.Map<String, String> context)
    {
        _iceI_servicesStartedAsync(services, context, true).waitForResponse();
    }

    /**
     * Receives the names of the services that were started.
     * @param services The names of the services.
     * @return A future that will be completed when the invocation completes.
     **/
    default java.util.concurrent.CompletableFuture<Void> servicesStartedAsync(String[] services)
    {
        return _iceI_servicesStartedAsync(services, com.zeroc.Ice.ObjectPrx.noExplicitContext, false);
    }

    /**
     * Receives the names of the services that were started.
     * @param services The names of the services.
     * @param context The Context map to send with the invocation.
     * @return A future that will be completed when the invocation completes.
     **/
    default java.util.concurrent.CompletableFuture<Void> servicesStartedAsync(String[] services, java.util.Map<String, String> context)
    {
        return _iceI_servicesStartedAsync(services, context, false);
    }

    /**
     * @hidden
     * @param iceP_services -
     * @param context -
     * @param sync -
     * @return -
     **/
    default com.zeroc.Ice.OutgoingAsync<Void> _iceI_servicesStartedAsync(String[] iceP_services, java.util.Map<String, String> context, boolean sync)
    {
        com.zeroc.Ice.OutgoingAsync<Void> f = new com.zeroc.Ice.OutgoingAsync<>(this, "servicesStarted", null, sync, null);
        f.invoke(false, context, null, ostr -> {
                     ostr.writeStringSeq(iceP_services);
                 }, null);
        return f;
    }

    /**
     * Receives the names of the services that were stopped.
     * @param services The names of the services.
     **/
    default void servicesStopped(String[] services)
    {
        servicesStopped(services, com.zeroc.Ice.ObjectPrx.noExplicitContext);
    }

    /**
     * Receives the names of the services that were stopped.
     * @param services The names of the services.
     * @param context The Context map to send with the invocation.
     **/
    default void servicesStopped(String[] services, java.util.Map<String, String> context)
    {
        _iceI_servicesStoppedAsync(services, context, true).waitForResponse();
    }

    /**
     * Receives the names of the services that were stopped.
     * @param services The names of the services.
     * @return A future that will be completed when the invocation completes.
     **/
    default java.util.concurrent.CompletableFuture<Void> servicesStoppedAsync(String[] services)
    {
        return _iceI_servicesStoppedAsync(services, com.zeroc.Ice.ObjectPrx.noExplicitContext, false);
    }

    /**
     * Receives the names of the services that were stopped.
     * @param services The names of the services.
     * @param context The Context map to send with the invocation.
     * @return A future that will be completed when the invocation completes.
     **/
    default java.util.concurrent.CompletableFuture<Void> servicesStoppedAsync(String[] services, java.util.Map<String, String> context)
    {
        return _iceI_servicesStoppedAsync(services, context, false);
    }

    /**
     * @hidden
     * @param iceP_services -
     * @param context -
     * @param sync -
     * @return -
     **/
    default com.zeroc.Ice.OutgoingAsync<Void> _iceI_servicesStoppedAsync(String[] iceP_services, java.util.Map<String, String> context, boolean sync)
    {
        com.zeroc.Ice.OutgoingAsync<Void> f = new com.zeroc.Ice.OutgoingAsync<>(this, "servicesStopped", null, sync, null);
        f.invoke(false, context, null, ostr -> {
                     ostr.writeStringSeq(iceP_services);
                 }, null);
        return f;
    }

    /**
     * Creates a new proxy that implements {@link ServiceObserverPrx}.
     * @param communicator The communicator of the new proxy.
     * @param proxyString The string representation of the proxy.
     * @return The new proxy.
     **/
    public static ServiceObserverPrx createProxy(com.zeroc.Ice.Communicator communicator, String proxyString)
    {
        return new _ServiceObserverPrxI(com.zeroc.Ice.ObjectPrx.createProxy(communicator, proxyString));
    }

    /**
     * Contacts the remote server to verify that the object implements this type.
     * Raises a local exception if a communication error occurs.
     * @param obj The untyped proxy.
     * @return A proxy for this type, or null if the object does not support this type.
     **/
    static ServiceObserverPrx checkedCast(com.zeroc.Ice.ObjectPrx obj)
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
    static ServiceObserverPrx checkedCast(com.zeroc.Ice.ObjectPrx obj, java.util.Map<String, String> context)
    {
        return (obj != null && obj.ice_isA(ice_staticId(), context)) ? new _ServiceObserverPrxI(obj) : null;
    }

    /**
     * Contacts the remote server to verify that a facet of the object implements this type.
     * Raises a local exception if a communication error occurs.
     * @param obj The untyped proxy.
     * @param facet The name of the desired facet.
     * @return A proxy for this type, or null if the object does not support this type.
     **/
    static ServiceObserverPrx checkedCast(com.zeroc.Ice.ObjectPrx obj, String facet)
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
    static ServiceObserverPrx checkedCast(com.zeroc.Ice.ObjectPrx obj, String facet, java.util.Map<String, String> context)
    {
        return (obj == null) ? null : checkedCast(obj.ice_facet(facet), context);
    }

    /**
     * Downcasts the given proxy to this type without contacting the remote server.
     * @param obj The untyped proxy.
     * @return A proxy for this type.
     **/
    static ServiceObserverPrx uncheckedCast(com.zeroc.Ice.ObjectPrx obj)
    {
        return (obj == null) ? null : new _ServiceObserverPrxI(obj);
    }

    /**
     * Downcasts the given proxy to this type without contacting the remote server.
     * @param obj The untyped proxy.
     * @param facet The name of the desired facet.
     * @return A proxy for this type.
     **/
    static ServiceObserverPrx uncheckedCast(com.zeroc.Ice.ObjectPrx obj, String facet)
    {
        return (obj == null) ? null : new _ServiceObserverPrxI(obj.ice_facet(facet));
    }

    @Override
    ServiceObserverPrx ice_context(java.util.Map<String, String> newContext);

    @Override
    ServiceObserverPrx ice_adapterId(String newAdapterId);

    @Override
    ServiceObserverPrx ice_endpoints(com.zeroc.Ice.Endpoint[] newEndpoints);

    @Override
    ServiceObserverPrx ice_locatorCacheTimeout(int newTimeout);

    @Override
    ServiceObserverPrx ice_invocationTimeout(int newTimeout);

    @Override
    ServiceObserverPrx ice_connectionCached(boolean newCache);

    @Override
    ServiceObserverPrx ice_endpointSelection(com.zeroc.Ice.EndpointSelectionType newType);

    @Override
    ServiceObserverPrx ice_secure(boolean b);

    @Override
    ServiceObserverPrx ice_encodingVersion(com.zeroc.Ice.EncodingVersion e);

    @Override
    ServiceObserverPrx ice_preferSecure(boolean b);

    @Override
    ServiceObserverPrx ice_router(com.zeroc.Ice.RouterPrx router);

    @Override
    ServiceObserverPrx ice_locator(com.zeroc.Ice.LocatorPrx locator);

    @Override
    ServiceObserverPrx ice_collocationOptimized(boolean b);

    @Override
    ServiceObserverPrx ice_twoway();

    @Override
    ServiceObserverPrx ice_oneway();

    @Override
    ServiceObserverPrx ice_batchOneway();

    @Override
    ServiceObserverPrx ice_datagram();

    @Override
    ServiceObserverPrx ice_batchDatagram();

    @Override
    ServiceObserverPrx ice_compress(boolean co);

    @Override
    ServiceObserverPrx ice_connectionId(String connectionId);

    @Override
    ServiceObserverPrx ice_fixed(com.zeroc.Ice.Connection connection);

    static String ice_staticId()
    {
        return "::IceBox::ServiceObserver";
    }

    /**
     * @hidden
     **/
    @Override
    default ServiceObserverPrx _newInstance(com.zeroc.Ice.Reference ref)
    {
        return new _ServiceObserverPrxI(ref);
    }
}
