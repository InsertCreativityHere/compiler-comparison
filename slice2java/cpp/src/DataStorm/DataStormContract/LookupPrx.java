// Copyright (c) ZeroC, Inc.
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file 'Contract.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>

package DataStormContract;

/**
 * The lookup interface is used by DataStorm nodes to announce their topic readers and writers to other connected
 * nodes. When multicast is enabled, the lookup interface also broadcasts these announcements.
 * Each DataStorm node hosts a lookup servant with the identity "DataStorm/Lookup".
 **/
public interface LookupPrx extends com.zeroc.Ice.ObjectPrx
{
    /**
     * Announce a topic reader.
     * @param topic The name of the topic.
     * @param subscriber The node reading the topic. The subscriber proxy is never null.
     **/
    default void announceTopicReader(String topic, NodePrx subscriber)
    {
        announceTopicReader(topic, subscriber, com.zeroc.Ice.ObjectPrx.noExplicitContext);
    }

    /**
     * Announce a topic reader.
     * @param topic The name of the topic.
     * @param subscriber The node reading the topic. The subscriber proxy is never null.
     * @param context The Context map to send with the invocation.
     **/
    default void announceTopicReader(String topic, NodePrx subscriber, java.util.Map<String, String> context)
    {
        _iceI_announceTopicReaderAsync(topic, subscriber, context, true).waitForResponse();
    }

    /**
     * Announce a topic reader.
     * @param topic The name of the topic.
     * @param subscriber The node reading the topic. The subscriber proxy is never null.
     * @return A future that will be completed when the invocation completes.
     **/
    default java.util.concurrent.CompletableFuture<Void> announceTopicReaderAsync(String topic, NodePrx subscriber)
    {
        return _iceI_announceTopicReaderAsync(topic, subscriber, com.zeroc.Ice.ObjectPrx.noExplicitContext, false);
    }

    /**
     * Announce a topic reader.
     * @param topic The name of the topic.
     * @param subscriber The node reading the topic. The subscriber proxy is never null.
     * @param context The Context map to send with the invocation.
     * @return A future that will be completed when the invocation completes.
     **/
    default java.util.concurrent.CompletableFuture<Void> announceTopicReaderAsync(String topic, NodePrx subscriber, java.util.Map<String, String> context)
    {
        return _iceI_announceTopicReaderAsync(topic, subscriber, context, false);
    }

    /**
     * @hidden
     * @param iceP_topic -
     * @param iceP_subscriber -
     * @param context -
     * @param sync -
     * @return -
     **/
    default com.zeroc.Ice.OutgoingAsync<Void> _iceI_announceTopicReaderAsync(String iceP_topic, NodePrx iceP_subscriber, java.util.Map<String, String> context, boolean sync)
    {
        com.zeroc.Ice.OutgoingAsync<Void> f = new com.zeroc.Ice.OutgoingAsync<>(this, "announceTopicReader", com.zeroc.Ice.OperationMode.Idempotent, sync, null);
        f.invoke(false, context, null, ostr -> {
                     ostr.writeString(iceP_topic);
                     ostr.writeProxy(iceP_subscriber);
                 }, null);
        return f;
    }

    /**
     * Announce a topic writer.
     * @param topic The name of the topic.
     * @param node The node writing the topic. The proxy is never null.
     **/
    default void announceTopicWriter(String topic, NodePrx node)
    {
        announceTopicWriter(topic, node, com.zeroc.Ice.ObjectPrx.noExplicitContext);
    }

    /**
     * Announce a topic writer.
     * @param topic The name of the topic.
     * @param node The node writing the topic. The proxy is never null.
     * @param context The Context map to send with the invocation.
     **/
    default void announceTopicWriter(String topic, NodePrx node, java.util.Map<String, String> context)
    {
        _iceI_announceTopicWriterAsync(topic, node, context, true).waitForResponse();
    }

    /**
     * Announce a topic writer.
     * @param topic The name of the topic.
     * @param node The node writing the topic. The proxy is never null.
     * @return A future that will be completed when the invocation completes.
     **/
    default java.util.concurrent.CompletableFuture<Void> announceTopicWriterAsync(String topic, NodePrx node)
    {
        return _iceI_announceTopicWriterAsync(topic, node, com.zeroc.Ice.ObjectPrx.noExplicitContext, false);
    }

    /**
     * Announce a topic writer.
     * @param topic The name of the topic.
     * @param node The node writing the topic. The proxy is never null.
     * @param context The Context map to send with the invocation.
     * @return A future that will be completed when the invocation completes.
     **/
    default java.util.concurrent.CompletableFuture<Void> announceTopicWriterAsync(String topic, NodePrx node, java.util.Map<String, String> context)
    {
        return _iceI_announceTopicWriterAsync(topic, node, context, false);
    }

