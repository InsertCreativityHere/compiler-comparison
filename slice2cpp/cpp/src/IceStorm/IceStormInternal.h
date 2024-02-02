//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `IceStormInternal.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

#ifndef __IceStormInternal_h__
#define __IceStormInternal_h__

#include <IceUtil/PushDisableWarnings.h>
#include <Ice/Ice.h>
#include <IceStorm/IceStorm.h>
#include <Election.h>
#include <Ice/Context.h>
#include <Ice/OperationMode.h>
#include <IceUtil/UndefSysMacros.h>
#include <deque>

#ifndef ICE_IGNORE_VERSION
#   if ICE_INT_VERSION  != 30850
#       error Ice version mismatch: an exact match is required for beta generated code
#   endif
#endif

namespace IceStorm
{

class TopicLink;
class TopicLinkPrx;
class TopicInternal;
class TopicInternalPrx;
class TopicManagerInternal;
class TopicManagerInternalPrx;

}

namespace IceStorm
{

/**
 * The event data.
 */
struct EventData
{
    /**
     * The operation name.
     */
    ::std::string op;
    /**
     * The operation mode.
     */
    ::Ice::OperationMode mode;
    /**
     * The encoded data for the operation's input parameters.
     */
    ::Ice::ByteSeq data;
    /**
     * The Ice::Current::Context data from the originating request.
     */
    ::Ice::Context context;

    /**
     * Obtains a tuple containing all of the struct's data members.
     * @return The data members in a tuple.
     */
    std::tuple<const ::std::string&, const ::Ice::OperationMode&, const ::Ice::ByteSeq&, const ::Ice::Context&> ice_tuple() const
    {
        return std::tie(op, mode, data, context);
    }
};

/**
 * A sequence of EventData.
 */
using EventDataSeq = std::deque<IceStorm::EventData>;

/**
 * Thrown if the reap call would block.
 */
class ReapWouldBlock : public ::Ice::UserExceptionHelper<ReapWouldBlock, ::Ice::UserException>
{
public:

    virtual ~ReapWouldBlock();

    ReapWouldBlock(const ReapWouldBlock&) = default;

    ReapWouldBlock() = default;

    /**
     * Obtains a tuple containing all of the exception's data members.
     * @return The data members in a tuple.
     */
    std::tuple<> ice_tuple() const
    {
        return std::tie();
    }

    /**
     * Obtains the Slice type ID of this exception.
     * @return The fully-scoped type ID.
     */
    static const ::std::string& ice_staticId();
};

/// \cond INTERNAL
static ReapWouldBlock _iceS_ReapWouldBlock_init;
/// \endcond

using Ice::operator<;
using Ice::operator<=;
using Ice::operator>;
using Ice::operator>=;
using Ice::operator==;
using Ice::operator!=;

}

namespace IceStorm
{

/**
 * The TopicLink interface. This is used to forward events between federated Topic instances.
 * @see TopicInternal
 */
class TopicLink : public virtual ::Ice::Object
{
public:

    using ProxyType = TopicLinkPrx;

    /**
     * Determines whether this object supports an interface with the given Slice type ID.
     * @param id The fully-scoped Slice type ID.
     * @param current The Current object for the invocation.
     * @return True if this object supports the interface, false, otherwise.
     */
    virtual bool ice_isA(::std::string id, const ::Ice::Current& current) const override;

    /**
     * Obtains a list of the Slice type IDs representing the interfaces supported by this object.
     * @param current The Current object for the invocation.
     * @return A list of fully-scoped type IDs.
     */
    virtual ::std::vector<::std::string> ice_ids(const ::Ice::Current& current) const override;

    /**
     * Obtains a Slice type ID representing the most-derived interface supported by this object.
     * @param current The Current object for the invocation.
     * @return A fully-scoped type ID.
     */
    virtual ::std::string ice_id(const ::Ice::Current& current) const override;

