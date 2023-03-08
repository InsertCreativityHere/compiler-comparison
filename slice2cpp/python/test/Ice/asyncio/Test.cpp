//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.7.9
//
// <auto-generated>
//
// Generated from file `Test.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

#include <Test.h>
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

const ::IceInternal::DefaultUserExceptionFactoryInit<::Test::TestException> iceC_Test_TestException_init("::Test::TestException");

const ::std::string iceC_Test_TestIntf_ids[2] =
{
    "::Ice::Object",
    "::Test::TestIntf"
};
const ::std::string iceC_Test_TestIntf_ops[] =
{
    "callOpOn",
    "ice_id",
    "ice_ids",
    "ice_isA",
    "ice_ping",
    "op",
    "shutdown",
    "sleep",
    "throwUnhandledException1",
    "throwUnhandledException2",
    "throwUserException1",
    "throwUserException2"
};
const ::std::string iceC_Test_TestIntf_op_name = "op";
const ::std::string iceC_Test_TestIntf_callOpOn_name = "callOpOn";
const ::std::string iceC_Test_TestIntf_throwUserException1_name = "throwUserException1";
const ::std::string iceC_Test_TestIntf_throwUserException2_name = "throwUserException2";
const ::std::string iceC_Test_TestIntf_throwUnhandledException1_name = "throwUnhandledException1";
const ::std::string iceC_Test_TestIntf_throwUnhandledException2_name = "throwUnhandledException2";
const ::std::string iceC_Test_TestIntf_sleep_name = "sleep";
const ::std::string iceC_Test_TestIntf_shutdown_name = "shutdown";

}

Test::TestException::~TestException()
{
}

