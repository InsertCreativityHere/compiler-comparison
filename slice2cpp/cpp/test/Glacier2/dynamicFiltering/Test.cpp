//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.7.10
//
// <auto-generated>
//
// Generated from file `Test.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

#define ICE_BUILDING_GENERATED_CODE
#include <Test.h>
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

const ::std::string iceC_Test_Backend_ids[2] =
{
    "::Ice::Object",
    "::Test::Backend"
};
const ::std::string iceC_Test_Backend_ops[] =
{
    "check",
    "ice_id",
    "ice_ids",
    "ice_isA",
    "ice_ping",
    "shutdown"
};
const ::std::string iceC_Test_Backend_check_name = "check";
const ::std::string iceC_Test_Backend_shutdown_name = "shutdown";

const ::std::string iceC_Test_TestController_ids[2] =
{
    "::Ice::Object",
    "::Test::TestController"
};
const ::std::string iceC_Test_TestController_ops[] =
{
    "ice_id",
    "ice_ids",
    "ice_isA",
    "ice_ping",
    "shutdown",
    "step"
};
const ::std::string iceC_Test_TestController_step_name = "step";
const ::std::string iceC_Test_TestController_shutdown_name = "shutdown";

const ::std::string iceC_Test_TestSession_ids[3] =
{
    "::Glacier2::Session",
    "::Ice::Object",
    "::Test::TestSession"
};
const ::std::string iceC_Test_TestSession_ops[] =
{
    "destroy",
    "ice_id",
    "ice_ids",
    "ice_isA",
    "ice_ping",
    "shutdown"
};
const ::std::string iceC_Test_TestSession_shutdown_name = "shutdown";

}

bool
Test::Backend::ice_isA(::std::string s, const ::Ice::Current&) const
{
    return ::std::binary_search(iceC_Test_Backend_ids, iceC_Test_Backend_ids + 2, s);
}

::std::vector<::std::string>
Test::Backend::ice_ids(const ::Ice::Current&) const
{
    return ::std::vector<::std::string>(&iceC_Test_Backend_ids[0], &iceC_Test_Backend_ids[2]);
}

::std::string
Test::Backend::ice_id(const ::Ice::Current&) const
{
    return ice_staticId();
}

const ::std::string&
Test::Backend::ice_staticId()
{
    static const ::std::string typeId = "::Test::Backend";
    return typeId;
}

