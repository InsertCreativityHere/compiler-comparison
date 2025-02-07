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
 * Administers a set of IceBox Service instances.
 *
 * @see Service
 **/
public interface ServiceManager extends com.zeroc.Ice.Object
{
    /**
     * Start an individual service.
     * @param service The service name.
     * @param current The Current object for the invocation.
     * @throws AlreadyStartedException If the service is already running.
     * @throws NoSuchServiceException If no service could be found with the given name.
     **/
    void startService(String service, com.zeroc.Ice.Current current)
        throws AlreadyStartedException,
               NoSuchServiceException;

    /**
     * Stop an individual service.
     * @param service The service name.
     * @param current The Current object for the invocation.
     * @throws AlreadyStoppedException If the service is already stopped.
     * @throws NoSuchServiceException If no service could be found with the given name.
     **/
    void stopService(String service, com.zeroc.Ice.Current current)
        throws AlreadyStoppedException,
               NoSuchServiceException;

    /**
     * Registers a new observer with the ServiceManager.
     * @param observer The new observer
     * @param current The Current object for the invocation.
     **/
    void addObserver(ServiceObserverPrx observer, com.zeroc.Ice.Current current);

    /**
     * Shut down all services. This causes stop to be invoked on all configured services.
     * @param current The Current object for the invocation.
     **/
    void shutdown(com.zeroc.Ice.Current current);

    /** @hidden */
    static final String[] _iceIds =
    {
        "::Ice::Object",
        "::IceBox::ServiceManager"
    };

    @Override
    default String[] ice_ids(com.zeroc.Ice.Current current)
    {
        return _iceIds;
    }

    @Override
    default String ice_id(com.zeroc.Ice.Current current)
    {
        return ice_staticId();
    }

    static String ice_staticId()
    {
        return "::IceBox::ServiceManager";
    }

    /** @hidden */
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutgoingResponse> _iceD_startService(ServiceManager obj, com.zeroc.Ice.IncomingRequest request)
        throws com.zeroc.Ice.UserException
    {
        com.zeroc.Ice.Object._iceCheckMode(null, request.current.mode);
        com.zeroc.Ice.InputStream istr = request.inputStream;
        istr.startEncapsulation();
        String iceP_service;
        iceP_service = istr.readString();
        istr.endEncapsulation();
        obj.startService(iceP_service, request.current);
        return java.util.concurrent.CompletableFuture.completedFuture(request.current.createEmptyOutgoingResponse());
    }

    /** @hidden */
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutgoingResponse> _iceD_stopService(ServiceManager obj, com.zeroc.Ice.IncomingRequest request)
        throws com.zeroc.Ice.UserException
    {
        com.zeroc.Ice.Object._iceCheckMode(null, request.current.mode);
        com.zeroc.Ice.InputStream istr = request.inputStream;
        istr.startEncapsulation();
        String iceP_service;
        iceP_service = istr.readString();
        istr.endEncapsulation();
        obj.stopService(iceP_service, request.current);
        return java.util.concurrent.CompletableFuture.completedFuture(request.current.createEmptyOutgoingResponse());
    }

    /** @hidden */
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutgoingResponse> _iceD_addObserver(ServiceManager obj, com.zeroc.Ice.IncomingRequest request)
    {
        com.zeroc.Ice.Object._iceCheckMode(null, request.current.mode);
        com.zeroc.Ice.InputStream istr = request.inputStream;
        istr.startEncapsulation();
        ServiceObserverPrx iceP_observer;
        iceP_observer = ServiceObserverPrx.uncheckedCast(istr.readProxy());
        istr.endEncapsulation();
        obj.addObserver(iceP_observer, request.current);
        return java.util.concurrent.CompletableFuture.completedFuture(request.current.createEmptyOutgoingResponse());
    }

    /** @hidden */
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutgoingResponse> _iceD_shutdown(ServiceManager obj, com.zeroc.Ice.IncomingRequest request)
    {
        com.zeroc.Ice.Object._iceCheckMode(null, request.current.mode);
        request.inputStream.skipEmptyEncapsulation();
        obj.shutdown(request.current);
        return java.util.concurrent.CompletableFuture.completedFuture(request.current.createEmptyOutgoingResponse());
    }

    @Override
    default java.util.concurrent.CompletionStage<com.zeroc.Ice.OutgoingResponse> dispatch(com.zeroc.Ice.IncomingRequest request)
        throws com.zeroc.Ice.UserException
    {
        return switch (request.current.operation)
        {
            case "startService" -> ServiceManager._iceD_startService(this, request);
            case "stopService" -> ServiceManager._iceD_stopService(this, request);
            case "addObserver" -> ServiceManager._iceD_addObserver(this, request);
            case "shutdown" -> ServiceManager._iceD_shutdown(this, request);
            case "ice_id" -> com.zeroc.Ice.Object._iceD_ice_id(this, request);
            case "ice_ids" -> com.zeroc.Ice.Object._iceD_ice_ids(this, request);
            case "ice_isA" -> com.zeroc.Ice.Object._iceD_ice_isA(this, request);
            case "ice_ping" -> com.zeroc.Ice.Object._iceD_ice_ping(this, request);
            default -> throw new com.zeroc.Ice.OperationNotExistException();
        };
    }
}
