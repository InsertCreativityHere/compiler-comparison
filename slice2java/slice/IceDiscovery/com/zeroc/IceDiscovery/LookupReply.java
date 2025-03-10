// Copyright (c) ZeroC, Inc.
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file 'IceDiscovery.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>

package com.zeroc.IceDiscovery;

/**
 * The LookupReply interface is used by IceDiscovery clients to answer requests received on the Lookup interface.
 **/
public interface LookupReply extends com.zeroc.Ice.Object
{
    /**
     * Reply to the findObjectById request.
     * @param id The identity of the object.
     * @param prx The proxy of the object. This proxy is never null.
     * @param current The Current object for the invocation.
     **/
    void foundObjectById(com.zeroc.Ice.Identity id, com.zeroc.Ice.ObjectPrx prx, com.zeroc.Ice.Current current);

    /**
     * Reply to the findAdpaterById request.
     * @param id The adapter ID.
     * @param prx The adapter proxy (a dummy proxy created by the adapter). The proxy provides the adapter
     * endpoints. This proxy is never null.
     * @param isReplicaGroup True if the adapter is also a member of a replica group.
     * @param current The Current object for the invocation.
     **/
    void foundAdapterById(String id, com.zeroc.Ice.ObjectPrx prx, boolean isReplicaGroup, com.zeroc.Ice.Current current);

    /** @hidden */
    static final String[] _iceIds =
    {
        "::Ice::Object",
        "::IceDiscovery::LookupReply"
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
        return "::IceDiscovery::LookupReply";
    }

    /** @hidden */
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutgoingResponse> _iceD_foundObjectById(LookupReply obj, com.zeroc.Ice.IncomingRequest request)
    {
        com.zeroc.Ice.Object._iceCheckMode(null, request.current.mode);
        com.zeroc.Ice.InputStream istr = request.inputStream;
        istr.startEncapsulation();
        com.zeroc.Ice.Identity iceP_id;
        com.zeroc.Ice.ObjectPrx iceP_prx;
        iceP_id = com.zeroc.Ice.Identity.ice_read(istr);
        iceP_prx = istr.readProxy();
        istr.endEncapsulation();
        obj.foundObjectById(iceP_id, iceP_prx, request.current);
        return java.util.concurrent.CompletableFuture.completedFuture(request.current.createEmptyOutgoingResponse());
    }

    /** @hidden */
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutgoingResponse> _iceD_foundAdapterById(LookupReply obj, com.zeroc.Ice.IncomingRequest request)
    {
        com.zeroc.Ice.Object._iceCheckMode(null, request.current.mode);
        com.zeroc.Ice.InputStream istr = request.inputStream;
        istr.startEncapsulation();
        String iceP_id;
        com.zeroc.Ice.ObjectPrx iceP_prx;
        boolean iceP_isReplicaGroup;
        iceP_id = istr.readString();
        iceP_prx = istr.readProxy();
        iceP_isReplicaGroup = istr.readBool();
        istr.endEncapsulation();
        obj.foundAdapterById(iceP_id, iceP_prx, iceP_isReplicaGroup, request.current);
        return java.util.concurrent.CompletableFuture.completedFuture(request.current.createEmptyOutgoingResponse());
    }

    @Override
    default java.util.concurrent.CompletionStage<com.zeroc.Ice.OutgoingResponse> dispatch(com.zeroc.Ice.IncomingRequest request)
        throws com.zeroc.Ice.UserException
    {
        return switch (request.current.operation)
        {
            case "foundObjectById" -> LookupReply._iceD_foundObjectById(this, request);
            case "foundAdapterById" -> LookupReply._iceD_foundAdapterById(this, request);
            case "ice_id" -> com.zeroc.Ice.Object._iceD_ice_id(this, request);
            case "ice_ids" -> com.zeroc.Ice.Object._iceD_ice_ids(this, request);
            case "ice_isA" -> com.zeroc.Ice.Object._iceD_ice_isA(this, request);
            case "ice_ping" -> com.zeroc.Ice.Object._iceD_ice_ping(this, request);
            default -> throw new com.zeroc.Ice.OperationNotExistException();
        };
    }
}
