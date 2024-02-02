//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `Router.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

#ifndef ICE_API_EXPORTS
#   define ICE_API_EXPORTS
#endif
#define ICE_BUILDING_GENERATED_CODE
#include <Router.h>
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

const ::std::string iceC_Ice_Router_ids[2] =
{
    "::Ice::Object",
    "::Ice::Router"
};
const ::std::string iceC_Ice_Router_ops[] =
{
    "addProxies",
    "getClientProxy",
    "getServerProxy",
    "ice_id",
    "ice_ids",
    "ice_isA",
    "ice_ping"
};
const ::std::string iceC_Ice_Router_getClientProxy_name = "getClientProxy";
const ::std::string iceC_Ice_Router_getServerProxy_name = "getServerProxy";
const ::std::string iceC_Ice_Router_addProxies_name = "addProxies";

const ::std::string iceC_Ice_RouterFinder_ids[2] =
{
    "::Ice::Object",
    "::Ice::RouterFinder"
};
const ::std::string iceC_Ice_RouterFinder_ops[] =
{
    "getRouter",
    "ice_id",
    "ice_ids",
    "ice_isA",
    "ice_ping"
};
const ::std::string iceC_Ice_RouterFinder_getRouter_name = "getRouter";

}

bool
Ice::Router::ice_isA(::std::string s, const Current&) const
{
    return ::std::binary_search(iceC_Ice_Router_ids, iceC_Ice_Router_ids + 2, s);
}

::std::vector<::std::string>
Ice::Router::ice_ids(const Current&) const
{
    return ::std::vector<::std::string>(&iceC_Ice_Router_ids[0], &iceC_Ice_Router_ids[2]);
}

::std::string
Ice::Router::ice_id(const Current&) const
{
    return ice_staticId();
}

const ::std::string&
Ice::Router::ice_staticId()
{
    static const ::std::string typeId = "::Ice::Router";
    return typeId;
}

