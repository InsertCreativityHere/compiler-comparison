//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
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
#   if ICE_INT_VERSION  != 30850
#       error Ice version mismatch: an exact match is required for beta generated code
#   endif
#endif

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

void
IceGrid::SessionPrx::keepAlive(const ::Ice::Context& context) const
{
    _makePromiseOutgoing<void>(true, this, &SessionPrx::_iceI_keepAlive, context).get();
}

::std::future<void>
IceGrid::SessionPrx::keepAliveAsync(const ::Ice::Context& context) const
{
    return _makePromiseOutgoing<void, ::std::promise>(false, this, &SessionPrx::_iceI_keepAlive, context);
}

::std::function<void()>
IceGrid::SessionPrx::keepAliveAsync(::std::function<void ()> response,
                                    ::std::function<void(::std::exception_ptr)> ex,
                                    ::std::function<void(bool)> sent,
                                    const ::Ice::Context& context) const
{
    return _makeLambdaOutgoing<void>(std::move(response), std::move(ex), std::move(sent), this, &IceGrid::SessionPrx::_iceI_keepAlive, context);
}

/// \cond INTERNAL
void
IceGrid::SessionPrx::_iceI_keepAlive(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>& outAsync, const ::Ice::Context& context) const
{
    outAsync->invoke(iceC_IceGrid_Session_keepAlive_name, ::Ice::OperationMode::Idempotent, ::Ice::FormatType::DefaultFormat, context,
        nullptr,
        nullptr);
}
/// \endcond

::std::optional<::Ice::ObjectPrx>
IceGrid::SessionPrx::allocateObjectById(const ::Ice::Identity& iceP_id, const ::Ice::Context& context) const
{
    return _makePromiseOutgoing<::std::optional<::Ice::ObjectPrx>>(true, this, &SessionPrx::_iceI_allocateObjectById, iceP_id, context).get();
}

::std::future<::std::optional<::Ice::ObjectPrx>>
IceGrid::SessionPrx::allocateObjectByIdAsync(const ::Ice::Identity& iceP_id, const ::Ice::Context& context) const
{
    return _makePromiseOutgoing<::std::optional<::Ice::ObjectPrx>, ::std::promise>(false, this, &SessionPrx::_iceI_allocateObjectById, iceP_id, context);
}

::std::function<void()>
IceGrid::SessionPrx::allocateObjectByIdAsync(const ::Ice::Identity& iceP_id,
                                             ::std::function<void (::std::optional<::Ice::ObjectPrx>)> response,
                                             ::std::function<void(::std::exception_ptr)> ex,
                                             ::std::function<void(bool)> sent,
                                             const ::Ice::Context& context) const
{
    return _makeLambdaOutgoing<::std::optional<::Ice::ObjectPrx>>(std::move(response), std::move(ex), std::move(sent), this, &IceGrid::SessionPrx::_iceI_allocateObjectById, iceP_id, context);
}

/// \cond INTERNAL
void
IceGrid::SessionPrx::_iceI_allocateObjectById(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<::std::optional<::Ice::ObjectPrx>>>& outAsync, const ::Ice::Identity& iceP_id, const ::Ice::Context& context) const
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

::std::optional<::Ice::ObjectPrx>
IceGrid::SessionPrx::allocateObjectByType(const ::std::string& iceP_type, const ::Ice::Context& context) const
{
    return _makePromiseOutgoing<::std::optional<::Ice::ObjectPrx>>(true, this, &SessionPrx::_iceI_allocateObjectByType, iceP_type, context).get();
}

::std::future<::std::optional<::Ice::ObjectPrx>>
IceGrid::SessionPrx::allocateObjectByTypeAsync(const ::std::string& iceP_type, const ::Ice::Context& context) const
{
    return _makePromiseOutgoing<::std::optional<::Ice::ObjectPrx>, ::std::promise>(false, this, &SessionPrx::_iceI_allocateObjectByType, iceP_type, context);
}

