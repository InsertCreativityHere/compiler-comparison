//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.7.9
//
// <auto-generated>
//
// Generated from file `IceLocatorDiscovery.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

#include <IceLocatorDiscovery.h>
#include <IceUtil/PushDisableWarnings.h>
#include <Ice/LocalException.h>
#include <Ice/ValueFactory.h>
#include <Ice/OutgoingAsync.h>
#include <Ice/InputStream.h>
#include <Ice/OutputStream.h>
#include <Ice/LocalException.h>
#include <IceUtil/PopDisableWarnings.h>

#if defined(_MSC_VER)
#   pragma warning(disable:4458) // declaration of ... hides class member
#elif defined(__clang__)
#   pragma clang diagnostic ignored "-Wshadow"
#elif defined(__GNUC__)
#   pragma GCC diagnostic ignored "-Wshadow"
#endif

#ifndef ICE_IGNORE_VERSION
#   if ICE_INT_VERSION / 100 != 307
#       error Ice version mismatch!
#   endif
#   if ICE_INT_VERSION % 100 >= 50
#       error Beta header file detected
#   endif
#   if ICE_INT_VERSION % 100 < 9
#       error Ice patch level mismatch!
#   endif
#endif

#ifdef ICE_CPP11_MAPPING // C++11 mapping

namespace
{

const ::std::string iceC_IceLocatorDiscovery_LookupReply_ids[2] =
{
    "::Ice::Object",
    "::IceLocatorDiscovery::LookupReply"
};
const ::std::string iceC_IceLocatorDiscovery_LookupReply_ops[] =
{
    "foundLocator",
    "ice_id",
    "ice_ids",
    "ice_isA",
    "ice_ping"
};
const ::std::string iceC_IceLocatorDiscovery_LookupReply_foundLocator_name = "foundLocator";

const ::std::string iceC_IceLocatorDiscovery_Lookup_ids[2] =
{
    "::Ice::Object",
    "::IceLocatorDiscovery::Lookup"
};
const ::std::string iceC_IceLocatorDiscovery_Lookup_ops[] =
{
    "findLocator",
    "ice_id",
    "ice_ids",
    "ice_isA",
    "ice_ping"
};
const ::std::string iceC_IceLocatorDiscovery_Lookup_findLocator_name = "findLocator";

}

bool
IceLocatorDiscovery::LookupReply::ice_isA(::std::string s, const ::Ice::Current&) const
{
    return ::std::binary_search(iceC_IceLocatorDiscovery_LookupReply_ids, iceC_IceLocatorDiscovery_LookupReply_ids + 2, s);
}

::std::vector<::std::string>
IceLocatorDiscovery::LookupReply::ice_ids(const ::Ice::Current&) const
{
    return ::std::vector<::std::string>(&iceC_IceLocatorDiscovery_LookupReply_ids[0], &iceC_IceLocatorDiscovery_LookupReply_ids[2]);
}

::std::string
IceLocatorDiscovery::LookupReply::ice_id(const ::Ice::Current&) const
{
    return ice_staticId();
}

const ::std::string&
IceLocatorDiscovery::LookupReply::ice_staticId()
{
    static const ::std::string typeId = "::IceLocatorDiscovery::LookupReply";
    return typeId;
}