    /**
     * @hidden
     * @param iceP_topic -
     * @param iceP_node -
     * @param context -
     * @param sync -
     * @return -
     **/
    default com.zeroc.Ice.OutgoingAsync<Void> _iceI_announceTopicWriterAsync(String iceP_topic, NodePrx iceP_node, java.util.Map<String, String> context, boolean sync)
    {
        com.zeroc.Ice.OutgoingAsync<Void> f = new com.zeroc.Ice.OutgoingAsync<>(this, "announceTopicWriter", com.zeroc.Ice.OperationMode.Idempotent, sync, null);
        f.invoke(false, context, null, ostr -> {
                     ostr.writeString(iceP_topic);
                     ostr.writeProxy(iceP_node);
                 }, null);
        return f;
    }

    /**
     * Announce a set of topic readers and writers.
     * @param readers A sequence of topic names for readers.
     * @param writers A sequence of topic names for writers.
     * @param node The node reading or writing the topics. The proxy is never null.
     **/
    default void announceTopics(String[] readers, String[] writers, NodePrx node)
    {
        announceTopics(readers, writers, node, com.zeroc.Ice.ObjectPrx.noExplicitContext);
    }

    /**
     * Announce a set of topic readers and writers.
     * @param readers A sequence of topic names for readers.
     * @param writers A sequence of topic names for writers.
     * @param node The node reading or writing the topics. The proxy is never null.
     * @param context The Context map to send with the invocation.
     **/
    default void announceTopics(String[] readers, String[] writers, NodePrx node, java.util.Map<String, String> context)
    {
        _iceI_announceTopicsAsync(readers, writers, node, context, true).waitForResponse();
    }

    /**
     * Announce a set of topic readers and writers.
     * @param readers A sequence of topic names for readers.
     * @param writers A sequence of topic names for writers.
     * @param node The node reading or writing the topics. The proxy is never null.
     * @return A future that will be completed when the invocation completes.
     **/
    default java.util.concurrent.CompletableFuture<Void> announceTopicsAsync(String[] readers, String[] writers, NodePrx node)
    {
        return _iceI_announceTopicsAsync(readers, writers, node, com.zeroc.Ice.ObjectPrx.noExplicitContext, false);
    }

    /**
     * Announce a set of topic readers and writers.
     * @param readers A sequence of topic names for readers.
     * @param writers A sequence of topic names for writers.
     * @param node The node reading or writing the topics. The proxy is never null.
     * @param context The Context map to send with the invocation.
     * @return A future that will be completed when the invocation completes.
     **/
    default java.util.concurrent.CompletableFuture<Void> announceTopicsAsync(String[] readers, String[] writers, NodePrx node, java.util.Map<String, String> context)
    {
        return _iceI_announceTopicsAsync(readers, writers, node, context, false);
    }

    /**
     * @hidden
     * @param iceP_readers -
     * @param iceP_writers -
     * @param iceP_node -
     * @param context -
     * @param sync -
     * @return -
     **/
    default com.zeroc.Ice.OutgoingAsync<Void> _iceI_announceTopicsAsync(String[] iceP_readers, String[] iceP_writers, NodePrx iceP_node, java.util.Map<String, String> context, boolean sync)
    {
        com.zeroc.Ice.OutgoingAsync<Void> f = new com.zeroc.Ice.OutgoingAsync<>(this, "announceTopics", com.zeroc.Ice.OperationMode.Idempotent, sync, null);
        f.invoke(false, context, null, ostr -> {
                     ostr.writeStringSeq(iceP_readers);
                     ostr.writeStringSeq(iceP_writers);
                     ostr.writeProxy(iceP_node);
                 }, null);
        return f;
    }

    /**
     * Establish a connection between this node and the caller node.
     * @param node The node initiating the connection. The proxy is never null.
     * @return A proxy to this node. The proxy is never null.
     **/
    default NodePrx createSession(NodePrx node)
    {
        return createSession(node, com.zeroc.Ice.ObjectPrx.noExplicitContext);
    }

    /**
     * Establish a connection between this node and the caller node.
     * @param node The node initiating the connection. The proxy is never null.
     * @param context The Context map to send with the invocation.
     * @return A proxy to this node. The proxy is never null.
     **/
    default NodePrx createSession(NodePrx node, java.util.Map<String, String> context)
    {
        return _iceI_createSessionAsync(node, context, true).waitForResponse();
    }

    /**
     * Establish a connection between this node and the caller node.
     * @param node The node initiating the connection. The proxy is never null.
     * @return A proxy to this node. The proxy is never null.
     **/
    default java.util.concurrent.CompletableFuture<NodePrx> createSessionAsync(NodePrx node)
    {
        return _iceI_createSessionAsync(node, com.zeroc.Ice.ObjectPrx.noExplicitContext, false);
    }

    /**
     * Establish a connection between this node and the caller node.
     * @param node The node initiating the connection. The proxy is never null.
     * @param context The Context map to send with the invocation.
     * @return A proxy to this node. The proxy is never null.
     **/
    default java.util.concurrent.CompletableFuture<NodePrx> createSessionAsync(NodePrx node, java.util.Map<String, String> context)
    {
        return _iceI_createSessionAsync(node, context, false);
    }