    /**
     * Obtains the Slice type ID corresponding to this class.
     * @return A fully-scoped type ID.
     */
    static const ::std::string& ice_staticId();

    /**
     * Forward a sequence of events.
     * @param events The events to forward.
     * @param current The Current object for the invocation.
     */
    virtual void forward(EventDataSeq events, const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    bool _iceD_forward(::IceInternal::Incoming&, const ::Ice::Current&);
    /// \endcond

    /// \cond INTERNAL
    virtual bool _iceDispatch(::IceInternal::Incoming&, const ::Ice::Current&) override;
    /// \endcond
};

/**
 * Internal operations for a topic.
 * @see Topic
 */
class TopicInternal : public virtual Topic
{
public:

    using ProxyType = TopicInternalPrx;

    /**
     * Determines whether this object supports an interface with the given Slice type ID.
     * @param id The fully-scoped Slice type ID.
     * @param current The Current object for the invocation.
     * @return True if this object supports the interface, false, otherwise.
     */
    virtual bool ice_isA(::std::string id, const ::Ice::Current& current) const override;

    /**
     * Obtains a list of the Slice type IDs representing the interfaces supported by this object.
     * @param current The Current object for the invocation.
     * @return A list of fully-scoped type IDs.
     */
    virtual ::std::vector<::std::string> ice_ids(const ::Ice::Current& current) const override;

    /**
     * Obtains a Slice type ID representing the most-derived interface supported by this object.
     * @param current The Current object for the invocation.
     * @return A fully-scoped type ID.
     */
    virtual ::std::string ice_id(const ::Ice::Current& current) const override;

    /**
     * Obtains the Slice type ID corresponding to this class.
     * @return A fully-scoped type ID.
     */
    static const ::std::string& ice_staticId();

    /**
     * Retrieve a proxy to the TopicLink interface.
     * @param current The Current object for the invocation.
     * @return The TopicLink for the Topic.
     */
    virtual ::std::shared_ptr<TopicLinkPrx> getLinkProxy(const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    bool _iceD_getLinkProxy(::IceInternal::Incoming&, const ::Ice::Current&);
    /// \endcond

    /**
     * Reap the given identities.
     * @param id The sequence of identities.
     * @param current The Current object for the invocation.
     * @throws IceStorm::ReapWouldBlock Raised if the reap call would block.
     */
    virtual void reap(::Ice::IdentitySeq id, const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    bool _iceD_reap(::IceInternal::Incoming&, const ::Ice::Current&);
    /// \endcond

    /// \cond INTERNAL
    virtual bool _iceDispatch(::IceInternal::Incoming&, const ::Ice::Current&) override;
    /// \endcond
};

/**
 * Internal operations for a topic manager.
 * @see TopicManager
 */
class TopicManagerInternal : public virtual TopicManager
{
public:

    using ProxyType = TopicManagerInternalPrx;

    /**
     * Determines whether this object supports an interface with the given Slice type ID.
     * @param id The fully-scoped Slice type ID.
     * @param current The Current object for the invocation.
     * @return True if this object supports the interface, false, otherwise.
     */
    virtual bool ice_isA(::std::string id, const ::Ice::Current& current) const override;

    /**
     * Obtains a list of the Slice type IDs representing the interfaces supported by this object.
     * @param current The Current object for the invocation.
     * @return A list of fully-scoped type IDs.
     */
    virtual ::std::vector<::std::string> ice_ids(const ::Ice::Current& current) const override;

    /**
     * Obtains a Slice type ID representing the most-derived interface supported by this object.
     * @param current The Current object for the invocation.
     * @return A fully-scoped type ID.
     */
    virtual ::std::string ice_id(const ::Ice::Current& current) const override;

    /**
     * Obtains the Slice type ID corresponding to this class.
     * @return A fully-scoped type ID.
     */
    static const ::std::string& ice_staticId();

    /**
     * Return the replica node proxy for this topic manager.
     * @param current The Current object for the invocation.
     * @return The replica proxy, or null if this instance is not replicated.
     */
    virtual ::std::shared_ptr<::IceStormElection::NodePrx> getReplicaNode(const ::Ice::Current& current) const = 0;
    /// \cond INTERNAL
    bool _iceD_getReplicaNode(::IceInternal::Incoming&, const ::Ice::Current&) const;
    /// \endcond

    /// \cond INTERNAL
    virtual bool _iceDispatch(::IceInternal::Incoming&, const ::Ice::Current&) override;
    /// \endcond
};

}

namespace IceStorm
{

/**
 * The TopicLink interface. This is used to forward events between federated Topic instances.
 * @see TopicInternal
 */
class TopicLinkPrx : public virtual ::Ice::Proxy<TopicLinkPrx, ::Ice::ObjectPrx>
{
public:

    /**
     * Forward a sequence of events.
     * @param events The events to forward.
     * @param context The Context map to send with the invocation.
     */
    void forward(const EventDataSeq& events, const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        _makePromiseOutgoing<void>(true, this, &TopicLinkPrx::_iceI_forward, events, context).get();
    }

    /**
     * Forward a sequence of events.
     * @param events The events to forward.
     * @param context The Context map to send with the invocation.
     * @return The future object for the invocation.
     */
    template<template<typename> class P = ::std::promise>
    auto forwardAsync(const EventDataSeq& events, const ::Ice::Context& context = ::Ice::noExplicitContext)
        -> decltype(::std::declval<P<void>>().get_future())
    {
        return _makePromiseOutgoing<void, P>(false, this, &TopicLinkPrx::_iceI_forward, events, context);
    }

    /**
     * Forward a sequence of events.
     * @param events The events to forward.
     * @param response The response callback.
     * @param ex The exception callback.
     * @param sent The sent callback.
     * @param context The Context map to send with the invocation.
     * @return A function that can be called to cancel the invocation locally.
     */
    ::std::function<void()>
    forwardAsync(const EventDataSeq& events,
                 ::std::function<void()> response,
                 ::std::function<void(::std::exception_ptr)> ex = nullptr,
                 ::std::function<void(bool)> sent = nullptr,
                 const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        return _makeLambdaOutgoing<void>(std::move(response), std::move(ex), std::move(sent), this, &IceStorm::TopicLinkPrx::_iceI_forward, events, context);
    }

    /// \cond INTERNAL
    void _iceI_forward(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>&, const EventDataSeq&, const ::Ice::Context&);
    /// \endcond

    /**
     * Obtains the Slice type ID of this interface.
     * @return The fully-scoped type ID.
     */
    static const ::std::string& ice_staticId();

protected:

    /// \cond INTERNAL
    TopicLinkPrx() = default;
    friend ::std::shared_ptr<TopicLinkPrx> IceInternal::createProxy<TopicLinkPrx>();

    virtual ::std::shared_ptr<::Ice::ObjectPrx> _newInstance() const override;
    /// \endcond
};

/**
 * Internal operations for a topic.
 * @see Topic
 */
class TopicInternalPrx : public virtual ::Ice::Proxy<TopicInternalPrx, TopicPrx>
{
public:

    /**
     * Retrieve a proxy to the TopicLink interface.
     * @param context The Context map to send with the invocation.
     * @return The TopicLink for the Topic.
     */
    ::std::shared_ptr<TopicLinkPrx> getLinkProxy(const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        return _makePromiseOutgoing<::std::shared_ptr<::IceStorm::TopicLinkPrx>>(true, this, &TopicInternalPrx::_iceI_getLinkProxy, context).get();
    }

