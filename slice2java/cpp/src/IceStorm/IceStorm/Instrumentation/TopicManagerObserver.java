//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.7.9
//
// <auto-generated>
//
// Generated from file `Instrumentation.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

package IceStorm.Instrumentation;

/**
 * The topic manager observer interface used by the Ice run-time to
 * obtain and update observers for its observeable objects. This
 * interface should be implemented by add-ins that wish to observe
 * IceStorm objects in order to collect statistics.
 **/
public interface TopicManagerObserver
{
    /**
     * This method should return an observer for the given topic.
     * @param svc The service name.
     * @param name The topic name.
     * @param old The previous observer, only set when updating an
     * existing observer.
     **/
    TopicObserver getTopicObserver(String svc, String name, TopicObserver old);

    /**
     * This method should return an observer for the given subscriber.
     * @param topic The name of the topic subscribed.
     * @param link The proxy of the linked topic if this subscriber
     * forwards events to a linked topic.
     * @param old The previous observer, only set when updating an
     * existing observer.
     **/
    SubscriberObserver getSubscriberObserver(String svc, String topic, com.zeroc.Ice.ObjectPrx prx, java.util.Map<java.lang.String, java.lang.String> q, com.zeroc.IceStorm.TopicPrx link, SubscriberState s, SubscriberObserver old);

    /**
     * IceStorm calls this method on initialization. The add-in
     * implementing this interface can use this object to get IceStorm
     * to re-obtain observers for topics and subscribers.
     * @param updater The observer updater object.
     **/
    void setObserverUpdater(ObserverUpdater updater);
}
