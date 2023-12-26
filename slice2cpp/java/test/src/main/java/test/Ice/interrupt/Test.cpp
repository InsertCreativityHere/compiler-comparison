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

const ::IceInternal::DefaultUserExceptionFactoryInit<::Test::InterruptedException> iceC_Test_InterruptedException_init("::Test::InterruptedException");

const ::std::string iceC_Test_TestIntf_ids[2] =
{
    "::Ice::Object",
    "::Test::TestIntf"
};
const ::std::string iceC_Test_TestIntf_ops[] =
{
    "ice_id",
    "ice_ids",
    "ice_isA",
    "ice_ping",
    "op",
    "opIdempotent",
    "opWithPayload",
    "shutdown",
    "sleep"
};
const ::std::string iceC_Test_TestIntf_op_name = "op";
const ::std::string iceC_Test_TestIntf_opIdempotent_name = "opIdempotent";
const ::std::string iceC_Test_TestIntf_sleep_name = "sleep";
const ::std::string iceC_Test_TestIntf_opWithPayload_name = "opWithPayload";
const ::std::string iceC_Test_TestIntf_shutdown_name = "shutdown";

const ::IceInternal::DefaultUserExceptionFactoryInit<::Test::CannotInterruptException> iceC_Test_CannotInterruptException_init("::Test::CannotInterruptException");

const ::std::string iceC_Test_TestIntfController_ids[2] =
{
    "::Ice::Object",
    "::Test::TestIntfController"
};
const ::std::string iceC_Test_TestIntfController_ops[] =
{
    "holdAdapter",
    "ice_id",
    "ice_ids",
    "ice_isA",
    "ice_ping",
    "interrupt",
    "resumeAdapter"
};
const ::std::string iceC_Test_TestIntfController_holdAdapter_name = "holdAdapter";
const ::std::string iceC_Test_TestIntfController_resumeAdapter_name = "resumeAdapter";
const ::std::string iceC_Test_TestIntfController_interrupt_name = "interrupt";

}

Test::InterruptedException::~InterruptedException()
{
}

const ::std::string&
Test::InterruptedException::ice_staticId()
{
    static const ::std::string typeId = "::Test::InterruptedException";
    return typeId;
}

Test::CannotInterruptException::~CannotInterruptException()
{
}

const ::std::string&
Test::CannotInterruptException::ice_staticId()
{
    static const ::std::string typeId = "::Test::CannotInterruptException";
    return typeId;
}

bool
Test::TestIntf::ice_isA(::std::string s, const ::Ice::Current&) const
{
    return ::std::binary_search(iceC_Test_TestIntf_ids, iceC_Test_TestIntf_ids + 2, s);
}

::std::vector<::std::string>
Test::TestIntf::ice_ids(const ::Ice::Current&) const
{
    return ::std::vector<::std::string>(&iceC_Test_TestIntf_ids[0], &iceC_Test_TestIntf_ids[2]);
}

::std::string
Test::TestIntf::ice_id(const ::Ice::Current&) const
{
    return ice_staticId();
}

const ::std::string&
Test::TestIntf::ice_staticId()
{
    static const ::std::string typeId = "::Test::TestIntf";
    return typeId;
}