/// \cond INTERNAL
bool
IceLocatorDiscovery::LookupReply::_iceD_foundLocator(::IceInternal::Incoming& inS, const ::Ice::Current& current)
{
    _iceCheckMode(::Ice::OperationMode::Normal, current.mode);
    auto istr = inS.startReadParams();
    ::std::shared_ptr<::Ice::LocatorPrx> iceP_prx;
    istr->readAll(iceP_prx);
    inS.endReadParams();
    this->foundLocator(::std::move(iceP_prx), current);
    inS.writeEmptyParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
IceLocatorDiscovery::LookupReply::_iceDispatch(::IceInternal::Incoming& in, const ::Ice::Current& current)
{
    ::std::pair<const ::std::string*, const ::std::string*> r = ::std::equal_range(iceC_IceLocatorDiscovery_LookupReply_ops, iceC_IceLocatorDiscovery_LookupReply_ops + 5, current.operation);
    if(r.first == r.second)
    {
        throw ::Ice::OperationNotExistException(__FILE__, __LINE__, current.id, current.facet, current.operation);
    }

    switch(r.first - iceC_IceLocatorDiscovery_LookupReply_ops)
    {
        case 0:
        {
            return _iceD_foundLocator(in, current);
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
IceLocatorDiscovery::Lookup::ice_isA(::std::string s, const ::Ice::Current&) const
{
    return ::std::binary_search(iceC_IceLocatorDiscovery_Lookup_ids, iceC_IceLocatorDiscovery_Lookup_ids + 2, s);
}

::std::vector<::std::string>
IceLocatorDiscovery::Lookup::ice_ids(const ::Ice::Current&) const
{
    return ::std::vector<::std::string>(&iceC_IceLocatorDiscovery_Lookup_ids[0], &iceC_IceLocatorDiscovery_Lookup_ids[2]);
}

::std::string
IceLocatorDiscovery::Lookup::ice_id(const ::Ice::Current&) const
{
    return ice_staticId();
}

const ::std::string&
IceLocatorDiscovery::Lookup::ice_staticId()
{
    static const ::std::string typeId = "::IceLocatorDiscovery::Lookup";
    return typeId;
}

/// \cond INTERNAL
bool
IceLocatorDiscovery::Lookup::_iceD_findLocator(::IceInternal::Incoming& inS, const ::Ice::Current& current)
{
    _iceCheckMode(::Ice::OperationMode::Idempotent, current.mode);
    auto istr = inS.startReadParams();
    ::std::string iceP_instanceName;
    ::std::shared_ptr<LookupReplyPrx> iceP_reply;
    istr->readAll(iceP_instanceName, iceP_reply);
    inS.endReadParams();
    this->findLocator(::std::move(iceP_instanceName), ::std::move(iceP_reply), current);
    inS.writeEmptyParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
IceLocatorDiscovery::Lookup::_iceDispatch(::IceInternal::Incoming& in, const ::Ice::Current& current)
{
    ::std::pair<const ::std::string*, const ::std::string*> r = ::std::equal_range(iceC_IceLocatorDiscovery_Lookup_ops, iceC_IceLocatorDiscovery_Lookup_ops + 5, current.operation);
    if(r.first == r.second)
    {
        throw ::Ice::OperationNotExistException(__FILE__, __LINE__, current.id, current.facet, current.operation);
    }

    switch(r.first - iceC_IceLocatorDiscovery_Lookup_ops)
    {
        case 0:
        {
            return _iceD_findLocator(in, current);
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
IceLocatorDiscovery::LookupReplyPrx::_iceI_foundLocator(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>& outAsync, const ::std::shared_ptr<::Ice::LocatorPrx>& iceP_prx, const ::Ice::Context& context)
{
    outAsync->invoke(iceC_IceLocatorDiscovery_LookupReply_foundLocator_name, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        [&](::Ice::OutputStream* ostr)
        {
            ostr->writeAll(iceP_prx);
        },
        nullptr);
}
/// \endcond

/// \cond INTERNAL
::std::shared_ptr<::Ice::ObjectPrx>
IceLocatorDiscovery::LookupReplyPrx::_newInstance() const
{
    return ::IceInternal::createProxy<LookupReplyPrx>();
}
/// \endcond

const ::std::string&
IceLocatorDiscovery::LookupReplyPrx::ice_staticId()
{
    return LookupReply::ice_staticId();
}

/// \cond INTERNAL
void
IceLocatorDiscovery::LookupPrx::_iceI_findLocator(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>& outAsync, const ::std::string& iceP_instanceName, const ::std::shared_ptr<LookupReplyPrx>& iceP_reply, const ::Ice::Context& context)
{
    outAsync->invoke(iceC_IceLocatorDiscovery_Lookup_findLocator_name, ::Ice::OperationMode::Idempotent, ::Ice::FormatType::DefaultFormat, context,
        [&](::Ice::OutputStream* ostr)
        {
            ostr->writeAll(iceP_instanceName, iceP_reply);
        },
        nullptr);
}
/// \endcond

/// \cond INTERNAL
::std::shared_ptr<::Ice::ObjectPrx>
IceLocatorDiscovery::LookupPrx::_newInstance() const
{
    return ::IceInternal::createProxy<LookupPrx>();
}
/// \endcond

const ::std::string&
IceLocatorDiscovery::LookupPrx::ice_staticId()
{
    return Lookup::ice_staticId();
}

#else // C++98 mapping

namespace
{

const ::std::string iceC_IceLocatorDiscovery_LookupReply_foundLocator_name = "foundLocator";

const ::std::string iceC_IceLocatorDiscovery_Lookup_findLocator_name = "findLocator";

}

/// \cond INTERNAL
::IceProxy::Ice::Object* ::IceProxy::IceLocatorDiscovery::upCast(LookupReply* p) { return p; }

void
::IceProxy::IceLocatorDiscovery::_readProxy(::Ice::InputStream* istr, ::IceInternal::ProxyHandle< LookupReply>& v)
{
    ::Ice::ObjectPrx proxy;
    istr->read(proxy);
    if(!proxy)
    {
        v = 0;
    }
    else
    {
        v = new LookupReply;
        v->_copyFrom(proxy);
    }
}
/// \endcond

::Ice::AsyncResultPtr
IceProxy::IceLocatorDiscovery::LookupReply::_iceI_begin_foundLocator(const ::Ice::LocatorPrx& iceP_prx, const ::Ice::Context& context, const ::IceInternal::CallbackBasePtr& del, const ::Ice::LocalObjectPtr& cookie, bool sync)
{
    ::IceInternal::OutgoingAsyncPtr result = new ::IceInternal::CallbackOutgoing(this, iceC_IceLocatorDiscovery_LookupReply_foundLocator_name, del, cookie, sync);
    try
    {
        result->prepare(iceC_IceLocatorDiscovery_LookupReply_foundLocator_name, ::Ice::Normal, context);
        ::Ice::OutputStream* ostr = result->startWriteParams(::Ice::DefaultFormat);
        ostr->write(iceP_prx);
        result->endWriteParams();
        result->invoke(iceC_IceLocatorDiscovery_LookupReply_foundLocator_name);
    }
    catch(const ::Ice::Exception& ex)
    {
        result->abort(ex);
    }
    return result;
}

void
IceProxy::IceLocatorDiscovery::LookupReply::end_foundLocator(const ::Ice::AsyncResultPtr& result)
{
    _end(result, iceC_IceLocatorDiscovery_LookupReply_foundLocator_name);
}

/// \cond INTERNAL
::IceProxy::Ice::Object*
IceProxy::IceLocatorDiscovery::LookupReply::_newInstance() const
{
    return new LookupReply;
}
/// \endcond

const ::std::string&
IceProxy::IceLocatorDiscovery::LookupReply::ice_staticId()
{
    return ::IceLocatorDiscovery::LookupReply::ice_staticId();
}

/// \cond INTERNAL
::IceProxy::Ice::Object* ::IceProxy::IceLocatorDiscovery::upCast(Lookup* p) { return p; }

void
::IceProxy::IceLocatorDiscovery::_readProxy(::Ice::InputStream* istr, ::IceInternal::ProxyHandle< Lookup>& v)
{
    ::Ice::ObjectPrx proxy;
    istr->read(proxy);
    if(!proxy)
    {
        v = 0;
    }
    else
    {
        v = new Lookup;
        v->_copyFrom(proxy);
    }
}
/// \endcond

::Ice::AsyncResultPtr
IceProxy::IceLocatorDiscovery::Lookup::_iceI_begin_findLocator(const ::std::string& iceP_instanceName, const ::IceLocatorDiscovery::LookupReplyPrx& iceP_reply, const ::Ice::Context& context, const ::IceInternal::CallbackBasePtr& del, const ::Ice::LocalObjectPtr& cookie, bool sync)
{
    ::IceInternal::OutgoingAsyncPtr result = new ::IceInternal::CallbackOutgoing(this, iceC_IceLocatorDiscovery_Lookup_findLocator_name, del, cookie, sync);
    try
    {
        result->prepare(iceC_IceLocatorDiscovery_Lookup_findLocator_name, ::Ice::Idempotent, context);
        ::Ice::OutputStream* ostr = result->startWriteParams(::Ice::DefaultFormat);
        ostr->write(iceP_instanceName);
        ostr->write(iceP_reply);
        result->endWriteParams();
        result->invoke(iceC_IceLocatorDiscovery_Lookup_findLocator_name);
    }
    catch(const ::Ice::Exception& ex)
    {
        result->abort(ex);
    }
    return result;
}

void
IceProxy::IceLocatorDiscovery::Lookup::end_findLocator(const ::Ice::AsyncResultPtr& result)
{
    _end(result, iceC_IceLocatorDiscovery_Lookup_findLocator_name);
}

/// \cond INTERNAL
::IceProxy::Ice::Object*
IceProxy::IceLocatorDiscovery::Lookup::_newInstance() const
{
    return new Lookup;
}
/// \endcond

const ::std::string&
IceProxy::IceLocatorDiscovery::Lookup::ice_staticId()
{
    return ::IceLocatorDiscovery::Lookup::ice_staticId();
}

IceLocatorDiscovery::LookupReply::~LookupReply()
{
}

/// \cond INTERNAL
::Ice::Object* IceLocatorDiscovery::upCast(LookupReply* p) { return p; }

/// \endcond

namespace
{
const ::std::string iceC_IceLocatorDiscovery_LookupReply_ids[2] =
{
    "::Ice::Object",
    "::IceLocatorDiscovery::LookupReply"
};

}

bool
IceLocatorDiscovery::LookupReply::ice_isA(const ::std::string& s, const ::Ice::Current&) const
{
    return ::std::binary_search(iceC_IceLocatorDiscovery_LookupReply_ids, iceC_IceLocatorDiscovery_LookupReply_ids + 2, s);
}

::std::vector< ::std::string>
IceLocatorDiscovery::LookupReply::ice_ids(const ::Ice::Current&) const
{
    return ::std::vector< ::std::string>(&iceC_IceLocatorDiscovery_LookupReply_ids[0], &iceC_IceLocatorDiscovery_LookupReply_ids[2]);
}

const ::std::string&
IceLocatorDiscovery::LookupReply::ice_id(const ::Ice::Current&) const
{
    return ice_staticId();
}

const ::std::string&
IceLocatorDiscovery::LookupReply::ice_staticId()
{
#ifdef ICE_HAS_THREAD_SAFE_LOCAL_STATIC
    static const ::std::string typeId = "::IceLocatorDiscovery::LookupReply";
    return typeId;
#else
    return iceC_IceLocatorDiscovery_LookupReply_ids[1];
#endif
}

/// \cond INTERNAL
bool
IceLocatorDiscovery::LookupReply::_iceD_foundLocator(::IceInternal::Incoming& inS, const ::Ice::Current& current)
{
    _iceCheckMode(::Ice::Normal, current.mode);
    ::Ice::InputStream* istr = inS.startReadParams();
    ::Ice::LocatorPrx iceP_prx;
    istr->read(iceP_prx);
    inS.endReadParams();
    this->foundLocator(iceP_prx, current);
    inS.writeEmptyParams();
    return true;
}
/// \endcond

namespace
{
const ::std::string iceC_IceLocatorDiscovery_LookupReply_all[] =
{
    "foundLocator",
    "ice_id",
    "ice_ids",
    "ice_isA",
    "ice_ping"
};

}

/// \cond INTERNAL
bool
IceLocatorDiscovery::LookupReply::_iceDispatch(::IceInternal::Incoming& in, const ::Ice::Current& current)
{
    ::std::pair<const ::std::string*, const ::std::string*> r = ::std::equal_range(iceC_IceLocatorDiscovery_LookupReply_all, iceC_IceLocatorDiscovery_LookupReply_all + 5, current.operation);
    if(r.first == r.second)
    {
        throw ::Ice::OperationNotExistException(__FILE__, __LINE__, current.id, current.facet, current.operation);
    }

    switch(r.first - iceC_IceLocatorDiscovery_LookupReply_all)
    {
        case 0:
        {
            return _iceD_foundLocator(in, current);
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

/// \cond STREAM
void
IceLocatorDiscovery::LookupReply::_iceWriteImpl(::Ice::OutputStream* ostr) const
{
    ostr->startSlice(ice_staticId(), -1, true);
    ::Ice::StreamWriter< LookupReply, ::Ice::OutputStream>::write(ostr, *this);
    ostr->endSlice();
}

void
IceLocatorDiscovery::LookupReply::_iceReadImpl(::Ice::InputStream* istr)
{
    istr->startSlice();
    ::Ice::StreamReader< LookupReply, ::Ice::InputStream>::read(istr, *this);
    istr->endSlice();
}
/// \endcond

/// \cond INTERNAL
void
IceLocatorDiscovery::_icePatchObjectPtr(LookupReplyPtr& handle, const ::Ice::ObjectPtr& v)
{
    handle = LookupReplyPtr::dynamicCast(v);
    if(v && !handle)
    {
        IceInternal::Ex::throwUOE(LookupReply::ice_staticId(), v);
    }
}
/// \endcond

IceLocatorDiscovery::Lookup::~Lookup()
{
}

/// \cond INTERNAL
::Ice::Object* IceLocatorDiscovery::upCast(Lookup* p) { return p; }

/// \endcond

namespace
{
const ::std::string iceC_IceLocatorDiscovery_Lookup_ids[2] =
{
    "::Ice::Object",
    "::IceLocatorDiscovery::Lookup"
};

}

bool
IceLocatorDiscovery::Lookup::ice_isA(const ::std::string& s, const ::Ice::Current&) const
{
    return ::std::binary_search(iceC_IceLocatorDiscovery_Lookup_ids, iceC_IceLocatorDiscovery_Lookup_ids + 2, s);
}

::std::vector< ::std::string>
IceLocatorDiscovery::Lookup::ice_ids(const ::Ice::Current&) const
{
    return ::std::vector< ::std::string>(&iceC_IceLocatorDiscovery_Lookup_ids[0], &iceC_IceLocatorDiscovery_Lookup_ids[2]);
}

const ::std::string&
IceLocatorDiscovery::Lookup::ice_id(const ::Ice::Current&) const
{
    return ice_staticId();
}

const ::std::string&
IceLocatorDiscovery::Lookup::ice_staticId()
{
#ifdef ICE_HAS_THREAD_SAFE_LOCAL_STATIC
    static const ::std::string typeId = "::IceLocatorDiscovery::Lookup";
    return typeId;
#else
    return iceC_IceLocatorDiscovery_Lookup_ids[1];
#endif
}

/// \cond INTERNAL
bool
IceLocatorDiscovery::Lookup::_iceD_findLocator(::IceInternal::Incoming& inS, const ::Ice::Current& current)
{
    _iceCheckMode(::Ice::Idempotent, current.mode);
    ::Ice::InputStream* istr = inS.startReadParams();
    ::std::string iceP_instanceName;
    LookupReplyPrx iceP_reply;
    istr->read(iceP_instanceName);
    istr->read(iceP_reply);
    inS.endReadParams();
    this->findLocator(iceP_instanceName, iceP_reply, current);
    inS.writeEmptyParams();
    return true;
}
/// \endcond

namespace
{
const ::std::string iceC_IceLocatorDiscovery_Lookup_all[] =
{
    "findLocator",
    "ice_id",
    "ice_ids",
    "ice_isA",
    "ice_ping"
};

}

/// \cond INTERNAL
bool
IceLocatorDiscovery::Lookup::_iceDispatch(::IceInternal::Incoming& in, const ::Ice::Current& current)
{
    ::std::pair<const ::std::string*, const ::std::string*> r = ::std::equal_range(iceC_IceLocatorDiscovery_Lookup_all, iceC_IceLocatorDiscovery_Lookup_all + 5, current.operation);
    if(r.first == r.second)
    {
        throw ::Ice::OperationNotExistException(__FILE__, __LINE__, current.id, current.facet, current.operation);
    }

    switch(r.first - iceC_IceLocatorDiscovery_Lookup_all)
    {
        case 0:
        {
            return _iceD_findLocator(in, current);
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

/// \cond STREAM
void
IceLocatorDiscovery::Lookup::_iceWriteImpl(::Ice::OutputStream* ostr) const
{
    ostr->startSlice(ice_staticId(), -1, true);
    ::Ice::StreamWriter< Lookup, ::Ice::OutputStream>::write(ostr, *this);
    ostr->endSlice();
}

void
IceLocatorDiscovery::Lookup::_iceReadImpl(::Ice::InputStream* istr)
{
    istr->startSlice();
    ::Ice::StreamReader< Lookup, ::Ice::InputStream>::read(istr, *this);
    istr->endSlice();
}
/// \endcond

/// \cond INTERNAL
void
IceLocatorDiscovery::_icePatchObjectPtr(LookupPtr& handle, const ::Ice::ObjectPtr& v)
{
    handle = LookupPtr::dynamicCast(v);
    if(v && !handle)
    {
        IceInternal::Ex::throwUOE(Lookup::ice_staticId(), v);
    }
}
/// \endcond

namespace Ice
{
}

#endif
