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

#define ICE_BUILDING_GENERATED_CODE
#include <IceStormInternal.h>
#include <IceUtil/PushDisableWarnings.h>
#include <IceUtil/PopDisableWarnings.h>

#if defined(_MSC_VER)
#   pragma warning(disable:4458) // declaration of ... hides class member
#elif defined(__clang__)
#   pragma clang diagnostic ignored "-Wshadow"
#elif defined(__GNUC__)
#   pragma GCC diagnostic ignored "-Wshadow"
#endif

#ifndef ICE_IGNORE_VERSION
#   if ICE_INT_VERSION  != 30850
#       error Ice version mismatch: an exact match is required for beta generated code
#   endif
#endif

namespace
{

const ::std::string iceC_IceStorm_TopicLink_ids[2] =
{
    "::Ice::Object",
    "::IceStorm::TopicLink"
};
const ::std::string iceC_IceStorm_TopicLink_ops[] =
{
    "forward",
    "ice_id",
    "ice_ids",
    "ice_isA",
    "ice_ping"
};
const ::std::string iceC_IceStorm_TopicLink_forward_name = "forward";

const ::IceInternal::DefaultUserExceptionFactoryInit<::IceStorm::ReapWouldBlock> iceC_IceStorm_ReapWouldBlock_init("::IceStorm::ReapWouldBlock");

const ::std::string iceC_IceStorm_TopicInternal_ids[3] =
{
    "::Ice::Object",
    "::IceStorm::Topic",
    "::IceStorm::TopicInternal"
};
const ::std::string iceC_IceStorm_TopicInternal_ops[] =
{
    "destroy",
    "getLinkInfoSeq",
    "getLinkProxy",
    "getName",
    "getNonReplicatedPublisher",
    "getPublisher",
    "getSubscribers",
    "ice_id",
    "ice_ids",
    "ice_isA",
    "ice_ping",
    "link",
    "reap",
    "subscribeAndGetPublisher",
    "unlink",
    "unsubscribe"
};
const ::std::string iceC_IceStorm_TopicInternal_getLinkProxy_name = "getLinkProxy";
const ::std::string iceC_IceStorm_TopicInternal_reap_name = "reap";

const ::std::string iceC_IceStorm_TopicManagerInternal_ids[3] =
{
    "::Ice::Object",
    "::IceStorm::TopicManager",
    "::IceStorm::TopicManagerInternal"
};
const ::std::string iceC_IceStorm_TopicManagerInternal_ops[] =
{
    "create",
    "getReplicaNode",
    "ice_id",
    "ice_ids",
    "ice_isA",
    "ice_ping",
    "retrieve",
    "retrieveAll"
};
const ::std::string iceC_IceStorm_TopicManagerInternal_getReplicaNode_name = "getReplicaNode";

}

IceStorm::ReapWouldBlock::~ReapWouldBlock()
{
}

const ::std::string&
IceStorm::ReapWouldBlock::ice_staticId()
{
    static const ::std::string typeId = "::IceStorm::ReapWouldBlock";
    return typeId;
}

bool
IceStorm::TopicLink::ice_isA(::std::string s, const ::Ice::Current&) const
{
    return ::std::binary_search(iceC_IceStorm_TopicLink_ids, iceC_IceStorm_TopicLink_ids + 2, s);
}

::std::vector<::std::string>
IceStorm::TopicLink::ice_ids(const ::Ice::Current&) const
{
    return ::std::vector<::std::string>(&iceC_IceStorm_TopicLink_ids[0], &iceC_IceStorm_TopicLink_ids[2]);
}

::std::string
IceStorm::TopicLink::ice_id(const ::Ice::Current&) const
{
    return ice_staticId();
}

const ::std::string&
IceStorm::TopicLink::ice_staticId()
{
    static const ::std::string typeId = "::IceStorm::TopicLink";
    return typeId;
}

