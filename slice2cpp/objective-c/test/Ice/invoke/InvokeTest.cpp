//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.7.9
//
// <auto-generated>
//
// Generated from file `InvokeTest.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

#include <InvokeTest.h>
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

const ::IceInternal::DefaultUserExceptionFactoryInit<::Test::MyException> iceC_Test_MyException_init("::Test::MyException");

const ::std::string iceC_Test_MyClass_ids[2] =
{
    "::Ice::Object",
    "::Test::MyClass"
};
const ::std::string iceC_Test_MyClass_ops[] =
{
    "ice_id",
    "ice_ids",
    "ice_isA",
    "ice_ping",
    "opException",
    "opOneway",
    "opString",
    "shutdown"
};
const ::std::string iceC_Test_MyClass_opOneway_name = "opOneway";
const ::std::string iceC_Test_MyClass_opString_name = "opString";
const ::std::string iceC_Test_MyClass_opException_name = "opException";
const ::std::string iceC_Test_MyClass_shutdown_name = "shutdown";

}

Test::MyException::~MyException()
{
}

const ::std::string&
Test::MyException::ice_staticId()
{
    static const ::std::string typeId = "::Test::MyException";
    return typeId;
}

bool
Test::MyClass::ice_isA(::std::string s, const ::Ice::Current&) const
{
    return ::std::binary_search(iceC_Test_MyClass_ids, iceC_Test_MyClass_ids + 2, s);
}

::std::vector<::std::string>
Test::MyClass::ice_ids(const ::Ice::Current&) const
{
    return ::std::vector<::std::string>(&iceC_Test_MyClass_ids[0], &iceC_Test_MyClass_ids[2]);
}

::std::string
Test::MyClass::ice_id(const ::Ice::Current&) const
{
    return ice_staticId();
}

const ::std::string&
Test::MyClass::ice_staticId()
{
    static const ::std::string typeId = "::Test::MyClass";
    return typeId;
}

