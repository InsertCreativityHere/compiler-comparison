//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.7.10
//
// <auto-generated>
//
// Generated from file `ServiceManager.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

#ifndef ICEBOX_API_EXPORTS
#   define ICEBOX_API_EXPORTS
#endif
#define ICE_BUILDING_GENERATED_CODE
#include <ServiceManager.h>
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

const ::IceInternal::DefaultUserExceptionFactoryInit<::IceBox::AlreadyStartedException> iceC_IceBox_AlreadyStartedException_init("::IceBox::AlreadyStartedException");

const ::IceInternal::DefaultUserExceptionFactoryInit<::IceBox::AlreadyStoppedException> iceC_IceBox_AlreadyStoppedException_init("::IceBox::AlreadyStoppedException");

const ::IceInternal::DefaultUserExceptionFactoryInit<::IceBox::NoSuchServiceException> iceC_IceBox_NoSuchServiceException_init("::IceBox::NoSuchServiceException");

const ::std::string iceC_IceBox_ServiceObserver_ids[2] =
{
    "::Ice::Object",
    "::IceBox::ServiceObserver"
};
const ::std::string iceC_IceBox_ServiceObserver_ops[] =
{
    "ice_id",
    "ice_ids",
    "ice_isA",
    "ice_ping",
    "servicesStarted",
    "servicesStopped"
};
const ::std::string iceC_IceBox_ServiceObserver_servicesStarted_name = "servicesStarted";
const ::std::string iceC_IceBox_ServiceObserver_servicesStopped_name = "servicesStopped";

const ::std::string iceC_IceBox_ServiceManager_ids[2] =
{
    "::Ice::Object",
    "::IceBox::ServiceManager"
};
const ::std::string iceC_IceBox_ServiceManager_ops[] =
{
    "addObserver",
    "ice_id",
    "ice_ids",
    "ice_isA",
    "ice_ping",
    "shutdown",
    "startService",
    "stopService"
};
const ::std::string iceC_IceBox_ServiceManager_startService_name = "startService";
const ::std::string iceC_IceBox_ServiceManager_stopService_name = "stopService";
const ::std::string iceC_IceBox_ServiceManager_addObserver_name = "addObserver";
const ::std::string iceC_IceBox_ServiceManager_shutdown_name = "shutdown";

}

IceBox::AlreadyStartedException::~AlreadyStartedException()
{
}

const ::std::string&
IceBox::AlreadyStartedException::ice_staticId()
{
    static const ::std::string typeId = "::IceBox::AlreadyStartedException";
    return typeId;
}

IceBox::AlreadyStoppedException::~AlreadyStoppedException()
{
}

const ::std::string&
IceBox::AlreadyStoppedException::ice_staticId()
{
    static const ::std::string typeId = "::IceBox::AlreadyStoppedException";
    return typeId;
}

IceBox::NoSuchServiceException::~NoSuchServiceException()
{
}

const ::std::string&
IceBox::NoSuchServiceException::ice_staticId()
{
    static const ::std::string typeId = "::IceBox::NoSuchServiceException";
    return typeId;
}

bool
IceBox::ServiceObserver::ice_isA(::std::string s, const ::Ice::Current&) const
{
    return ::std::binary_search(iceC_IceBox_ServiceObserver_ids, iceC_IceBox_ServiceObserver_ids + 2, s);
}

::std::vector<::std::string>
IceBox::ServiceObserver::ice_ids(const ::Ice::Current&) const
{
    return ::std::vector<::std::string>(&iceC_IceBox_ServiceObserver_ids[0], &iceC_IceBox_ServiceObserver_ids[2]);
}

::std::string
IceBox::ServiceObserver::ice_id(const ::Ice::Current&) const
{
    return ice_staticId();
}

const ::std::string&
IceBox::ServiceObserver::ice_staticId()
{
    static const ::std::string typeId = "::IceBox::ServiceObserver";
    return typeId;
}