const ::std::string&
Test::TestException::ice_staticId()
{
    static const ::std::string typeId = "::Test::TestException";
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
    int ret = this->op(current);
    auto ostr = inS.startWriteParams();
    ostr->writeAll(ret);
    inS.endWriteParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
Test::TestIntf::_iceD_callOpOn(::IceInternal::Incoming& inS, const ::Ice::Current& current)
{
    _iceCheckMode(::Ice::OperationMode::Normal, current.mode);
    auto istr = inS.startReadParams();
    ::std::shared_ptr<TestIntfPrx> iceP_proxy;
    istr->readAll(iceP_proxy);
    inS.endReadParams();
    int ret = this->callOpOn(::std::move(iceP_proxy), current);
    auto ostr = inS.startWriteParams();
    ostr->writeAll(ret);
    inS.endWriteParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
Test::TestIntf::_iceD_throwUserException1(::IceInternal::Incoming& inS, const ::Ice::Current& current)
{
    _iceCheckMode(::Ice::OperationMode::Normal, current.mode);
    inS.readEmptyParams();
    this->throwUserException1(current);
    inS.writeEmptyParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
Test::TestIntf::_iceD_throwUserException2(::IceInternal::Incoming& inS, const ::Ice::Current& current)
{
    _iceCheckMode(::Ice::OperationMode::Normal, current.mode);
    inS.readEmptyParams();
    this->throwUserException2(current);
    inS.writeEmptyParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
Test::TestIntf::_iceD_throwUnhandledException1(::IceInternal::Incoming& inS, const ::Ice::Current& current)
{
    _iceCheckMode(::Ice::OperationMode::Normal, current.mode);
    inS.readEmptyParams();
    this->throwUnhandledException1(current);
    inS.writeEmptyParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
Test::TestIntf::_iceD_throwUnhandledException2(::IceInternal::Incoming& inS, const ::Ice::Current& current)
{
    _iceCheckMode(::Ice::OperationMode::Normal, current.mode);
    inS.readEmptyParams();
    this->throwUnhandledException2(current);
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
    int iceP_ms;
    istr->readAll(iceP_ms);
    inS.endReadParams();
    this->sleep(iceP_ms, current);
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
    ::std::pair<const ::std::string*, const ::std::string*> r = ::std::equal_range(iceC_Test_TestIntf_ops, iceC_Test_TestIntf_ops + 12, current.operation);
    if(r.first == r.second)
    {
        throw ::Ice::OperationNotExistException(__FILE__, __LINE__, current.id, current.facet, current.operation);
    }

    switch(r.first - iceC_Test_TestIntf_ops)
    {
        case 0:
        {
            return _iceD_callOpOn(in, current);
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
            return _iceD_op(in, current);
        }
        case 6:
        {
            return _iceD_shutdown(in, current);
        }
        case 7:
        {
            return _iceD_sleep(in, current);
        }
        case 8:
        {
            return _iceD_throwUnhandledException1(in, current);
        }
        case 9:
        {
            return _iceD_throwUnhandledException2(in, current);
        }
        case 10:
        {
            return _iceD_throwUserException1(in, current);
        }
        case 11:
        {
            return _iceD_throwUserException2(in, current);
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
Test::TestIntfPrx::_iceI_op(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<int>>& outAsync, const ::Ice::Context& context)
{
    _checkTwowayOnly(iceC_Test_TestIntf_op_name);
    outAsync->invoke(iceC_Test_TestIntf_op_name, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        nullptr,
        nullptr);
}
/// \endcond

/// \cond INTERNAL
void
Test::TestIntfPrx::_iceI_callOpOn(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<int>>& outAsync, const ::std::shared_ptr<TestIntfPrx>& iceP_proxy, const ::Ice::Context& context)
{
    _checkTwowayOnly(iceC_Test_TestIntf_callOpOn_name);
    outAsync->invoke(iceC_Test_TestIntf_callOpOn_name, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        [&](::Ice::OutputStream* ostr)
        {
            ostr->writeAll(iceP_proxy);
        },
        nullptr);
}
/// \endcond

/// \cond INTERNAL
void
Test::TestIntfPrx::_iceI_throwUserException1(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>& outAsync, const ::Ice::Context& context)
{
    _checkTwowayOnly(iceC_Test_TestIntf_throwUserException1_name);
    outAsync->invoke(iceC_Test_TestIntf_throwUserException1_name, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        nullptr,
        [](const ::Ice::UserException& ex)
        {
            try
            {
                ex.ice_throw();
            }
            catch(const TestException&)
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
Test::TestIntfPrx::_iceI_throwUserException2(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>& outAsync, const ::Ice::Context& context)
{
    _checkTwowayOnly(iceC_Test_TestIntf_throwUserException2_name);
    outAsync->invoke(iceC_Test_TestIntf_throwUserException2_name, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        nullptr,
        [](const ::Ice::UserException& ex)
        {
            try
            {
                ex.ice_throw();
            }
            catch(const TestException&)
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
Test::TestIntfPrx::_iceI_throwUnhandledException1(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>& outAsync, const ::Ice::Context& context)
{
    outAsync->invoke(iceC_Test_TestIntf_throwUnhandledException1_name, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        nullptr,
        nullptr);
}
/// \endcond

/// \cond INTERNAL
void
Test::TestIntfPrx::_iceI_throwUnhandledException2(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>& outAsync, const ::Ice::Context& context)
{
    outAsync->invoke(iceC_Test_TestIntf_throwUnhandledException2_name, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        nullptr,
        nullptr);
}
/// \endcond

/// \cond INTERNAL
void
Test::TestIntfPrx::_iceI_sleep(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>& outAsync, int iceP_ms, const ::Ice::Context& context)
{
    outAsync->invoke(iceC_Test_TestIntf_sleep_name, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        [&](::Ice::OutputStream* ostr)
        {
            ostr->writeAll(iceP_ms);
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

#else // C++98 mapping

namespace
{

const ::std::string iceC_Test_TestIntf_op_name = "op";

const ::std::string iceC_Test_TestIntf_callOpOn_name = "callOpOn";

const ::std::string iceC_Test_TestIntf_throwUserException1_name = "throwUserException1";

const ::std::string iceC_Test_TestIntf_throwUserException2_name = "throwUserException2";

const ::std::string iceC_Test_TestIntf_throwUnhandledException1_name = "throwUnhandledException1";

const ::std::string iceC_Test_TestIntf_throwUnhandledException2_name = "throwUnhandledException2";

const ::std::string iceC_Test_TestIntf_sleep_name = "sleep";

const ::std::string iceC_Test_TestIntf_shutdown_name = "shutdown";

}

namespace
{

const ::IceInternal::DefaultUserExceptionFactoryInit< ::Test::TestException> iceC_Test_TestException_init("::Test::TestException");

}

#ifdef ICE_CPP11_COMPILER
Test::TestException::~TestException()
{
}
#else
Test::TestException::~TestException() throw()
{
}
#endif

::std::string
Test::TestException::ice_id() const
{
    return "::Test::TestException";
}

Test::TestException*
Test::TestException::ice_clone() const
{
    return new TestException(*this);
}

void
Test::TestException::ice_throw() const
{
    throw *this;
}

/// \cond STREAM
void
Test::TestException::_writeImpl(::Ice::OutputStream* ostr) const
{
    ostr->startSlice("::Test::TestException", -1, true);
    ::Ice::StreamWriter< TestException, ::Ice::OutputStream>::write(ostr, *this);
    ostr->endSlice();
}

void
Test::TestException::_readImpl(::Ice::InputStream* istr)
{
    istr->startSlice();
    ::Ice::StreamReader< TestException, ::Ice::InputStream>::read(istr, *this);
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
    _checkTwowayOnly(iceC_Test_TestIntf_op_name, sync);
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

::Ice::Int
IceProxy::Test::TestIntf::end_op(const ::Ice::AsyncResultPtr& result)
{
    ::Ice::AsyncResult::_check(result, this, iceC_Test_TestIntf_op_name);
    ::Ice::Int ret;
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
    istr->read(ret);
    result->_endReadParams();
    return ret;
}

::Ice::AsyncResultPtr
IceProxy::Test::TestIntf::_iceI_begin_callOpOn(const ::Test::TestIntfPrx& iceP_proxy, const ::Ice::Context& context, const ::IceInternal::CallbackBasePtr& del, const ::Ice::LocalObjectPtr& cookie, bool sync)
{
    _checkTwowayOnly(iceC_Test_TestIntf_callOpOn_name, sync);
    ::IceInternal::OutgoingAsyncPtr result = new ::IceInternal::CallbackOutgoing(this, iceC_Test_TestIntf_callOpOn_name, del, cookie, sync);
    try
    {
        result->prepare(iceC_Test_TestIntf_callOpOn_name, ::Ice::Normal, context);
        ::Ice::OutputStream* ostr = result->startWriteParams(::Ice::DefaultFormat);
        ostr->write(iceP_proxy);
        result->endWriteParams();
        result->invoke(iceC_Test_TestIntf_callOpOn_name);
    }
    catch(const ::Ice::Exception& ex)
    {
        result->abort(ex);
    }
    return result;
}

::Ice::Int
IceProxy::Test::TestIntf::end_callOpOn(const ::Ice::AsyncResultPtr& result)
{
    ::Ice::AsyncResult::_check(result, this, iceC_Test_TestIntf_callOpOn_name);
    ::Ice::Int ret;
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
    istr->read(ret);
    result->_endReadParams();
    return ret;
}

::Ice::AsyncResultPtr
IceProxy::Test::TestIntf::_iceI_begin_throwUserException1(const ::Ice::Context& context, const ::IceInternal::CallbackBasePtr& del, const ::Ice::LocalObjectPtr& cookie, bool sync)
{
    _checkTwowayOnly(iceC_Test_TestIntf_throwUserException1_name, sync);
    ::IceInternal::OutgoingAsyncPtr result = new ::IceInternal::CallbackOutgoing(this, iceC_Test_TestIntf_throwUserException1_name, del, cookie, sync);
    try
    {
        result->prepare(iceC_Test_TestIntf_throwUserException1_name, ::Ice::Normal, context);
        result->writeEmptyParams();
        result->invoke(iceC_Test_TestIntf_throwUserException1_name);
    }
    catch(const ::Ice::Exception& ex)
    {
        result->abort(ex);
    }
    return result;
}

void
IceProxy::Test::TestIntf::end_throwUserException1(const ::Ice::AsyncResultPtr& result)
{
    ::Ice::AsyncResult::_check(result, this, iceC_Test_TestIntf_throwUserException1_name);
    if(!result->_waitForResponse())
    {
        try
        {
            result->_throwUserException();
        }
        catch(const ::Test::TestException&)
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
IceProxy::Test::TestIntf::_iceI_begin_throwUserException2(const ::Ice::Context& context, const ::IceInternal::CallbackBasePtr& del, const ::Ice::LocalObjectPtr& cookie, bool sync)
{
    _checkTwowayOnly(iceC_Test_TestIntf_throwUserException2_name, sync);
    ::IceInternal::OutgoingAsyncPtr result = new ::IceInternal::CallbackOutgoing(this, iceC_Test_TestIntf_throwUserException2_name, del, cookie, sync);
    try
    {
        result->prepare(iceC_Test_TestIntf_throwUserException2_name, ::Ice::Normal, context);
        result->writeEmptyParams();
        result->invoke(iceC_Test_TestIntf_throwUserException2_name);
    }
    catch(const ::Ice::Exception& ex)
    {
        result->abort(ex);
    }
    return result;
}

void
IceProxy::Test::TestIntf::end_throwUserException2(const ::Ice::AsyncResultPtr& result)
{
    ::Ice::AsyncResult::_check(result, this, iceC_Test_TestIntf_throwUserException2_name);
    if(!result->_waitForResponse())
    {
        try
        {
            result->_throwUserException();
        }
        catch(const ::Test::TestException&)
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
IceProxy::Test::TestIntf::_iceI_begin_throwUnhandledException1(const ::Ice::Context& context, const ::IceInternal::CallbackBasePtr& del, const ::Ice::LocalObjectPtr& cookie, bool sync)
{
    ::IceInternal::OutgoingAsyncPtr result = new ::IceInternal::CallbackOutgoing(this, iceC_Test_TestIntf_throwUnhandledException1_name, del, cookie, sync);
    try
    {
        result->prepare(iceC_Test_TestIntf_throwUnhandledException1_name, ::Ice::Normal, context);
        result->writeEmptyParams();
        result->invoke(iceC_Test_TestIntf_throwUnhandledException1_name);
    }
    catch(const ::Ice::Exception& ex)
    {
        result->abort(ex);
    }
    return result;
}

void
IceProxy::Test::TestIntf::end_throwUnhandledException1(const ::Ice::AsyncResultPtr& result)
{
    _end(result, iceC_Test_TestIntf_throwUnhandledException1_name);
}

::Ice::AsyncResultPtr
IceProxy::Test::TestIntf::_iceI_begin_throwUnhandledException2(const ::Ice::Context& context, const ::IceInternal::CallbackBasePtr& del, const ::Ice::LocalObjectPtr& cookie, bool sync)
{
    ::IceInternal::OutgoingAsyncPtr result = new ::IceInternal::CallbackOutgoing(this, iceC_Test_TestIntf_throwUnhandledException2_name, del, cookie, sync);
    try
    {
        result->prepare(iceC_Test_TestIntf_throwUnhandledException2_name, ::Ice::Normal, context);
        result->writeEmptyParams();
        result->invoke(iceC_Test_TestIntf_throwUnhandledException2_name);
    }
    catch(const ::Ice::Exception& ex)
    {
        result->abort(ex);
    }
    return result;
}

void
IceProxy::Test::TestIntf::end_throwUnhandledException2(const ::Ice::AsyncResultPtr& result)
{
    _end(result, iceC_Test_TestIntf_throwUnhandledException2_name);
}

::Ice::AsyncResultPtr
IceProxy::Test::TestIntf::_iceI_begin_sleep(::Ice::Int iceP_ms, const ::Ice::Context& context, const ::IceInternal::CallbackBasePtr& del, const ::Ice::LocalObjectPtr& cookie, bool sync)
{
    ::IceInternal::OutgoingAsyncPtr result = new ::IceInternal::CallbackOutgoing(this, iceC_Test_TestIntf_sleep_name, del, cookie, sync);
    try
    {
        result->prepare(iceC_Test_TestIntf_sleep_name, ::Ice::Normal, context);
        ::Ice::OutputStream* ostr = result->startWriteParams(::Ice::DefaultFormat);
        ostr->write(iceP_ms);
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
    _end(result, iceC_Test_TestIntf_sleep_name);
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
#ifdef ICE_HAS_THREAD_SAFE_LOCAL_STATIC
    static const ::std::string typeId = "::Test::TestIntf";
    return typeId;
#else
    return iceC_Test_TestIntf_ids[1];
#endif
}

/// \cond INTERNAL
bool
Test::TestIntf::_iceD_op(::IceInternal::Incoming& inS, const ::Ice::Current& current)
{
    _iceCheckMode(::Ice::Normal, current.mode);
    inS.readEmptyParams();
    ::Ice::Int ret = this->op(current);
    ::Ice::OutputStream* ostr = inS.startWriteParams();
    ostr->write(ret);
    inS.endWriteParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
Test::TestIntf::_iceD_callOpOn(::IceInternal::Incoming& inS, const ::Ice::Current& current)
{
    _iceCheckMode(::Ice::Normal, current.mode);
    ::Ice::InputStream* istr = inS.startReadParams();
    TestIntfPrx iceP_proxy;
    istr->read(iceP_proxy);
    inS.endReadParams();
    ::Ice::Int ret = this->callOpOn(iceP_proxy, current);
    ::Ice::OutputStream* ostr = inS.startWriteParams();
    ostr->write(ret);
    inS.endWriteParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
Test::TestIntf::_iceD_throwUserException1(::IceInternal::Incoming& inS, const ::Ice::Current& current)
{
    _iceCheckMode(::Ice::Normal, current.mode);
    inS.readEmptyParams();
    this->throwUserException1(current);
    inS.writeEmptyParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
Test::TestIntf::_iceD_throwUserException2(::IceInternal::Incoming& inS, const ::Ice::Current& current)
{
    _iceCheckMode(::Ice::Normal, current.mode);
    inS.readEmptyParams();
    this->throwUserException2(current);
    inS.writeEmptyParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
Test::TestIntf::_iceD_throwUnhandledException1(::IceInternal::Incoming& inS, const ::Ice::Current& current)
{
    _iceCheckMode(::Ice::Normal, current.mode);
    inS.readEmptyParams();
    this->throwUnhandledException1(current);
    inS.writeEmptyParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
Test::TestIntf::_iceD_throwUnhandledException2(::IceInternal::Incoming& inS, const ::Ice::Current& current)
{
    _iceCheckMode(::Ice::Normal, current.mode);
    inS.readEmptyParams();
    this->throwUnhandledException2(current);
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
    ::Ice::Int iceP_ms;
    istr->read(iceP_ms);
    inS.endReadParams();
    this->sleep(iceP_ms, current);
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
    "callOpOn",
    "ice_id",
    "ice_ids",
    "ice_isA",
    "ice_ping",
    "op",
    "shutdown",
    "sleep",
    "throwUnhandledException1",
    "throwUnhandledException2",
    "throwUserException1",
    "throwUserException2"
};

}

/// \cond INTERNAL
bool
Test::TestIntf::_iceDispatch(::IceInternal::Incoming& in, const ::Ice::Current& current)
{
    ::std::pair<const ::std::string*, const ::std::string*> r = ::std::equal_range(iceC_Test_TestIntf_all, iceC_Test_TestIntf_all + 12, current.operation);
    if(r.first == r.second)
    {
        throw ::Ice::OperationNotExistException(__FILE__, __LINE__, current.id, current.facet, current.operation);
    }

    switch(r.first - iceC_Test_TestIntf_all)
    {
        case 0:
        {
            return _iceD_callOpOn(in, current);
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
            return _iceD_op(in, current);
        }
        case 6:
        {
            return _iceD_shutdown(in, current);
        }
        case 7:
        {
            return _iceD_sleep(in, current);
        }
        case 8:
        {
            return _iceD_throwUnhandledException1(in, current);
        }
        case 9:
        {
            return _iceD_throwUnhandledException2(in, current);
        }
        case 10:
        {
            return _iceD_throwUserException1(in, current);
        }
        case 11:
        {
            return _iceD_throwUserException2(in, current);
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

namespace Ice
{
}

#endif
