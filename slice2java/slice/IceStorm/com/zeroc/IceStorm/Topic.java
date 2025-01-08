//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `IceStorm.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

package com.zeroc.IceStorm;

/**
 * Publishers publish information on a particular topic. A topic logically represents a type.
 *
 * @see TopicManager
 **/
public interface Topic extends com.zeroc.Ice.Object
{
    /**
     * Get the name of this topic.
     * @param current The Current object for the invocation.
     * @return The name of the topic.
     *
     * @see TopicManager#create
     **/
    String getName(com.zeroc.Ice.Current current);

    /**
     * Get a proxy to a publisher object for this topic. To publish data to a topic, the publisher calls getPublisher
     * and then creates a proxy with the publisher type from this proxy. If a replicated IceStorm
     * deployment is used this call may return a replicated proxy. The returned proxy is never null.
     * @param current The Current object for the invocation.
     * @return A proxy to publish data on this topic.
     **/
    com.zeroc.Ice.ObjectPrx getPublisher(com.zeroc.Ice.Current current);

    /**
     * Get a non-replicated proxy to a publisher object for this topic. To publish data to a topic, the publisher
     * calls getPublisher and then creates a proxy with the publisher type from this proxy. The returned proxy is
     * never null.
     * @param current The Current object for the invocation.
     * @return A proxy to publish data on this topic.
     **/
    com.zeroc.Ice.ObjectPrx getNonReplicatedPublisher(com.zeroc.Ice.Current current);

    /**
     * Subscribe with the given <code>qos</code> to this topic. A per-subscriber publisher object is returned.
     * @param theQoS The quality of service parameters for this subscription.
     * @param subscriber The subscriber's proxy. This proxy is never null.
     * @param current The Current object for the invocation.
     * @return The per-subscriber publisher object. The returned object is never null.
     * @throws AlreadySubscribed Raised if the subscriber object is already subscribed.
     * @throws BadQoS Raised if the requested quality of service is unavailable or invalid.
     * @throws InvalidSubscriber Raised if the subscriber object is null.
     *
     * @see #unsubscribe
     **/
    com.zeroc.Ice.ObjectPrx subscribeAndGetPublisher(java.util.Map<java.lang.String, java.lang.String> theQoS, com.zeroc.Ice.ObjectPrx subscriber, com.zeroc.Ice.Current current)
        throws AlreadySubscribed,
               InvalidSubscriber,
               BadQoS;

    /**
     * Unsubscribe the given <code>subscriber</code>.
     * @param subscriber The proxy of an existing subscriber. This proxy is never null.
     * @param current The Current object for the invocation.
     *
     * @see #subscribeAndGetPublisher
     **/
    void unsubscribe(com.zeroc.Ice.ObjectPrx subscriber, com.zeroc.Ice.Current current);

    /**
     * Create a link to the given topic. All events originating on this topic will also be sent to
     * <code>linkTo</code>.
     * @param linkTo The topic to link to. This proxy is never null.
     * @param cost The cost to the linked topic.
     * @param current The Current object for the invocation.
     * @throws LinkExists Raised if a link to the same topic already exists.
     **/
    void link(TopicPrx linkTo, int cost, com.zeroc.Ice.Current current)
        throws LinkExists;

    /**
     * Destroy the link from this topic to the given topic <code>linkTo</code>.
     * @param linkTo The topic to destroy the link to. This proxy is never null.
     * @param current The Current object for the invocation.
     * @throws NoSuchLink Raised if a link to the topic does not exist.
     **/
    void unlink(TopicPrx linkTo, com.zeroc.Ice.Current current)
        throws NoSuchLink;

    /**
     * Retrieve information on the current links.
     * @param current The Current object for the invocation.
     * @return A sequence of LinkInfo objects.
     **/
    LinkInfo[] getLinkInfoSeq(com.zeroc.Ice.Current current);

    /**
     * Retrieve the list of subscribers for this topic.
     * @param current The Current object for the invocation.
     * @return The sequence of Ice identities for the subscriber objects.
     **/
    com.zeroc.Ice.Identity[] getSubscribers(com.zeroc.Ice.Current current);

    /**
     * Destroy the topic.
     * @param current The Current object for the invocation.
     **/
    void destroy(com.zeroc.Ice.Current current);

    /** @hidden */
    static final String[] _iceIds =
    {
        "::Ice::Object",
        "::IceStorm::Topic"
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
        return "::IceStorm::Topic";
    }