::std::function<void()>
IceGrid::SessionPrx::allocateObjectByTypeAsync(const ::std::string& iceP_type,
                                               ::std::function<void (::std::optional<::Ice::ObjectPrx>)> response,
                                               ::std::function<void(::std::exception_ptr)> ex,
                                               ::std::function<void(bool)> sent,
                                               const ::Ice::Context& context) const
{
    return _makeLambdaOutgoing<::std::optional<::Ice::ObjectPrx>>(std::move(response), std::move(ex), std::move(sent), this, &IceGrid::SessionPrx::_iceI_allocateObjectByType, iceP_type, context);
}

/// \cond INTERNAL
void
IceGrid::SessionPrx::_iceI_allocateObjectByType(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<::std::optional<::Ice::ObjectPrx>>>& outAsync, const ::std::string& iceP_type, const ::Ice::Context& context) const
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

void
IceGrid::SessionPrx::releaseObject(const ::Ice::Identity& iceP_id, const ::Ice::Context& context) const
{
    _makePromiseOutgoing<void>(true, this, &SessionPrx::_iceI_releaseObject, iceP_id, context).get();
}

::std::future<void>
IceGrid::SessionPrx::releaseObjectAsync(const ::Ice::Identity& iceP_id, const ::Ice::Context& context) const
{
    return _makePromiseOutgoing<void, ::std::promise>(false, this, &SessionPrx::_iceI_releaseObject, iceP_id, context);
}

::std::function<void()>
IceGrid::SessionPrx::releaseObjectAsync(const ::Ice::Identity& iceP_id,
                                        ::std::function<void ()> response,
                                        ::std::function<void(::std::exception_ptr)> ex,
                                        ::std::function<void(bool)> sent,
                                        const ::Ice::Context& context) const
{
    return _makeLambdaOutgoing<void>(std::move(response), std::move(ex), std::move(sent), this, &IceGrid::SessionPrx::_iceI_releaseObject, iceP_id, context);
}

/// \cond INTERNAL
void
IceGrid::SessionPrx::_iceI_releaseObject(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>& outAsync, const ::Ice::Identity& iceP_id, const ::Ice::Context& context) const
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

void
IceGrid::SessionPrx::setAllocationTimeout(::std::int32_t iceP_timeout, const ::Ice::Context& context) const
{
    _makePromiseOutgoing<void>(true, this, &SessionPrx::_iceI_setAllocationTimeout, iceP_timeout, context).get();
}

::std::future<void>
IceGrid::SessionPrx::setAllocationTimeoutAsync(::std::int32_t iceP_timeout, const ::Ice::Context& context) const
{
    return _makePromiseOutgoing<void, ::std::promise>(false, this, &SessionPrx::_iceI_setAllocationTimeout, iceP_timeout, context);
}

::std::function<void()>
IceGrid::SessionPrx::setAllocationTimeoutAsync(::std::int32_t iceP_timeout,
                                               ::std::function<void ()> response,
                                               ::std::function<void(::std::exception_ptr)> ex,
                                               ::std::function<void(bool)> sent,
                                               const ::Ice::Context& context) const
{
    return _makeLambdaOutgoing<void>(std::move(response), std::move(ex), std::move(sent), this, &IceGrid::SessionPrx::_iceI_setAllocationTimeout, iceP_timeout, context);
}

/// \cond INTERNAL
void
IceGrid::SessionPrx::_iceI_setAllocationTimeout(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>& outAsync, ::std::int32_t iceP_timeout, const ::Ice::Context& context) const
{
    outAsync->invoke(iceC_IceGrid_Session_setAllocationTimeout_name, ::Ice::OperationMode::Idempotent, ::Ice::FormatType::DefaultFormat, context,
        [&](::Ice::OutputStream* ostr)
        {
            ostr->writeAll(iceP_timeout);
        },
        nullptr);
}
/// \endcond

const ::std::string&
IceGrid::SessionPrx::ice_staticId()
{
    return Session::ice_staticId();
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
    auto responseCB = [inA](const ::std::optional<::Ice::ObjectPrx>& ret)
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
    auto responseCB = [inA](const ::std::optional<::Ice::ObjectPrx>& ret)
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
    ::std::int32_t iceP_timeout;
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