/// \cond INTERNAL
bool
IceBox::ServiceObserver::_iceD_servicesStarted(::IceInternal::Incoming& inS, const ::Ice::Current& current)
{
    _iceCheckMode(::Ice::OperationMode::Normal, current.mode);
    auto istr = inS.startReadParams();
    ::Ice::StringSeq iceP_services;
    istr->readAll(iceP_services);
    inS.endReadParams();
    this->servicesStarted(::std::move(iceP_services), current);
    inS.writeEmptyParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
IceBox::ServiceObserver::_iceD_servicesStopped(::IceInternal::Incoming& inS, const ::Ice::Current& current)
{
    _iceCheckMode(::Ice::OperationMode::Normal, current.mode);
    auto istr = inS.startReadParams();
    ::Ice::StringSeq iceP_services;
    istr->readAll(iceP_services);
    inS.endReadParams();
    this->servicesStopped(::std::move(iceP_services), current);
    inS.writeEmptyParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
IceBox::ServiceObserver::_iceDispatch(::IceInternal::Incoming& in, const ::Ice::Current& current)
{
    ::std::pair<const ::std::string*, const ::std::string*> r = ::std::equal_range(iceC_IceBox_ServiceObserver_ops, iceC_IceBox_ServiceObserver_ops + 6, current.operation);
    if(r.first == r.second)
    {
        throw ::Ice::OperationNotExistException(__FILE__, __LINE__, current.id, current.facet, current.operation);
    }

    switch(r.first - iceC_IceBox_ServiceObserver_ops)
    {
        case 0:
        {
            return _iceD_ice_id(in, current);
        }
        case 1:
        {
            return _iceD_ice_ids(in, current);
        }
        case 2:
        {
            return _iceD_ice_isA(in, current);
        }
        case 3:
        {
            return _iceD_ice_ping(in, current);
        }
        case 4:
        {
            return _iceD_servicesStarted(in, current);
        }
        case 5:
        {
            return _iceD_servicesStopped(in, current);
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
IceBox::ServiceManager::ice_isA(::std::string s, const ::Ice::Current&) const
{
    return ::std::binary_search(iceC_IceBox_ServiceManager_ids, iceC_IceBox_ServiceManager_ids + 2, s);
}

::std::vector<::std::string>
IceBox::ServiceManager::ice_ids(const ::Ice::Current&) const
{
    return ::std::vector<::std::string>(&iceC_IceBox_ServiceManager_ids[0], &iceC_IceBox_ServiceManager_ids[2]);
}

::std::string
IceBox::ServiceManager::ice_id(const ::Ice::Current&) const
{
    return ice_staticId();
}

const ::std::string&
IceBox::ServiceManager::ice_staticId()
{
    static const ::std::string typeId = "::IceBox::ServiceManager";
    return typeId;
}

/// \cond INTERNAL
bool
IceBox::ServiceManager::_iceD_startService(::IceInternal::Incoming& inS, const ::Ice::Current& current)
{
    _iceCheckMode(::Ice::OperationMode::Normal, current.mode);
    auto istr = inS.startReadParams();
    ::std::string iceP_service;
    istr->readAll(iceP_service);
    inS.endReadParams();
    this->startService(::std::move(iceP_service), current);
    inS.writeEmptyParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
IceBox::ServiceManager::_iceD_stopService(::IceInternal::Incoming& inS, const ::Ice::Current& current)
{
    _iceCheckMode(::Ice::OperationMode::Normal, current.mode);
    auto istr = inS.startReadParams();
    ::std::string iceP_service;
    istr->readAll(iceP_service);
    inS.endReadParams();
    this->stopService(::std::move(iceP_service), current);
    inS.writeEmptyParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
IceBox::ServiceManager::_iceD_addObserver(::IceInternal::Incoming& inS, const ::Ice::Current& current)
{
    _iceCheckMode(::Ice::OperationMode::Normal, current.mode);
    auto istr = inS.startReadParams();
    ::std::shared_ptr<ServiceObserverPrx> iceP_observer;
    istr->readAll(iceP_observer);
    inS.endReadParams();
    this->addObserver(::std::move(iceP_observer), current);
    inS.writeEmptyParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
IceBox::ServiceManager::_iceD_shutdown(::IceInternal::Incoming& inS, const ::Ice::Current& current)
{
    _iceCheckMode(::Ice::OperationMode::Normal, current.mode);
    inS.readEmptyParams();
    this->shutdown(current);
    inS.writeEmptyParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
IceBox::ServiceManager::_iceDispatch(::IceInternal::Incoming& in, const ::Ice::Current& current)
{
    ::std::pair<const ::std::string*, const ::std::string*> r = ::std::equal_range(iceC_IceBox_ServiceManager_ops, iceC_IceBox_ServiceManager_ops + 8, current.operation);
    if(r.first == r.second)
    {
        throw ::Ice::OperationNotExistException(__FILE__, __LINE__, current.id, current.facet, current.operation);
    }

    switch(r.first - iceC_IceBox_ServiceManager_ops)
    {
        case 0:
        {
            return _iceD_addObserver(in, current);
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
            return _iceD_shutdown(in, current);
        }
        case 6:
        {
            return _iceD_startService(in, current);
        }
        case 7:
        {
            return _iceD_stopService(in, current);
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
IceBox::ServiceObserverPrx::_iceI_servicesStarted(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>& outAsync, const ::Ice::StringSeq& iceP_services, const ::Ice::Context& context)
{
    outAsync->invoke(iceC_IceBox_ServiceObserver_servicesStarted_name, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        [&](::Ice::OutputStream* ostr)
        {
            ostr->writeAll(iceP_services);
        },
        nullptr);
}
/// \endcond

/// \cond INTERNAL
void
IceBox::ServiceObserverPrx::_iceI_servicesStopped(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>& outAsync, const ::Ice::StringSeq& iceP_services, const ::Ice::Context& context)
{
    outAsync->invoke(iceC_IceBox_ServiceObserver_servicesStopped_name, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        [&](::Ice::OutputStream* ostr)
        {
            ostr->writeAll(iceP_services);
        },
        nullptr);
}
/// \endcond

/// \cond INTERNAL
::std::shared_ptr<::Ice::ObjectPrx>
IceBox::ServiceObserverPrx::_newInstance() const
{
    return ::IceInternal::createProxy<ServiceObserverPrx>();
}
/// \endcond

const ::std::string&
IceBox::ServiceObserverPrx::ice_staticId()
{
    return ServiceObserver::ice_staticId();
}

/// \cond INTERNAL
void
IceBox::ServiceManagerPrx::_iceI_startService(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>& outAsync, const ::std::string& iceP_service, const ::Ice::Context& context)
{
    _checkTwowayOnly(iceC_IceBox_ServiceManager_startService_name);
    outAsync->invoke(iceC_IceBox_ServiceManager_startService_name, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        [&](::Ice::OutputStream* ostr)
        {
            ostr->writeAll(iceP_service);
        },
        [](const ::Ice::UserException& ex)
        {
            try
            {
                ex.ice_throw();
            }
            catch(const AlreadyStartedException&)
            {
                throw;
            }
            catch(const NoSuchServiceException&)
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
IceBox::ServiceManagerPrx::_iceI_stopService(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>& outAsync, const ::std::string& iceP_service, const ::Ice::Context& context)
{
    _checkTwowayOnly(iceC_IceBox_ServiceManager_stopService_name);
    outAsync->invoke(iceC_IceBox_ServiceManager_stopService_name, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        [&](::Ice::OutputStream* ostr)
        {
            ostr->writeAll(iceP_service);
        },
        [](const ::Ice::UserException& ex)
        {
            try
            {
                ex.ice_throw();
            }
            catch(const AlreadyStoppedException&)
            {
                throw;
            }
            catch(const NoSuchServiceException&)
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
IceBox::ServiceManagerPrx::_iceI_addObserver(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>& outAsync, const ::std::shared_ptr<ServiceObserverPrx>& iceP_observer, const ::Ice::Context& context)
{
    outAsync->invoke(iceC_IceBox_ServiceManager_addObserver_name, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        [&](::Ice::OutputStream* ostr)
        {
            ostr->writeAll(iceP_observer);
        },
        nullptr);
}
/// \endcond

/// \cond INTERNAL
void
IceBox::ServiceManagerPrx::_iceI_shutdown(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>& outAsync, const ::Ice::Context& context)
{
    outAsync->invoke(iceC_IceBox_ServiceManager_shutdown_name, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        nullptr,
        nullptr);
}
/// \endcond

/// \cond INTERNAL
::std::shared_ptr<::Ice::ObjectPrx>
IceBox::ServiceManagerPrx::_newInstance() const
{
    return ::IceInternal::createProxy<ServiceManagerPrx>();
}
/// \endcond

const ::std::string&
IceBox::ServiceManagerPrx::ice_staticId()
{
    return ServiceManager::ice_staticId();
}

#else // C++98 mapping

namespace
{

const ::std::string iceC_IceBox_ServiceObserver_servicesStarted_name = "servicesStarted";

const ::std::string iceC_IceBox_ServiceObserver_servicesStopped_name = "servicesStopped";

const ::std::string iceC_IceBox_ServiceManager_startService_name = "startService";

const ::std::string iceC_IceBox_ServiceManager_stopService_name = "stopService";

const ::std::string iceC_IceBox_ServiceManager_addObserver_name = "addObserver";

const ::std::string iceC_IceBox_ServiceManager_shutdown_name = "shutdown";

}

namespace
{

const ::IceInternal::DefaultUserExceptionFactoryInit< ::IceBox::AlreadyStartedException> iceC_IceBox_AlreadyStartedException_init("::IceBox::AlreadyStartedException");

}

#ifdef ICE_CPP11_COMPILER
IceBox::AlreadyStartedException::~AlreadyStartedException()
{
}
#else
IceBox::AlreadyStartedException::~AlreadyStartedException() throw()
{
}
#endif

::std::string
IceBox::AlreadyStartedException::ice_id() const
{
    return "::IceBox::AlreadyStartedException";
}

IceBox::AlreadyStartedException*
IceBox::AlreadyStartedException::ice_clone() const
{
    return new AlreadyStartedException(*this);
}

void
IceBox::AlreadyStartedException::ice_throw() const
{
    throw *this;
}

/// \cond STREAM
void
IceBox::AlreadyStartedException::_writeImpl(::Ice::OutputStream* ostr) const
{
    ostr->startSlice("::IceBox::AlreadyStartedException", -1, true);
    ::Ice::StreamWriter< AlreadyStartedException, ::Ice::OutputStream>::write(ostr, *this);
    ostr->endSlice();
}

void
IceBox::AlreadyStartedException::_readImpl(::Ice::InputStream* istr)
{
    istr->startSlice();
    ::Ice::StreamReader< AlreadyStartedException, ::Ice::InputStream>::read(istr, *this);
    istr->endSlice();
}
/// \endcond

namespace
{

const ::IceInternal::DefaultUserExceptionFactoryInit< ::IceBox::AlreadyStoppedException> iceC_IceBox_AlreadyStoppedException_init("::IceBox::AlreadyStoppedException");

}

#ifdef ICE_CPP11_COMPILER
IceBox::AlreadyStoppedException::~AlreadyStoppedException()
{
}
#else
IceBox::AlreadyStoppedException::~AlreadyStoppedException() throw()
{
}
#endif

::std::string
IceBox::AlreadyStoppedException::ice_id() const
{
    return "::IceBox::AlreadyStoppedException";
}

IceBox::AlreadyStoppedException*
IceBox::AlreadyStoppedException::ice_clone() const
{
    return new AlreadyStoppedException(*this);
}

void
IceBox::AlreadyStoppedException::ice_throw() const
{
    throw *this;
}

/// \cond STREAM
void
IceBox::AlreadyStoppedException::_writeImpl(::Ice::OutputStream* ostr) const
{
    ostr->startSlice("::IceBox::AlreadyStoppedException", -1, true);
    ::Ice::StreamWriter< AlreadyStoppedException, ::Ice::OutputStream>::write(ostr, *this);
    ostr->endSlice();
}

void
IceBox::AlreadyStoppedException::_readImpl(::Ice::InputStream* istr)
{
    istr->startSlice();
    ::Ice::StreamReader< AlreadyStoppedException, ::Ice::InputStream>::read(istr, *this);
    istr->endSlice();
}
/// \endcond

namespace
{

const ::IceInternal::DefaultUserExceptionFactoryInit< ::IceBox::NoSuchServiceException> iceC_IceBox_NoSuchServiceException_init("::IceBox::NoSuchServiceException");

}

#ifdef ICE_CPP11_COMPILER
IceBox::NoSuchServiceException::~NoSuchServiceException()
{
}
#else
IceBox::NoSuchServiceException::~NoSuchServiceException() throw()
{
}
#endif

::std::string
IceBox::NoSuchServiceException::ice_id() const
{
    return "::IceBox::NoSuchServiceException";
}

IceBox::NoSuchServiceException*
IceBox::NoSuchServiceException::ice_clone() const
{
    return new NoSuchServiceException(*this);
}

void
IceBox::NoSuchServiceException::ice_throw() const
{
    throw *this;
}

/// \cond STREAM
void
IceBox::NoSuchServiceException::_writeImpl(::Ice::OutputStream* ostr) const
{
    ostr->startSlice("::IceBox::NoSuchServiceException", -1, true);
    ::Ice::StreamWriter< NoSuchServiceException, ::Ice::OutputStream>::write(ostr, *this);
    ostr->endSlice();
}

void
IceBox::NoSuchServiceException::_readImpl(::Ice::InputStream* istr)
{
    istr->startSlice();
    ::Ice::StreamReader< NoSuchServiceException, ::Ice::InputStream>::read(istr, *this);
    istr->endSlice();
}
/// \endcond

/// \cond INTERNAL
ICEBOX_API ::IceProxy::Ice::Object* ::IceProxy::IceBox::upCast(ServiceObserver* p) { return p; }

void
::IceProxy::IceBox::_readProxy(::Ice::InputStream* istr, ::IceInternal::ProxyHandle< ServiceObserver>& v)
{
    ::Ice::ObjectPrx proxy;
    istr->read(proxy);
    if(!proxy)
    {
        v = 0;
    }
    else
    {
        v = new ServiceObserver;
        v->_copyFrom(proxy);
    }
}
/// \endcond

::Ice::AsyncResultPtr
IceProxy::IceBox::ServiceObserver::_iceI_begin_servicesStarted(const ::Ice::StringSeq& iceP_services, const ::Ice::Context& context, const ::IceInternal::CallbackBasePtr& del, const ::Ice::LocalObjectPtr& cookie, bool sync)
{
    ::IceInternal::OutgoingAsyncPtr result = new ::IceInternal::CallbackOutgoing(this, iceC_IceBox_ServiceObserver_servicesStarted_name, del, cookie, sync);
    try
    {
        result->prepare(iceC_IceBox_ServiceObserver_servicesStarted_name, ::Ice::Normal, context);
        ::Ice::OutputStream* ostr = result->startWriteParams(::Ice::DefaultFormat);
        ostr->write(iceP_services);
        result->endWriteParams();
        result->invoke(iceC_IceBox_ServiceObserver_servicesStarted_name);
    }
    catch(const ::Ice::Exception& ex)
    {
        result->abort(ex);
    }
    return result;
}

void
IceProxy::IceBox::ServiceObserver::end_servicesStarted(const ::Ice::AsyncResultPtr& result)
{
    _end(result, iceC_IceBox_ServiceObserver_servicesStarted_name);
}

::Ice::AsyncResultPtr
IceProxy::IceBox::ServiceObserver::_iceI_begin_servicesStopped(const ::Ice::StringSeq& iceP_services, const ::Ice::Context& context, const ::IceInternal::CallbackBasePtr& del, const ::Ice::LocalObjectPtr& cookie, bool sync)
{
    ::IceInternal::OutgoingAsyncPtr result = new ::IceInternal::CallbackOutgoing(this, iceC_IceBox_ServiceObserver_servicesStopped_name, del, cookie, sync);
    try
    {
        result->prepare(iceC_IceBox_ServiceObserver_servicesStopped_name, ::Ice::Normal, context);
        ::Ice::OutputStream* ostr = result->startWriteParams(::Ice::DefaultFormat);
        ostr->write(iceP_services);
        result->endWriteParams();
        result->invoke(iceC_IceBox_ServiceObserver_servicesStopped_name);
    }
    catch(const ::Ice::Exception& ex)
    {
        result->abort(ex);
    }
    return result;
}

void
IceProxy::IceBox::ServiceObserver::end_servicesStopped(const ::Ice::AsyncResultPtr& result)
{
    _end(result, iceC_IceBox_ServiceObserver_servicesStopped_name);
}

/// \cond INTERNAL
::IceProxy::Ice::Object*
IceProxy::IceBox::ServiceObserver::_newInstance() const
{
    return new ServiceObserver;
}
/// \endcond

const ::std::string&
IceProxy::IceBox::ServiceObserver::ice_staticId()
{
    return ::IceBox::ServiceObserver::ice_staticId();
}

/// \cond INTERNAL
ICEBOX_API ::IceProxy::Ice::Object* ::IceProxy::IceBox::upCast(ServiceManager* p) { return p; }

void
::IceProxy::IceBox::_readProxy(::Ice::InputStream* istr, ::IceInternal::ProxyHandle< ServiceManager>& v)
{
    ::Ice::ObjectPrx proxy;
    istr->read(proxy);
    if(!proxy)
    {
        v = 0;
    }
    else
    {
        v = new ServiceManager;
        v->_copyFrom(proxy);
    }
}
/// \endcond

::Ice::AsyncResultPtr
IceProxy::IceBox::ServiceManager::_iceI_begin_startService(const ::std::string& iceP_service, const ::Ice::Context& context, const ::IceInternal::CallbackBasePtr& del, const ::Ice::LocalObjectPtr& cookie, bool sync)
{
    _checkTwowayOnly(iceC_IceBox_ServiceManager_startService_name, sync);
    ::IceInternal::OutgoingAsyncPtr result = new ::IceInternal::CallbackOutgoing(this, iceC_IceBox_ServiceManager_startService_name, del, cookie, sync);
    try
    {
        result->prepare(iceC_IceBox_ServiceManager_startService_name, ::Ice::Normal, context);
        ::Ice::OutputStream* ostr = result->startWriteParams(::Ice::DefaultFormat);
        ostr->write(iceP_service);
        result->endWriteParams();
        result->invoke(iceC_IceBox_ServiceManager_startService_name);
    }
    catch(const ::Ice::Exception& ex)
    {
        result->abort(ex);
    }
    return result;
}

void
IceProxy::IceBox::ServiceManager::end_startService(const ::Ice::AsyncResultPtr& result)
{
    ::Ice::AsyncResult::_check(result, this, iceC_IceBox_ServiceManager_startService_name);
    if(!result->_waitForResponse())
    {
        try
        {
            result->_throwUserException();
        }
        catch(const ::IceBox::AlreadyStartedException&)
        {
            throw;
        }
        catch(const ::IceBox::NoSuchServiceException&)
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
IceProxy::IceBox::ServiceManager::_iceI_begin_stopService(const ::std::string& iceP_service, const ::Ice::Context& context, const ::IceInternal::CallbackBasePtr& del, const ::Ice::LocalObjectPtr& cookie, bool sync)
{
    _checkTwowayOnly(iceC_IceBox_ServiceManager_stopService_name, sync);
    ::IceInternal::OutgoingAsyncPtr result = new ::IceInternal::CallbackOutgoing(this, iceC_IceBox_ServiceManager_stopService_name, del, cookie, sync);
    try
    {
        result->prepare(iceC_IceBox_ServiceManager_stopService_name, ::Ice::Normal, context);
        ::Ice::OutputStream* ostr = result->startWriteParams(::Ice::DefaultFormat);
        ostr->write(iceP_service);
        result->endWriteParams();
        result->invoke(iceC_IceBox_ServiceManager_stopService_name);
    }
    catch(const ::Ice::Exception& ex)
    {
        result->abort(ex);
    }
    return result;
}

void
IceProxy::IceBox::ServiceManager::end_stopService(const ::Ice::AsyncResultPtr& result)
{
    ::Ice::AsyncResult::_check(result, this, iceC_IceBox_ServiceManager_stopService_name);
    if(!result->_waitForResponse())
    {
        try
        {
            result->_throwUserException();
        }
        catch(const ::IceBox::AlreadyStoppedException&)
        {
            throw;
        }
        catch(const ::IceBox::NoSuchServiceException&)
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
IceProxy::IceBox::ServiceManager::_iceI_begin_addObserver(const ::IceBox::ServiceObserverPrx& iceP_observer, const ::Ice::Context& context, const ::IceInternal::CallbackBasePtr& del, const ::Ice::LocalObjectPtr& cookie, bool sync)
{
    ::IceInternal::OutgoingAsyncPtr result = new ::IceInternal::CallbackOutgoing(this, iceC_IceBox_ServiceManager_addObserver_name, del, cookie, sync);
    try
    {
        result->prepare(iceC_IceBox_ServiceManager_addObserver_name, ::Ice::Normal, context);
        ::Ice::OutputStream* ostr = result->startWriteParams(::Ice::DefaultFormat);
        ostr->write(iceP_observer);
        result->endWriteParams();
        result->invoke(iceC_IceBox_ServiceManager_addObserver_name);
    }
    catch(const ::Ice::Exception& ex)
    {
        result->abort(ex);
    }
    return result;
}

void
IceProxy::IceBox::ServiceManager::end_addObserver(const ::Ice::AsyncResultPtr& result)
{
    _end(result, iceC_IceBox_ServiceManager_addObserver_name);
}

::Ice::AsyncResultPtr
IceProxy::IceBox::ServiceManager::_iceI_begin_shutdown(const ::Ice::Context& context, const ::IceInternal::CallbackBasePtr& del, const ::Ice::LocalObjectPtr& cookie, bool sync)
{
    ::IceInternal::OutgoingAsyncPtr result = new ::IceInternal::CallbackOutgoing(this, iceC_IceBox_ServiceManager_shutdown_name, del, cookie, sync);
    try
    {
        result->prepare(iceC_IceBox_ServiceManager_shutdown_name, ::Ice::Normal, context);
        result->writeEmptyParams();
        result->invoke(iceC_IceBox_ServiceManager_shutdown_name);
    }
    catch(const ::Ice::Exception& ex)
    {
        result->abort(ex);
    }
    return result;
}

void
IceProxy::IceBox::ServiceManager::end_shutdown(const ::Ice::AsyncResultPtr& result)
{
    _end(result, iceC_IceBox_ServiceManager_shutdown_name);
}

/// \cond INTERNAL
::IceProxy::Ice::Object*
IceProxy::IceBox::ServiceManager::_newInstance() const
{
    return new ServiceManager;
}
/// \endcond

const ::std::string&
IceProxy::IceBox::ServiceManager::ice_staticId()
{
    return ::IceBox::ServiceManager::ice_staticId();
}

IceBox::ServiceObserver::~ServiceObserver()
{
}

/// \cond INTERNAL
ICEBOX_API ::Ice::Object* IceBox::upCast(ServiceObserver* p) { return p; }

/// \endcond

namespace
{
const ::std::string iceC_IceBox_ServiceObserver_ids[2] =
{
    "::Ice::Object",
    "::IceBox::ServiceObserver"
};

}

bool
IceBox::ServiceObserver::ice_isA(const ::std::string& s, const ::Ice::Current&) const
{
    return ::std::binary_search(iceC_IceBox_ServiceObserver_ids, iceC_IceBox_ServiceObserver_ids + 2, s);
}

::std::vector< ::std::string>
IceBox::ServiceObserver::ice_ids(const ::Ice::Current&) const
{
    return ::std::vector< ::std::string>(&iceC_IceBox_ServiceObserver_ids[0], &iceC_IceBox_ServiceObserver_ids[2]);
}

const ::std::string&
IceBox::ServiceObserver::ice_id(const ::Ice::Current&) const
{
    return ice_staticId();
}

const ::std::string&
IceBox::ServiceObserver::ice_staticId()
{
    static const ::std::string typeId = "::IceBox::ServiceObserver";
    return typeId;
}

/// \cond INTERNAL
bool
IceBox::ServiceObserver::_iceD_servicesStarted(::IceInternal::Incoming& inS, const ::Ice::Current& current)
{
    _iceCheckMode(::Ice::Normal, current.mode);
    ::Ice::InputStream* istr = inS.startReadParams();
    ::Ice::StringSeq iceP_services;
    istr->read(iceP_services);
    inS.endReadParams();
    this->servicesStarted(iceP_services, current);
    inS.writeEmptyParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
IceBox::ServiceObserver::_iceD_servicesStopped(::IceInternal::Incoming& inS, const ::Ice::Current& current)
{
    _iceCheckMode(::Ice::Normal, current.mode);
    ::Ice::InputStream* istr = inS.startReadParams();
    ::Ice::StringSeq iceP_services;
    istr->read(iceP_services);
    inS.endReadParams();
    this->servicesStopped(iceP_services, current);
    inS.writeEmptyParams();
    return true;
}
/// \endcond

namespace
{
const ::std::string iceC_IceBox_ServiceObserver_all[] =
{
    "ice_id",
    "ice_ids",
    "ice_isA",
    "ice_ping",
    "servicesStarted",
    "servicesStopped"
};

}

/// \cond INTERNAL
bool
IceBox::ServiceObserver::_iceDispatch(::IceInternal::Incoming& in, const ::Ice::Current& current)
{
    ::std::pair<const ::std::string*, const ::std::string*> r = ::std::equal_range(iceC_IceBox_ServiceObserver_all, iceC_IceBox_ServiceObserver_all + 6, current.operation);
    if(r.first == r.second)
    {
        throw ::Ice::OperationNotExistException(__FILE__, __LINE__, current.id, current.facet, current.operation);
    }

    switch(r.first - iceC_IceBox_ServiceObserver_all)
    {
        case 0:
        {
            return _iceD_ice_id(in, current);
        }
        case 1:
        {
            return _iceD_ice_ids(in, current);
        }
        case 2:
        {
            return _iceD_ice_isA(in, current);
        }
        case 3:
        {
            return _iceD_ice_ping(in, current);
        }
        case 4:
        {
            return _iceD_servicesStarted(in, current);
        }
        case 5:
        {
            return _iceD_servicesStopped(in, current);
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
IceBox::ServiceObserver::_iceWriteImpl(::Ice::OutputStream* ostr) const
{
    ostr->startSlice(ice_staticId(), -1, true);
    ::Ice::StreamWriter< ServiceObserver, ::Ice::OutputStream>::write(ostr, *this);
    ostr->endSlice();
}

void
IceBox::ServiceObserver::_iceReadImpl(::Ice::InputStream* istr)
{
    istr->startSlice();
    ::Ice::StreamReader< ServiceObserver, ::Ice::InputStream>::read(istr, *this);
    istr->endSlice();
}
/// \endcond

/// \cond INTERNAL
void
IceBox::_icePatchObjectPtr(ServiceObserverPtr& handle, const ::Ice::ObjectPtr& v)
{
    handle = ServiceObserverPtr::dynamicCast(v);
    if(v && !handle)
    {
        IceInternal::Ex::throwUOE(ServiceObserver::ice_staticId(), v);
    }
}
/// \endcond

IceBox::ServiceManager::~ServiceManager()
{
}

/// \cond INTERNAL
ICEBOX_API ::Ice::Object* IceBox::upCast(ServiceManager* p) { return p; }

/// \endcond

namespace
{
const ::std::string iceC_IceBox_ServiceManager_ids[2] =
{
    "::Ice::Object",
    "::IceBox::ServiceManager"
};

}

bool
IceBox::ServiceManager::ice_isA(const ::std::string& s, const ::Ice::Current&) const
{
    return ::std::binary_search(iceC_IceBox_ServiceManager_ids, iceC_IceBox_ServiceManager_ids + 2, s);
}

::std::vector< ::std::string>
IceBox::ServiceManager::ice_ids(const ::Ice::Current&) const
{
    return ::std::vector< ::std::string>(&iceC_IceBox_ServiceManager_ids[0], &iceC_IceBox_ServiceManager_ids[2]);
}

const ::std::string&
IceBox::ServiceManager::ice_id(const ::Ice::Current&) const
{
    return ice_staticId();
}

const ::std::string&
IceBox::ServiceManager::ice_staticId()
{
    static const ::std::string typeId = "::IceBox::ServiceManager";
    return typeId;
}

/// \cond INTERNAL
bool
IceBox::ServiceManager::_iceD_startService(::IceInternal::Incoming& inS, const ::Ice::Current& current)
{
    _iceCheckMode(::Ice::Normal, current.mode);
    ::Ice::InputStream* istr = inS.startReadParams();
    ::std::string iceP_service;
    istr->read(iceP_service);
    inS.endReadParams();
    this->startService(iceP_service, current);
    inS.writeEmptyParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
IceBox::ServiceManager::_iceD_stopService(::IceInternal::Incoming& inS, const ::Ice::Current& current)
{
    _iceCheckMode(::Ice::Normal, current.mode);
    ::Ice::InputStream* istr = inS.startReadParams();
    ::std::string iceP_service;
    istr->read(iceP_service);
    inS.endReadParams();
    this->stopService(iceP_service, current);
    inS.writeEmptyParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
IceBox::ServiceManager::_iceD_addObserver(::IceInternal::Incoming& inS, const ::Ice::Current& current)
{
    _iceCheckMode(::Ice::Normal, current.mode);
    ::Ice::InputStream* istr = inS.startReadParams();
    ServiceObserverPrx iceP_observer;
    istr->read(iceP_observer);
    inS.endReadParams();
    this->addObserver(iceP_observer, current);
    inS.writeEmptyParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
IceBox::ServiceManager::_iceD_shutdown(::IceInternal::Incoming& inS, const ::Ice::Current& current)
{
    _iceCheckMode(::Ice::Normal, current.mode);
    inS.readEmptyParams();
    this->shutdown(current);
    inS.writeEmptyParams();
    return true;
}
/// \endcond

namespace
{
const ::std::string iceC_IceBox_ServiceManager_all[] =
{
    "addObserver",
    "ice_id",
    "ice_ids",
    "ice_isA",
    "ice_ping",
    "shutdown",
    "startService",
    "stopService"
};

}

/// \cond INTERNAL
bool
IceBox::ServiceManager::_iceDispatch(::IceInternal::Incoming& in, const ::Ice::Current& current)
{
    ::std::pair<const ::std::string*, const ::std::string*> r = ::std::equal_range(iceC_IceBox_ServiceManager_all, iceC_IceBox_ServiceManager_all + 8, current.operation);
    if(r.first == r.second)
    {
        throw ::Ice::OperationNotExistException(__FILE__, __LINE__, current.id, current.facet, current.operation);
    }

    switch(r.first - iceC_IceBox_ServiceManager_all)
    {
        case 0:
        {
            return _iceD_addObserver(in, current);
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
            return _iceD_shutdown(in, current);
        }
        case 6:
        {
            return _iceD_startService(in, current);
        }
        case 7:
        {
            return _iceD_stopService(in, current);
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
IceBox::ServiceManager::_iceWriteImpl(::Ice::OutputStream* ostr) const
{
    ostr->startSlice(ice_staticId(), -1, true);
    ::Ice::StreamWriter< ServiceManager, ::Ice::OutputStream>::write(ostr, *this);
    ostr->endSlice();
}

void
IceBox::ServiceManager::_iceReadImpl(::Ice::InputStream* istr)
{
    istr->startSlice();
    ::Ice::StreamReader< ServiceManager, ::Ice::InputStream>::read(istr, *this);
    istr->endSlice();
}
/// \endcond

/// \cond INTERNAL
void
IceBox::_icePatchObjectPtr(ServiceManagerPtr& handle, const ::Ice::ObjectPtr& v)
{
    handle = ServiceManagerPtr::dynamicCast(v);
    if(v && !handle)
    {
        IceInternal::Ex::throwUOE(ServiceManager::ice_staticId(), v);
    }
}
/// \endcond

namespace Ice
{
}

#endif
