// Copyright (c) ZeroC, Inc.
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file 'Election.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>

package IceStormElection;

/**
 * The replica observer.
 **/
public interface ReplicaObserverPrx extends com.zeroc.Ice.ObjectPrx
{
    /**
     * Initialize the observer.
     * @param llu The last log update seen by the master.
     * @param content The topic content.
     * @throws ObserverInconsistencyException Raised if an
     * inconsisency was detected.
     **/
    default void init(LogUpdate llu, TopicContent[] content)
        throws ObserverInconsistencyException
    {
        init(llu, content, com.zeroc.Ice.ObjectPrx.noExplicitContext);
    }

    /**
     * Initialize the observer.
     * @param llu The last log update seen by the master.
     * @param content The topic content.
     * @param context The Context map to send with the invocation.
     * @throws ObserverInconsistencyException Raised if an
     * inconsisency was detected.
     **/
    default void init(LogUpdate llu, TopicContent[] content, java.util.Map<String, String> context)
        throws ObserverInconsistencyException
    {
        try
        {
            _iceI_initAsync(llu, content, context, true).waitForResponseOrUserEx();
        }
        catch(ObserverInconsistencyException ex)
        {
            throw ex;
        }
        catch(com.zeroc.Ice.UserException ex)
        {
            throw com.zeroc.Ice.UnknownUserException.fromTypeId(ex.ice_id());
        }
    }

    /**
     * Initialize the observer.
     * @param llu The last log update seen by the master.
     * @param content The topic content.
     * @return A future that will be completed when the invocation completes.
     **/
    default java.util.concurrent.CompletableFuture<Void> initAsync(LogUpdate llu, TopicContent[] content)
    {
        return _iceI_initAsync(llu, content, com.zeroc.Ice.ObjectPrx.noExplicitContext, false);
    }

    /**
     * Initialize the observer.
     * @param llu The last log update seen by the master.
     * @param content The topic content.
     * @param context The Context map to send with the invocation.
     * @return A future that will be completed when the invocation completes.
     **/
    default java.util.concurrent.CompletableFuture<Void> initAsync(LogUpdate llu, TopicContent[] content, java.util.Map<String, String> context)
    {
        return _iceI_initAsync(llu, content, context, false);
    }

    /**
     * @hidden
     * @param iceP_llu -
     * @param iceP_content -
     * @param context -
     * @param sync -
     * @return -
     **/
    default com.zeroc.Ice.OutgoingAsync<Void> _iceI_initAsync(LogUpdate iceP_llu, TopicContent[] iceP_content, java.util.Map<String, String> context, boolean sync)
    {
        com.zeroc.Ice.OutgoingAsync<Void> f = new com.zeroc.Ice.OutgoingAsync<>(this, "init", null, sync, _iceE_init);
        f.invoke(true, context, null, ostr -> {
                     LogUpdate.ice_write(ostr, iceP_llu);
                     TopicContentSeqHelper.write(ostr, iceP_content);
                 }, null);
        return f;
    }

    /** @hidden */
    static final Class<?>[] _iceE_init =
    {
        ObserverInconsistencyException.class
    };

    /**
     * Create the topic with the given name.
     * @param llu The log update token.
     * @param name The topic name.
     * @throws ObserverInconsistencyException Raised if an
     * inconsisency was detected.
     **/
    default void createTopic(LogUpdate llu, String name)
        throws ObserverInconsistencyException
    {
        createTopic(llu, name, com.zeroc.Ice.ObjectPrx.noExplicitContext);
    }

    /**
     * Create the topic with the given name.
     * @param llu The log update token.
     * @param name The topic name.
     * @param context The Context map to send with the invocation.
     * @throws ObserverInconsistencyException Raised if an
     * inconsisency was detected.
     **/
    default void createTopic(LogUpdate llu, String name, java.util.Map<String, String> context)
        throws ObserverInconsistencyException
    {
        try
        {
            _iceI_createTopicAsync(llu, name, context, true).waitForResponseOrUserEx();
        }
        catch(ObserverInconsistencyException ex)
        {
            throw ex;
        }
        catch(com.zeroc.Ice.UserException ex)
        {
            throw com.zeroc.Ice.UnknownUserException.fromTypeId(ex.ice_id());
        }
    }