/// \cond INTERNAL
bool
IceStorm::TopicLink::_iceD_forward(::IceInternal::Incoming& inS, const ::Ice::Current& current)
{
    _iceCheckMode(::Ice::OperationMode::Normal, current.mode);
    auto istr = inS.startReadParams();
    EventDataSeq iceP_events;
    istr->readAll(iceP_events);
    inS.endReadParams();
    this->forward(::std::move(iceP_events), current);
    inS.writeEmptyParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
IceStorm::TopicLink::_iceDispatch(::IceInternal::Incoming& in, const ::Ice::Current& current)
{
    ::std::pair<const ::std::string*, const ::std::string*> r = ::std::equal_range(iceC_IceStorm_TopicLink_ops, iceC_IceStorm_TopicLink_ops + 5, current.operation);
    if(r.first == r.second)
    {
        throw ::Ice::OperationNotExistException(__FILE__, __LINE__, current.id, current.facet, current.operation);
    }

    switch(r.first - iceC_IceStorm_TopicLink_ops)
    {
        case 0:
        {
            return _iceD_forward(in, current);
        }
        case 1:
        {
            return _iceD_ice_id(in, current);
        }
        case 2:
        {
            return _iceD_ice_ids(in, current);
        }
        case 3:
        {
            return _iceD_ice_isA(in, current);
        }
        case 4:
        {
            return _iceD_ice_ping(in, current);
        }
        default:
        {
            assert(false);
            throw ::Ice::OperationNotExistException(__FILE__, __LINE__, current.id, current.facet, current.operation);
        }
    }
}
/// \endcond

bool
IceStorm::TopicInternal::ice_isA(::std::string s, const ::Ice::Current&) const
{
    return ::std::binary_search(iceC_IceStorm_TopicInternal_ids, iceC_IceStorm_TopicInternal_ids + 3, s);
}

::std::vector<::std::string>
IceStorm::TopicInternal::ice_ids(const ::Ice::Current&) const
{
    return ::std::vector<::std::string>(&iceC_IceStorm_TopicInternal_ids[0], &iceC_IceStorm_TopicInternal_ids[3]);
}

::std::string
IceStorm::TopicInternal::ice_id(const ::Ice::Current&) const
{
    return ice_staticId();
}

const ::std::string&
IceStorm::TopicInternal::ice_staticId()
{
    static const ::std::string typeId = "::IceStorm::TopicInternal";
    return typeId;
}

/// \cond INTERNAL
bool
IceStorm::TopicInternal::_iceD_getLinkProxy(::IceInternal::Incoming& inS, const ::Ice::Current& current)
{
    _iceCheckMode(::Ice::OperationMode::Idempotent, current.mode);
    inS.readEmptyParams();
    ::std::shared_ptr<TopicLinkPrx> ret = this->getLinkProxy(current);
    auto ostr = inS.startWriteParams();
    ostr->writeAll(ret);
    inS.endWriteParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
IceStorm::TopicInternal::_iceD_reap(::IceInternal::Incoming& inS, const ::Ice::Current& current)
{
    _iceCheckMode(::Ice::OperationMode::Normal, current.mode);
    auto istr = inS.startReadParams();
    ::Ice::IdentitySeq iceP_id;
    istr->readAll(iceP_id);
    inS.endReadParams();
    this->reap(::std::move(iceP_id), current);
    inS.writeEmptyParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
IceStorm::TopicInternal::_iceDispatch(::IceInternal::Incoming& in, const ::Ice::Current& current)
{
    ::std::pair<const ::std::string*, const ::std::string*> r = ::std::equal_range(iceC_IceStorm_TopicInternal_ops, iceC_IceStorm_TopicInternal_ops + 16, current.operation);
    if(r.first == r.second)
    {
        throw ::Ice::OperationNotExistException(__FILE__, __LINE__, current.id, current.facet, current.operation);
    }

    switch(r.first - iceC_IceStorm_TopicInternal_ops)
    {
        case 0:
        {
            return _iceD_destroy(in, current);
        }
        case 1:
        {
            return _iceD_getLinkInfoSeq(in, current);
        }
        case 2:
        {
            return _iceD_getLinkProxy(in, current);
        }
        case 3:
        {
            return _iceD_getName(in, current);
        }
        case 4:
        {
            return _iceD_getNonReplicatedPublisher(in, current);
        }
        case 5:
        {
            return _iceD_getPublisher(in, current);
        }
        case 6:
        {
            return _iceD_getSubscribers(in, current);
        }
        case 7:
        {
            return _iceD_ice_id(in, current);
        }
        case 8:
        {
            return _iceD_ice_ids(in, current);
        }
        case 9:
        {
            return _iceD_ice_isA(in, current);
        }
        case 10:
        {
            return _iceD_ice_ping(in, current);
        }
        case 11:
        {
            return _iceD_link(in, current);
        }
        case 12:
        {
            return _iceD_reap(in, current);
        }
        case 13:
        {
            return _iceD_subscribeAndGetPublisher(in, current);
        }
        case 14:
        {
            return _iceD_unlink(in, current);
        }
        case 15:
        {
            return _iceD_unsubscribe(in, current);
        }
        default:
        {
            assert(false);
            throw ::Ice::OperationNotExistException(__FILE__, __LINE__, current.id, current.facet, current.operation);
        }
    }
}
/// \endcond

bool
IceStorm::TopicManagerInternal::ice_isA(::std::string s, const ::Ice::Current&) const
{
    return ::std::binary_search(iceC_IceStorm_TopicManagerInternal_ids, iceC_IceStorm_TopicManagerInternal_ids + 3, s);
}

::std::vector<::std::string>
IceStorm::TopicManagerInternal::ice_ids(const ::Ice::Current&) const
{
    return ::std::vector<::std::string>(&iceC_IceStorm_TopicManagerInternal_ids[0], &iceC_IceStorm_TopicManagerInternal_ids[3]);
}

::std::string
IceStorm::TopicManagerInternal::ice_id(const ::Ice::Current&) const
{
    return ice_staticId();
}

const ::std::string&
IceStorm::TopicManagerInternal::ice_staticId()
{
    static const ::std::string typeId = "::IceStorm::TopicManagerInternal";
    return typeId;
}

/// \cond INTERNAL
bool
IceStorm::TopicManagerInternal::_iceD_getReplicaNode(::IceInternal::Incoming& inS, const ::Ice::Current& current) const
{
    _iceCheckMode(::Ice::OperationMode::Idempotent, current.mode);
    inS.readEmptyParams();
    ::std::shared_ptr<::IceStormElection::NodePrx> ret = this->getReplicaNode(current);
    auto ostr = inS.startWriteParams();
    ostr->writeAll(ret);
    inS.endWriteParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
IceStorm::TopicManagerInternal::_iceDispatch(::IceInternal::Incoming& in, const ::Ice::Current& current)
{
    ::std::pair<const ::std::string*, const ::std::string*> r = ::std::equal_range(iceC_IceStorm_TopicManagerInternal_ops, iceC_IceStorm_TopicManagerInternal_ops + 8, current.operation);
    if(r.first == r.second)
    {
        throw ::Ice::OperationNotExistException(__FILE__, __LINE__, current.id, current.facet, current.operation);
    }

    switch(r.first - iceC_IceStorm_TopicManagerInternal_ops)
    {
        case 0:
        {
            return _iceD_create(in, current);
        }
        case 1:
        {
            return _iceD_getReplicaNode(in, current);
        }
        case 2:
        {
            return _iceD_ice_id(in, current);
        }
        case 3:
        {
            return _iceD_ice_ids(in, current);
        }
        case 4:
        {
            return _iceD_ice_isA(in, current);
        }
        case 5:
        {
            return _iceD_ice_ping(in, current);
        }
        case 6:
        {
            return _iceD_retrieve(in, current);
        }
        case 7:
        {
            return _iceD_retrieveAll(in, current);
        }
        default:
        {
            assert(false);
            throw ::Ice::OperationNotExistException(__FILE__, __LINE__, current.id, current.facet, current.operation);
        }
    }
}
/// \endcond

/// \cond INTERNAL
void
IceStorm::TopicLinkPrx::_iceI_forward(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>& outAsync, const EventDataSeq& iceP_events, const ::Ice::Context& context)
{
    outAsync->invoke(iceC_IceStorm_TopicLink_forward_name, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        [&](::Ice::OutputStream* ostr)
        {
            ostr->writeAll(iceP_events);
        },
        nullptr);
}
/// \endcond

/// \cond INTERNAL
::std::shared_ptr<::Ice::ObjectPrx>
IceStorm::TopicLinkPrx::_newInstance() const
{
    return ::IceInternal::createProxy<TopicLinkPrx>();
}
/// \endcond

const ::std::string&
IceStorm::TopicLinkPrx::ice_staticId()
{
    return TopicLink::ice_staticId();
}

/// \cond INTERNAL
void
IceStorm::TopicInternalPrx::_iceI_getLinkProxy(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<::std::shared_ptr<::IceStorm::TopicLinkPrx>>>& outAsync, const ::Ice::Context& context)
{
    _checkTwowayOnly(iceC_IceStorm_TopicInternal_getLinkProxy_name);
    outAsync->invoke(iceC_IceStorm_TopicInternal_getLinkProxy_name, ::Ice::OperationMode::Idempotent, ::Ice::FormatType::DefaultFormat, context,
        nullptr,
        nullptr);
}
/// \endcond

/// \cond INTERNAL
void
IceStorm::TopicInternalPrx::_iceI_reap(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>& outAsync, const ::Ice::IdentitySeq& iceP_id, const ::Ice::Context& context)
{
    _checkTwowayOnly(iceC_IceStorm_TopicInternal_reap_name);
    outAsync->invoke(iceC_IceStorm_TopicInternal_reap_name, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        [&](::Ice::OutputStream* ostr)
        {
            ostr->writeAll(iceP_id);
        },
        [](const ::Ice::UserException& ex)
        {
            try
            {
                ex.ice_throw();
            }
            catch(const ReapWouldBlock&)
            {
                throw;
            }
            catch(const ::Ice::UserException&)
            {
            }
        });
}
/// \endcond

/// \cond INTERNAL
::std::shared_ptr<::Ice::ObjectPrx>
IceStorm::TopicInternalPrx::_newInstance() const
{
    return ::IceInternal::createProxy<TopicInternalPrx>();
}
/// \endcond

const ::std::string&
IceStorm::TopicInternalPrx::ice_staticId()
{
    return TopicInternal::ice_staticId();
}

/// \cond INTERNAL
void
IceStorm::TopicManagerInternalPrx::_iceI_getReplicaNode(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<::std::shared_ptr<::IceStormElection::NodePrx>>>& outAsync, const ::Ice::Context& context)
{
    _checkTwowayOnly(iceC_IceStorm_TopicManagerInternal_getReplicaNode_name);
    outAsync->invoke(iceC_IceStorm_TopicManagerInternal_getReplicaNode_name, ::Ice::OperationMode::Idempotent, ::Ice::FormatType::DefaultFormat, context,
        nullptr,
        nullptr);
}
/// \endcond

/// \cond INTERNAL
::std::shared_ptr<::Ice::ObjectPrx>
IceStorm::TopicManagerInternalPrx::_newInstance() const
{
    return ::IceInternal::createProxy<TopicManagerInternalPrx>();
}
/// \endcond

const ::std::string&
IceStorm::TopicManagerInternalPrx::ice_staticId()
{
    return TopicManagerInternal::ice_staticId();
}

namespace Ice
{
}