/// \cond INTERNAL
bool
Test::Backend::_iceD_check(::IceInternal::Incoming& inS, const ::Ice::Current& current)
{
    _iceCheckMode(::Ice::OperationMode::Normal, current.mode);
    inS.readEmptyParams();
    this->check(current);
    inS.writeEmptyParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
Test::Backend::_iceD_shutdown(::IceInternal::Incoming& inS, const ::Ice::Current& current)
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
Test::Backend::_iceDispatch(::IceInternal::Incoming& in, const ::Ice::Current& current)
{
    ::std::pair<const ::std::string*, const ::std::string*> r = ::std::equal_range(iceC_Test_Backend_ops, iceC_Test_Backend_ops + 6, current.operation);
    if(r.first == r.second)
    {
        throw ::Ice::OperationNotExistException(__FILE__, __LINE__, current.id, current.facet, current.operation);
    }

    switch(r.first - iceC_Test_Backend_ops)
    {
        case 0:
        {
            return _iceD_check(in, current);
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
        default:
        {
            assert(false);
            throw ::Ice::OperationNotExistException(__FILE__, __LINE__, current.id, current.facet, current.operation);
        }
    }
}
/// \endcond

bool
Test::TestController::ice_isA(::std::string s, const ::Ice::Current&) const
{
    return ::std::binary_search(iceC_Test_TestController_ids, iceC_Test_TestController_ids + 2, s);
}

::std::vector<::std::string>
Test::TestController::ice_ids(const ::Ice::Current&) const
{
    return ::std::vector<::std::string>(&iceC_Test_TestController_ids[0], &iceC_Test_TestController_ids[2]);
}

::std::string
Test::TestController::ice_id(const ::Ice::Current&) const
{
    return ice_staticId();
}

const ::std::string&
Test::TestController::ice_staticId()
{
    static const ::std::string typeId = "::Test::TestController";
    return typeId;
}

/// \cond INTERNAL
bool
Test::TestController::_iceD_step(::IceInternal::Incoming& inS, const ::Ice::Current& current)
{
    _iceCheckMode(::Ice::OperationMode::Normal, current.mode);
    auto istr = inS.startReadParams();
    ::std::shared_ptr<::Glacier2::SessionPrx> iceP_currentSession;
    TestToken iceP_currentState;
    istr->readAll(iceP_currentSession, iceP_currentState);
    inS.endReadParams();
    TestToken iceP_newState;
    this->step(::std::move(iceP_currentSession), ::std::move(iceP_currentState), iceP_newState, current);
    auto ostr = inS.startWriteParams();
    ostr->writeAll(iceP_newState);
    inS.endWriteParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
Test::TestController::_iceD_shutdown(::IceInternal::Incoming& inS, const ::Ice::Current& current)
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
Test::TestController::_iceDispatch(::IceInternal::Incoming& in, const ::Ice::Current& current)
{
    ::std::pair<const ::std::string*, const ::std::string*> r = ::std::equal_range(iceC_Test_TestController_ops, iceC_Test_TestController_ops + 6, current.operation);
    if(r.first == r.second)
    {
        throw ::Ice::OperationNotExistException(__FILE__, __LINE__, current.id, current.facet, current.operation);
    }

    switch(r.first - iceC_Test_TestController_ops)
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
            return _iceD_shutdown(in, current);
        }
        case 5:
        {
            return _iceD_step(in, current);
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
Test::TestSession::ice_isA(::std::string s, const ::Ice::Current&) const
{
    return ::std::binary_search(iceC_Test_TestSession_ids, iceC_Test_TestSession_ids + 3, s);
}

::std::vector<::std::string>
Test::TestSession::ice_ids(const ::Ice::Current&) const
{
    return ::std::vector<::std::string>(&iceC_Test_TestSession_ids[0], &iceC_Test_TestSession_ids[3]);
}

::std::string
Test::TestSession::ice_id(const ::Ice::Current&) const
{
    return ice_staticId();
}

const ::std::string&
Test::TestSession::ice_staticId()
{
    static const ::std::string typeId = "::Test::TestSession";
    return typeId;
}

/// \cond INTERNAL
bool
Test::TestSession::_iceD_shutdown(::IceInternal::Incoming& inS, const ::Ice::Current& current)
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
Test::TestSession::_iceDispatch(::IceInternal::Incoming& in, const ::Ice::Current& current)
{
    ::std::pair<const ::std::string*, const ::std::string*> r = ::std::equal_range(iceC_Test_TestSession_ops, iceC_Test_TestSession_ops + 6, current.operation);
    if(r.first == r.second)
    {
        throw ::Ice::OperationNotExistException(__FILE__, __LINE__, current.id, current.facet, current.operation);
    }

    switch(r.first - iceC_Test_TestSession_ops)
    {
        case 0:
        {
            return _iceD_destroy(in, current);
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
Test::BackendPrx::_iceI_check(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>& outAsync, const ::Ice::Context& context)
{
    outAsync->invoke(iceC_Test_Backend_check_name, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        nullptr,
        nullptr);
}
/// \endcond

/// \cond INTERNAL
void
Test::BackendPrx::_iceI_shutdown(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>& outAsync, const ::Ice::Context& context)
{
    outAsync->invoke(iceC_Test_Backend_shutdown_name, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        nullptr,
        nullptr);
}
/// \endcond

/// \cond INTERNAL
::std::shared_ptr<::Ice::ObjectPrx>
Test::BackendPrx::_newInstance() const
{
    return ::IceInternal::createProxy<BackendPrx>();
}
/// \endcond

const ::std::string&
Test::BackendPrx::ice_staticId()
{
    return Backend::ice_staticId();
}

/// \cond INTERNAL
void
Test::TestControllerPrx::_iceI_step(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<::Test::TestToken>>& outAsync, const ::std::shared_ptr<::Glacier2::SessionPrx>& iceP_currentSession, const TestToken& iceP_currentState, const ::Ice::Context& context)
{
    _checkTwowayOnly(iceC_Test_TestController_step_name);
    outAsync->invoke(iceC_Test_TestController_step_name, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        [&](::Ice::OutputStream* ostr)
        {
            ostr->writeAll(iceP_currentSession, iceP_currentState);
        },
        nullptr);
}
/// \endcond

/// \cond INTERNAL
void
Test::TestControllerPrx::_iceI_shutdown(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>& outAsync, const ::Ice::Context& context)
{
    outAsync->invoke(iceC_Test_TestController_shutdown_name, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        nullptr,
        nullptr);
}
/// \endcond

/// \cond INTERNAL
::std::shared_ptr<::Ice::ObjectPrx>
Test::TestControllerPrx::_newInstance() const
{
    return ::IceInternal::createProxy<TestControllerPrx>();
}
/// \endcond

const ::std::string&
Test::TestControllerPrx::ice_staticId()
{
    return TestController::ice_staticId();
}

/// \cond INTERNAL
void
Test::TestSessionPrx::_iceI_shutdown(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>& outAsync, const ::Ice::Context& context)
{
    outAsync->invoke(iceC_Test_TestSession_shutdown_name, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        nullptr,
        nullptr);
}
/// \endcond

/// \cond INTERNAL
::std::shared_ptr<::Ice::ObjectPrx>
Test::TestSessionPrx::_newInstance() const
{
    return ::IceInternal::createProxy<TestSessionPrx>();
}
/// \endcond

const ::std::string&
Test::TestSessionPrx::ice_staticId()
{
    return TestSession::ice_staticId();
}

namespace Ice
{
}

#else // C++98 mapping

namespace
{

const ::std::string iceC_Test_Backend_check_name = "check";

const ::std::string iceC_Test_Backend_shutdown_name = "shutdown";

const ::std::string iceC_Test_TestController_step_name = "step";

const ::std::string iceC_Test_TestController_shutdown_name = "shutdown";

const ::std::string iceC_Test_TestSession_shutdown_name = "shutdown";

}

/// \cond INTERNAL
::IceProxy::Ice::Object* ::IceProxy::Test::upCast(Backend* p) { return p; }

void
::IceProxy::Test::_readProxy(::Ice::InputStream* istr, ::IceInternal::ProxyHandle< Backend>& v)
{
    ::Ice::ObjectPrx proxy;
    istr->read(proxy);
    if(!proxy)
    {
        v = 0;
    }
    else
    {
        v = new Backend;
        v->_copyFrom(proxy);
    }
}
/// \endcond

::Ice::AsyncResultPtr
IceProxy::Test::Backend::_iceI_begin_check(const ::Ice::Context& context, const ::IceInternal::CallbackBasePtr& del, const ::Ice::LocalObjectPtr& cookie, bool sync)
{
    ::IceInternal::OutgoingAsyncPtr result = new ::IceInternal::CallbackOutgoing(this, iceC_Test_Backend_check_name, del, cookie, sync);
    try
    {
        result->prepare(iceC_Test_Backend_check_name, ::Ice::Normal, context);
        result->writeEmptyParams();
        result->invoke(iceC_Test_Backend_check_name);
    }
    catch(const ::Ice::Exception& ex)
    {
        result->abort(ex);
    }
    return result;
}

void
IceProxy::Test::Backend::end_check(const ::Ice::AsyncResultPtr& result)
{
    _end(result, iceC_Test_Backend_check_name);
}

::Ice::AsyncResultPtr
IceProxy::Test::Backend::_iceI_begin_shutdown(const ::Ice::Context& context, const ::IceInternal::CallbackBasePtr& del, const ::Ice::LocalObjectPtr& cookie, bool sync)
{
    ::IceInternal::OutgoingAsyncPtr result = new ::IceInternal::CallbackOutgoing(this, iceC_Test_Backend_shutdown_name, del, cookie, sync);
    try
    {
        result->prepare(iceC_Test_Backend_shutdown_name, ::Ice::Normal, context);
        result->writeEmptyParams();
        result->invoke(iceC_Test_Backend_shutdown_name);
    }
    catch(const ::Ice::Exception& ex)
    {
        result->abort(ex);
    }
    return result;
}

void
IceProxy::Test::Backend::end_shutdown(const ::Ice::AsyncResultPtr& result)
{
    _end(result, iceC_Test_Backend_shutdown_name);
}

/// \cond INTERNAL
::IceProxy::Ice::Object*
IceProxy::Test::Backend::_newInstance() const
{
    return new Backend;
}
/// \endcond

const ::std::string&
IceProxy::Test::Backend::ice_staticId()
{
    return ::Test::Backend::ice_staticId();
}

/// \cond INTERNAL
::IceProxy::Ice::Object* ::IceProxy::Test::upCast(TestController* p) { return p; }

void
::IceProxy::Test::_readProxy(::Ice::InputStream* istr, ::IceInternal::ProxyHandle< TestController>& v)
{
    ::Ice::ObjectPrx proxy;
    istr->read(proxy);
    if(!proxy)
    {
        v = 0;
    }
    else
    {
        v = new TestController;
        v->_copyFrom(proxy);
    }
}
/// \endcond

::Ice::AsyncResultPtr
IceProxy::Test::TestController::_iceI_begin_step(const ::Glacier2::SessionPrx& iceP_currentSession, const ::Test::TestToken& iceP_currentState, const ::Ice::Context& context, const ::IceInternal::CallbackBasePtr& del, const ::Ice::LocalObjectPtr& cookie, bool sync)
{
    _checkTwowayOnly(iceC_Test_TestController_step_name, sync);
    ::IceInternal::OutgoingAsyncPtr result = new ::IceInternal::CallbackOutgoing(this, iceC_Test_TestController_step_name, del, cookie, sync);
    try
    {
        result->prepare(iceC_Test_TestController_step_name, ::Ice::Normal, context);
        ::Ice::OutputStream* ostr = result->startWriteParams(::Ice::DefaultFormat);
        ostr->write(iceP_currentSession);
        ostr->write(iceP_currentState);
        result->endWriteParams();
        result->invoke(iceC_Test_TestController_step_name);
    }
    catch(const ::Ice::Exception& ex)
    {
        result->abort(ex);
    }
    return result;
}

void
IceProxy::Test::TestController::end_step(::Test::TestToken& iceP_newState, const ::Ice::AsyncResultPtr& result)
{
    ::Ice::AsyncResult::_check(result, this, iceC_Test_TestController_step_name);
    if(!result->_waitForResponse())
    {
        try
        {
            result->_throwUserException();
        }
        catch(const ::Ice::UserException& ex)
        {
            throw ::Ice::UnknownUserException(__FILE__, __LINE__, ex.ice_id());
        }
    }
    ::Ice::InputStream* istr = result->_startReadParams();
    istr->read(iceP_newState);
    result->_endReadParams();
}

void IceProxy::Test::TestController::_iceI_end_step(::Test::TestToken& iceP_newState, const ::Ice::AsyncResultPtr& result)
{
    ::Ice::AsyncResult::_check(result, this, iceC_Test_TestController_step_name);
    if(!result->_waitForResponse())
    {
        try
        {
            result->_throwUserException();
        }
        catch(const ::Ice::UserException& ex)
        {
            throw ::Ice::UnknownUserException(__FILE__, __LINE__, ex.ice_id());
        }
    }
    ::Ice::InputStream* istr = result->_startReadParams();
    istr->read(iceP_newState);
    result->_endReadParams();
}

::Ice::AsyncResultPtr
IceProxy::Test::TestController::_iceI_begin_shutdown(const ::Ice::Context& context, const ::IceInternal::CallbackBasePtr& del, const ::Ice::LocalObjectPtr& cookie, bool sync)
{
    ::IceInternal::OutgoingAsyncPtr result = new ::IceInternal::CallbackOutgoing(this, iceC_Test_TestController_shutdown_name, del, cookie, sync);
    try
    {
        result->prepare(iceC_Test_TestController_shutdown_name, ::Ice::Normal, context);
        result->writeEmptyParams();
        result->invoke(iceC_Test_TestController_shutdown_name);
    }
    catch(const ::Ice::Exception& ex)
    {
        result->abort(ex);
    }
    return result;
}

void
IceProxy::Test::TestController::end_shutdown(const ::Ice::AsyncResultPtr& result)
{
    _end(result, iceC_Test_TestController_shutdown_name);
}

/// \cond INTERNAL
::IceProxy::Ice::Object*
IceProxy::Test::TestController::_newInstance() const
{
    return new TestController;
}
/// \endcond

const ::std::string&
IceProxy::Test::TestController::ice_staticId()
{
    return ::Test::TestController::ice_staticId();
}

/// \cond INTERNAL
::IceProxy::Ice::Object* ::IceProxy::Test::upCast(TestSession* p) { return p; }

void
::IceProxy::Test::_readProxy(::Ice::InputStream* istr, ::IceInternal::ProxyHandle< TestSession>& v)
{
    ::Ice::ObjectPrx proxy;
    istr->read(proxy);
    if(!proxy)
    {
        v = 0;
    }
    else
    {
        v = new TestSession;
        v->_copyFrom(proxy);
    }
}
/// \endcond

::Ice::AsyncResultPtr
IceProxy::Test::TestSession::_iceI_begin_shutdown(const ::Ice::Context& context, const ::IceInternal::CallbackBasePtr& del, const ::Ice::LocalObjectPtr& cookie, bool sync)
{
    ::IceInternal::OutgoingAsyncPtr result = new ::IceInternal::CallbackOutgoing(this, iceC_Test_TestSession_shutdown_name, del, cookie, sync);
    try
    {
        result->prepare(iceC_Test_TestSession_shutdown_name, ::Ice::Normal, context);
        result->writeEmptyParams();
        result->invoke(iceC_Test_TestSession_shutdown_name);
    }
    catch(const ::Ice::Exception& ex)
    {
        result->abort(ex);
    }
    return result;
}

void
IceProxy::Test::TestSession::end_shutdown(const ::Ice::AsyncResultPtr& result)
{
    _end(result, iceC_Test_TestSession_shutdown_name);
}

/// \cond INTERNAL
::IceProxy::Ice::Object*
IceProxy::Test::TestSession::_newInstance() const
{
    return new TestSession;
}
/// \endcond

const ::std::string&
IceProxy::Test::TestSession::ice_staticId()
{
    return ::Test::TestSession::ice_staticId();
}

Test::Backend::~Backend()
{
}

/// \cond INTERNAL
::Ice::Object* Test::upCast(Backend* p) { return p; }

/// \endcond

namespace
{
const ::std::string iceC_Test_Backend_ids[2] =
{
    "::Ice::Object",
    "::Test::Backend"
};

}

bool
Test::Backend::ice_isA(const ::std::string& s, const ::Ice::Current&) const
{
    return ::std::binary_search(iceC_Test_Backend_ids, iceC_Test_Backend_ids + 2, s);
}

::std::vector< ::std::string>
Test::Backend::ice_ids(const ::Ice::Current&) const
{
    return ::std::vector< ::std::string>(&iceC_Test_Backend_ids[0], &iceC_Test_Backend_ids[2]);
}

const ::std::string&
Test::Backend::ice_id(const ::Ice::Current&) const
{
    return ice_staticId();
}

const ::std::string&
Test::Backend::ice_staticId()
{
    static const ::std::string typeId = "::Test::Backend";
    return typeId;
}

/// \cond INTERNAL
bool
Test::Backend::_iceD_check(::IceInternal::Incoming& inS, const ::Ice::Current& current)
{
    _iceCheckMode(::Ice::Normal, current.mode);
    inS.readEmptyParams();
    this->check(current);
    inS.writeEmptyParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
Test::Backend::_iceD_shutdown(::IceInternal::Incoming& inS, const ::Ice::Current& current)
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
const ::std::string iceC_Test_Backend_all[] =
{
    "check",
    "ice_id",
    "ice_ids",
    "ice_isA",
    "ice_ping",
    "shutdown"
};

}

/// \cond INTERNAL
bool
Test::Backend::_iceDispatch(::IceInternal::Incoming& in, const ::Ice::Current& current)
{
    ::std::pair<const ::std::string*, const ::std::string*> r = ::std::equal_range(iceC_Test_Backend_all, iceC_Test_Backend_all + 6, current.operation);
    if(r.first == r.second)
    {
        throw ::Ice::OperationNotExistException(__FILE__, __LINE__, current.id, current.facet, current.operation);
    }

    switch(r.first - iceC_Test_Backend_all)
    {
        case 0:
        {
            return _iceD_check(in, current);
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
Test::Backend::_iceWriteImpl(::Ice::OutputStream* ostr) const
{
    ostr->startSlice(ice_staticId(), -1, true);
    ::Ice::StreamWriter< Backend, ::Ice::OutputStream>::write(ostr, *this);
    ostr->endSlice();
}

void
Test::Backend::_iceReadImpl(::Ice::InputStream* istr)
{
    istr->startSlice();
    ::Ice::StreamReader< Backend, ::Ice::InputStream>::read(istr, *this);
    istr->endSlice();
}
/// \endcond

/// \cond INTERNAL
void
Test::_icePatchObjectPtr(BackendPtr& handle, const ::Ice::ObjectPtr& v)
{
    handle = BackendPtr::dynamicCast(v);
    if(v && !handle)
    {
        IceInternal::Ex::throwUOE(Backend::ice_staticId(), v);
    }
}
/// \endcond

Test::TestController::~TestController()
{
}

/// \cond INTERNAL
::Ice::Object* Test::upCast(TestController* p) { return p; }

/// \endcond

namespace
{
const ::std::string iceC_Test_TestController_ids[2] =
{
    "::Ice::Object",
    "::Test::TestController"
};

}

bool
Test::TestController::ice_isA(const ::std::string& s, const ::Ice::Current&) const
{
    return ::std::binary_search(iceC_Test_TestController_ids, iceC_Test_TestController_ids + 2, s);
}

::std::vector< ::std::string>
Test::TestController::ice_ids(const ::Ice::Current&) const
{
    return ::std::vector< ::std::string>(&iceC_Test_TestController_ids[0], &iceC_Test_TestController_ids[2]);
}

const ::std::string&
Test::TestController::ice_id(const ::Ice::Current&) const
{
    return ice_staticId();
}

const ::std::string&
Test::TestController::ice_staticId()
{
    static const ::std::string typeId = "::Test::TestController";
    return typeId;
}

/// \cond INTERNAL
bool
Test::TestController::_iceD_step(::IceInternal::Incoming& inS, const ::Ice::Current& current)
{
    _iceCheckMode(::Ice::Normal, current.mode);
    ::Ice::InputStream* istr = inS.startReadParams();
    ::Glacier2::SessionPrx iceP_currentSession;
    TestToken iceP_currentState;
    istr->read(iceP_currentSession);
    istr->read(iceP_currentState);
    inS.endReadParams();
    TestToken iceP_newState;
    this->step(iceP_currentSession, iceP_currentState, iceP_newState, current);
    ::Ice::OutputStream* ostr = inS.startWriteParams();
    ostr->write(iceP_newState);
    inS.endWriteParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
Test::TestController::_iceD_shutdown(::IceInternal::Incoming& inS, const ::Ice::Current& current)
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
const ::std::string iceC_Test_TestController_all[] =
{
    "ice_id",
    "ice_ids",
    "ice_isA",
    "ice_ping",
    "shutdown",
    "step"
};

}

/// \cond INTERNAL
bool
Test::TestController::_iceDispatch(::IceInternal::Incoming& in, const ::Ice::Current& current)
{
    ::std::pair<const ::std::string*, const ::std::string*> r = ::std::equal_range(iceC_Test_TestController_all, iceC_Test_TestController_all + 6, current.operation);
    if(r.first == r.second)
    {
        throw ::Ice::OperationNotExistException(__FILE__, __LINE__, current.id, current.facet, current.operation);
    }

    switch(r.first - iceC_Test_TestController_all)
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
            return _iceD_shutdown(in, current);
        }
        case 5:
        {
            return _iceD_step(in, current);
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
Test::TestController::_iceWriteImpl(::Ice::OutputStream* ostr) const
{
    ostr->startSlice(ice_staticId(), -1, true);
    ::Ice::StreamWriter< TestController, ::Ice::OutputStream>::write(ostr, *this);
    ostr->endSlice();
}

void
Test::TestController::_iceReadImpl(::Ice::InputStream* istr)
{
    istr->startSlice();
    ::Ice::StreamReader< TestController, ::Ice::InputStream>::read(istr, *this);
    istr->endSlice();
}
/// \endcond

/// \cond INTERNAL
void
Test::_icePatchObjectPtr(TestControllerPtr& handle, const ::Ice::ObjectPtr& v)
{
    handle = TestControllerPtr::dynamicCast(v);
    if(v && !handle)
    {
        IceInternal::Ex::throwUOE(TestController::ice_staticId(), v);
    }
}
/// \endcond

Test::TestSession::~TestSession()
{
}

/// \cond INTERNAL
::Ice::Object* Test::upCast(TestSession* p) { return p; }

/// \endcond

namespace
{
const ::std::string iceC_Test_TestSession_ids[3] =
{
    "::Glacier2::Session",
    "::Ice::Object",
    "::Test::TestSession"
};

}

bool
Test::TestSession::ice_isA(const ::std::string& s, const ::Ice::Current&) const
{
    return ::std::binary_search(iceC_Test_TestSession_ids, iceC_Test_TestSession_ids + 3, s);
}

::std::vector< ::std::string>
Test::TestSession::ice_ids(const ::Ice::Current&) const
{
    return ::std::vector< ::std::string>(&iceC_Test_TestSession_ids[0], &iceC_Test_TestSession_ids[3]);
}

const ::std::string&
Test::TestSession::ice_id(const ::Ice::Current&) const
{
    return ice_staticId();
}

const ::std::string&
Test::TestSession::ice_staticId()
{
    static const ::std::string typeId = "::Test::TestSession";
    return typeId;
}

/// \cond INTERNAL
bool
Test::TestSession::_iceD_shutdown(::IceInternal::Incoming& inS, const ::Ice::Current& current)
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
const ::std::string iceC_Test_TestSession_all[] =
{
    "destroy",
    "ice_id",
    "ice_ids",
    "ice_isA",
    "ice_ping",
    "shutdown"
};

}

/// \cond INTERNAL
bool
Test::TestSession::_iceDispatch(::IceInternal::Incoming& in, const ::Ice::Current& current)
{
    ::std::pair<const ::std::string*, const ::std::string*> r = ::std::equal_range(iceC_Test_TestSession_all, iceC_Test_TestSession_all + 6, current.operation);
    if(r.first == r.second)
    {
        throw ::Ice::OperationNotExistException(__FILE__, __LINE__, current.id, current.facet, current.operation);
    }

    switch(r.first - iceC_Test_TestSession_all)
    {
        case 0:
        {
            return _iceD_destroy(in, current);
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
Test::TestSession::_iceWriteImpl(::Ice::OutputStream* ostr) const
{
    ostr->startSlice(ice_staticId(), -1, true);
    ::Ice::StreamWriter< TestSession, ::Ice::OutputStream>::write(ostr, *this);
    ostr->endSlice();
}

void
Test::TestSession::_iceReadImpl(::Ice::InputStream* istr)
{
    istr->startSlice();
    ::Ice::StreamReader< TestSession, ::Ice::InputStream>::read(istr, *this);
    istr->endSlice();
}
/// \endcond

/// \cond INTERNAL
void
Test::_icePatchObjectPtr(TestSessionPtr& handle, const ::Ice::ObjectPtr& v)
{
    handle = TestSessionPtr::dynamicCast(v);
    if(v && !handle)
    {
        IceInternal::Ex::throwUOE(TestSession::ice_staticId(), v);
    }
}
/// \endcond

namespace Ice
{
}

#endif