    /**
     * Create the topic with the given name.
     * @param llu The log update token.
     * @param name The topic name.
     * @return A future that will be completed when the invocation completes.
     **/
    default java.util.concurrent.CompletableFuture<Void> createTopicAsync(LogUpdate llu, String name)
    {
        return _iceI_createTopicAsync(llu, name, com.zeroc.Ice.ObjectPrx.noExplicitContext, false);
    }

    /**
     * Create the topic with the given name.
     * @param llu The log update token.
     * @param name The topic name.
     * @param context The Context map to send with the invocation.
     * @return A future that will be completed when the invocation completes.
     **/
    default java.util.concurrent.CompletableFuture<Void> createTopicAsync(LogUpdate llu, String name, java.util.Map<String, String> context)
    {
        return _iceI_createTopicAsync(llu, name, context, false);
    }

    /**
     * @hidden
     * @param iceP_llu -
     * @param iceP_name -
     * @param context -
     * @param sync -
     * @return -
     **/
    default com.zeroc.Ice.OutgoingAsync<Void> _iceI_createTopicAsync(LogUpdate iceP_llu, String iceP_name, java.util.Map<String, String> context, boolean sync)
    {
        com.zeroc.Ice.OutgoingAsync<Void> f = new com.zeroc.Ice.OutgoingAsync<>(this, "createTopic", null, sync, _iceE_createTopic);
        f.invoke(true, context, null, ostr -> {
                     LogUpdate.ice_write(ostr, iceP_llu);
                     ostr.writeString(iceP_name);
                 }, null);
        return f;
    }

    /** @hidden */
    static final Class<?>[] _iceE_createTopic =
    {
        ObserverInconsistencyException.class
    };

    /**
     * Destroy the topic with the given name.
     * @param llu The log update token.
     * @param name The topic name.
     * @throws ObserverInconsistencyException Raised if an
     * inconsisency was detected.
     **/
    default void destroyTopic(LogUpdate llu, String name)
        throws ObserverInconsistencyException
    {
        destroyTopic(llu, name, com.zeroc.Ice.ObjectPrx.noExplicitContext);
    }

    /**
     * Destroy the topic with the given name.
     * @param llu The log update token.
     * @param name The topic name.
     * @param context The Context map to send with the invocation.
     * @throws ObserverInconsistencyException Raised if an
     * inconsisency was detected.
     **/
    default void destroyTopic(LogUpdate llu, String name, java.util.Map<String, String> context)
        throws ObserverInconsistencyException
    {
        try
        {
            _iceI_destroyTopicAsync(llu, name, context, true).waitForResponseOrUserEx();
        }
        catch(ObserverInconsistencyException ex)
        {
            throw ex;
        }
        catch(com.zeroc.Ice.UserException ex)
        {
            throw com.zeroc.Ice.UnknownUserException.fromTypeId(ex.ice_id());
        }
    }

    /**
     * Destroy the topic with the given name.
     * @param llu The log update token.
     * @param name The topic name.
     * @return A future that will be completed when the invocation completes.
     **/
    default java.util.concurrent.CompletableFuture<Void> destroyTopicAsync(LogUpdate llu, String name)
    {
        return _iceI_destroyTopicAsync(llu, name, com.zeroc.Ice.ObjectPrx.noExplicitContext, false);
    }

    /**
     * Destroy the topic with the given name.
     * @param llu The log update token.
     * @param name The topic name.
     * @param context The Context map to send with the invocation.
     * @return A future that will be completed when the invocation completes.
     **/
    default java.util.concurrent.CompletableFuture<Void> destroyTopicAsync(LogUpdate llu, String name, java.util.Map<String, String> context)
    {
        return _iceI_destroyTopicAsync(llu, name, context, false);
    }

