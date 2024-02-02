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

#ifndef ICESTORM_API_EXPORTS
#   define ICESTORM_API_EXPORTS
#endif
#define ICE_BUILDING_GENERATED_CODE
#include <IceStorm.h>
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

const ::IceInternal::DefaultUserExceptionFactoryInit<::IceStorm::LinkExists> iceC_IceStorm_LinkExists_init("::IceStorm::LinkExists");

const ::IceInternal::DefaultUserExceptionFactoryInit<::IceStorm::NoSuchLink> iceC_IceStorm_NoSuchLink_init("::IceStorm::NoSuchLink");

const ::IceInternal::DefaultUserExceptionFactoryInit<::IceStorm::AlreadySubscribed> iceC_IceStorm_AlreadySubscribed_init("::IceStorm::AlreadySubscribed");

const ::IceInternal::DefaultUserExceptionFactoryInit<::IceStorm::InvalidSubscriber> iceC_IceStorm_InvalidSubscriber_init("::IceStorm::InvalidSubscriber");

const ::IceInternal::DefaultUserExceptionFactoryInit<::IceStorm::BadQoS> iceC_IceStorm_BadQoS_init("::IceStorm::BadQoS");

const ::std::string iceC_IceStorm_Topic_ids[2] =
{
    "::Ice::Object",
    "::IceStorm::Topic"
};
const ::std::string iceC_IceStorm_Topic_ops[] =
{
    "destroy",
    "getLinkInfoSeq",
    "getName",
    "getNonReplicatedPublisher",
    "getPublisher",
    "getSubscribers",
    "ice_id",
    "ice_ids",
    "ice_isA",
    "ice_ping",
    "link",
    "subscribeAndGetPublisher",
    "unlink",
    "unsubscribe"
};
const ::std::string iceC_IceStorm_Topic_getName_name = "getName";
const ::std::string iceC_IceStorm_Topic_getPublisher_name = "getPublisher";
const ::std::string iceC_IceStorm_Topic_getNonReplicatedPublisher_name = "getNonReplicatedPublisher";
const ::std::string iceC_IceStorm_Topic_subscribeAndGetPublisher_name = "subscribeAndGetPublisher";
const ::std::string iceC_IceStorm_Topic_unsubscribe_name = "unsubscribe";
const ::std::string iceC_IceStorm_Topic_link_name = "link";
const ::std::string iceC_IceStorm_Topic_unlink_name = "unlink";
const ::std::string iceC_IceStorm_Topic_getLinkInfoSeq_name = "getLinkInfoSeq";
const ::std::string iceC_IceStorm_Topic_getSubscribers_name = "getSubscribers";
const ::std::string iceC_IceStorm_Topic_destroy_name = "destroy";

const ::IceInternal::DefaultUserExceptionFactoryInit<::IceStorm::TopicExists> iceC_IceStorm_TopicExists_init("::IceStorm::TopicExists");

const ::IceInternal::DefaultUserExceptionFactoryInit<::IceStorm::NoSuchTopic> iceC_IceStorm_NoSuchTopic_init("::IceStorm::NoSuchTopic");

const ::std::string iceC_IceStorm_TopicManager_ids[2] =
{
    "::Ice::Object",
    "::IceStorm::TopicManager"
};
const ::std::string iceC_IceStorm_TopicManager_ops[] =
{
    "create",
    "ice_id",
    "ice_ids",
    "ice_isA",
    "ice_ping",
    "retrieve",
    "retrieveAll"
};
const ::std::string iceC_IceStorm_TopicManager_create_name = "create";
const ::std::string iceC_IceStorm_TopicManager_retrieve_name = "retrieve";
const ::std::string iceC_IceStorm_TopicManager_retrieveAll_name = "retrieveAll";

const ::std::string iceC_IceStorm_Finder_ids[2] =
{
    "::Ice::Object",
    "::IceStorm::Finder"
};
const ::std::string iceC_IceStorm_Finder_ops[] =
{
    "getTopicManager",
    "ice_id",
    "ice_ids",
    "ice_isA",
    "ice_ping"
};
const ::std::string iceC_IceStorm_Finder_getTopicManager_name = "getTopicManager";

}

IceStorm::LinkExists::~LinkExists()
{
}

const ::std::string&
IceStorm::LinkExists::ice_staticId()
{
    static const ::std::string typeId = "::IceStorm::LinkExists";
    return typeId;
}

IceStorm::NoSuchLink::~NoSuchLink()
{
}