    /** @hidden */
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutgoingResponse> _iceD_getName(Topic obj, com.zeroc.Ice.IncomingRequest request)
    {
        com.zeroc.Ice.Object._iceCheckMode(com.zeroc.Ice.OperationMode.Idempotent, request.current.mode);
        request.inputStream.skipEmptyEncapsulation();
        String ret = obj.getName(request.current);
        var ostr = request.current.startReplyStream();
        ostr.startEncapsulation(request.current.encoding, null);
        ostr.writeString(ret);
        ostr.endEncapsulation();
        return java.util.concurrent.CompletableFuture.completedFuture(new com.zeroc.Ice.OutgoingResponse(ostr));
    }

    /** @hidden */
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutgoingResponse> _iceD_getPublisher(Topic obj, com.zeroc.Ice.IncomingRequest request)
    {
        com.zeroc.Ice.Object._iceCheckMode(com.zeroc.Ice.OperationMode.Idempotent, request.current.mode);
        request.inputStream.skipEmptyEncapsulation();
        com.zeroc.Ice.ObjectPrx ret = obj.getPublisher(request.current);
        var ostr = request.current.startReplyStream();
        ostr.startEncapsulation(request.current.encoding, null);
        ostr.writeProxy(ret);
        ostr.endEncapsulation();
        return java.util.concurrent.CompletableFuture.completedFuture(new com.zeroc.Ice.OutgoingResponse(ostr));
    }

    /** @hidden */
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutgoingResponse> _iceD_getNonReplicatedPublisher(Topic obj, com.zeroc.Ice.IncomingRequest request)
    {
        com.zeroc.Ice.Object._iceCheckMode(com.zeroc.Ice.OperationMode.Idempotent, request.current.mode);
        request.inputStream.skipEmptyEncapsulation();
        com.zeroc.Ice.ObjectPrx ret = obj.getNonReplicatedPublisher(request.current);
        var ostr = request.current.startReplyStream();
        ostr.startEncapsulation(request.current.encoding, null);
        ostr.writeProxy(ret);
        ostr.endEncapsulation();
        return java.util.concurrent.CompletableFuture.completedFuture(new com.zeroc.Ice.OutgoingResponse(ostr));
    }

    /** @hidden */
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutgoingResponse> _iceD_subscribeAndGetPublisher(Topic obj, com.zeroc.Ice.IncomingRequest request)
        throws com.zeroc.Ice.UserException
    {
        com.zeroc.Ice.Object._iceCheckMode(null, request.current.mode);
        com.zeroc.Ice.InputStream istr = request.inputStream;
        istr.startEncapsulation();
        java.util.Map<java.lang.String, java.lang.String> iceP_theQoS;
        com.zeroc.Ice.ObjectPrx iceP_subscriber;
        iceP_theQoS = QoSHelper.read(istr);
        iceP_subscriber = istr.readProxy();
        istr.endEncapsulation();
        com.zeroc.Ice.ObjectPrx ret = obj.subscribeAndGetPublisher(iceP_theQoS, iceP_subscriber, request.current);
        var ostr = request.current.startReplyStream();
        ostr.startEncapsulation(request.current.encoding, null);
        ostr.writeProxy(ret);
        ostr.endEncapsulation();
        return java.util.concurrent.CompletableFuture.completedFuture(new com.zeroc.Ice.OutgoingResponse(ostr));
    }

    /** @hidden */
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutgoingResponse> _iceD_unsubscribe(Topic obj, com.zeroc.Ice.IncomingRequest request)
    {
        com.zeroc.Ice.Object._iceCheckMode(com.zeroc.Ice.OperationMode.Idempotent, request.current.mode);
        com.zeroc.Ice.InputStream istr = request.inputStream;
        istr.startEncapsulation();
        com.zeroc.Ice.ObjectPrx iceP_subscriber;
        iceP_subscriber = istr.readProxy();
        istr.endEncapsulation();
        obj.unsubscribe(iceP_subscriber, request.current);
        return java.util.concurrent.CompletableFuture.completedFuture(request.current.createEmptyOutgoingResponse());
    }

    /** @hidden */
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutgoingResponse> _iceD_link(Topic obj, com.zeroc.Ice.IncomingRequest request)
        throws com.zeroc.Ice.UserException
    {
        com.zeroc.Ice.Object._iceCheckMode(null, request.current.mode);
        com.zeroc.Ice.InputStream istr = request.inputStream;
        istr.startEncapsulation();
        TopicPrx iceP_linkTo;
        int iceP_cost;
        iceP_linkTo = TopicPrx.uncheckedCast(istr.readProxy());
        iceP_cost = istr.readInt();
        istr.endEncapsulation();
        obj.link(iceP_linkTo, iceP_cost, request.current);
        return java.util.concurrent.CompletableFuture.completedFuture(request.current.createEmptyOutgoingResponse());
    }