/// \cond INTERNAL
bool
Ice::Router::_iceD_getClientProxy(::IceInternal::Incoming& inS, const Current& current) const
{
    _iceCheckMode(::Ice::OperationMode::Idempotent, current.mode);
    inS.readEmptyParams();
    std::optional<bool> iceP_hasRoutingTable;
    ::std::shared_ptr<ObjectPrx> ret = this->getClientProxy(iceP_hasRoutingTable, current);
    auto ostr = inS.startWriteParams();
    ostr->writeAll(ret);
    ostr->writeAll({1}, iceP_hasRoutingTable);
    inS.endWriteParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
Ice::Router::_iceD_getServerProxy(::IceInternal::Incoming& inS, const Current& current) const
{
    _iceCheckMode(::Ice::OperationMode::Idempotent, current.mode);
    inS.readEmptyParams();
    ::std::shared_ptr<ObjectPrx> ret = this->getServerProxy(current);
    auto ostr = inS.startWriteParams();
    ostr->writeAll(ret);
    inS.endWriteParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
Ice::Router::_iceD_addProxies(::IceInternal::Incoming& inS, const Current& current)
{
    _iceCheckMode(::Ice::OperationMode::Idempotent, current.mode);
    auto istr = inS.startReadParams();
    ObjectProxySeq iceP_proxies;
    istr->readAll(iceP_proxies);
    inS.endReadParams();
    ObjectProxySeq ret = this->addProxies(::std::move(iceP_proxies), current);
    auto ostr = inS.startWriteParams();
    ostr->writeAll(ret);
    inS.endWriteParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
Ice::Router::_iceDispatch(::IceInternal::Incoming& in, const Current& current)
{
    ::std::pair<const ::std::string*, const ::std::string*> r = ::std::equal_range(iceC_Ice_Router_ops, iceC_Ice_Router_ops + 7, current.operation);
    if(r.first == r.second)
    {
        throw OperationNotExistException(__FILE__, __LINE__, current.id, current.facet, current.operation);
    }

    switch(r.first - iceC_Ice_Router_ops)
    {
        case 0:
        {
            return _iceD_addProxies(in, current);
        }
        case 1:
        {
            return _iceD_getClientProxy(in, current);
        }
        case 2:
        {
            return _iceD_getServerProxy(in, current);
        }
        case 3:
        {
            return _iceD_ice_id(in, current);
        }
        case 4:
        {
            return _iceD_ice_ids(in, current);
        }
        case 5:
        {
            return _iceD_ice_isA(in, current);
        }
        case 6:
        {
            return _iceD_ice_ping(in, current);
        }
        default:
        {
            assert(false);
            throw OperationNotExistException(__FILE__, __LINE__, current.id, current.facet, current.operation);
        }
    }
}
/// \endcond

bool
Ice::RouterFinder::ice_isA(::std::string s, const Current&) const
{
    return ::std::binary_search(iceC_Ice_RouterFinder_ids, iceC_Ice_RouterFinder_ids + 2, s);
}

::std::vector<::std::string>
Ice::RouterFinder::ice_ids(const Current&) const
{
    return ::std::vector<::std::string>(&iceC_Ice_RouterFinder_ids[0], &iceC_Ice_RouterFinder_ids[2]);
}

::std::string
Ice::RouterFinder::ice_id(const Current&) const
{
    return ice_staticId();
}

const ::std::string&
Ice::RouterFinder::ice_staticId()
{
    static const ::std::string typeId = "::Ice::RouterFinder";
    return typeId;
}

/// \cond INTERNAL
bool
Ice::RouterFinder::_iceD_getRouter(::IceInternal::Incoming& inS, const Current& current)
{
    _iceCheckMode(::Ice::OperationMode::Normal, current.mode);
    inS.readEmptyParams();
    ::std::shared_ptr<RouterPrx> ret = this->getRouter(current);
    auto ostr = inS.startWriteParams();
    ostr->writeAll(ret);
    inS.endWriteParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
Ice::RouterFinder::_iceDispatch(::IceInternal::Incoming& in, const Current& current)
{
    ::std::pair<const ::std::string*, const ::std::string*> r = ::std::equal_range(iceC_Ice_RouterFinder_ops, iceC_Ice_RouterFinder_ops + 5, current.operation);
    if(r.first == r.second)
    {
        throw OperationNotExistException(__FILE__, __LINE__, current.id, current.facet, current.operation);
    }

    switch(r.first - iceC_Ice_RouterFinder_ops)
    {
        case 0:
        {
            return _iceD_getRouter(in, current);
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
            throw OperationNotExistException(__FILE__, __LINE__, current.id, current.facet, current.operation);
        }
    }
}
/// \endcond

/// \cond INTERNAL
void
Ice::RouterPrx::_iceI_getClientProxy(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<Router::GetClientProxyResult>>& outAsync, const Context& context)
{
    _checkTwowayOnly(iceC_Ice_Router_getClientProxy_name);
    outAsync->invoke(iceC_Ice_Router_getClientProxy_name, ::Ice::OperationMode::Nonmutating, ::Ice::FormatType::DefaultFormat, context,
        nullptr,
        nullptr,
        [](InputStream* istr)
        {
            Router::GetClientProxyResult v;
            istr->readAll(v.returnValue);
            istr->readAll({1}, v.hasRoutingTable);
            return v;
        });
}
/// \endcond

/// \cond INTERNAL
void
Ice::RouterPrx::_iceI_getServerProxy(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<::std::shared_ptr<::Ice::ObjectPrx>>>& outAsync, const Context& context)
{
    _checkTwowayOnly(iceC_Ice_Router_getServerProxy_name);
    outAsync->invoke(iceC_Ice_Router_getServerProxy_name, ::Ice::OperationMode::Nonmutating, ::Ice::FormatType::DefaultFormat, context,
        nullptr,
        nullptr);
}
/// \endcond

/// \cond INTERNAL
void
Ice::RouterPrx::_iceI_addProxies(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<::Ice::ObjectProxySeq>>& outAsync, const ObjectProxySeq& iceP_proxies, const Context& context)
{
    _checkTwowayOnly(iceC_Ice_Router_addProxies_name);
    outAsync->invoke(iceC_Ice_Router_addProxies_name, ::Ice::OperationMode::Idempotent, ::Ice::FormatType::DefaultFormat, context,
        [&](OutputStream* ostr)
        {
            ostr->writeAll(iceP_proxies);
        },
        nullptr);
}
/// \endcond

/// \cond INTERNAL
::std::shared_ptr<::Ice::ObjectPrx>
Ice::RouterPrx::_newInstance() const
{
    return ::IceInternal::createProxy<RouterPrx>();
}
/// \endcond

const ::std::string&
Ice::RouterPrx::ice_staticId()
{
    return Router::ice_staticId();
}

/// \cond INTERNAL
void
Ice::RouterFinderPrx::_iceI_getRouter(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<::std::shared_ptr<::Ice::RouterPrx>>>& outAsync, const Context& context)
{
    _checkTwowayOnly(iceC_Ice_RouterFinder_getRouter_name);
    outAsync->invoke(iceC_Ice_RouterFinder_getRouter_name, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        nullptr,
        nullptr);
}
/// \endcond

/// \cond INTERNAL
::std::shared_ptr<::Ice::ObjectPrx>
Ice::RouterFinderPrx::_newInstance() const
{
    return ::IceInternal::createProxy<RouterFinderPrx>();
}
/// \endcond

const ::std::string&
Ice::RouterFinderPrx::ice_staticId()
{
    return RouterFinder::ice_staticId();
}