    /**
     * Retrieve a proxy to the TopicLink interface.
     * @param context The Context map to send with the invocation.
     * @return The future object for the invocation.
     */
    template<template<typename> class P = ::std::promise>
    auto getLinkProxyAsync(const ::Ice::Context& context = ::Ice::noExplicitContext)
        -> decltype(::std::declval<P<::std::shared_ptr<::IceStorm::TopicLinkPrx>>>().get_future())
    {
        return _makePromiseOutgoing<::std::shared_ptr<::IceStorm::TopicLinkPrx>, P>(false, this, &TopicInternalPrx::_iceI_getLinkProxy, context);
    }

    /**
     * Retrieve a proxy to the TopicLink interface.
     * @param response The response callback.
     * @param ex The exception callback.
     * @param sent The sent callback.
     * @param context The Context map to send with the invocation.
     * @return A function that can be called to cancel the invocation locally.
     */
    ::std::function<void()>
    getLinkProxyAsync(::std::function<void(::std::shared_ptr<::IceStorm::TopicLinkPrx>)> response,
                      ::std::function<void(::std::exception_ptr)> ex = nullptr,
                      ::std::function<void(bool)> sent = nullptr,
                      const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        return _makeLambdaOutgoing<::std::shared_ptr<::IceStorm::TopicLinkPrx>>(std::move(response), std::move(ex), std::move(sent), this, &IceStorm::TopicInternalPrx::_iceI_getLinkProxy, context);
    }

    /// \cond INTERNAL
    void _iceI_getLinkProxy(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<::std::shared_ptr<::IceStorm::TopicLinkPrx>>>&, const ::Ice::Context&);
    /// \endcond

    /**
     * Reap the given identities.
     * @param id The sequence of identities.
     * @param context The Context map to send with the invocation.
     * @throws IceStorm::ReapWouldBlock Raised if the reap call would block.
     */
    void reap(const ::Ice::IdentitySeq& id, const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        _makePromiseOutgoing<void>(true, this, &TopicInternalPrx::_iceI_reap, id, context).get();
    }

    /**
     * Reap the given identities.
     * @param id The sequence of identities.
     * @param context The Context map to send with the invocation.
     * @return The future object for the invocation.
     */
    template<template<typename> class P = ::std::promise>
    auto reapAsync(const ::Ice::IdentitySeq& id, const ::Ice::Context& context = ::Ice::noExplicitContext)
        -> decltype(::std::declval<P<void>>().get_future())
    {
        return _makePromiseOutgoing<void, P>(false, this, &TopicInternalPrx::_iceI_reap, id, context);
    }

    /**
     * Reap the given identities.
     * @param id The sequence of identities.
     * @param response The response callback.
     * @param ex The exception callback.
     * @param sent The sent callback.
     * @param context The Context map to send with the invocation.
     * @return A function that can be called to cancel the invocation locally.
     */
    ::std::function<void()>
    reapAsync(const ::Ice::IdentitySeq& id,
              ::std::function<void()> response,
              ::std::function<void(::std::exception_ptr)> ex = nullptr,
              ::std::function<void(bool)> sent = nullptr,
              const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        return _makeLambdaOutgoing<void>(std::move(response), std::move(ex), std::move(sent), this, &IceStorm::TopicInternalPrx::_iceI_reap, id, context);
    }

    /// \cond INTERNAL
    void _iceI_reap(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>&, const ::Ice::IdentitySeq&, const ::Ice::Context&);
    /// \endcond

    /**
     * Obtains the Slice type ID of this interface.
     * @return The fully-scoped type ID.
     */
    static const ::std::string& ice_staticId();

protected:

    /// \cond INTERNAL
    TopicInternalPrx() = default;
    friend ::std::shared_ptr<TopicInternalPrx> IceInternal::createProxy<TopicInternalPrx>();

    virtual ::std::shared_ptr<::Ice::ObjectPrx> _newInstance() const override;
    /// \endcond
};

/**
 * Internal operations for a topic manager.
 * @see TopicManager
 */
class TopicManagerInternalPrx : public virtual ::Ice::Proxy<TopicManagerInternalPrx, TopicManagerPrx>
{
public:

    /**
     * Return the replica node proxy for this topic manager.
     * @param context The Context map to send with the invocation.
     * @return The replica proxy, or null if this instance is not replicated.
     */
    ::std::shared_ptr<::IceStormElection::NodePrx> getReplicaNode(const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        return _makePromiseOutgoing<::std::shared_ptr<::IceStormElection::NodePrx>>(true, this, &TopicManagerInternalPrx::_iceI_getReplicaNode, context).get();
    }

    /**
     * Return the replica node proxy for this topic manager.
     * @param context The Context map to send with the invocation.
     * @return The future object for the invocation.
     */
    template<template<typename> class P = ::std::promise>
    auto getReplicaNodeAsync(const ::Ice::Context& context = ::Ice::noExplicitContext)
        -> decltype(::std::declval<P<::std::shared_ptr<::IceStormElection::NodePrx>>>().get_future())
    {
        return _makePromiseOutgoing<::std::shared_ptr<::IceStormElection::NodePrx>, P>(false, this, &TopicManagerInternalPrx::_iceI_getReplicaNode, context);
    }

    /**
     * Return the replica node proxy for this topic manager.
     * @param response The response callback.
     * @param ex The exception callback.
     * @param sent The sent callback.
     * @param context The Context map to send with the invocation.
     * @return A function that can be called to cancel the invocation locally.
     */
    ::std::function<void()>
    getReplicaNodeAsync(::std::function<void(::std::shared_ptr<::IceStormElection::NodePrx>)> response,
                        ::std::function<void(::std::exception_ptr)> ex = nullptr,
                        ::std::function<void(bool)> sent = nullptr,
                        const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        return _makeLambdaOutgoing<::std::shared_ptr<::IceStormElection::NodePrx>>(std::move(response), std::move(ex), std::move(sent), this, &IceStorm::TopicManagerInternalPrx::_iceI_getReplicaNode, context);
    }

    /// \cond INTERNAL
    void _iceI_getReplicaNode(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<::std::shared_ptr<::IceStormElection::NodePrx>>>&, const ::Ice::Context&);
    /// \endcond

    /**
     * Obtains the Slice type ID of this interface.
     * @return The fully-scoped type ID.
     */
    static const ::std::string& ice_staticId();

protected:

    /// \cond INTERNAL
    TopicManagerInternalPrx() = default;
    friend ::std::shared_ptr<TopicManagerInternalPrx> IceInternal::createProxy<TopicManagerInternalPrx>();

    virtual ::std::shared_ptr<::Ice::ObjectPrx> _newInstance() const override;
    /// \endcond
};

}

/// \cond STREAM
namespace Ice
{

template<>
struct StreamableTraits<::IceStorm::EventData>
{
    static const StreamHelperCategory helper = StreamHelperCategoryStruct;
    static const int minWireSize = 4;
    static const bool fixedLength = false;
};

template<typename S>
struct StreamReader<::IceStorm::EventData, S>
{
    static void read(S* istr, ::IceStorm::EventData& v)
    {
        istr->readAll(v.op, v.mode, v.data, v.context);
    }
};

}
/// \endcond

/// \cond INTERNAL
namespace IceStorm
{

using TopicLinkPtr = ::std::shared_ptr<TopicLink>;
using TopicLinkPrxPtr = ::std::shared_ptr<TopicLinkPrx>;

using TopicInternalPtr = ::std::shared_ptr<TopicInternal>;
using TopicInternalPrxPtr = ::std::shared_ptr<TopicInternalPrx>;

using TopicManagerInternalPtr = ::std::shared_ptr<TopicManagerInternal>;
using TopicManagerInternalPrxPtr = ::std::shared_ptr<TopicManagerInternalPrx>;

}
/// \endcond

#include <IceUtil/PopDisableWarnings.h>
#endif