/// \cond INTERNAL
bool
Test::TestIntf::_iceD_op(::IceInternal::Incoming& inS, const ::Ice::Current& current)
{
    _iceCheckMode(::Ice::OperationMode::Normal, current.mode);
    inS.readEmptyParams();
    this->op(current);
    inS.writeEmptyParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
Test::TestIntf::_iceD_opIdempotent(::IceInternal::Incoming& inS, const ::Ice::Current& current)
{
    _iceCheckMode(::Ice::OperationMode::Idempotent, current.mode);
    inS.readEmptyParams();
    this->opIdempotent(current);
    inS.writeEmptyParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
Test::TestIntf::_iceD_sleep(::IceInternal::Incoming& inS, const ::Ice::Current& current)
{
    _iceCheckMode(::Ice::OperationMode::Normal, current.mode);
    auto istr = inS.startReadParams();
    int iceP_to;
    istr->readAll(iceP_to);
    inS.endReadParams();
    this->sleep(iceP_to, current);
    inS.writeEmptyParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
Test::TestIntf::_iceD_opWithPayload(::IceInternal::Incoming& inS, const ::Ice::Current& current)
{
    _iceCheckMode(::Ice::OperationMode::Normal, current.mode);
    auto istr = inS.startReadParams();
    ::Ice::ByteSeq iceP_seq;
    istr->readAll(iceP_seq);
    inS.endReadParams();
    this->opWithPayload(::std::move(iceP_seq), current);
    inS.writeEmptyParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
Test::TestIntf::_iceD_shutdown(::IceInternal::Incoming& inS, const ::Ice::Current& current)
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
Test::TestIntf::_iceDispatch(::IceInternal::Incoming& in, const ::Ice::Current& current)
{
    ::std::pair<const ::std::string*, const ::std::string*> r = ::std::equal_range(iceC_Test_TestIntf_ops, iceC_Test_TestIntf_ops + 9, current.operation);
    if(r.first == r.second)
    {
        throw ::Ice::OperationNotExistException(__FILE__, __LINE__, current.id, current.facet, current.operation);
    }

    switch(r.first - iceC_Test_TestIntf_ops)
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
            return _iceD_op(in, current);
        }
        case 5:
        {
            return _iceD_opIdempotent(in, current);
        }
        case 6:
        {
            return _iceD_opWithPayload(in, current);
        }
        case 7:
        {
            return _iceD_shutdown(in, current);
        }
        case 8:
        {
            return _iceD_sleep(in, current);
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
Test::TestIntfController::ice_isA(::std::string s, const ::Ice::Current&) const
{
    return ::std::binary_search(iceC_Test_TestIntfController_ids, iceC_Test_TestIntfController_ids + 2, s);
}

::std::vector<::std::string>
Test::TestIntfController::ice_ids(const ::Ice::Current&) const
{
    return ::std::vector<::std::string>(&iceC_Test_TestIntfController_ids[0], &iceC_Test_TestIntfController_ids[2]);
}

::std::string
Test::TestIntfController::ice_id(const ::Ice::Current&) const
{
    return ice_staticId();
}

const ::std::string&
Test::TestIntfController::ice_staticId()
{
    static const ::std::string typeId = "::Test::TestIntfController";
    return typeId;
}

/// \cond INTERNAL
bool
Test::TestIntfController::_iceD_holdAdapter(::IceInternal::Incoming& inS, const ::Ice::Current& current)
{
    _iceCheckMode(::Ice::OperationMode::Normal, current.mode);
    inS.readEmptyParams();
    this->holdAdapter(current);
    inS.writeEmptyParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
Test::TestIntfController::_iceD_resumeAdapter(::IceInternal::Incoming& inS, const ::Ice::Current& current)
{
    _iceCheckMode(::Ice::OperationMode::Normal, current.mode);
    inS.readEmptyParams();
    this->resumeAdapter(current);
    inS.writeEmptyParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
Test::TestIntfController::_iceD_interrupt(::IceInternal::Incoming& inS, const ::Ice::Current& current)
{
    _iceCheckMode(::Ice::OperationMode::Normal, current.mode);
    inS.readEmptyParams();
    this->interrupt(current);
    inS.writeEmptyParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
Test::TestIntfController::_iceDispatch(::IceInternal::Incoming& in, const ::Ice::Current& current)
{
    ::std::pair<const ::std::string*, const ::std::string*> r = ::std::equal_range(iceC_Test_TestIntfController_ops, iceC_Test_TestIntfController_ops + 7, current.operation);
    if(r.first == r.second)
    {
        throw ::Ice::OperationNotExistException(__FILE__, __LINE__, current.id, current.facet, current.operation);
    }

    switch(r.first - iceC_Test_TestIntfController_ops)
    {
        case 0:
        {
            return _iceD_holdAdapter(in, current);
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
            return _iceD_interrupt(in, current);
        }
        case 6:
        {
            return _iceD_resumeAdapter(in, current);
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
Test::TestIntfPrx::_iceI_op(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>& outAsync, const ::Ice::Context& context)
{
    outAsync->invoke(iceC_Test_TestIntf_op_name, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        nullptr,
        nullptr);
}
/// \endcond

/// \cond INTERNAL
void
Test::TestIntfPrx::_iceI_opIdempotent(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>& outAsync, const ::Ice::Context& context)
{
    outAsync->invoke(iceC_Test_TestIntf_opIdempotent_name, ::Ice::OperationMode::Idempotent, ::Ice::FormatType::DefaultFormat, context,
        nullptr,
        nullptr);
}
/// \endcond

/// \cond INTERNAL
void
Test::TestIntfPrx::_iceI_sleep(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>& outAsync, int iceP_to, const ::Ice::Context& context)
{
    _checkTwowayOnly(iceC_Test_TestIntf_sleep_name);
    outAsync->invoke(iceC_Test_TestIntf_sleep_name, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        [&](::Ice::OutputStream* ostr)
        {
            ostr->writeAll(iceP_to);
        },
        [](const ::Ice::UserException& ex)
        {
            try
            {
                ex.ice_throw();
            }
            catch(const InterruptedException&)
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
Test::TestIntfPrx::_iceI_opWithPayload(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>& outAsync, const ::Ice::ByteSeq& iceP_seq, const ::Ice::Context& context)
{
    outAsync->invoke(iceC_Test_TestIntf_opWithPayload_name, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        [&](::Ice::OutputStream* ostr)
        {
            ostr->writeAll(iceP_seq);
        },
        nullptr);
}
/// \endcond

/// \cond INTERNAL
void
Test::TestIntfPrx::_iceI_shutdown(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>& outAsync, const ::Ice::Context& context)
{
    outAsync->invoke(iceC_Test_TestIntf_shutdown_name, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        nullptr,
        nullptr);
}
/// \endcond

/// \cond INTERNAL
::std::shared_ptr<::Ice::ObjectPrx>
Test::TestIntfPrx::_newInstance() const
{
    return ::IceInternal::createProxy<TestIntfPrx>();
}
/// \endcond

const ::std::string&
Test::TestIntfPrx::ice_staticId()
{
    return TestIntf::ice_staticId();
}

/// \cond INTERNAL
void
Test::TestIntfControllerPrx::_iceI_holdAdapter(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>& outAsync, const ::Ice::Context& context)
{
    outAsync->invoke(iceC_Test_TestIntfController_holdAdapter_name, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        nullptr,
        nullptr);
}
/// \endcond

/// \cond INTERNAL
void
Test::TestIntfControllerPrx::_iceI_resumeAdapter(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>& outAsync, const ::Ice::Context& context)
{
    outAsync->invoke(iceC_Test_TestIntfController_resumeAdapter_name, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        nullptr,
        nullptr);
}
/// \endcond

/// \cond INTERNAL
void
Test::TestIntfControllerPrx::_iceI_interrupt(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>& outAsync, const ::Ice::Context& context)
{
    _checkTwowayOnly(iceC_Test_TestIntfController_interrupt_name);
    outAsync->invoke(iceC_Test_TestIntfController_interrupt_name, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        nullptr,
        [](const ::Ice::UserException& ex)
        {
            try
            {
                ex.ice_throw();
            }
            catch(const CannotInterruptException&)
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
Test::TestIntfControllerPrx::_newInstance() const
{
    return ::IceInternal::createProxy<TestIntfControllerPrx>();
}
/// \endcond

const ::std::string&
Test::TestIntfControllerPrx::ice_staticId()
{
    return TestIntfController::ice_staticId();
}

#else // C++98 mapping

namespace
{

const ::std::string iceC_Test_TestIntf_op_name = "op";

const ::std::string iceC_Test_TestIntf_opIdempotent_name = "opIdempotent";

const ::std::string iceC_Test_TestIntf_sleep_name = "sleep";

const ::std::string iceC_Test_TestIntf_opWithPayload_name = "opWithPayload";

const ::std::string iceC_Test_TestIntf_shutdown_name = "shutdown";

const ::std::string iceC_Test_TestIntfController_holdAdapter_name = "holdAdapter";

const ::std::string iceC_Test_TestIntfController_resumeAdapter_name = "resumeAdapter";

const ::std::string iceC_Test_TestIntfController_interrupt_name = "interrupt";

}

namespace
{

const ::IceInternal::DefaultUserExceptionFactoryInit< ::Test::InterruptedException> iceC_Test_InterruptedException_init("::Test::InterruptedException");

}

#ifdef ICE_CPP11_COMPILER
Test::InterruptedException::~InterruptedException()
{
}
#else
Test::InterruptedException::~InterruptedException() throw()
{
}
#endif

::std::string
Test::InterruptedException::ice_id() const
{
    return "::Test::InterruptedException";
}

Test::InterruptedException*
Test::InterruptedException::ice_clone() const
{
    return new InterruptedException(*this);
}

void
Test::InterruptedException::ice_throw() const
{
    throw *this;
}

/// \cond STREAM
void
Test::InterruptedException::_writeImpl(::Ice::OutputStream* ostr) const
{
    ostr->startSlice("::Test::InterruptedException", -1, true);
    ::Ice::StreamWriter< InterruptedException, ::Ice::OutputStream>::write(ostr, *this);
    ostr->endSlice();
}

void
Test::InterruptedException::_readImpl(::Ice::InputStream* istr)
{
    istr->startSlice();
    ::Ice::StreamReader< InterruptedException, ::Ice::InputStream>::read(istr, *this);
    istr->endSlice();
}
/// \endcond

namespace
{

const ::IceInternal::DefaultUserExceptionFactoryInit< ::Test::CannotInterruptException> iceC_Test_CannotInterruptException_init("::Test::CannotInterruptException");

}

#ifdef ICE_CPP11_COMPILER
Test::CannotInterruptException::~CannotInterruptException()
{
}
#else
Test::CannotInterruptException::~CannotInterruptException() throw()
{
}
#endif

::std::string
Test::CannotInterruptException::ice_id() const
{
    return "::Test::CannotInterruptException";
}

Test::CannotInterruptException*
Test::CannotInterruptException::ice_clone() const
{
    return new CannotInterruptException(*this);
}

void
Test::CannotInterruptException::ice_throw() const
{
    throw *this;
}

/// \cond STREAM
void
Test::CannotInterruptException::_writeImpl(::Ice::OutputStream* ostr) const
{
    ostr->startSlice("::Test::CannotInterruptException", -1, true);
    ::Ice::StreamWriter< CannotInterruptException, ::Ice::OutputStream>::write(ostr, *this);
    ostr->endSlice();
}

void
Test::CannotInterruptException::_readImpl(::Ice::InputStream* istr)
{
    istr->startSlice();
    ::Ice::StreamReader< CannotInterruptException, ::Ice::InputStream>::read(istr, *this);
    istr->endSlice();
}
/// \endcond

/// \cond INTERNAL
::IceProxy::Ice::Object* ::IceProxy::Test::upCast(TestIntf* p) { return p; }

void
::IceProxy::Test::_readProxy(::Ice::InputStream* istr, ::IceInternal::ProxyHandle< TestIntf>& v)
{
    ::Ice::ObjectPrx proxy;
    istr->read(proxy);
    if(!proxy)
    {
        v = 0;
    }
    else
    {
        v = new TestIntf;
        v->_copyFrom(proxy);
    }
}
/// \endcond

::Ice::AsyncResultPtr
IceProxy::Test::TestIntf::_iceI_begin_op(const ::Ice::Context& context, const ::IceInternal::CallbackBasePtr& del, const ::Ice::LocalObjectPtr& cookie, bool sync)
{
    ::IceInternal::OutgoingAsyncPtr result = new ::IceInternal::CallbackOutgoing(this, iceC_Test_TestIntf_op_name, del, cookie, sync);
    try
    {
        result->prepare(iceC_Test_TestIntf_op_name, ::Ice::Normal, context);
        result->writeEmptyParams();
        result->invoke(iceC_Test_TestIntf_op_name);
    }
    catch(const ::Ice::Exception& ex)
    {
        result->abort(ex);
    }
    return result;
}

void
IceProxy::Test::TestIntf::end_op(const ::Ice::AsyncResultPtr& result)
{
    _end(result, iceC_Test_TestIntf_op_name);
}

::Ice::AsyncResultPtr
IceProxy::Test::TestIntf::_iceI_begin_opIdempotent(const ::Ice::Context& context, const ::IceInternal::CallbackBasePtr& del, const ::Ice::LocalObjectPtr& cookie, bool sync)
{
    ::IceInternal::OutgoingAsyncPtr result = new ::IceInternal::CallbackOutgoing(this, iceC_Test_TestIntf_opIdempotent_name, del, cookie, sync);
    try
    {
        result->prepare(iceC_Test_TestIntf_opIdempotent_name, ::Ice::Idempotent, context);
        result->writeEmptyParams();
        result->invoke(iceC_Test_TestIntf_opIdempotent_name);
    }
    catch(const ::Ice::Exception& ex)
    {
        result->abort(ex);
    }
    return result;
}

void
IceProxy::Test::TestIntf::end_opIdempotent(const ::Ice::AsyncResultPtr& result)
{
    _end(result, iceC_Test_TestIntf_opIdempotent_name);
}

::Ice::AsyncResultPtr
IceProxy::Test::TestIntf::_iceI_begin_sleep(::Ice::Int iceP_to, const ::Ice::Context& context, const ::IceInternal::CallbackBasePtr& del, const ::Ice::LocalObjectPtr& cookie, bool sync)
{
    _checkTwowayOnly(iceC_Test_TestIntf_sleep_name, sync);
    ::IceInternal::OutgoingAsyncPtr result = new ::IceInternal::CallbackOutgoing(this, iceC_Test_TestIntf_sleep_name, del, cookie, sync);
    try
    {
        result->prepare(iceC_Test_TestIntf_sleep_name, ::Ice::Normal, context);
        ::Ice::OutputStream* ostr = result->startWriteParams(::Ice::DefaultFormat);
        ostr->write(iceP_to);
        result->endWriteParams();
        result->invoke(iceC_Test_TestIntf_sleep_name);
    }
    catch(const ::Ice::Exception& ex)
    {
        result->abort(ex);
    }
    return result;
}

void
IceProxy::Test::TestIntf::end_sleep(const ::Ice::AsyncResultPtr& result)
{
    ::Ice::AsyncResult::_check(result, this, iceC_Test_TestIntf_sleep_name);
    if(!result->_waitForResponse())
    {
        try
        {
            result->_throwUserException();
        }
        catch(const ::Test::InterruptedException&)
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
IceProxy::Test::TestIntf::_iceI_begin_opWithPayload(const ::Ice::ByteSeq& iceP_seq, const ::Ice::Context& context, const ::IceInternal::CallbackBasePtr& del, const ::Ice::LocalObjectPtr& cookie, bool sync)
{
    ::IceInternal::OutgoingAsyncPtr result = new ::IceInternal::CallbackOutgoing(this, iceC_Test_TestIntf_opWithPayload_name, del, cookie, sync);
    try
    {
        result->prepare(iceC_Test_TestIntf_opWithPayload_name, ::Ice::Normal, context);
        ::Ice::OutputStream* ostr = result->startWriteParams(::Ice::DefaultFormat);
        ostr->write(iceP_seq);
        result->endWriteParams();
        result->invoke(iceC_Test_TestIntf_opWithPayload_name);
    }
    catch(const ::Ice::Exception& ex)
    {
        result->abort(ex);
    }
    return result;
}

void
IceProxy::Test::TestIntf::end_opWithPayload(const ::Ice::AsyncResultPtr& result)
{
    _end(result, iceC_Test_TestIntf_opWithPayload_name);
}

::Ice::AsyncResultPtr
IceProxy::Test::TestIntf::_iceI_begin_shutdown(const ::Ice::Context& context, const ::IceInternal::CallbackBasePtr& del, const ::Ice::LocalObjectPtr& cookie, bool sync)
{
    ::IceInternal::OutgoingAsyncPtr result = new ::IceInternal::CallbackOutgoing(this, iceC_Test_TestIntf_shutdown_name, del, cookie, sync);
    try
    {
        result->prepare(iceC_Test_TestIntf_shutdown_name, ::Ice::Normal, context);
        result->writeEmptyParams();
        result->invoke(iceC_Test_TestIntf_shutdown_name);
    }
    catch(const ::Ice::Exception& ex)
    {
        result->abort(ex);
    }
    return result;
}

void
IceProxy::Test::TestIntf::end_shutdown(const ::Ice::AsyncResultPtr& result)
{
    _end(result, iceC_Test_TestIntf_shutdown_name);
}

/// \cond INTERNAL
::IceProxy::Ice::Object*
IceProxy::Test::TestIntf::_newInstance() const
{
    return new TestIntf;
}
/// \endcond

const ::std::string&
IceProxy::Test::TestIntf::ice_staticId()
{
    return ::Test::TestIntf::ice_staticId();
}

/// \cond INTERNAL
::IceProxy::Ice::Object* ::IceProxy::Test::upCast(TestIntfController* p) { return p; }

void
::IceProxy::Test::_readProxy(::Ice::InputStream* istr, ::IceInternal::ProxyHandle< TestIntfController>& v)
{
    ::Ice::ObjectPrx proxy;
    istr->read(proxy);
    if(!proxy)
    {
        v = 0;
    }
    else
    {
        v = new TestIntfController;
        v->_copyFrom(proxy);
    }
}
/// \endcond

::Ice::AsyncResultPtr
IceProxy::Test::TestIntfController::_iceI_begin_holdAdapter(const ::Ice::Context& context, const ::IceInternal::CallbackBasePtr& del, const ::Ice::LocalObjectPtr& cookie, bool sync)
{
    ::IceInternal::OutgoingAsyncPtr result = new ::IceInternal::CallbackOutgoing(this, iceC_Test_TestIntfController_holdAdapter_name, del, cookie, sync);
    try
    {
        result->prepare(iceC_Test_TestIntfController_holdAdapter_name, ::Ice::Normal, context);
        result->writeEmptyParams();
        result->invoke(iceC_Test_TestIntfController_holdAdapter_name);
    }
    catch(const ::Ice::Exception& ex)
    {
        result->abort(ex);
    }
    return result;
}

void
IceProxy::Test::TestIntfController::end_holdAdapter(const ::Ice::AsyncResultPtr& result)
{
    _end(result, iceC_Test_TestIntfController_holdAdapter_name);
}

::Ice::AsyncResultPtr
IceProxy::Test::TestIntfController::_iceI_begin_resumeAdapter(const ::Ice::Context& context, const ::IceInternal::CallbackBasePtr& del, const ::Ice::LocalObjectPtr& cookie, bool sync)
{
    ::IceInternal::OutgoingAsyncPtr result = new ::IceInternal::CallbackOutgoing(this, iceC_Test_TestIntfController_resumeAdapter_name, del, cookie, sync);
    try
    {
        result->prepare(iceC_Test_TestIntfController_resumeAdapter_name, ::Ice::Normal, context);
        result->writeEmptyParams();
        result->invoke(iceC_Test_TestIntfController_resumeAdapter_name);
    }
    catch(const ::Ice::Exception& ex)
    {
        result->abort(ex);
    }
    return result;
}

void
IceProxy::Test::TestIntfController::end_resumeAdapter(const ::Ice::AsyncResultPtr& result)
{
    _end(result, iceC_Test_TestIntfController_resumeAdapter_name);
}

::Ice::AsyncResultPtr
IceProxy::Test::TestIntfController::_iceI_begin_interrupt(const ::Ice::Context& context, const ::IceInternal::CallbackBasePtr& del, const ::Ice::LocalObjectPtr& cookie, bool sync)
{
    _checkTwowayOnly(iceC_Test_TestIntfController_interrupt_name, sync);
    ::IceInternal::OutgoingAsyncPtr result = new ::IceInternal::CallbackOutgoing(this, iceC_Test_TestIntfController_interrupt_name, del, cookie, sync);
    try
    {
        result->prepare(iceC_Test_TestIntfController_interrupt_name, ::Ice::Normal, context);
        result->writeEmptyParams();
        result->invoke(iceC_Test_TestIntfController_interrupt_name);
    }
    catch(const ::Ice::Exception& ex)
    {
        result->abort(ex);
    }
    return result;
}

void
IceProxy::Test::TestIntfController::end_interrupt(const ::Ice::AsyncResultPtr& result)
{
    ::Ice::AsyncResult::_check(result, this, iceC_Test_TestIntfController_interrupt_name);
    if(!result->_waitForResponse())
    {
        try
        {
            result->_throwUserException();
        }
        catch(const ::Test::CannotInterruptException&)
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

/// \cond INTERNAL
::IceProxy::Ice::Object*
IceProxy::Test::TestIntfController::_newInstance() const
{
    return new TestIntfController;
}
/// \endcond

const ::std::string&
IceProxy::Test::TestIntfController::ice_staticId()
{
    return ::Test::TestIntfController::ice_staticId();
}

Test::TestIntf::~TestIntf()
{
}

/// \cond INTERNAL
::Ice::Object* Test::upCast(TestIntf* p) { return p; }

/// \endcond

namespace
{
const ::std::string iceC_Test_TestIntf_ids[2] =
{
    "::Ice::Object",
    "::Test::TestIntf"
};

}

bool
Test::TestIntf::ice_isA(const ::std::string& s, const ::Ice::Current&) const
{
    return ::std::binary_search(iceC_Test_TestIntf_ids, iceC_Test_TestIntf_ids + 2, s);
}

::std::vector< ::std::string>
Test::TestIntf::ice_ids(const ::Ice::Current&) const
{
    return ::std::vector< ::std::string>(&iceC_Test_TestIntf_ids[0], &iceC_Test_TestIntf_ids[2]);
}

const ::std::string&
Test::TestIntf::ice_id(const ::Ice::Current&) const
{
    return ice_staticId();
}

const ::std::string&
Test::TestIntf::ice_staticId()
{
    static const ::std::string typeId = "::Test::TestIntf";
    return typeId;
}

/// \cond INTERNAL
bool
Test::TestIntf::_iceD_op(::IceInternal::Incoming& inS, const ::Ice::Current& current)
{
    _iceCheckMode(::Ice::Normal, current.mode);
    inS.readEmptyParams();
    this->op(current);
    inS.writeEmptyParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
Test::TestIntf::_iceD_opIdempotent(::IceInternal::Incoming& inS, const ::Ice::Current& current)
{
    _iceCheckMode(::Ice::Idempotent, current.mode);
    inS.readEmptyParams();
    this->opIdempotent(current);
    inS.writeEmptyParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
Test::TestIntf::_iceD_sleep(::IceInternal::Incoming& inS, const ::Ice::Current& current)
{
    _iceCheckMode(::Ice::Normal, current.mode);
    ::Ice::InputStream* istr = inS.startReadParams();
    ::Ice::Int iceP_to;
    istr->read(iceP_to);
    inS.endReadParams();
    this->sleep(iceP_to, current);
    inS.writeEmptyParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
Test::TestIntf::_iceD_opWithPayload(::IceInternal::Incoming& inS, const ::Ice::Current& current)
{
    _iceCheckMode(::Ice::Normal, current.mode);
    ::Ice::InputStream* istr = inS.startReadParams();
    ::Ice::ByteSeq iceP_seq;
    istr->read(iceP_seq);
    inS.endReadParams();
    this->opWithPayload(iceP_seq, current);
    inS.writeEmptyParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
Test::TestIntf::_iceD_shutdown(::IceInternal::Incoming& inS, const ::Ice::Current& current)
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
const ::std::string iceC_Test_TestIntf_all[] =
{
    "ice_id",
    "ice_ids",
    "ice_isA",
    "ice_ping",
    "op",
    "opIdempotent",
    "opWithPayload",
    "shutdown",
    "sleep"
};

}

/// \cond INTERNAL
bool
Test::TestIntf::_iceDispatch(::IceInternal::Incoming& in, const ::Ice::Current& current)
{
    ::std::pair<const ::std::string*, const ::std::string*> r = ::std::equal_range(iceC_Test_TestIntf_all, iceC_Test_TestIntf_all + 9, current.operation);
    if(r.first == r.second)
    {
        throw ::Ice::OperationNotExistException(__FILE__, __LINE__, current.id, current.facet, current.operation);
    }

    switch(r.first - iceC_Test_TestIntf_all)
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
            return _iceD_op(in, current);
        }
        case 5:
        {
            return _iceD_opIdempotent(in, current);
        }
        case 6:
        {
            return _iceD_opWithPayload(in, current);
        }
        case 7:
        {
            return _iceD_shutdown(in, current);
        }
        case 8:
        {
            return _iceD_sleep(in, current);
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
Test::TestIntf::_iceWriteImpl(::Ice::OutputStream* ostr) const
{
    ostr->startSlice(ice_staticId(), -1, true);
    ::Ice::StreamWriter< TestIntf, ::Ice::OutputStream>::write(ostr, *this);
    ostr->endSlice();
}

void
Test::TestIntf::_iceReadImpl(::Ice::InputStream* istr)
{
    istr->startSlice();
    ::Ice::StreamReader< TestIntf, ::Ice::InputStream>::read(istr, *this);
    istr->endSlice();
}
/// \endcond

/// \cond INTERNAL
void
Test::_icePatchObjectPtr(TestIntfPtr& handle, const ::Ice::ObjectPtr& v)
{
    handle = TestIntfPtr::dynamicCast(v);
    if(v && !handle)
    {
        IceInternal::Ex::throwUOE(TestIntf::ice_staticId(), v);
    }
}
/// \endcond

Test::TestIntfController::~TestIntfController()
{
}

/// \cond INTERNAL
::Ice::Object* Test::upCast(TestIntfController* p) { return p; }

/// \endcond

namespace
{
const ::std::string iceC_Test_TestIntfController_ids[2] =
{
    "::Ice::Object",
    "::Test::TestIntfController"
};

}

bool
Test::TestIntfController::ice_isA(const ::std::string& s, const ::Ice::Current&) const
{
    return ::std::binary_search(iceC_Test_TestIntfController_ids, iceC_Test_TestIntfController_ids + 2, s);
}

::std::vector< ::std::string>
Test::TestIntfController::ice_ids(const ::Ice::Current&) const
{
    return ::std::vector< ::std::string>(&iceC_Test_TestIntfController_ids[0], &iceC_Test_TestIntfController_ids[2]);
}

const ::std::string&
Test::TestIntfController::ice_id(const ::Ice::Current&) const
{
    return ice_staticId();
}

const ::std::string&
Test::TestIntfController::ice_staticId()
{
    static const ::std::string typeId = "::Test::TestIntfController";
    return typeId;
}

/// \cond INTERNAL
bool
Test::TestIntfController::_iceD_holdAdapter(::IceInternal::Incoming& inS, const ::Ice::Current& current)
{
    _iceCheckMode(::Ice::Normal, current.mode);
    inS.readEmptyParams();
    this->holdAdapter(current);
    inS.writeEmptyParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
Test::TestIntfController::_iceD_resumeAdapter(::IceInternal::Incoming& inS, const ::Ice::Current& current)
{
    _iceCheckMode(::Ice::Normal, current.mode);
    inS.readEmptyParams();
    this->resumeAdapter(current);
    inS.writeEmptyParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
Test::TestIntfController::_iceD_interrupt(::IceInternal::Incoming& inS, const ::Ice::Current& current)
{
    _iceCheckMode(::Ice::Normal, current.mode);
    inS.readEmptyParams();
    this->interrupt(current);
    inS.writeEmptyParams();
    return true;
}
/// \endcond

namespace
{
const ::std::string iceC_Test_TestIntfController_all[] =
{
    "holdAdapter",
    "ice_id",
    "ice_ids",
    "ice_isA",
    "ice_ping",
    "interrupt",
    "resumeAdapter"
};

}

/// \cond INTERNAL
bool
Test::TestIntfController::_iceDispatch(::IceInternal::Incoming& in, const ::Ice::Current& current)
{
    ::std::pair<const ::std::string*, const ::std::string*> r = ::std::equal_range(iceC_Test_TestIntfController_all, iceC_Test_TestIntfController_all + 7, current.operation);
    if(r.first == r.second)
    {
        throw ::Ice::OperationNotExistException(__FILE__, __LINE__, current.id, current.facet, current.operation);
    }

    switch(r.first - iceC_Test_TestIntfController_all)
    {
        case 0:
        {
            return _iceD_holdAdapter(in, current);
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
            return _iceD_interrupt(in, current);
        }
        case 6:
        {
            return _iceD_resumeAdapter(in, current);
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
Test::TestIntfController::_iceWriteImpl(::Ice::OutputStream* ostr) const
{
    ostr->startSlice(ice_staticId(), -1, true);
    ::Ice::StreamWriter< TestIntfController, ::Ice::OutputStream>::write(ostr, *this);
    ostr->endSlice();
}

void
Test::TestIntfController::_iceReadImpl(::Ice::InputStream* istr)
{
    istr->startSlice();
    ::Ice::StreamReader< TestIntfController, ::Ice::InputStream>::read(istr, *this);
    istr->endSlice();
}
/// \endcond

/// \cond INTERNAL
void
Test::_icePatchObjectPtr(TestIntfControllerPtr& handle, const ::Ice::ObjectPtr& v)
{
    handle = TestIntfControllerPtr::dynamicCast(v);
    if(v && !handle)
    {
        IceInternal::Ex::throwUOE(TestIntfController::ice_staticId(), v);
    }
}
/// \endcond

namespace Ice
{
}

#endif