/// \cond INTERNAL
bool
Test::MyClass::_iceD_opOneway(::IceInternal::Incoming& inS, const ::Ice::Current& current)
{
    _iceCheckMode(::Ice::OperationMode::Normal, current.mode);
    inS.readEmptyParams();
    this->opOneway(current);
    inS.writeEmptyParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
Test::MyClass::_iceD_opString(::IceInternal::Incoming& inS, const ::Ice::Current& current)
{
    _iceCheckMode(::Ice::OperationMode::Normal, current.mode);
    auto istr = inS.startReadParams();
    ::std::string iceP_s1;
    istr->readAll(iceP_s1);
    inS.endReadParams();
    ::std::string iceP_s2;
    ::std::string ret = this->opString(::std::move(iceP_s1), iceP_s2, current);
    auto ostr = inS.startWriteParams();
    ostr->writeAll(iceP_s2, ret);
    inS.endWriteParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
Test::MyClass::_iceD_opException(::IceInternal::Incoming& inS, const ::Ice::Current& current)
{
    _iceCheckMode(::Ice::OperationMode::Normal, current.mode);
    inS.readEmptyParams();
    this->opException(current);
    inS.writeEmptyParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
Test::MyClass::_iceD_shutdown(::IceInternal::Incoming& inS, const ::Ice::Current& current)
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
Test::MyClass::_iceDispatch(::IceInternal::Incoming& in, const ::Ice::Current& current)
{
    ::std::pair<const ::std::string*, const ::std::string*> r = ::std::equal_range(iceC_Test_MyClass_ops, iceC_Test_MyClass_ops + 8, current.operation);
    if(r.first == r.second)
    {
        throw ::Ice::OperationNotExistException(__FILE__, __LINE__, current.id, current.facet, current.operation);
    }

    switch(r.first - iceC_Test_MyClass_ops)
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
            return _iceD_opException(in, current);
        }
        case 5:
        {
            return _iceD_opOneway(in, current);
        }
        case 6:
        {
            return _iceD_opString(in, current);
        }
        case 7:
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
Test::MyClassPrx::_iceI_opOneway(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>& outAsync, const ::Ice::Context& context)
{
    outAsync->invoke(iceC_Test_MyClass_opOneway_name, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        nullptr,
        nullptr);
}
/// \endcond

/// \cond INTERNAL
void
Test::MyClassPrx::_iceI_opString(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<MyClass::OpStringResult>>& outAsync, const ::std::string& iceP_s1, const ::Ice::Context& context)
{
    _checkTwowayOnly(iceC_Test_MyClass_opString_name);
    outAsync->invoke(iceC_Test_MyClass_opString_name, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        [&](::Ice::OutputStream* ostr)
        {
            ostr->writeAll(iceP_s1);
        },
        nullptr,
        [](::Ice::InputStream* istr)
        {
            MyClass::OpStringResult v;
            istr->readAll(v.s2, v.returnValue);
            return v;
        });
}
/// \endcond

/// \cond INTERNAL
void
Test::MyClassPrx::_iceI_opException(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>& outAsync, const ::Ice::Context& context)
{
    _checkTwowayOnly(iceC_Test_MyClass_opException_name);
    outAsync->invoke(iceC_Test_MyClass_opException_name, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        nullptr,
        [](const ::Ice::UserException& ex)
        {
            try
            {
                ex.ice_throw();
            }
            catch(const MyException&)
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
Test::MyClassPrx::_iceI_shutdown(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>& outAsync, const ::Ice::Context& context)
{
    outAsync->invoke(iceC_Test_MyClass_shutdown_name, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        nullptr,
        nullptr);
}
/// \endcond

/// \cond INTERNAL
::std::shared_ptr<::Ice::ObjectPrx>
Test::MyClassPrx::_newInstance() const
{
    return ::IceInternal::createProxy<MyClassPrx>();
}
/// \endcond

const ::std::string&
Test::MyClassPrx::ice_staticId()
{
    return MyClass::ice_staticId();
}

#else // C++98 mapping

namespace
{

const ::std::string iceC_Test_MyClass_opOneway_name = "opOneway";

const ::std::string iceC_Test_MyClass_opString_name = "opString";

const ::std::string iceC_Test_MyClass_opException_name = "opException";

const ::std::string iceC_Test_MyClass_shutdown_name = "shutdown";

}

namespace
{

const ::IceInternal::DefaultUserExceptionFactoryInit< ::Test::MyException> iceC_Test_MyException_init("::Test::MyException");

}

#ifdef ICE_CPP11_COMPILER
Test::MyException::~MyException()
{
}
#else
Test::MyException::~MyException() throw()
{
}
#endif

::std::string
Test::MyException::ice_id() const
{
    return "::Test::MyException";
}

Test::MyException*
Test::MyException::ice_clone() const
{
    return new MyException(*this);
}

void
Test::MyException::ice_throw() const
{
    throw *this;
}

/// \cond STREAM
void
Test::MyException::_writeImpl(::Ice::OutputStream* ostr) const
{
    ostr->startSlice("::Test::MyException", -1, true);
    ::Ice::StreamWriter< MyException, ::Ice::OutputStream>::write(ostr, *this);
    ostr->endSlice();
}

void
Test::MyException::_readImpl(::Ice::InputStream* istr)
{
    istr->startSlice();
    ::Ice::StreamReader< MyException, ::Ice::InputStream>::read(istr, *this);
    istr->endSlice();
}
/// \endcond

/// \cond INTERNAL
::IceProxy::Ice::Object* ::IceProxy::Test::upCast(MyClass* p) { return p; }

void
::IceProxy::Test::_readProxy(::Ice::InputStream* istr, ::IceInternal::ProxyHandle< MyClass>& v)
{
    ::Ice::ObjectPrx proxy;
    istr->read(proxy);
    if(!proxy)
    {
        v = 0;
    }
    else
    {
        v = new MyClass;
        v->_copyFrom(proxy);
    }
}
/// \endcond

::Ice::AsyncResultPtr
IceProxy::Test::MyClass::_iceI_begin_opOneway(const ::Ice::Context& context, const ::IceInternal::CallbackBasePtr& del, const ::Ice::LocalObjectPtr& cookie, bool sync)
{
    ::IceInternal::OutgoingAsyncPtr result = new ::IceInternal::CallbackOutgoing(this, iceC_Test_MyClass_opOneway_name, del, cookie, sync);
    try
    {
        result->prepare(iceC_Test_MyClass_opOneway_name, ::Ice::Normal, context);
        result->writeEmptyParams();
        result->invoke(iceC_Test_MyClass_opOneway_name);
    }
    catch(const ::Ice::Exception& ex)
    {
        result->abort(ex);
    }
    return result;
}

void
IceProxy::Test::MyClass::end_opOneway(const ::Ice::AsyncResultPtr& result)
{
    _end(result, iceC_Test_MyClass_opOneway_name);
}

::Ice::AsyncResultPtr
IceProxy::Test::MyClass::_iceI_begin_opString(const ::std::string& iceP_s1, const ::Ice::Context& context, const ::IceInternal::CallbackBasePtr& del, const ::Ice::LocalObjectPtr& cookie, bool sync)
{
    _checkTwowayOnly(iceC_Test_MyClass_opString_name, sync);
    ::IceInternal::OutgoingAsyncPtr result = new ::IceInternal::CallbackOutgoing(this, iceC_Test_MyClass_opString_name, del, cookie, sync);
    try
    {
        result->prepare(iceC_Test_MyClass_opString_name, ::Ice::Normal, context);
        ::Ice::OutputStream* ostr = result->startWriteParams(::Ice::DefaultFormat);
        ostr->write(iceP_s1);
        result->endWriteParams();
        result->invoke(iceC_Test_MyClass_opString_name);
    }
    catch(const ::Ice::Exception& ex)
    {
        result->abort(ex);
    }
    return result;
}

::std::string
IceProxy::Test::MyClass::end_opString(::std::string& iceP_s2, const ::Ice::AsyncResultPtr& result)
{
    ::Ice::AsyncResult::_check(result, this, iceC_Test_MyClass_opString_name);
    ::std::string ret;
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

void IceProxy::Test::MyClass::_iceI_end_opString(::std::string& iceP_s2, ::std::string& ret, const ::Ice::AsyncResultPtr& result)
{
    ::Ice::AsyncResult::_check(result, this, iceC_Test_MyClass_opString_name);
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
IceProxy::Test::MyClass::_iceI_begin_opException(const ::Ice::Context& context, const ::IceInternal::CallbackBasePtr& del, const ::Ice::LocalObjectPtr& cookie, bool sync)
{
    _checkTwowayOnly(iceC_Test_MyClass_opException_name, sync);
    ::IceInternal::OutgoingAsyncPtr result = new ::IceInternal::CallbackOutgoing(this, iceC_Test_MyClass_opException_name, del, cookie, sync);
    try
    {
        result->prepare(iceC_Test_MyClass_opException_name, ::Ice::Normal, context);
        result->writeEmptyParams();
        result->invoke(iceC_Test_MyClass_opException_name);
    }
    catch(const ::Ice::Exception& ex)
    {
        result->abort(ex);
    }
    return result;
}

void
IceProxy::Test::MyClass::end_opException(const ::Ice::AsyncResultPtr& result)
{
    ::Ice::AsyncResult::_check(result, this, iceC_Test_MyClass_opException_name);
    if(!result->_waitForResponse())
    {
        try
        {
            result->_throwUserException();
        }
        catch(const ::Test::MyException&)
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
IceProxy::Test::MyClass::_iceI_begin_shutdown(const ::Ice::Context& context, const ::IceInternal::CallbackBasePtr& del, const ::Ice::LocalObjectPtr& cookie, bool sync)
{
    ::IceInternal::OutgoingAsyncPtr result = new ::IceInternal::CallbackOutgoing(this, iceC_Test_MyClass_shutdown_name, del, cookie, sync);
    try
    {
        result->prepare(iceC_Test_MyClass_shutdown_name, ::Ice::Normal, context);
        result->writeEmptyParams();
        result->invoke(iceC_Test_MyClass_shutdown_name);
    }
    catch(const ::Ice::Exception& ex)
    {
        result->abort(ex);
    }
    return result;
}

void
IceProxy::Test::MyClass::end_shutdown(const ::Ice::AsyncResultPtr& result)
{
    _end(result, iceC_Test_MyClass_shutdown_name);
}

/// \cond INTERNAL
::IceProxy::Ice::Object*
IceProxy::Test::MyClass::_newInstance() const
{
    return new MyClass;
}
/// \endcond

const ::std::string&
IceProxy::Test::MyClass::ice_staticId()
{
    return ::Test::MyClass::ice_staticId();
}

Test::MyClass::~MyClass()
{
}

/// \cond INTERNAL
::Ice::Object* Test::upCast(MyClass* p) { return p; }

/// \endcond

namespace
{
const ::std::string iceC_Test_MyClass_ids[2] =
{
    "::Ice::Object",
    "::Test::MyClass"
};

}

bool
Test::MyClass::ice_isA(const ::std::string& s, const ::Ice::Current&) const
{
    return ::std::binary_search(iceC_Test_MyClass_ids, iceC_Test_MyClass_ids + 2, s);
}

::std::vector< ::std::string>
Test::MyClass::ice_ids(const ::Ice::Current&) const
{
    return ::std::vector< ::std::string>(&iceC_Test_MyClass_ids[0], &iceC_Test_MyClass_ids[2]);
}

const ::std::string&
Test::MyClass::ice_id(const ::Ice::Current&) const
{
    return ice_staticId();
}

const ::std::string&
Test::MyClass::ice_staticId()
{
#ifdef ICE_HAS_THREAD_SAFE_LOCAL_STATIC
    static const ::std::string typeId = "::Test::MyClass";
    return typeId;
#else
    return iceC_Test_MyClass_ids[1];
#endif
}

/// \cond INTERNAL
bool
Test::MyClass::_iceD_opOneway(::IceInternal::Incoming& inS, const ::Ice::Current& current)
{
    _iceCheckMode(::Ice::Normal, current.mode);
    inS.readEmptyParams();
    this->opOneway(current);
    inS.writeEmptyParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
Test::MyClass::_iceD_opString(::IceInternal::Incoming& inS, const ::Ice::Current& current)
{
    _iceCheckMode(::Ice::Normal, current.mode);
    ::Ice::InputStream* istr = inS.startReadParams();
    ::std::string iceP_s1;
    istr->read(iceP_s1);
    inS.endReadParams();
    ::std::string iceP_s2;
    ::std::string ret = this->opString(iceP_s1, iceP_s2, current);
    ::Ice::OutputStream* ostr = inS.startWriteParams();
    ostr->write(iceP_s2);
    ostr->write(ret);
    inS.endWriteParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
Test::MyClass::_iceD_opException(::IceInternal::Incoming& inS, const ::Ice::Current& current)
{
    _iceCheckMode(::Ice::Normal, current.mode);
    inS.readEmptyParams();
    this->opException(current);
    inS.writeEmptyParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
Test::MyClass::_iceD_shutdown(::IceInternal::Incoming& inS, const ::Ice::Current& current)
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
const ::std::string iceC_Test_MyClass_all[] =
{
    "ice_id",
    "ice_ids",
    "ice_isA",
    "ice_ping",
    "opException",
    "opOneway",
    "opString",
    "shutdown"
};

}

/// \cond INTERNAL
bool
Test::MyClass::_iceDispatch(::IceInternal::Incoming& in, const ::Ice::Current& current)
{
    ::std::pair<const ::std::string*, const ::std::string*> r = ::std::equal_range(iceC_Test_MyClass_all, iceC_Test_MyClass_all + 8, current.operation);
    if(r.first == r.second)
    {
        throw ::Ice::OperationNotExistException(__FILE__, __LINE__, current.id, current.facet, current.operation);
    }

    switch(r.first - iceC_Test_MyClass_all)
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
            return _iceD_opException(in, current);
        }
        case 5:
        {
            return _iceD_opOneway(in, current);
        }
        case 6:
        {
            return _iceD_opString(in, current);
        }
        case 7:
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
Test::MyClass::_iceWriteImpl(::Ice::OutputStream* ostr) const
{
    ostr->startSlice(ice_staticId(), -1, true);
    ::Ice::StreamWriter< MyClass, ::Ice::OutputStream>::write(ostr, *this);
    ostr->endSlice();
}

void
Test::MyClass::_iceReadImpl(::Ice::InputStream* istr)
{
    istr->startSlice();
    ::Ice::StreamReader< MyClass, ::Ice::InputStream>::read(istr, *this);
    istr->endSlice();
}
/// \endcond

/// \cond INTERNAL
void
Test::_icePatchObjectPtr(MyClassPtr& handle, const ::Ice::ObjectPtr& v)
{
    handle = MyClassPtr::dynamicCast(v);
    if(v && !handle)
    {
        IceInternal::Ex::throwUOE(MyClass::ice_staticId(), v);
    }
}
/// \endcond

namespace Ice
{
}

#endif