    /**
     * @hidden
     * @param iceP_llu -
     * @param iceP_name -
     * @param context -
     * @param sync -
     * @return -
     **/
    default com.zeroc.Ice.OutgoingAsync<Void> _iceI_destroyTopicAsync(LogUpdate iceP_llu, String iceP_name, java.util.Map<String, String> context, boolean sync)
    {
        com.zeroc.Ice.OutgoingAsync<Void> f = new com.zeroc.Ice.OutgoingAsync<>(this, "destroyTopic", null, sync, _iceE_destroyTopic);
        f.invoke(true, context, null, ostr -> {
                     LogUpdate.ice_write(ostr, iceP_llu);
                     ostr.writeString(iceP_name);
                 }, null);
        return f;
    }

    /** @hidden */
    static final Class<?>[] _iceE_destroyTopic =
    {
        ObserverInconsistencyException.class
    };

    /**
     * Add a subscriber to a topic.
     * @param llu The log update token.
     * @param topic The topic name to which to add the subscriber.
     * @param _record The subscriber information.
     * @throws ObserverInconsistencyException Raised if an
     * inconsisency was detected.
     **/
    default void addSubscriber(LogUpdate llu, String topic, IceStorm.SubscriberRecord _record)
        throws ObserverInconsistencyException
    {
        addSubscriber(llu, topic, _record, com.zeroc.Ice.ObjectPrx.noExplicitContext);
    }

    /**
     * Add a subscriber to a topic.
     * @param llu The log update token.
     * @param topic The topic name to which to add the subscriber.
     * @param _record The subscriber information.
     * @param context The Context map to send with the invocation.
     * @throws ObserverInconsistencyException Raised if an
     * inconsisency was detected.
     **/
    default void addSubscriber(LogUpdate llu, String topic, IceStorm.SubscriberRecord _record, java.util.Map<String, String> context)
        throws ObserverInconsistencyException
    {
        try
        {
            _iceI_addSubscriberAsync(llu, topic, _record, context, true).waitForResponseOrUserEx();
        }
        catch(ObserverInconsistencyException ex)
        {
            throw ex;
        }
        catch(com.zeroc.Ice.UserException ex)
        {
            throw com.zeroc.Ice.UnknownUserException.fromTypeId(ex.ice_id());
        }
    }

    /**
     * Add a subscriber to a topic.
     * @param llu The log update token.
     * @param topic The topic name to which to add the subscriber.
     * @param _record The subscriber information.
     * @return A future that will be completed when the invocation completes.
     **/
    default java.util.concurrent.CompletableFuture<Void> addSubscriberAsync(LogUpdate llu, String topic, IceStorm.SubscriberRecord _record)
    {
        return _iceI_addSubscriberAsync(llu, topic, _record, com.zeroc.Ice.ObjectPrx.noExplicitContext, false);
    }

    /**
     * Add a subscriber to a topic.
     * @param llu The log update token.
     * @param topic The topic name to which to add the subscriber.
     * @param _record The subscriber information.
     * @param context The Context map to send with the invocation.
     * @return A future that will be completed when the invocation completes.
     **/
    default java.util.concurrent.CompletableFuture<Void> addSubscriberAsync(LogUpdate llu, String topic, IceStorm.SubscriberRecord _record, java.util.Map<String, String> context)
    {
        return _iceI_addSubscriberAsync(llu, topic, _record, context, false);
    }

    /**
     * @hidden
     * @param iceP_llu -
     * @param iceP_topic -
     * @param iceP_record -
     * @param context -
     * @param sync -
     * @return -
     **/
    default com.zeroc.Ice.OutgoingAsync<Void> _iceI_addSubscriberAsync(LogUpdate iceP_llu, String iceP_topic, IceStorm.SubscriberRecord iceP_record, java.util.Map<String, String> context, boolean sync)
    {
        com.zeroc.Ice.OutgoingAsync<Void> f = new com.zeroc.Ice.OutgoingAsync<>(this, "addSubscriber", null, sync, _iceE_addSubscriber);
        f.invoke(true, context, null, ostr -> {
                     LogUpdate.ice_write(ostr, iceP_llu);
                     ostr.writeString(iceP_topic);
                     IceStorm.SubscriberRecord.ice_write(ostr, iceP_record);
                 }, null);
        return f;
    }

    /** @hidden */
    static final Class<?>[] _iceE_addSubscriber =
    {
        ObserverInconsistencyException.class
    };