    /** @hidden */
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutgoingResponse> _iceD_unlink(Topic obj, com.zeroc.Ice.IncomingRequest request)
        throws com.zeroc.Ice.UserException
    {
        com.zeroc.Ice.Object._iceCheckMode(null, request.current.mode);
        com.zeroc.Ice.InputStream istr = request.inputStream;
        istr.startEncapsulation();
        TopicPrx iceP_linkTo;
        iceP_linkTo = TopicPrx.uncheckedCast(istr.readProxy());
        istr.endEncapsulation();
        obj.unlink(iceP_linkTo, request.current);
        return java.util.concurrent.CompletableFuture.completedFuture(request.current.createEmptyOutgoingResponse());
    }

    /** @hidden */
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutgoingResponse> _iceD_getLinkInfoSeq(Topic obj, com.zeroc.Ice.IncomingRequest request)
    {
        com.zeroc.Ice.Object._iceCheckMode(com.zeroc.Ice.OperationMode.Idempotent, request.current.mode);
        request.inputStream.skipEmptyEncapsulation();
        LinkInfo[] ret = obj.getLinkInfoSeq(request.current);
        var ostr = request.current.startReplyStream();
        ostr.startEncapsulation(request.current.encoding, null);
        LinkInfoSeqHelper.write(ostr, ret);
        ostr.endEncapsulation();
        return java.util.concurrent.CompletableFuture.completedFuture(new com.zeroc.Ice.OutgoingResponse(ostr));
    }

    /** @hidden */
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutgoingResponse> _iceD_getSubscribers(Topic obj, com.zeroc.Ice.IncomingRequest request)
    {
        com.zeroc.Ice.Object._iceCheckMode(null, request.current.mode);
        request.inputStream.skipEmptyEncapsulation();
        com.zeroc.Ice.Identity[] ret = obj.getSubscribers(request.current);
        var ostr = request.current.startReplyStream();
        ostr.startEncapsulation(request.current.encoding, null);
        com.zeroc.Ice.IdentitySeqHelper.write(ostr, ret);
        ostr.endEncapsulation();
        return java.util.concurrent.CompletableFuture.completedFuture(new com.zeroc.Ice.OutgoingResponse(ostr));
    }

    /** @hidden */
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutgoingResponse> _iceD_destroy(Topic obj, com.zeroc.Ice.IncomingRequest request)
    {
        com.zeroc.Ice.Object._iceCheckMode(null, request.current.mode);
        request.inputStream.skipEmptyEncapsulation();
        obj.destroy(request.current);
        return java.util.concurrent.CompletableFuture.completedFuture(request.current.createEmptyOutgoingResponse());
    }

    @Override
    default java.util.concurrent.CompletionStage<com.zeroc.Ice.OutgoingResponse> dispatch(com.zeroc.Ice.IncomingRequest request)
        throws com.zeroc.Ice.UserException
    {
        return switch (request.current.operation)
        {
            case "getName" -> Topic._iceD_getName(this, request);
            case "getPublisher" -> Topic._iceD_getPublisher(this, request);
            case "getNonReplicatedPublisher" -> Topic._iceD_getNonReplicatedPublisher(this, request);
            case "subscribeAndGetPublisher" -> Topic._iceD_subscribeAndGetPublisher(this, request);
            case "unsubscribe" -> Topic._iceD_unsubscribe(this, request);
            case "link" -> Topic._iceD_link(this, request);
            case "unlink" -> Topic._iceD_unlink(this, request);
            case "getLinkInfoSeq" -> Topic._iceD_getLinkInfoSeq(this, request);
            case "getSubscribers" -> Topic._iceD_getSubscribers(this, request);
            case "destroy" -> Topic._iceD_destroy(this, request);
            case "ice_id" -> com.zeroc.Ice.Object._iceD_ice_id(this, request);
            case "ice_ids" -> com.zeroc.Ice.Object._iceD_ice_ids(this, request);
            case "ice_isA" -> com.zeroc.Ice.Object._iceD_ice_isA(this, request);
            case "ice_ping" -> com.zeroc.Ice.Object._iceD_ice_ping(this, request);
            default -> throw new com.zeroc.Ice.OperationNotExistException();
        };
    }
}
