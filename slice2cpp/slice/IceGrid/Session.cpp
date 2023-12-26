//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.7.10
//
// <auto-generated>
//
// Generated from file `Session.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

#ifndef ICEGRID_API_EXPORTS
#   define ICEGRID_API_EXPORTS
#endif
#define ICE_BUILDING_GENERATED_CODE
#include <Session.h>
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
#   if ICE_INT_VERSION / 100 != 307
#       error Ice version mismatch!
#   endif
#   if ICE_INT_VERSION % 100 >= 50
#       error Beta header file detected
#   endif
#   if ICE_INT_VERSION % 100 < 10
#       error Ice patch level mismatch!
#   endif
#endif

#ifdef ICE_CPP11_MAPPING // C++11 mapping

namespace
{

const ::std::string iceC_IceGrid_Session_ids[3] =
{
    "::Glacier2::Session",
    "::Ice::Object",
    "::IceGrid::Session"
};
const ::std::string iceC_IceGrid_Session_ops[] =
{
    "allocateObjectById",
    "allocateObjectByType",
    "destroy",
    "ice_id",
    "ice_ids",
    "ice_isA",
    "ice_ping",
    "keepAlive",
    "releaseObject",
    "setAllocationTimeout"
};
const ::std::string iceC_IceGrid_Session_keepAlive_name = "keepAlive";
const ::std::string iceC_IceGrid_Session_allocateObjectById_name = "allocateObjectById";
const ::std::string iceC_IceGrid_Session_allocateObjectByType_name = "allocateObjectByType";
const ::std::string iceC_IceGrid_Session_releaseObject_name = "releaseObject";
const ::std::string iceC_IceGrid_Session_setAllocationTimeout_name = "setAllocationTimeout";

}

bool
IceGrid::Session::ice_isA(::std::string s, const ::Ice::Current&) const
{
    return ::std::binary_search(iceC_IceGrid_Session_ids, iceC_IceGrid_Session_ids + 3, s);
}

::std::vector<::std::string>
IceGrid::Session::ice_ids(const ::Ice::Current&) const
{
    return ::std::vector<::std::string>(&iceC_IceGrid_Session_ids[0], &iceC_IceGrid_Session_ids[3]);
}

::std::string
IceGrid::Session::ice_id(const ::Ice::Current&) const
{
    return ice_staticId();
}

const ::std::string&
IceGrid::Session::ice_staticId()
{
    static const ::std::string typeId = "::IceGrid::Session";
    return typeId;
}