    /**
     * Remove a subscriber from a topic.
     * @param llu The log update token.
     * @param subscribers The identities of the subscribers to remove.
     * @throws ObserverInconsistencyException Raised if an inconsisency was detected.
     **/
    default void removeSubscriber(LogUpdate llu, String topic, com.zeroc.Ice.Identity[] subscribers)
        throws ObserverInconsistencyException
    {
        removeSubscriber(llu, topic, subscribers, com.zeroc.Ice.ObjectPrx.noExplicitContext);
    }

    /**
     * Remove a subscriber from a topic.
     * @param llu The log update token.
     * @param subscribers The identities of the subscribers to remove.
     * @param context The Context map to send with the invocation.
     * @throws ObserverInconsistencyException Raised if an inconsisency was detected.
     **/
    default void removeSubscriber(LogUpdate llu, String topic, com.zeroc.Ice.Identity[] subscribers, java.util.Map<String, String> context)
        throws ObserverInconsistencyException
    {
        try
        {
            _iceI_removeSubscriberAsync(llu, topic, subscribers, context, true).waitForResponseOrUserEx();
        }
        catch(ObserverInconsistencyException ex)
        {
            throw ex;
        }
        catch(com.zeroc.Ice.UserException ex)
        {
            throw com.zeroc.Ice.UnknownUserException.fromTypeId(ex.ice_id());
        }
    }

    /**
     * Remove a subscriber from a topic.
     * @param llu The log update token.
     * @param subscribers The identities of the subscribers to remove.
     * @return A future that will be completed when the invocation completes.
     **/
    default java.util.concurrent.CompletableFuture<Void> removeSubscriberAsync(LogUpdate llu, String topic, com.zeroc.Ice.Identity[] subscribers)
    {
        return _iceI_removeSubscriberAsync(llu, topic, subscribers, com.zeroc.Ice.ObjectPrx.noExplicitContext, false);
    }

    /**
     * Remove a subscriber from a topic.
     * @param llu The log update token.
     * @param subscribers The identities of the subscribers to remove.
     * @param context The Context map to send with the invocation.
     * @return A future that will be completed when the invocation completes.
     **/
    default java.util.concurrent.CompletableFuture<Void> removeSubscriberAsync(LogUpdate llu, String topic, com.zeroc.Ice.Identity[] subscribers, java.util.Map<String, String> context)
    {
        return _iceI_removeSubscriberAsync(llu, topic, subscribers, context, false);
    }

    /**
     * @hidden
     * @param iceP_llu -
     * @param iceP_topic -
     * @param iceP_subscribers -
     * @param context -
     * @param sync -
     * @return -
     **/
    default com.zeroc.Ice.OutgoingAsync<Void> _iceI_removeSubscriberAsync(LogUpdate iceP_llu, String iceP_topic, com.zeroc.Ice.Identity[] iceP_subscribers, java.util.Map<String, String> context, boolean sync)
    {
        com.zeroc.Ice.OutgoingAsync<Void> f = new com.zeroc.Ice.OutgoingAsync<>(this, "removeSubscriber", null, sync, _iceE_removeSubscriber);
        f.invoke(true, context, null, ostr -> {
                     LogUpdate.ice_write(ostr, iceP_llu);
                     ostr.writeString(iceP_topic);
                     com.zeroc.Ice.IdentitySeqHelper.write(ostr, iceP_subscribers);
                 }, null);
        return f;
    }

    /** @hidden */
    static final Class<?>[] _iceE_removeSubscriber =
    {
        ObserverInconsistencyException.class
    };

    /**
     * Creates a new proxy that implements {@link ReplicaObserverPrx}.
     * @param communicator The communicator of the new proxy.
     * @param proxyString The string representation of the proxy.
     * @return The new proxy.
     **/
    public static ReplicaObserverPrx createProxy(com.zeroc.Ice.Communicator communicator, String proxyString)
    {
        return new _ReplicaObserverPrxI(com.zeroc.Ice.ObjectPrx.createProxy(communicator, proxyString));
    }