const ::std::string&
IceStorm::NoSuchLink::ice_staticId()
{
    static const ::std::string typeId = "::IceStorm::NoSuchLink";
    return typeId;
}

IceStorm::AlreadySubscribed::~AlreadySubscribed()
{
}

const ::std::string&
IceStorm::AlreadySubscribed::ice_staticId()
{
    static const ::std::string typeId = "::IceStorm::AlreadySubscribed";
    return typeId;
}

IceStorm::InvalidSubscriber::~InvalidSubscriber()
{
}

const ::std::string&
IceStorm::InvalidSubscriber::ice_staticId()
{
    static const ::std::string typeId = "::IceStorm::InvalidSubscriber";
    return typeId;
}

IceStorm::BadQoS::~BadQoS()
{
}

const ::std::string&
IceStorm::BadQoS::ice_staticId()
{
    static const ::std::string typeId = "::IceStorm::BadQoS";
    return typeId;
}

IceStorm::TopicExists::~TopicExists()
{
}

const ::std::string&
IceStorm::TopicExists::ice_staticId()
{
    static const ::std::string typeId = "::IceStorm::TopicExists";
    return typeId;
}

IceStorm::NoSuchTopic::~NoSuchTopic()
{
}

const ::std::string&
IceStorm::NoSuchTopic::ice_staticId()
{
    static const ::std::string typeId = "::IceStorm::NoSuchTopic";
    return typeId;
}

bool
IceStorm::Topic::ice_isA(::std::string s, const ::Ice::Current&) const
{
    return ::std::binary_search(iceC_IceStorm_Topic_ids, iceC_IceStorm_Topic_ids + 2, s);
}

::std::vector<::std::string>
IceStorm::Topic::ice_ids(const ::Ice::Current&) const
{
    return ::std::vector<::std::string>(&iceC_IceStorm_Topic_ids[0], &iceC_IceStorm_Topic_ids[2]);
}

::std::string
IceStorm::Topic::ice_id(const ::Ice::Current&) const
{
    return ice_staticId();
}

const ::std::string&
IceStorm::Topic::ice_staticId()
{
    static const ::std::string typeId = "::IceStorm::Topic";
    return typeId;
}

