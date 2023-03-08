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
    "opByte",
    "opInt",
    "opShort",
    "opSimple",
    "shutdown"
};
const ::std::string iceC_Test_TestIntf_opByte_name = "opByte";
const ::std::string iceC_Test_TestIntf_opShort_name = "opShort";
const ::std::string iceC_Test_TestIntf_opInt_name = "opInt";
const ::std::string iceC_Test_TestIntf_opSimple_name = "opSimple";
const ::std::string iceC_Test_TestIntf_shutdown_name = "shutdown";

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
Test::TestIntf::_iceD_opByte(::IceInternal::Incoming& inS, const ::Ice::Current& current)
{
    _iceCheckMode(::Ice::OperationMode::Normal, current.mode);
    auto istr = inS.startReadParams();
    ByteEnum iceP_b1;
    istr->readAll(iceP_b1);
    inS.endReadParams();
    ByteEnum iceP_b2;
    ByteEnum ret = this->opByte(iceP_b1, iceP_b2, current);
    auto ostr = inS.startWriteParams();
    ostr->writeAll(iceP_b2, ret);
    inS.endWriteParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
Test::TestIntf::_iceD_opShort(::IceInternal::Incoming& inS, const ::Ice::Current& current)
{
    _iceCheckMode(::Ice::OperationMode::Normal, current.mode);
    auto istr = inS.startReadParams();
    ShortEnum iceP_s1;
    istr->readAll(iceP_s1);
    inS.endReadParams();
    ShortEnum iceP_s2;
    ShortEnum ret = this->opShort(iceP_s1, iceP_s2, current);
    auto ostr = inS.startWriteParams();
    ostr->writeAll(iceP_s2, ret);
    inS.endWriteParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
Test::TestIntf::_iceD_opInt(::IceInternal::Incoming& inS, const ::Ice::Current& current)
{
    _iceCheckMode(::Ice::OperationMode::Normal, current.mode);
    auto istr = inS.startReadParams();
    IntEnum iceP_i1;
    istr->readAll(iceP_i1);
    inS.endReadParams();
    IntEnum iceP_i2;
    IntEnum ret = this->opInt(iceP_i1, iceP_i2, current);
    auto ostr = inS.startWriteParams();
    ostr->writeAll(iceP_i2, ret);
    inS.endWriteParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
Test::TestIntf::_iceD_opSimple(::IceInternal::Incoming& inS, const ::Ice::Current& current)
{
    _iceCheckMode(::Ice::OperationMode::Normal, current.mode);
    auto istr = inS.startReadParams();
    SimpleEnum iceP_s1;
    istr->readAll(iceP_s1);
    inS.endReadParams();
    SimpleEnum iceP_s2;
    SimpleEnum ret = this->opSimple(iceP_s1, iceP_s2, current);
    auto ostr = inS.startWriteParams();
    ostr->writeAll(iceP_s2, ret);
    inS.endWriteParams();
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
            return _iceD_opByte(in, current);
        }
        case 5:
        {
            return _iceD_opInt(in, current);
        }
        case 6:
        {
            return _iceD_opShort(in, current);
        }
        case 7:
        {
            return _iceD_opSimple(in, current);
        }
        case 8:
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
Test::TestIntfPrx::_iceI_opByte(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<TestIntf::OpByteResult>>& outAsync, ByteEnum iceP_b1, const ::Ice::Context& context)
{
    _checkTwowayOnly(iceC_Test_TestIntf_opByte_name);
    outAsync->invoke(iceC_Test_TestIntf_opByte_name, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        [&](::Ice::OutputStream* ostr)
        {
            ostr->writeAll(iceP_b1);
        },
        nullptr,
        [](::Ice::InputStream* istr)
        {
            TestIntf::OpByteResult v;
            istr->readAll(v.b2, v.returnValue);
            return v;
        });
}
/// \endcond

/// \cond INTERNAL
void
Test::TestIntfPrx::_iceI_opShort(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<TestIntf::OpShortResult>>& outAsync, ShortEnum iceP_s1, const ::Ice::Context& context)
{
    _checkTwowayOnly(iceC_Test_TestIntf_opShort_name);
    outAsync->invoke(iceC_Test_TestIntf_opShort_name, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        [&](::Ice::OutputStream* ostr)
        {
            ostr->writeAll(iceP_s1);
        },
        nullptr,
        [](::Ice::InputStream* istr)
        {
            TestIntf::OpShortResult v;
            istr->readAll(v.s2, v.returnValue);
            return v;
        });
}
/// \endcond

/// \cond INTERNAL
void
Test::TestIntfPrx::_iceI_opInt(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<TestIntf::OpIntResult>>& outAsync, IntEnum iceP_i1, const ::Ice::Context& context)
{
    _checkTwowayOnly(iceC_Test_TestIntf_opInt_name);
    outAsync->invoke(iceC_Test_TestIntf_opInt_name, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        [&](::Ice::OutputStream* ostr)
        {
            ostr->writeAll(iceP_i1);
        },
        nullptr,
        [](::Ice::InputStream* istr)
        {
            TestIntf::OpIntResult v;
            istr->readAll(v.i2, v.returnValue);
            return v;
        });
}
/// \endcond

/// \cond INTERNAL
void
Test::TestIntfPrx::_iceI_opSimple(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<TestIntf::OpSimpleResult>>& outAsync, SimpleEnum iceP_s1, const ::Ice::Context& context)
{
    _checkTwowayOnly(iceC_Test_TestIntf_opSimple_name);
    outAsync->invoke(iceC_Test_TestIntf_opSimple_name, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        [&](::Ice::OutputStream* ostr)
        {
            ostr->writeAll(iceP_s1);
        },
        nullptr,
        [](::Ice::InputStream* istr)
        {
            TestIntf::OpSimpleResult v;
            istr->readAll(v.s2, v.returnValue);
            return v;
        });
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

const ::std::string iceC_Test_TestIntf_opByte_name = "opByte";

const ::std::string iceC_Test_TestIntf_opShort_name = "opShort";

const ::std::string iceC_Test_TestIntf_opInt_name = "opInt";

const ::std::string iceC_Test_TestIntf_opSimple_name = "opSimple";

const ::std::string iceC_Test_TestIntf_shutdown_name = "shutdown";

}

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
IceProxy::Test::TestIntf::_iceI_begin_opByte(::Test::ByteEnum iceP_b1, const ::Ice::Context& context, const ::IceInternal::CallbackBasePtr& del, const ::Ice::LocalObjectPtr& cookie, bool sync)
{
    _checkTwowayOnly(iceC_Test_TestIntf_opByte_name, sync);
    ::IceInternal::OutgoingAsyncPtr result = new ::IceInternal::CallbackOutgoing(this, iceC_Test_TestIntf_opByte_name, del, cookie, sync);
    try
    {
        result->prepare(iceC_Test_TestIntf_opByte_name, ::Ice::Normal, context);
        ::Ice::OutputStream* ostr = result->startWriteParams(::Ice::DefaultFormat);
        ostr->write(iceP_b1);
        result->endWriteParams();
        result->invoke(iceC_Test_TestIntf_opByte_name);
    }
    catch(const ::Ice::Exception& ex)
    {
        result->abort(ex);
    }
    return result;
}

::Test::ByteEnum
IceProxy::Test::TestIntf::end_opByte(::Test::ByteEnum& iceP_b2, const ::Ice::AsyncResultPtr& result)
{
    ::Ice::AsyncResult::_check(result, this, iceC_Test_TestIntf_opByte_name);
    ::Test::ByteEnum ret;
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
    istr->read(iceP_b2);
    istr->read(ret);
    result->_endReadParams();
    return ret;
}

void IceProxy::Test::TestIntf::_iceI_end_opByte(::Test::ByteEnum& iceP_b2, ::Test::ByteEnum& ret, const ::Ice::AsyncResultPtr& result)
{
    ::Ice::AsyncResult::_check(result, this, iceC_Test_TestIntf_opByte_name);
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
    istr->read(iceP_b2);
    istr->read(ret);
    result->_endReadParams();
}

::Ice::AsyncResultPtr
IceProxy::Test::TestIntf::_iceI_begin_opShort(::Test::ShortEnum iceP_s1, const ::Ice::Context& context, const ::IceInternal::CallbackBasePtr& del, const ::Ice::LocalObjectPtr& cookie, bool sync)
{
    _checkTwowayOnly(iceC_Test_TestIntf_opShort_name, sync);
    ::IceInternal::OutgoingAsyncPtr result = new ::IceInternal::CallbackOutgoing(this, iceC_Test_TestIntf_opShort_name, del, cookie, sync);
    try
    {
        result->prepare(iceC_Test_TestIntf_opShort_name, ::Ice::Normal, context);
        ::Ice::OutputStream* ostr = result->startWriteParams(::Ice::DefaultFormat);
        ostr->write(iceP_s1);
        result->endWriteParams();
        result->invoke(iceC_Test_TestIntf_opShort_name);
    }
    catch(const ::Ice::Exception& ex)
    {
        result->abort(ex);
    }
    return result;
}

::Test::ShortEnum
IceProxy::Test::TestIntf::end_opShort(::Test::ShortEnum& iceP_s2, const ::Ice::AsyncResultPtr& result)
{
    ::Ice::AsyncResult::_check(result, this, iceC_Test_TestIntf_opShort_name);
    ::Test::ShortEnum ret;
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
    istr->read(iceP_s2);
    istr->read(ret);
    result->_endReadParams();
    return ret;
}

void IceProxy::Test::TestIntf::_iceI_end_opShort(::Test::ShortEnum& iceP_s2, ::Test::ShortEnum& ret, const ::Ice::AsyncResultPtr& result)
{
    ::Ice::AsyncResult::_check(result, this, iceC_Test_TestIntf_opShort_name);
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
    istr->read(iceP_s2);
    istr->read(ret);
    result->_endReadParams();
}

::Ice::AsyncResultPtr
IceProxy::Test::TestIntf::_iceI_begin_opInt(::Test::IntEnum iceP_i1, const ::Ice::Context& context, const ::IceInternal::CallbackBasePtr& del, const ::Ice::LocalObjectPtr& cookie, bool sync)
{
    _checkTwowayOnly(iceC_Test_TestIntf_opInt_name, sync);
    ::IceInternal::OutgoingAsyncPtr result = new ::IceInternal::CallbackOutgoing(this, iceC_Test_TestIntf_opInt_name, del, cookie, sync);
    try
    {
        result->prepare(iceC_Test_TestIntf_opInt_name, ::Ice::Normal, context);
        ::Ice::OutputStream* ostr = result->startWriteParams(::Ice::DefaultFormat);
        ostr->write(iceP_i1);
        result->endWriteParams();
        result->invoke(iceC_Test_TestIntf_opInt_name);
    }
    catch(const ::Ice::Exception& ex)
    {
        result->abort(ex);
    }
    return result;
}

::Test::IntEnum
IceProxy::Test::TestIntf::end_opInt(::Test::IntEnum& iceP_i2, const ::Ice::AsyncResultPtr& result)
{
    ::Ice::AsyncResult::_check(result, this, iceC_Test_TestIntf_opInt_name);
    ::Test::IntEnum ret;
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
    istr->read(iceP_i2);
    istr->read(ret);
    result->_endReadParams();
    return ret;
}

void IceProxy::Test::TestIntf::_iceI_end_opInt(::Test::IntEnum& iceP_i2, ::Test::IntEnum& ret, const ::Ice::AsyncResultPtr& result)
{
    ::Ice::AsyncResult::_check(result, this, iceC_Test_TestIntf_opInt_name);
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
    istr->read(iceP_i2);
    istr->read(ret);
    result->_endReadParams();
}

::Ice::AsyncResultPtr
IceProxy::Test::TestIntf::_iceI_begin_opSimple(::Test::SimpleEnum iceP_s1, const ::Ice::Context& context, const ::IceInternal::CallbackBasePtr& del, const ::Ice::LocalObjectPtr& cookie, bool sync)
{
    _checkTwowayOnly(iceC_Test_TestIntf_opSimple_name, sync);
    ::IceInternal::OutgoingAsyncPtr result = new ::IceInternal::CallbackOutgoing(this, iceC_Test_TestIntf_opSimple_name, del, cookie, sync);
    try
    {
        result->prepare(iceC_Test_TestIntf_opSimple_name, ::Ice::Normal, context);
        ::Ice::OutputStream* ostr = result->startWriteParams(::Ice::DefaultFormat);
        ostr->write(iceP_s1);
        result->endWriteParams();
        result->invoke(iceC_Test_TestIntf_opSimple_name);
    }
    catch(const ::Ice::Exception& ex)
    {
        result->abort(ex);
    }
    return result;
}

::Test::SimpleEnum
IceProxy::Test::TestIntf::end_opSimple(::Test::SimpleEnum& iceP_s2, const ::Ice::AsyncResultPtr& result)
{
    ::Ice::AsyncResult::_check(result, this, iceC_Test_TestIntf_opSimple_name);
    ::Test::SimpleEnum ret;
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
    istr->read(iceP_s2);
    istr->read(ret);
    result->_endReadParams();
    return ret;
}

void IceProxy::Test::TestIntf::_iceI_end_opSimple(::Test::SimpleEnum& iceP_s2, ::Test::SimpleEnum& ret, const ::Ice::AsyncResultPtr& result)
{
    ::Ice::AsyncResult::_check(result, this, iceC_Test_TestIntf_opSimple_name);
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
    istr->read(iceP_s2);
    istr->read(ret);
    result->_endReadParams();
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
Test::TestIntf::_iceD_opByte(::IceInternal::Incoming& inS, const ::Ice::Current& current)
{
    _iceCheckMode(::Ice::Normal, current.mode);
    ::Ice::InputStream* istr = inS.startReadParams();
    ByteEnum iceP_b1;
    istr->read(iceP_b1);
    inS.endReadParams();
    ByteEnum iceP_b2;
    ByteEnum ret = this->opByte(iceP_b1, iceP_b2, current);
    ::Ice::OutputStream* ostr = inS.startWriteParams();
    ostr->write(iceP_b2);
    ostr->write(ret);
    inS.endWriteParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
Test::TestIntf::_iceD_opShort(::IceInternal::Incoming& inS, const ::Ice::Current& current)
{
    _iceCheckMode(::Ice::Normal, current.mode);
    ::Ice::InputStream* istr = inS.startReadParams();
    ShortEnum iceP_s1;
    istr->read(iceP_s1);
    inS.endReadParams();
    ShortEnum iceP_s2;
    ShortEnum ret = this->opShort(iceP_s1, iceP_s2, current);
    ::Ice::OutputStream* ostr = inS.startWriteParams();
    ostr->write(iceP_s2);
    ostr->write(ret);
    inS.endWriteParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
Test::TestIntf::_iceD_opInt(::IceInternal::Incoming& inS, const ::Ice::Current& current)
{
    _iceCheckMode(::Ice::Normal, current.mode);
    ::Ice::InputStream* istr = inS.startReadParams();
    IntEnum iceP_i1;
    istr->read(iceP_i1);
    inS.endReadParams();
    IntEnum iceP_i2;
    IntEnum ret = this->opInt(iceP_i1, iceP_i2, current);
    ::Ice::OutputStream* ostr = inS.startWriteParams();
    ostr->write(iceP_i2);
    ostr->write(ret);
    inS.endWriteParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
Test::TestIntf::_iceD_opSimple(::IceInternal::Incoming& inS, const ::Ice::Current& current)
{
    _iceCheckMode(::Ice::Normal, current.mode);
    ::Ice::InputStream* istr = inS.startReadParams();
    SimpleEnum iceP_s1;
    istr->read(iceP_s1);
    inS.endReadParams();
    SimpleEnum iceP_s2;
    SimpleEnum ret = this->opSimple(iceP_s1, iceP_s2, current);
    ::Ice::OutputStream* ostr = inS.startWriteParams();
    ostr->write(iceP_s2);
    ostr->write(ret);
    inS.endWriteParams();
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
    "opByte",
    "opInt",
    "opShort",
    "opSimple",
    "shutdown"
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
            return _iceD_opByte(in, current);
        }
        case 5:
        {
            return _iceD_opInt(in, current);
        }
        case 6:
        {
            return _iceD_opShort(in, current);
        }
        case 7:
        {
            return _iceD_opSimple(in, current);
        }
        case 8:
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