    /**
     * @hidden
     * @param iceP_node -
     * @param context -
     * @param sync -
     * @return -
     **/
    default com.zeroc.Ice.OutgoingAsync<NodePrx> _iceI_createSessionAsync(NodePrx iceP_node, java.util.Map<String, String> context, boolean sync)
    {
        com.zeroc.Ice.OutgoingAsync<NodePrx> f = new com.zeroc.Ice.OutgoingAsync<>(this, "createSession", null, sync, null);
        f.invoke(true, context, null, ostr -> {
                     ostr.writeProxy(iceP_node);
                 }, istr -> {
                     NodePrx ret;
                     ret = NodePrx.uncheckedCast(istr.readProxy());
                     return ret;
                 });
        return f;
    }

    /**
     * Creates a new proxy that implements {@link LookupPrx}.
     * @param communicator The communicator of the new proxy.
     * @param proxyString The string representation of the proxy.
     * @return The new proxy.
     **/
    public static LookupPrx createProxy(com.zeroc.Ice.Communicator communicator, String proxyString)
    {
        return new _LookupPrxI(com.zeroc.Ice.ObjectPrx.createProxy(communicator, proxyString));
    }

    /**
     * Contacts the remote server to verify that the object implements this type.
     * Raises a local exception if a communication error occurs.
     * @param obj The untyped proxy.
     * @return A proxy for this type, or null if the object does not support this type.
     **/
    static LookupPrx checkedCast(com.zeroc.Ice.ObjectPrx obj)
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
    static LookupPrx checkedCast(com.zeroc.Ice.ObjectPrx obj, java.util.Map<String, String> context)
    {
        return (obj != null && obj.ice_isA(ice_staticId(), context)) ? new _LookupPrxI(obj) : null;
    }

    /**
     * Contacts the remote server to verify that a facet of the object implements this type.
     * Raises a local exception if a communication error occurs.
     * @param obj The untyped proxy.
     * @param facet The name of the desired facet.
     * @return A proxy for this type, or null if the object does not support this type.
     **/
    static LookupPrx checkedCast(com.zeroc.Ice.ObjectPrx obj, String facet)
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
    static LookupPrx checkedCast(com.zeroc.Ice.ObjectPrx obj, String facet, java.util.Map<String, String> context)
    {
        return (obj == null) ? null : checkedCast(obj.ice_facet(facet), context);
    }

    /**
     * Downcasts the given proxy to this type without contacting the remote server.
     * @param obj The untyped proxy.
     * @return A proxy for this type.
     **/
    static LookupPrx uncheckedCast(com.zeroc.Ice.ObjectPrx obj)
    {
        return (obj == null) ? null : new _LookupPrxI(obj);
    }

    /**
     * Downcasts the given proxy to this type without contacting the remote server.
     * @param obj The untyped proxy.
     * @param facet The name of the desired facet.
     * @return A proxy for this type.
     **/
    static LookupPrx uncheckedCast(com.zeroc.Ice.ObjectPrx obj, String facet)
    {
        return (obj == null) ? null : new _LookupPrxI(obj.ice_facet(facet));
    }

    @Override
    LookupPrx ice_context(java.util.Map<String, String> newContext);

    @Override
    LookupPrx ice_adapterId(String newAdapterId);

    @Override
    LookupPrx ice_endpoints(com.zeroc.Ice.Endpoint[] newEndpoints);

    @Override
    LookupPrx ice_locatorCacheTimeout(int newTimeout);

    @Override
    LookupPrx ice_invocationTimeout(int newTimeout);

    @Override
    LookupPrx ice_connectionCached(boolean newCache);

    @Override
    LookupPrx ice_endpointSelection(com.zeroc.Ice.EndpointSelectionType newType);

    @Override
    LookupPrx ice_secure(boolean b);

    @Override
    LookupPrx ice_encodingVersion(com.zeroc.Ice.EncodingVersion e);

    @Override
    LookupPrx ice_preferSecure(boolean b);

    @Override
    LookupPrx ice_router(com.zeroc.Ice.RouterPrx router);

    @Override
    LookupPrx ice_locator(com.zeroc.Ice.LocatorPrx locator);

    @Override
    LookupPrx ice_collocationOptimized(boolean b);

    @Override
    LookupPrx ice_twoway();

    @Override
    LookupPrx ice_oneway();

    @Override
    LookupPrx ice_batchOneway();

    @Override
    LookupPrx ice_datagram();

    @Override
    LookupPrx ice_batchDatagram();

    @Override
    LookupPrx ice_compress(boolean co);

    @Override
    LookupPrx ice_connectionId(String connectionId);

    @Override
    LookupPrx ice_fixed(com.zeroc.Ice.Connection connection);

    static String ice_staticId()
    {
        return "::DataStormContract::Lookup";
    }

    /**
     * @hidden
     **/
    @Override
    default LookupPrx _newInstance(com.zeroc.Ice.Reference ref)
    {
        return new _LookupPrxI(ref);
    }
}
