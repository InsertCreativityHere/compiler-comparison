//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.7.10
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
 * A topic manager manages topics, and subscribers to topics.
 *
 * @see Topic
 **/
public interface TopicManager extends com.zeroc.Ice.Object
{
    /**
     * Create a new topic. The topic name must be unique.
     * @param name The name of the topic.
     * @param current The Current object for the invocation.
     * @return A proxy to the topic instance.
     * @throws TopicExists Raised if a topic with the same name already
     * exists.
     **/
    TopicPrx create(String name, com.zeroc.Ice.Current current)
        throws TopicExists;

    /**
     * Retrieve a topic by name.
     * @param name The name of the topic.
     * @param current The Current object for the invocation.
     * @return A proxy to the topic instance.
     * @throws NoSuchTopic Raised if the topic does not exist.
     **/
    TopicPrx retrieve(String name, com.zeroc.Ice.Current current)
        throws NoSuchTopic;

    /**
     * Retrieve all topics managed by this topic manager.
     * @param current The Current object for the invocation.
     * @return A dictionary of string, topic proxy pairs.
     **/
    java.util.Map<java.lang.String, TopicPrx> retrieveAll(com.zeroc.Ice.Current current);

    /** @hidden */
    static final String[] _iceIds =
    {
        "::Ice::Object",
        "::IceStorm::TopicManager"
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
        return "::IceStorm::TopicManager";
    }

    /**
     * @hidden
     * @param obj -
     * @param inS -
     * @param current -
     * @return -
     * @throws com.zeroc.Ice.UserException -
    **/
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutputStream> _iceD_create(TopicManager obj, final com.zeroc.IceInternal.Incoming inS, com.zeroc.Ice.Current current)
        throws com.zeroc.Ice.UserException
    {
        com.zeroc.Ice.Object._iceCheckMode(null, current.mode);
        com.zeroc.Ice.InputStream istr = inS.startReadParams();
        String iceP_name;
        iceP_name = istr.readString();
        inS.endReadParams();
        TopicPrx ret = obj.create(iceP_name, current);
        com.zeroc.Ice.OutputStream ostr = inS.startWriteParams();
        ostr.writeProxy(ret);
        inS.endWriteParams(ostr);
        return inS.setResult(ostr);
    }

    /**
     * @hidden
     * @param obj -
     * @param inS -
     * @param current -
     * @return -
     * @throws com.zeroc.Ice.UserException -
    **/
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutputStream> _iceD_retrieve(TopicManager obj, final com.zeroc.IceInternal.Incoming inS, com.zeroc.Ice.Current current)
        throws com.zeroc.Ice.UserException
    {
        com.zeroc.Ice.Object._iceCheckMode(com.zeroc.Ice.OperationMode.Idempotent, current.mode);
        com.zeroc.Ice.InputStream istr = inS.startReadParams();
        String iceP_name;
        iceP_name = istr.readString();
        inS.endReadParams();
        TopicPrx ret = obj.retrieve(iceP_name, current);
        com.zeroc.Ice.OutputStream ostr = inS.startWriteParams();
        ostr.writeProxy(ret);
        inS.endWriteParams(ostr);
        return inS.setResult(ostr);
    }

    /**
     * @hidden
     * @param obj -
     * @param inS -
     * @param current -
     * @return -
    **/
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutputStream> _iceD_retrieveAll(TopicManager obj, final com.zeroc.IceInternal.Incoming inS, com.zeroc.Ice.Current current)
    {
        com.zeroc.Ice.Object._iceCheckMode(com.zeroc.Ice.OperationMode.Idempotent, current.mode);
        inS.readEmptyParams();
        java.util.Map<java.lang.String, TopicPrx> ret = obj.retrieveAll(current);
        com.zeroc.Ice.OutputStream ostr = inS.startWriteParams();
        TopicDictHelper.write(ostr, ret);
        inS.endWriteParams(ostr);
        return inS.setResult(ostr);
    }

    /** @hidden */
    final static String[] _iceOps =
    {
        "create",
        "ice_id",
        "ice_ids",
        "ice_isA",
        "ice_ping",
        "retrieve",
        "retrieveAll"
    };

    /** @hidden */
    @Override
    default java.util.concurrent.CompletionStage<com.zeroc.Ice.OutputStream> _iceDispatch(com.zeroc.IceInternal.Incoming in, com.zeroc.Ice.Current current)
        throws com.zeroc.Ice.UserException
    {
        int pos = java.util.Arrays.binarySearch(_iceOps, current.operation);
        if(pos < 0)
        {
            throw new com.zeroc.Ice.OperationNotExistException(current.id, current.facet, current.operation);
        }

        switch(pos)
        {
            case 0:
            {
                return _iceD_create(this, in, current);
            }
            case 1:
            {
                return com.zeroc.Ice.Object._iceD_ice_id(this, in, current);
            }
            case 2:
            {
                return com.zeroc.Ice.Object._iceD_ice_ids(this, in, current);
            }
            case 3:
            {
                return com.zeroc.Ice.Object._iceD_ice_isA(this, in, current);
            }
            case 4:
            {
                return com.zeroc.Ice.Object._iceD_ice_ping(this, in, current);
            }
            case 5:
            {
                return _iceD_retrieve(this, in, current);
            }
            case 6:
            {
                return _iceD_retrieveAll(this, in, current);
            }
        }

        assert(false);
        throw new com.zeroc.Ice.OperationNotExistException(current.id, current.facet, current.operation);
    }
}