/// \cond INTERNAL
bool
IceGrid::Session::_iceD_keepAlive(::IceInternal::Incoming& inS, const ::Ice::Current& current)
{
    _iceCheckMode(::Ice::OperationMode::Idempotent, current.mode);
    inS.readEmptyParams();
    this->keepAlive(current);
    inS.writeEmptyParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
IceGrid::Session::_iceD_allocateObjectById(::IceInternal::Incoming& inS, const ::Ice::Current& current)
{
    _iceCheckMode(::Ice::OperationMode::Normal, current.mode);
    auto istr = inS.startReadParams();
    ::Ice::Identity iceP_id;
    istr->readAll(iceP_id);
    inS.endReadParams();
    auto inA = ::IceInternal::IncomingAsync::create(inS);
    auto responseCB = [inA](const ::std::shared_ptr<::Ice::ObjectPrx>& ret)
    {
        auto ostr = inA->startWriteParams();
        ostr->writeAll(ret);
        inA->endWriteParams();
        inA->completed();
    };
    this->allocateObjectByIdAsync(::std::move(iceP_id), responseCB, inA->exception(), current);
    return false;
}
/// \endcond

/// \cond INTERNAL
bool
IceGrid::Session::_iceD_allocateObjectByType(::IceInternal::Incoming& inS, const ::Ice::Current& current)
{
    _iceCheckMode(::Ice::OperationMode::Normal, current.mode);
    auto istr = inS.startReadParams();
    ::std::string iceP_type;
    istr->readAll(iceP_type);
    inS.endReadParams();
    auto inA = ::IceInternal::IncomingAsync::create(inS);
    auto responseCB = [inA](const ::std::shared_ptr<::Ice::ObjectPrx>& ret)
    {
        auto ostr = inA->startWriteParams();
        ostr->writeAll(ret);
        inA->endWriteParams();
        inA->completed();
    };
    this->allocateObjectByTypeAsync(::std::move(iceP_type), responseCB, inA->exception(), current);
    return false;
}
/// \endcond

/// \cond INTERNAL
bool
IceGrid::Session::_iceD_releaseObject(::IceInternal::Incoming& inS, const ::Ice::Current& current)
{
    _iceCheckMode(::Ice::OperationMode::Normal, current.mode);
    auto istr = inS.startReadParams();
    ::Ice::Identity iceP_id;
    istr->readAll(iceP_id);
    inS.endReadParams();
    this->releaseObject(::std::move(iceP_id), current);
    inS.writeEmptyParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
IceGrid::Session::_iceD_setAllocationTimeout(::IceInternal::Incoming& inS, const ::Ice::Current& current)
{
    _iceCheckMode(::Ice::OperationMode::Idempotent, current.mode);
    auto istr = inS.startReadParams();
    int iceP_timeout;
    istr->readAll(iceP_timeout);
    inS.endReadParams();
    this->setAllocationTimeout(iceP_timeout, current);
    inS.writeEmptyParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
IceGrid::Session::_iceDispatch(::IceInternal::Incoming& in, const ::Ice::Current& current)
{
    ::std::pair<const ::std::string*, const ::std::string*> r = ::std::equal_range(iceC_IceGrid_Session_ops, iceC_IceGrid_Session_ops + 10, current.operation);
    if(r.first == r.second)
    {
        throw ::Ice::OperationNotExistException(__FILE__, __LINE__, current.id, current.facet, current.operation);
    }

    switch(r.first - iceC_IceGrid_Session_ops)
    {
        case 0:
        {
            return _iceD_allocateObjectById(in, current);
        }
        case 1:
        {
            return _iceD_allocateObjectByType(in, current);
        }
        case 2:
        {
            return _iceD_destroy(in, current);
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
        case 7:
        {
            return _iceD_keepAlive(in, current);
        }
        case 8:
        {
            return _iceD_releaseObject(in, current);
        }
        case 9:
        {
            return _iceD_setAllocationTimeout(in, current);
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
IceGrid::SessionPrx::_iceI_keepAlive(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>& outAsync, const ::Ice::Context& context)
{
    outAsync->invoke(iceC_IceGrid_Session_keepAlive_name, ::Ice::OperationMode::Idempotent, ::Ice::FormatType::DefaultFormat, context,
        nullptr,
        nullptr);
}
/// \endcond

/// \cond INTERNAL
void
IceGrid::SessionPrx::_iceI_allocateObjectById(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<::std::shared_ptr<::Ice::ObjectPrx>>>& outAsync, const ::Ice::Identity& iceP_id, const ::Ice::Context& context)
{
    _checkTwowayOnly(iceC_IceGrid_Session_allocateObjectById_name);
    outAsync->invoke(iceC_IceGrid_Session_allocateObjectById_name, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
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
            catch(const AllocationException&)
            {
                throw;
            }
            catch(const ObjectNotRegisteredException&)
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
IceGrid::SessionPrx::_iceI_allocateObjectByType(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<::std::shared_ptr<::Ice::ObjectPrx>>>& outAsync, const ::std::string& iceP_type, const ::Ice::Context& context)
{
    _checkTwowayOnly(iceC_IceGrid_Session_allocateObjectByType_name);
    outAsync->invoke(iceC_IceGrid_Session_allocateObjectByType_name, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        [&](::Ice::OutputStream* ostr)
        {
            ostr->writeAll(iceP_type);
        },
        [](const ::Ice::UserException& ex)
        {
            try
            {
                ex.ice_throw();
            }
            catch(const AllocationException&)
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
IceGrid::SessionPrx::_iceI_releaseObject(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>& outAsync, const ::Ice::Identity& iceP_id, const ::Ice::Context& context)
{
    _checkTwowayOnly(iceC_IceGrid_Session_releaseObject_name);
    outAsync->invoke(iceC_IceGrid_Session_releaseObject_name, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
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
            catch(const AllocationException&)
            {
                throw;
            }
            catch(const ObjectNotRegisteredException&)
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
IceGrid::SessionPrx::_iceI_setAllocationTimeout(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>& outAsync, int iceP_timeout, const ::Ice::Context& context)
{
    outAsync->invoke(iceC_IceGrid_Session_setAllocationTimeout_name, ::Ice::OperationMode::Idempotent, ::Ice::FormatType::DefaultFormat, context,
        [&](::Ice::OutputStream* ostr)
        {
            ostr->writeAll(iceP_timeout);
        },
        nullptr);
}
/// \endcond

/// \cond INTERNAL
::std::shared_ptr<::Ice::ObjectPrx>
IceGrid::SessionPrx::_newInstance() const
{
    return ::IceInternal::createProxy<SessionPrx>();
}
/// \endcond

const ::std::string&
IceGrid::SessionPrx::ice_staticId()
{
    return Session::ice_staticId();
}

#else // C++98 mapping

namespace
{

const ::std::string iceC_IceGrid_Session_keepAlive_name = "keepAlive";

const ::std::string iceC_IceGrid_Session_allocateObjectById_name = "allocateObjectById";

const ::std::string iceC_IceGrid_Session_allocateObjectByType_name = "allocateObjectByType";

const ::std::string iceC_IceGrid_Session_releaseObject_name = "releaseObject";

const ::std::string iceC_IceGrid_Session_setAllocationTimeout_name = "setAllocationTimeout";

}

IceGrid::AMD_Session_allocateObjectById::~AMD_Session_allocateObjectById()
{
}

IceGrid::AMD_Session_allocateObjectByType::~AMD_Session_allocateObjectByType()
{
}

/// \cond INTERNAL
IceAsync::IceGrid::AMD_Session_allocateObjectById::AMD_Session_allocateObjectById(::IceInternal::Incoming& in) :
    ::IceInternal::IncomingAsync(in)
{
}

void
IceAsync::IceGrid::AMD_Session_allocateObjectById::ice_response(const ::Ice::ObjectPrx& ret)
{
    ::Ice::OutputStream* ostr = startWriteParams();
    ostr->write(ret);
    endWriteParams();
    completed();
}
/// \endcond

/// \cond INTERNAL
IceAsync::IceGrid::AMD_Session_allocateObjectByType::AMD_Session_allocateObjectByType(::IceInternal::Incoming& in) :
    ::IceInternal::IncomingAsync(in)
{
}

void
IceAsync::IceGrid::AMD_Session_allocateObjectByType::ice_response(const ::Ice::ObjectPrx& ret)
{
    ::Ice::OutputStream* ostr = startWriteParams();
    ostr->write(ret);
    endWriteParams();
    completed();
}
/// \endcond

/// \cond INTERNAL
ICEGRID_API ::IceProxy::Ice::Object* ::IceProxy::IceGrid::upCast(Session* p) { return p; }

void
::IceProxy::IceGrid::_readProxy(::Ice::InputStream* istr, ::IceInternal::ProxyHandle< Session>& v)
{
    ::Ice::ObjectPrx proxy;
    istr->read(proxy);
    if(!proxy)
    {
        v = 0;
    }
    else
    {
        v = new Session;
        v->_copyFrom(proxy);
    }
}
/// \endcond

::Ice::AsyncResultPtr
IceProxy::IceGrid::Session::_iceI_begin_keepAlive(const ::Ice::Context& context, const ::IceInternal::CallbackBasePtr& del, const ::Ice::LocalObjectPtr& cookie, bool sync)
{
    ::IceInternal::OutgoingAsyncPtr result = new ::IceInternal::CallbackOutgoing(this, iceC_IceGrid_Session_keepAlive_name, del, cookie, sync);
    try
    {
        result->prepare(iceC_IceGrid_Session_keepAlive_name, ::Ice::Idempotent, context);
        result->writeEmptyParams();
        result->invoke(iceC_IceGrid_Session_keepAlive_name);
    }
    catch(const ::Ice::Exception& ex)
    {
        result->abort(ex);
    }
    return result;
}

void
IceProxy::IceGrid::Session::end_keepAlive(const ::Ice::AsyncResultPtr& result)
{
    _end(result, iceC_IceGrid_Session_keepAlive_name);
}

::Ice::AsyncResultPtr
IceProxy::IceGrid::Session::_iceI_begin_allocateObjectById(const ::Ice::Identity& iceP_id, const ::Ice::Context& context, const ::IceInternal::CallbackBasePtr& del, const ::Ice::LocalObjectPtr& cookie, bool sync)
{
    _checkTwowayOnly(iceC_IceGrid_Session_allocateObjectById_name, sync);
    ::IceInternal::OutgoingAsyncPtr result = new ::IceInternal::CallbackOutgoing(this, iceC_IceGrid_Session_allocateObjectById_name, del, cookie, sync);
    try
    {
        result->prepare(iceC_IceGrid_Session_allocateObjectById_name, ::Ice::Normal, context);
        ::Ice::OutputStream* ostr = result->startWriteParams(::Ice::DefaultFormat);
        ostr->write(iceP_id);
        result->endWriteParams();
        result->invoke(iceC_IceGrid_Session_allocateObjectById_name);
    }
    catch(const ::Ice::Exception& ex)
    {
        result->abort(ex);
    }
    return result;
}

::Ice::ObjectPrx
IceProxy::IceGrid::Session::end_allocateObjectById(const ::Ice::AsyncResultPtr& result)
{
    ::Ice::AsyncResult::_check(result, this, iceC_IceGrid_Session_allocateObjectById_name);
    ::Ice::ObjectPrx ret;
    if(!result->_waitForResponse())
    {
        try
        {
            result->_throwUserException();
        }
        catch(const ::IceGrid::AllocationException&)
        {
            throw;
        }
        catch(const ::IceGrid::ObjectNotRegisteredException&)
        {
            throw;
        }
        catch(const ::Ice::UserException& ex)
        {
            throw ::Ice::UnknownUserException(__FILE__, __LINE__, ex.ice_id());
        }
    }
    ::Ice::InputStream* istr = result->_startReadParams();
    istr->read(ret);
    result->_endReadParams();
    return ret;
}

::Ice::AsyncResultPtr
IceProxy::IceGrid::Session::_iceI_begin_allocateObjectByType(const ::std::string& iceP_type, const ::Ice::Context& context, const ::IceInternal::CallbackBasePtr& del, const ::Ice::LocalObjectPtr& cookie, bool sync)
{
    _checkTwowayOnly(iceC_IceGrid_Session_allocateObjectByType_name, sync);
    ::IceInternal::OutgoingAsyncPtr result = new ::IceInternal::CallbackOutgoing(this, iceC_IceGrid_Session_allocateObjectByType_name, del, cookie, sync);
    try
    {
        result->prepare(iceC_IceGrid_Session_allocateObjectByType_name, ::Ice::Normal, context);
        ::Ice::OutputStream* ostr = result->startWriteParams(::Ice::DefaultFormat);
        ostr->write(iceP_type);
        result->endWriteParams();
        result->invoke(iceC_IceGrid_Session_allocateObjectByType_name);
    }
    catch(const ::Ice::Exception& ex)
    {
        result->abort(ex);
    }
    return result;
}

::Ice::ObjectPrx
IceProxy::IceGrid::Session::end_allocateObjectByType(const ::Ice::AsyncResultPtr& result)
{
    ::Ice::AsyncResult::_check(result, this, iceC_IceGrid_Session_allocateObjectByType_name);
    ::Ice::ObjectPrx ret;
    if(!result->_waitForResponse())
    {
        try
        {
            result->_throwUserException();
        }
        catch(const ::IceGrid::AllocationException&)
        {
            throw;
        }
        catch(const ::Ice::UserException& ex)
        {
            throw ::Ice::UnknownUserException(__FILE__, __LINE__, ex.ice_id());
        }
    }
    ::Ice::InputStream* istr = result->_startReadParams();
    istr->read(ret);
    result->_endReadParams();
    return ret;
}

::Ice::AsyncResultPtr
IceProxy::IceGrid::Session::_iceI_begin_releaseObject(const ::Ice::Identity& iceP_id, const ::Ice::Context& context, const ::IceInternal::CallbackBasePtr& del, const ::Ice::LocalObjectPtr& cookie, bool sync)
{
    _checkTwowayOnly(iceC_IceGrid_Session_releaseObject_name, sync);
    ::IceInternal::OutgoingAsyncPtr result = new ::IceInternal::CallbackOutgoing(this, iceC_IceGrid_Session_releaseObject_name, del, cookie, sync);
    try
    {
        result->prepare(iceC_IceGrid_Session_releaseObject_name, ::Ice::Normal, context);
        ::Ice::OutputStream* ostr = result->startWriteParams(::Ice::DefaultFormat);
        ostr->write(iceP_id);
        result->endWriteParams();
        result->invoke(iceC_IceGrid_Session_releaseObject_name);
    }
    catch(const ::Ice::Exception& ex)
    {
        result->abort(ex);
    }
    return result;
}

void
IceProxy::IceGrid::Session::end_releaseObject(const ::Ice::AsyncResultPtr& result)
{
    ::Ice::AsyncResult::_check(result, this, iceC_IceGrid_Session_releaseObject_name);
    if(!result->_waitForResponse())
    {
        try
        {
            result->_throwUserException();
        }
        catch(const ::IceGrid::AllocationException&)
        {
            throw;
        }
        catch(const ::IceGrid::ObjectNotRegisteredException&)
        {
            throw;
        }
        catch(const ::Ice::UserException& ex)
        {
            throw ::Ice::UnknownUserException(__FILE__, __LINE__, ex.ice_id());
        }
    }
    result->_readEmptyParams();
}

::Ice::AsyncResultPtr
IceProxy::IceGrid::Session::_iceI_begin_setAllocationTimeout(::Ice::Int iceP_timeout, const ::Ice::Context& context, const ::IceInternal::CallbackBasePtr& del, const ::Ice::LocalObjectPtr& cookie, bool sync)
{
    ::IceInternal::OutgoingAsyncPtr result = new ::IceInternal::CallbackOutgoing(this, iceC_IceGrid_Session_setAllocationTimeout_name, del, cookie, sync);
    try
    {
        result->prepare(iceC_IceGrid_Session_setAllocationTimeout_name, ::Ice::Idempotent, context);
        ::Ice::OutputStream* ostr = result->startWriteParams(::Ice::DefaultFormat);
        ostr->write(iceP_timeout);
        result->endWriteParams();
        result->invoke(iceC_IceGrid_Session_setAllocationTimeout_name);
    }
    catch(const ::Ice::Exception& ex)
    {
        result->abort(ex);
    }
    return result;
}

void
IceProxy::IceGrid::Session::end_setAllocationTimeout(const ::Ice::AsyncResultPtr& result)
{
    _end(result, iceC_IceGrid_Session_setAllocationTimeout_name);
}

/// \cond INTERNAL
::IceProxy::Ice::Object*
IceProxy::IceGrid::Session::_newInstance() const
{
    return new Session;
}
/// \endcond

const ::std::string&
IceProxy::IceGrid::Session::ice_staticId()
{
    return ::IceGrid::Session::ice_staticId();
}

IceGrid::Session::~Session()
{
}

/// \cond INTERNAL
ICEGRID_API ::Ice::Object* IceGrid::upCast(Session* p) { return p; }

/// \endcond

namespace
{
const ::std::string iceC_IceGrid_Session_ids[3] =
{
    "::Glacier2::Session",
    "::Ice::Object",
    "::IceGrid::Session"
};

}

bool
IceGrid::Session::ice_isA(const ::std::string& s, const ::Ice::Current&) const
{
    return ::std::binary_search(iceC_IceGrid_Session_ids, iceC_IceGrid_Session_ids + 3, s);
}

::std::vector< ::std::string>
IceGrid::Session::ice_ids(const ::Ice::Current&) const
{
    return ::std::vector< ::std::string>(&iceC_IceGrid_Session_ids[0], &iceC_IceGrid_Session_ids[3]);
}

const ::std::string&
IceGrid::Session::ice_id(const ::Ice::Current&) const
{
    return ice_staticId();
}

const ::std::string&
IceGrid::Session::ice_staticId()
{
    static const ::std::string typeId = "::IceGrid::Session";
    return typeId;
}

/// \cond INTERNAL
bool
IceGrid::Session::_iceD_keepAlive(::IceInternal::Incoming& inS, const ::Ice::Current& current)
{
    _iceCheckMode(::Ice::Idempotent, current.mode);
    inS.readEmptyParams();
    this->keepAlive(current);
    inS.writeEmptyParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
IceGrid::Session::_iceD_allocateObjectById(::IceInternal::Incoming& inS, const ::Ice::Current& current)
{
    _iceCheckMode(::Ice::Normal, current.mode);
    ::Ice::InputStream* istr = inS.startReadParams();
    ::Ice::Identity iceP_id;
    istr->read(iceP_id);
    inS.endReadParams();
    this->allocateObjectById_async(new IceAsync::IceGrid::AMD_Session_allocateObjectById(inS), iceP_id, current);
    return false;
}
/// \endcond

/// \cond INTERNAL
bool
IceGrid::Session::_iceD_allocateObjectByType(::IceInternal::Incoming& inS, const ::Ice::Current& current)
{
    _iceCheckMode(::Ice::Normal, current.mode);
    ::Ice::InputStream* istr = inS.startReadParams();
    ::std::string iceP_type;
    istr->read(iceP_type);
    inS.endReadParams();
    this->allocateObjectByType_async(new IceAsync::IceGrid::AMD_Session_allocateObjectByType(inS), iceP_type, current);
    return false;
}
/// \endcond

/// \cond INTERNAL
bool
IceGrid::Session::_iceD_releaseObject(::IceInternal::Incoming& inS, const ::Ice::Current& current)
{
    _iceCheckMode(::Ice::Normal, current.mode);
    ::Ice::InputStream* istr = inS.startReadParams();
    ::Ice::Identity iceP_id;
    istr->read(iceP_id);
    inS.endReadParams();
    this->releaseObject(iceP_id, current);
    inS.writeEmptyParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
IceGrid::Session::_iceD_setAllocationTimeout(::IceInternal::Incoming& inS, const ::Ice::Current& current)
{
    _iceCheckMode(::Ice::Idempotent, current.mode);
    ::Ice::InputStream* istr = inS.startReadParams();
    ::Ice::Int iceP_timeout;
    istr->read(iceP_timeout);
    inS.endReadParams();
    this->setAllocationTimeout(iceP_timeout, current);
    inS.writeEmptyParams();
    return true;
}
/// \endcond

namespace
{
const ::std::string iceC_IceGrid_Session_all[] =
{
    "allocateObjectById",
    "allocateObjectByType",
    "destroy",
    "ice_id",
    "ice_ids",
    "ice_isA",
    "ice_ping",
    "keepAlive",
    "releaseObject",
    "setAllocationTimeout"
};

}

/// \cond INTERNAL
bool
IceGrid::Session::_iceDispatch(::IceInternal::Incoming& in, const ::Ice::Current& current)
{
    ::std::pair<const ::std::string*, const ::std::string*> r = ::std::equal_range(iceC_IceGrid_Session_all, iceC_IceGrid_Session_all + 10, current.operation);
    if(r.first == r.second)
    {
        throw ::Ice::OperationNotExistException(__FILE__, __LINE__, current.id, current.facet, current.operation);
    }

    switch(r.first - iceC_IceGrid_Session_all)
    {
        case 0:
        {
            return _iceD_allocateObjectById(in, current);
        }
        case 1:
        {
            return _iceD_allocateObjectByType(in, current);
        }
        case 2:
        {
            return _iceD_destroy(in, current);
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
        case 7:
        {
            return _iceD_keepAlive(in, current);
        }
        case 8:
        {
            return _iceD_releaseObject(in, current);
        }
        case 9:
        {
            return _iceD_setAllocationTimeout(in, current);
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
IceGrid::Session::_iceWriteImpl(::Ice::OutputStream* ostr) const
{
    ostr->startSlice(ice_staticId(), -1, true);
    ::Ice::StreamWriter< Session, ::Ice::OutputStream>::write(ostr, *this);
    ostr->endSlice();
}

void
IceGrid::Session::_iceReadImpl(::Ice::InputStream* istr)
{
    istr->startSlice();
    ::Ice::StreamReader< Session, ::Ice::InputStream>::read(istr, *this);
    istr->endSlice();
}
/// \endcond

/// \cond INTERNAL
void
IceGrid::_icePatchObjectPtr(SessionPtr& handle, const ::Ice::ObjectPtr& v)
{
    handle = SessionPtr::dynamicCast(v);
    if(v && !handle)
    {
        IceInternal::Ex::throwUOE(Session::ice_staticId(), v);
    }
}
/// \endcond

namespace Ice
{
}

#endif