    /**
     * Contacts the remote server to verify that the object implements this type.
     * Raises a local exception if a communication error occurs.
     * @param obj The untyped proxy.
     * @return A proxy for this type, or null if the object does not support this type.
     **/
    static ReplicaObserverPrx checkedCast(com.zeroc.Ice.ObjectPrx obj)
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
    static ReplicaObserverPrx checkedCast(com.zeroc.Ice.ObjectPrx obj, java.util.Map<String, String> context)
    {
        return (obj != null && obj.ice_isA(ice_staticId(), context)) ? new _ReplicaObserverPrxI(obj) : null;
    }

    /**
     * Contacts the remote server to verify that a facet of the object implements this type.
     * Raises a local exception if a communication error occurs.
     * @param obj The untyped proxy.
     * @param facet The name of the desired facet.
     * @return A proxy for this type, or null if the object does not support this type.
     **/
    static ReplicaObserverPrx checkedCast(com.zeroc.Ice.ObjectPrx obj, String facet)
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
    static ReplicaObserverPrx checkedCast(com.zeroc.Ice.ObjectPrx obj, String facet, java.util.Map<String, String> context)
    {
        return (obj == null) ? null : checkedCast(obj.ice_facet(facet), context);
    }

    /**
     * Downcasts the given proxy to this type without contacting the remote server.
     * @param obj The untyped proxy.
     * @return A proxy for this type.
     **/
    static ReplicaObserverPrx uncheckedCast(com.zeroc.Ice.ObjectPrx obj)
    {
        return (obj == null) ? null : new _ReplicaObserverPrxI(obj);
    }

    /**
     * Downcasts the given proxy to this type without contacting the remote server.
     * @param obj The untyped proxy.
     * @param facet The name of the desired facet.
     * @return A proxy for this type.
     **/
    static ReplicaObserverPrx uncheckedCast(com.zeroc.Ice.ObjectPrx obj, String facet)
    {
        return (obj == null) ? null : new _ReplicaObserverPrxI(obj.ice_facet(facet));
    }

    @Override
    ReplicaObserverPrx ice_context(java.util.Map<String, String> newContext);

    @Override
    ReplicaObserverPrx ice_adapterId(String newAdapterId);

    @Override
    ReplicaObserverPrx ice_endpoints(com.zeroc.Ice.Endpoint[] newEndpoints);

    @Override
    ReplicaObserverPrx ice_locatorCacheTimeout(int newTimeout);

    @Override
    ReplicaObserverPrx ice_invocationTimeout(int newTimeout);

    @Override
    ReplicaObserverPrx ice_connectionCached(boolean newCache);

    @Override
    ReplicaObserverPrx ice_endpointSelection(com.zeroc.Ice.EndpointSelectionType newType);

    @Override
    ReplicaObserverPrx ice_secure(boolean b);

    @Override
    ReplicaObserverPrx ice_encodingVersion(com.zeroc.Ice.EncodingVersion e);

    @Override
    ReplicaObserverPrx ice_preferSecure(boolean b);

    @Override
    ReplicaObserverPrx ice_router(com.zeroc.Ice.RouterPrx router);

    @Override
    ReplicaObserverPrx ice_locator(com.zeroc.Ice.LocatorPrx locator);

    @Override
    ReplicaObserverPrx ice_collocationOptimized(boolean b);

    @Override
    ReplicaObserverPrx ice_twoway();

    @Override
    ReplicaObserverPrx ice_oneway();

    @Override
    ReplicaObserverPrx ice_batchOneway();

    @Override
    ReplicaObserverPrx ice_datagram();

    @Override
    ReplicaObserverPrx ice_batchDatagram();

    @Override
    ReplicaObserverPrx ice_compress(boolean co);

    @Override
    ReplicaObserverPrx ice_connectionId(String connectionId);

    @Override
    ReplicaObserverPrx ice_fixed(com.zeroc.Ice.Connection connection);

    static String ice_staticId()
    {
        return "::IceStormElection::ReplicaObserver";
    }

    /**
     * @hidden
     **/
    @Override
    default ReplicaObserverPrx _newInstance(com.zeroc.Ice.Reference ref)
    {
        return new _ReplicaObserverPrxI(ref);
    }
}