/// \cond INTERNAL
bool
IceStorm::Topic::_iceD_getName(::IceInternal::Incoming& inS, const ::Ice::Current& current) const
{
    _iceCheckMode(::Ice::OperationMode::Idempotent, current.mode);
    inS.readEmptyParams();
    ::std::string ret = this->getName(current);
    auto ostr = inS.startWriteParams();
    ostr->writeAll(ret);
    inS.endWriteParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
IceStorm::Topic::_iceD_getPublisher(::IceInternal::Incoming& inS, const ::Ice::Current& current) const
{
    _iceCheckMode(::Ice::OperationMode::Idempotent, current.mode);
    inS.readEmptyParams();
    ::std::shared_ptr<::Ice::ObjectPrx> ret = this->getPublisher(current);
    auto ostr = inS.startWriteParams();
    ostr->writeAll(ret);
    inS.endWriteParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
IceStorm::Topic::_iceD_getNonReplicatedPublisher(::IceInternal::Incoming& inS, const ::Ice::Current& current) const
{
    _iceCheckMode(::Ice::OperationMode::Idempotent, current.mode);
    inS.readEmptyParams();
    ::std::shared_ptr<::Ice::ObjectPrx> ret = this->getNonReplicatedPublisher(current);
    auto ostr = inS.startWriteParams();
    ostr->writeAll(ret);
    inS.endWriteParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
IceStorm::Topic::_iceD_subscribeAndGetPublisher(::IceInternal::Incoming& inS, const ::Ice::Current& current)
{
    _iceCheckMode(::Ice::OperationMode::Normal, current.mode);
    auto istr = inS.startReadParams();
    QoS iceP_theQoS;
    ::std::shared_ptr<::Ice::ObjectPrx> iceP_subscriber;
    istr->readAll(iceP_theQoS, iceP_subscriber);
    inS.endReadParams();
    ::std::shared_ptr<::Ice::ObjectPrx> ret = this->subscribeAndGetPublisher(::std::move(iceP_theQoS), ::std::move(iceP_subscriber), current);
    auto ostr = inS.startWriteParams();
    ostr->writeAll(ret);
    inS.endWriteParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
IceStorm::Topic::_iceD_unsubscribe(::IceInternal::Incoming& inS, const ::Ice::Current& current)
{
    _iceCheckMode(::Ice::OperationMode::Idempotent, current.mode);
    auto istr = inS.startReadParams();
    ::std::shared_ptr<::Ice::ObjectPrx> iceP_subscriber;
    istr->readAll(iceP_subscriber);
    inS.endReadParams();
    this->unsubscribe(::std::move(iceP_subscriber), current);
    inS.writeEmptyParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
IceStorm::Topic::_iceD_link(::IceInternal::Incoming& inS, const ::Ice::Current& current)
{
    _iceCheckMode(::Ice::OperationMode::Normal, current.mode);
    auto istr = inS.startReadParams();
    ::std::shared_ptr<TopicPrx> iceP_linkTo;
    int iceP_cost;
    istr->readAll(iceP_linkTo, iceP_cost);
    inS.endReadParams();
    this->link(::std::move(iceP_linkTo), iceP_cost, current);
    inS.writeEmptyParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
IceStorm::Topic::_iceD_unlink(::IceInternal::Incoming& inS, const ::Ice::Current& current)
{
    _iceCheckMode(::Ice::OperationMode::Normal, current.mode);
    auto istr = inS.startReadParams();
    ::std::shared_ptr<TopicPrx> iceP_linkTo;
    istr->readAll(iceP_linkTo);
    inS.endReadParams();
    this->unlink(::std::move(iceP_linkTo), current);
    inS.writeEmptyParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
IceStorm::Topic::_iceD_getLinkInfoSeq(::IceInternal::Incoming& inS, const ::Ice::Current& current) const
{
    _iceCheckMode(::Ice::OperationMode::Idempotent, current.mode);
    inS.readEmptyParams();
    LinkInfoSeq ret = this->getLinkInfoSeq(current);
    auto ostr = inS.startWriteParams();
    ostr->writeAll(ret);
    inS.endWriteParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
IceStorm::Topic::_iceD_getSubscribers(::IceInternal::Incoming& inS, const ::Ice::Current& current) const
{
    _iceCheckMode(::Ice::OperationMode::Normal, current.mode);
    inS.readEmptyParams();
    ::Ice::IdentitySeq ret = this->getSubscribers(current);
    auto ostr = inS.startWriteParams();
    ostr->writeAll(ret);
    inS.endWriteParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
IceStorm::Topic::_iceD_destroy(::IceInternal::Incoming& inS, const ::Ice::Current& current)
{
    _iceCheckMode(::Ice::OperationMode::Normal, current.mode);
    inS.readEmptyParams();
    this->destroy(current);
    inS.writeEmptyParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
IceStorm::Topic::_iceDispatch(::IceInternal::Incoming& in, const ::Ice::Current& current)
{
    ::std::pair<const ::std::string*, const ::std::string*> r = ::std::equal_range(iceC_IceStorm_Topic_ops, iceC_IceStorm_Topic_ops + 14, current.operation);
    if(r.first == r.second)
    {
        throw ::Ice::OperationNotExistException(__FILE__, __LINE__, current.id, current.facet, current.operation);
    }

    switch(r.first - iceC_IceStorm_Topic_ops)
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
            return _iceD_getName(in, current);
        }
        case 3:
        {
            return _iceD_getNonReplicatedPublisher(in, current);
        }
        case 4:
        {
            return _iceD_getPublisher(in, current);
        }
        case 5:
        {
            return _iceD_getSubscribers(in, current);
        }
        case 6:
        {
            return _iceD_ice_id(in, current);
        }
        case 7:
        {
            return _iceD_ice_ids(in, current);
        }
        case 8:
        {
            return _iceD_ice_isA(in, current);
        }
        case 9:
        {
            return _iceD_ice_ping(in, current);
        }
        case 10:
        {
            return _iceD_link(in, current);
        }
        case 11:
        {
            return _iceD_subscribeAndGetPublisher(in, current);
        }
        case 12:
        {
            return _iceD_unlink(in, current);
        }
        case 13:
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
IceStorm::TopicManager::ice_isA(::std::string s, const ::Ice::Current&) const
{
    return ::std::binary_search(iceC_IceStorm_TopicManager_ids, iceC_IceStorm_TopicManager_ids + 2, s);
}

::std::vector<::std::string>
IceStorm::TopicManager::ice_ids(const ::Ice::Current&) const
{
    return ::std::vector<::std::string>(&iceC_IceStorm_TopicManager_ids[0], &iceC_IceStorm_TopicManager_ids[2]);
}

::std::string
IceStorm::TopicManager::ice_id(const ::Ice::Current&) const
{
    return ice_staticId();
}

const ::std::string&
IceStorm::TopicManager::ice_staticId()
{
    static const ::std::string typeId = "::IceStorm::TopicManager";
    return typeId;
}

/// \cond INTERNAL
bool
IceStorm::TopicManager::_iceD_create(::IceInternal::Incoming& inS, const ::Ice::Current& current)
{
    _iceCheckMode(::Ice::OperationMode::Normal, current.mode);
    auto istr = inS.startReadParams();
    ::std::string iceP_name;
    istr->readAll(iceP_name);
    inS.endReadParams();
    ::std::shared_ptr<TopicPrx> ret = this->create(::std::move(iceP_name), current);
    auto ostr = inS.startWriteParams();
    ostr->writeAll(ret);
    inS.endWriteParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
IceStorm::TopicManager::_iceD_retrieve(::IceInternal::Incoming& inS, const ::Ice::Current& current)
{
    _iceCheckMode(::Ice::OperationMode::Idempotent, current.mode);
    auto istr = inS.startReadParams();
    ::std::string iceP_name;
    istr->readAll(iceP_name);
    inS.endReadParams();
    ::std::shared_ptr<TopicPrx> ret = this->retrieve(::std::move(iceP_name), current);
    auto ostr = inS.startWriteParams();
    ostr->writeAll(ret);
    inS.endWriteParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
IceStorm::TopicManager::_iceD_retrieveAll(::IceInternal::Incoming& inS, const ::Ice::Current& current)
{
    _iceCheckMode(::Ice::OperationMode::Idempotent, current.mode);
    inS.readEmptyParams();
    TopicDict ret = this->retrieveAll(current);
    auto ostr = inS.startWriteParams();
    ostr->writeAll(ret);
    inS.endWriteParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
IceStorm::TopicManager::_iceDispatch(::IceInternal::Incoming& in, const ::Ice::Current& current)
{
    ::std::pair<const ::std::string*, const ::std::string*> r = ::std::equal_range(iceC_IceStorm_TopicManager_ops, iceC_IceStorm_TopicManager_ops + 7, current.operation);
    if(r.first == r.second)
    {
        throw ::Ice::OperationNotExistException(__FILE__, __LINE__, current.id, current.facet, current.operation);
    }

    switch(r.first - iceC_IceStorm_TopicManager_ops)
    {
        case 0:
        {
            return _iceD_create(in, current);
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
        case 5:
        {
            return _iceD_retrieve(in, current);
        }
        case 6:
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

bool
IceStorm::Finder::ice_isA(::std::string s, const ::Ice::Current&) const
{
    return ::std::binary_search(iceC_IceStorm_Finder_ids, iceC_IceStorm_Finder_ids + 2, s);
}

::std::vector<::std::string>
IceStorm::Finder::ice_ids(const ::Ice::Current&) const
{
    return ::std::vector<::std::string>(&iceC_IceStorm_Finder_ids[0], &iceC_IceStorm_Finder_ids[2]);
}

::std::string
IceStorm::Finder::ice_id(const ::Ice::Current&) const
{
    return ice_staticId();
}

const ::std::string&
IceStorm::Finder::ice_staticId()
{
    static const ::std::string typeId = "::IceStorm::Finder";
    return typeId;
}

/// \cond INTERNAL
bool
IceStorm::Finder::_iceD_getTopicManager(::IceInternal::Incoming& inS, const ::Ice::Current& current)
{
    _iceCheckMode(::Ice::OperationMode::Normal, current.mode);
    inS.readEmptyParams();
    ::std::shared_ptr<TopicManagerPrx> ret = this->getTopicManager(current);
    auto ostr = inS.startWriteParams();
    ostr->writeAll(ret);
    inS.endWriteParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
IceStorm::Finder::_iceDispatch(::IceInternal::Incoming& in, const ::Ice::Current& current)
{
    ::std::pair<const ::std::string*, const ::std::string*> r = ::std::equal_range(iceC_IceStorm_Finder_ops, iceC_IceStorm_Finder_ops + 5, current.operation);
    if(r.first == r.second)
    {
        throw ::Ice::OperationNotExistException(__FILE__, __LINE__, current.id, current.facet, current.operation);
    }

    switch(r.first - iceC_IceStorm_Finder_ops)
    {
        case 0:
        {
            return _iceD_getTopicManager(in, current);
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

/// \cond INTERNAL
void
IceStorm::TopicPrx::_iceI_getName(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<::std::string>>& outAsync, const ::Ice::Context& context)
{
    _checkTwowayOnly(iceC_IceStorm_Topic_getName_name);
    outAsync->invoke(iceC_IceStorm_Topic_getName_name, ::Ice::OperationMode::Nonmutating, ::Ice::FormatType::DefaultFormat, context,
        nullptr,
        nullptr);
}
/// \endcond

/// \cond INTERNAL
void
IceStorm::TopicPrx::_iceI_getPublisher(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<::std::shared_ptr<::Ice::ObjectPrx>>>& outAsync, const ::Ice::Context& context)
{
    _checkTwowayOnly(iceC_IceStorm_Topic_getPublisher_name);
    outAsync->invoke(iceC_IceStorm_Topic_getPublisher_name, ::Ice::OperationMode::Nonmutating, ::Ice::FormatType::DefaultFormat, context,
        nullptr,
        nullptr);
}
/// \endcond

/// \cond INTERNAL
void
IceStorm::TopicPrx::_iceI_getNonReplicatedPublisher(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<::std::shared_ptr<::Ice::ObjectPrx>>>& outAsync, const ::Ice::Context& context)
{
    _checkTwowayOnly(iceC_IceStorm_Topic_getNonReplicatedPublisher_name);
    outAsync->invoke(iceC_IceStorm_Topic_getNonReplicatedPublisher_name, ::Ice::OperationMode::Nonmutating, ::Ice::FormatType::DefaultFormat, context,
        nullptr,
        nullptr);
}
/// \endcond

/// \cond INTERNAL
void
IceStorm::TopicPrx::_iceI_subscribeAndGetPublisher(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<::std::shared_ptr<::Ice::ObjectPrx>>>& outAsync, const QoS& iceP_theQoS, const ::std::shared_ptr<::Ice::ObjectPrx>& iceP_subscriber, const ::Ice::Context& context)
{
    _checkTwowayOnly(iceC_IceStorm_Topic_subscribeAndGetPublisher_name);
    outAsync->invoke(iceC_IceStorm_Topic_subscribeAndGetPublisher_name, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        [&](::Ice::OutputStream* ostr)
        {
            ostr->writeAll(iceP_theQoS, iceP_subscriber);
        },
        [](const ::Ice::UserException& ex)
        {
            try
            {
                ex.ice_throw();
            }
            catch(const AlreadySubscribed&)
            {
                throw;
            }
            catch(const InvalidSubscriber&)
            {
                throw;
            }
            catch(const BadQoS&)
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
void
IceStorm::TopicPrx::_iceI_unsubscribe(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>& outAsync, const ::std::shared_ptr<::Ice::ObjectPrx>& iceP_subscriber, const ::Ice::Context& context)
{
    outAsync->invoke(iceC_IceStorm_Topic_unsubscribe_name, ::Ice::OperationMode::Idempotent, ::Ice::FormatType::DefaultFormat, context,
        [&](::Ice::OutputStream* ostr)
        {
            ostr->writeAll(iceP_subscriber);
        },
        nullptr);
}
/// \endcond

/// \cond INTERNAL
void
IceStorm::TopicPrx::_iceI_link(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>& outAsync, const ::std::shared_ptr<TopicPrx>& iceP_linkTo, int iceP_cost, const ::Ice::Context& context)
{
    _checkTwowayOnly(iceC_IceStorm_Topic_link_name);
    outAsync->invoke(iceC_IceStorm_Topic_link_name, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        [&](::Ice::OutputStream* ostr)
        {
            ostr->writeAll(iceP_linkTo, iceP_cost);
        },
        [](const ::Ice::UserException& ex)
        {
            try
            {
                ex.ice_throw();
            }
            catch(const LinkExists&)
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
void
IceStorm::TopicPrx::_iceI_unlink(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>& outAsync, const ::std::shared_ptr<TopicPrx>& iceP_linkTo, const ::Ice::Context& context)
{
    _checkTwowayOnly(iceC_IceStorm_Topic_unlink_name);
    outAsync->invoke(iceC_IceStorm_Topic_unlink_name, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        [&](::Ice::OutputStream* ostr)
        {
            ostr->writeAll(iceP_linkTo);
        },
        [](const ::Ice::UserException& ex)
        {
            try
            {
                ex.ice_throw();
            }
            catch(const NoSuchLink&)
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
void
IceStorm::TopicPrx::_iceI_getLinkInfoSeq(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<::IceStorm::LinkInfoSeq>>& outAsync, const ::Ice::Context& context)
{
    _checkTwowayOnly(iceC_IceStorm_Topic_getLinkInfoSeq_name);
    outAsync->invoke(iceC_IceStorm_Topic_getLinkInfoSeq_name, ::Ice::OperationMode::Nonmutating, ::Ice::FormatType::DefaultFormat, context,
        nullptr,
        nullptr);
}
/// \endcond

/// \cond INTERNAL
void
IceStorm::TopicPrx::_iceI_getSubscribers(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<::Ice::IdentitySeq>>& outAsync, const ::Ice::Context& context)
{
    _checkTwowayOnly(iceC_IceStorm_Topic_getSubscribers_name);
    outAsync->invoke(iceC_IceStorm_Topic_getSubscribers_name, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        nullptr,
        nullptr);
}
/// \endcond

/// \cond INTERNAL
void
IceStorm::TopicPrx::_iceI_destroy(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>& outAsync, const ::Ice::Context& context)
{
    outAsync->invoke(iceC_IceStorm_Topic_destroy_name, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        nullptr,
        nullptr);
}
/// \endcond

/// \cond INTERNAL
::std::shared_ptr<::Ice::ObjectPrx>
IceStorm::TopicPrx::_newInstance() const
{
    return ::IceInternal::createProxy<TopicPrx>();
}
/// \endcond

const ::std::string&
IceStorm::TopicPrx::ice_staticId()
{
    return Topic::ice_staticId();
}

/// \cond INTERNAL
void
IceStorm::TopicManagerPrx::_iceI_create(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<::std::shared_ptr<::IceStorm::TopicPrx>>>& outAsync, const ::std::string& iceP_name, const ::Ice::Context& context)
{
    _checkTwowayOnly(iceC_IceStorm_TopicManager_create_name);
    outAsync->invoke(iceC_IceStorm_TopicManager_create_name, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        [&](::Ice::OutputStream* ostr)
        {
            ostr->writeAll(iceP_name);
        },
        [](const ::Ice::UserException& ex)
        {
            try
            {
                ex.ice_throw();
            }
            catch(const TopicExists&)
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
void
IceStorm::TopicManagerPrx::_iceI_retrieve(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<::std::shared_ptr<::IceStorm::TopicPrx>>>& outAsync, const ::std::string& iceP_name, const ::Ice::Context& context)
{
    _checkTwowayOnly(iceC_IceStorm_TopicManager_retrieve_name);
    outAsync->invoke(iceC_IceStorm_TopicManager_retrieve_name, ::Ice::OperationMode::Idempotent, ::Ice::FormatType::DefaultFormat, context,
        [&](::Ice::OutputStream* ostr)
        {
            ostr->writeAll(iceP_name);
        },
        [](const ::Ice::UserException& ex)
        {
            try
            {
                ex.ice_throw();
            }
            catch(const NoSuchTopic&)
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
void
IceStorm::TopicManagerPrx::_iceI_retrieveAll(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<::IceStorm::TopicDict>>& outAsync, const ::Ice::Context& context)
{
    _checkTwowayOnly(iceC_IceStorm_TopicManager_retrieveAll_name);
    outAsync->invoke(iceC_IceStorm_TopicManager_retrieveAll_name, ::Ice::OperationMode::Idempotent, ::Ice::FormatType::DefaultFormat, context,
        nullptr,
        nullptr);
}
/// \endcond

/// \cond INTERNAL
::std::shared_ptr<::Ice::ObjectPrx>
IceStorm::TopicManagerPrx::_newInstance() const
{
    return ::IceInternal::createProxy<TopicManagerPrx>();
}
/// \endcond

const ::std::string&
IceStorm::TopicManagerPrx::ice_staticId()
{
    return TopicManager::ice_staticId();
}

/// \cond INTERNAL
void
IceStorm::FinderPrx::_iceI_getTopicManager(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<::std::shared_ptr<::IceStorm::TopicManagerPrx>>>& outAsync, const ::Ice::Context& context)
{
    _checkTwowayOnly(iceC_IceStorm_Finder_getTopicManager_name);
    outAsync->invoke(iceC_IceStorm_Finder_getTopicManager_name, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        nullptr,
        nullptr);
}
/// \endcond

/// \cond INTERNAL
::std::shared_ptr<::Ice::ObjectPrx>
IceStorm::FinderPrx::_newInstance() const
{
    return ::IceInternal::createProxy<FinderPrx>();
}
/// \endcond

const ::std::string&
IceStorm::FinderPrx::ice_staticId()
{
    return Finder::ice_staticId();
}

namespace Ice
{
}
