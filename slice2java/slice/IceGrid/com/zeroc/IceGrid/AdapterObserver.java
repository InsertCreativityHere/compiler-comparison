// Copyright (c) ZeroC, Inc.
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file 'Admin.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>

package com.zeroc.IceGrid;

/**
 * This interface allows applications to monitor the state of object adapters that are registered with IceGrid.
 **/
public interface AdapterObserver extends com.zeroc.Ice.Object
{
    /**
     * <code>adapterInit</code> is called after registration of an observer to indicate the state of the registry.
     * @param adpts The adapters that were dynamically registered with the registry (not through the deployment
     * mechanism).
     * @param current The Current object for the invocation.
     **/
    void adapterInit(AdapterInfo[] adpts, com.zeroc.Ice.Current current);

    /**
     * The <code>adapterAdded</code> operation is called to notify an observer when a dynamically-registered
     * adapter was added.
     * @param info The details of the new adapter.
     * @param current The Current object for the invocation.
     **/
    void adapterAdded(AdapterInfo info, com.zeroc.Ice.Current current);

    /**
     * The adapterUpdated operation is called to notify an observer when a dynamically-registered adapter was
     * updated.
     * @param info The details of the updated adapter.
     * @param current The Current object for the invocation.
     **/
    void adapterUpdated(AdapterInfo info, com.zeroc.Ice.Current current);

    /**
     * The adapterRemoved operation is called to notify an observer when a dynamically-registered adapter was
     * removed.
     * @param id The ID of the removed adapter.
     * @param current The Current object for the invocation.
     **/
    void adapterRemoved(String id, com.zeroc.Ice.Current current);

    /** @hidden */
    static final String[] _iceIds =
    {
        "::Ice::Object",
        "::IceGrid::AdapterObserver"
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
        return "::IceGrid::AdapterObserver";
    }

    /** @hidden */
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutgoingResponse> _iceD_adapterInit(AdapterObserver obj, com.zeroc.Ice.IncomingRequest request)
    {
        com.zeroc.Ice.Object._iceCheckMode(null, request.current.mode);
        com.zeroc.Ice.InputStream istr = request.inputStream;
        istr.startEncapsulation();
        AdapterInfo[] iceP_adpts;
        iceP_adpts = AdapterInfoSeqHelper.read(istr);
        istr.endEncapsulation();
        obj.adapterInit(iceP_adpts, request.current);
        return java.util.concurrent.CompletableFuture.completedFuture(request.current.createEmptyOutgoingResponse());
    }

    /** @hidden */
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutgoingResponse> _iceD_adapterAdded(AdapterObserver obj, com.zeroc.Ice.IncomingRequest request)
    {
        com.zeroc.Ice.Object._iceCheckMode(null, request.current.mode);
        com.zeroc.Ice.InputStream istr = request.inputStream;
        istr.startEncapsulation();
        AdapterInfo iceP_info;
        iceP_info = AdapterInfo.ice_read(istr);
        istr.endEncapsulation();
        obj.adapterAdded(iceP_info, request.current);
        return java.util.concurrent.CompletableFuture.completedFuture(request.current.createEmptyOutgoingResponse());
    }

    /** @hidden */
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutgoingResponse> _iceD_adapterUpdated(AdapterObserver obj, com.zeroc.Ice.IncomingRequest request)
    {
        com.zeroc.Ice.Object._iceCheckMode(null, request.current.mode);
        com.zeroc.Ice.InputStream istr = request.inputStream;
        istr.startEncapsulation();
        AdapterInfo iceP_info;
        iceP_info = AdapterInfo.ice_read(istr);
        istr.endEncapsulation();
        obj.adapterUpdated(iceP_info, request.current);
        return java.util.concurrent.CompletableFuture.completedFuture(request.current.createEmptyOutgoingResponse());
    }

    /** @hidden */
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutgoingResponse> _iceD_adapterRemoved(AdapterObserver obj, com.zeroc.Ice.IncomingRequest request)
    {
        com.zeroc.Ice.Object._iceCheckMode(null, request.current.mode);
        com.zeroc.Ice.InputStream istr = request.inputStream;
        istr.startEncapsulation();
        String iceP_id;
        iceP_id = istr.readString();
        istr.endEncapsulation();
        obj.adapterRemoved(iceP_id, request.current);
        return java.util.concurrent.CompletableFuture.completedFuture(request.current.createEmptyOutgoingResponse());
    }

    @Override
    default java.util.concurrent.CompletionStage<com.zeroc.Ice.OutgoingResponse> dispatch(com.zeroc.Ice.IncomingRequest request)
        throws com.zeroc.Ice.UserException
    {
        return switch (request.current.operation)
        {
            case "adapterInit" -> AdapterObserver._iceD_adapterInit(this, request);
            case "adapterAdded" -> AdapterObserver._iceD_adapterAdded(this, request);
            case "adapterUpdated" -> AdapterObserver._iceD_adapterUpdated(this, request);
            case "adapterRemoved" -> AdapterObserver._iceD_adapterRemoved(this, request);
            case "ice_id" -> com.zeroc.Ice.Object._iceD_ice_id(this, request);
            case "ice_ids" -> com.zeroc.Ice.Object._iceD_ice_ids(this, request);
            case "ice_isA" -> com.zeroc.Ice.Object._iceD_ice_isA(this, request);
            case "ice_ping" -> com.zeroc.Ice.Object._iceD_ice_ping(this, request);
            default -> throw new com.zeroc.Ice.OperationNotExistException();
        };
    }
}
