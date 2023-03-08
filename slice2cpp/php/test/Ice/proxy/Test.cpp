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

const ::std::string iceC_Test_MyClass_ids[2] =
{
    "::Ice::Object",
    "::Test::MyClass"
};
const ::std::string iceC_Test_MyClass_ops[] =
{
    "getContext",
    "ice_id",
    "ice_ids",
    "ice_isA",
    "ice_ping",
    "shutdown"
};
const ::std::string iceC_Test_MyClass_shutdown_name = "shutdown";
const ::std::string iceC_Test_MyClass_getContext_name = "getContext";

const ::std::string iceC_Test_MyDerivedClass_ids[3] =
{
    "::Ice::Object",
    "::Test::MyClass",
    "::Test::MyDerivedClass"
};
const ::std::string iceC_Test_MyDerivedClass_ops[] =
{
    "echo",
    "getContext",
    "ice_id",
    "ice_ids",
    "ice_isA",
    "ice_ping",
    "shutdown"
};
const ::std::string iceC_Test_MyDerivedClass_echo_name = "echo";

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
Test::MyClass::_iceD_getContext(::IceInternal::Incoming& inS, const ::Ice::Current& current)
{
    _iceCheckMode(::Ice::OperationMode::Normal, current.mode);
    inS.readEmptyParams();
    Context ret = this->getContext(current);
    auto ostr = inS.startWriteParams();
    ostr->writeAll(ret);
    inS.endWriteParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
Test::MyClass::_iceDispatch(::IceInternal::Incoming& in, const ::Ice::Current& current)
{
    ::std::pair<const ::std::string*, const ::std::string*> r = ::std::equal_range(iceC_Test_MyClass_ops, iceC_Test_MyClass_ops + 6, current.operation);
    if(r.first == r.second)
    {
        throw ::Ice::OperationNotExistException(__FILE__, __LINE__, current.id, current.facet, current.operation);
    }

    switch(r.first - iceC_Test_MyClass_ops)
    {
        case 0:
        {
            return _iceD_getContext(in, current);
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
Test::MyDerivedClass::ice_isA(::std::string s, const ::Ice::Current&) const
{
    return ::std::binary_search(iceC_Test_MyDerivedClass_ids, iceC_Test_MyDerivedClass_ids + 3, s);
}

::std::vector<::std::string>
Test::MyDerivedClass::ice_ids(const ::Ice::Current&) const
{
    return ::std::vector<::std::string>(&iceC_Test_MyDerivedClass_ids[0], &iceC_Test_MyDerivedClass_ids[3]);
}

::std::string
Test::MyDerivedClass::ice_id(const ::Ice::Current&) const
{
    return ice_staticId();
}

const ::std::string&
Test::MyDerivedClass::ice_staticId()
{
    static const ::std::string typeId = "::Test::MyDerivedClass";
    return typeId;
}

/// \cond INTERNAL
bool
Test::MyDerivedClass::_iceD_echo(::IceInternal::Incoming& inS, const ::Ice::Current& current)
{
    _iceCheckMode(::Ice::OperationMode::Normal, current.mode);
    auto istr = inS.startReadParams();
    ::std::shared_ptr<::Ice::ObjectPrx> iceP_obj;
    istr->readAll(iceP_obj);
    inS.endReadParams();
    ::std::shared_ptr<::Ice::ObjectPrx> ret = this->echo(::std::move(iceP_obj), current);
    auto ostr = inS.startWriteParams();
    ostr->writeAll(ret);
    inS.endWriteParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
Test::MyDerivedClass::_iceDispatch(::IceInternal::Incoming& in, const ::Ice::Current& current)
{
    ::std::pair<const ::std::string*, const ::std::string*> r = ::std::equal_range(iceC_Test_MyDerivedClass_ops, iceC_Test_MyDerivedClass_ops + 7, current.operation);
    if(r.first == r.second)
    {
        throw ::Ice::OperationNotExistException(__FILE__, __LINE__, current.id, current.facet, current.operation);
    }

    switch(r.first - iceC_Test_MyDerivedClass_ops)
    {
        case 0:
        {
            return _iceD_echo(in, current);
        }
        case 1:
        {
            return _iceD_getContext(in, current);
        }
        case 2:
        {
            return _iceD_ice_id(in, current);
        }
        case 3:
        {
            return _iceD_ice_ids(in, current);
        }
        case 4:
        {
            return _iceD_ice_isA(in, current);
        }
        case 5:
        {
            return _iceD_ice_ping(in, current);
        }
        case 6:
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
Test::MyClassPrx::_iceI_shutdown(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>& outAsync, const ::Ice::Context& context)
{
    outAsync->invoke(iceC_Test_MyClass_shutdown_name, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        nullptr,
        nullptr);
}
/// \endcond

/// \cond INTERNAL
void
Test::MyClassPrx::_iceI_getContext(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<::Test::Context>>& outAsync, const ::Ice::Context& context)
{
    _checkTwowayOnly(iceC_Test_MyClass_getContext_name);
    outAsync->invoke(iceC_Test_MyClass_getContext_name, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
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

/// \cond INTERNAL
void
Test::MyDerivedClassPrx::_iceI_echo(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<::std::shared_ptr<::Ice::ObjectPrx>>>& outAsync, const ::std::shared_ptr<::Ice::ObjectPrx>& iceP_obj, const ::Ice::Context& context)
{
    _checkTwowayOnly(iceC_Test_MyDerivedClass_echo_name);
    outAsync->invoke(iceC_Test_MyDerivedClass_echo_name, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        [&](::Ice::OutputStream* ostr)
        {
            ostr->writeAll(iceP_obj);
        },
        nullptr);
}
/// \endcond

/// \cond INTERNAL
::std::shared_ptr<::Ice::ObjectPrx>
Test::MyDerivedClassPrx::_newInstance() const
{
    return ::IceInternal::createProxy<MyDerivedClassPrx>();
}
/// \endcond

const ::std::string&
Test::MyDerivedClassPrx::ice_staticId()
{
    return MyDerivedClass::ice_staticId();
}

#else // C++98 mapping

namespace
{

const ::std::string iceC_Test_MyClass_shutdown_name = "shutdown";

const ::std::string iceC_Test_MyClass_getContext_name = "getContext";

const ::std::string iceC_Test_MyDerivedClass_echo_name = "echo";

}

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

::Ice::AsyncResultPtr
IceProxy::Test::MyClass::_iceI_begin_getContext(const ::Ice::Context& context, const ::IceInternal::CallbackBasePtr& del, const ::Ice::LocalObjectPtr& cookie, bool sync)
{
    _checkTwowayOnly(iceC_Test_MyClass_getContext_name, sync);
    ::IceInternal::OutgoingAsyncPtr result = new ::IceInternal::CallbackOutgoing(this, iceC_Test_MyClass_getContext_name, del, cookie, sync);
    try
    {
        result->prepare(iceC_Test_MyClass_getContext_name, ::Ice::Normal, context);
        result->writeEmptyParams();
        result->invoke(iceC_Test_MyClass_getContext_name);
    }
    catch(const ::Ice::Exception& ex)
    {
        result->abort(ex);
    }
    return result;
}

::Test::Context
IceProxy::Test::MyClass::end_getContext(const ::Ice::AsyncResultPtr& result)
{
    ::Ice::AsyncResult::_check(result, this, iceC_Test_MyClass_getContext_name);
    ::Test::Context ret;
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

/// \cond INTERNAL
::IceProxy::Ice::Object* ::IceProxy::Test::upCast(MyDerivedClass* p) { return p; }

void
::IceProxy::Test::_readProxy(::Ice::InputStream* istr, ::IceInternal::ProxyHandle< MyDerivedClass>& v)
{
    ::Ice::ObjectPrx proxy;
    istr->read(proxy);
    if(!proxy)
    {
        v = 0;
    }
    else
    {
        v = new MyDerivedClass;
        v->_copyFrom(proxy);
    }
}
/// \endcond

::Ice::AsyncResultPtr
IceProxy::Test::MyDerivedClass::_iceI_begin_echo(const ::Ice::ObjectPrx& iceP_obj, const ::Ice::Context& context, const ::IceInternal::CallbackBasePtr& del, const ::Ice::LocalObjectPtr& cookie, bool sync)
{
    _checkTwowayOnly(iceC_Test_MyDerivedClass_echo_name, sync);
    ::IceInternal::OutgoingAsyncPtr result = new ::IceInternal::CallbackOutgoing(this, iceC_Test_MyDerivedClass_echo_name, del, cookie, sync);
    try
    {
        result->prepare(iceC_Test_MyDerivedClass_echo_name, ::Ice::Normal, context);
        ::Ice::OutputStream* ostr = result->startWriteParams(::Ice::DefaultFormat);
        ostr->write(iceP_obj);
        result->endWriteParams();
        result->invoke(iceC_Test_MyDerivedClass_echo_name);
    }
    catch(const ::Ice::Exception& ex)
    {
        result->abort(ex);
    }
    return result;
}

::Ice::ObjectPrx
IceProxy::Test::MyDerivedClass::end_echo(const ::Ice::AsyncResultPtr& result)
{
    ::Ice::AsyncResult::_check(result, this, iceC_Test_MyDerivedClass_echo_name);
    ::Ice::ObjectPrx ret;
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

/// \cond INTERNAL
::IceProxy::Ice::Object*
IceProxy::Test::MyDerivedClass::_newInstance() const
{
    return new MyDerivedClass;
}
/// \endcond

const ::std::string&
IceProxy::Test::MyDerivedClass::ice_staticId()
{
    return ::Test::MyDerivedClass::ice_staticId();
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
Test::MyClass::_iceD_shutdown(::IceInternal::Incoming& inS, const ::Ice::Current& current)
{
    _iceCheckMode(::Ice::Normal, current.mode);
    inS.readEmptyParams();
    this->shutdown(current);
    inS.writeEmptyParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
Test::MyClass::_iceD_getContext(::IceInternal::Incoming& inS, const ::Ice::Current& current)
{
    _iceCheckMode(::Ice::Normal, current.mode);
    inS.readEmptyParams();
    Context ret = this->getContext(current);
    ::Ice::OutputStream* ostr = inS.startWriteParams();
    ostr->write(ret);
    inS.endWriteParams();
    return true;
}
/// \endcond

namespace
{
const ::std::string iceC_Test_MyClass_all[] =
{
    "getContext",
    "ice_id",
    "ice_ids",
    "ice_isA",
    "ice_ping",
    "shutdown"
};

}

/// \cond INTERNAL
bool
Test::MyClass::_iceDispatch(::IceInternal::Incoming& in, const ::Ice::Current& current)
{
    ::std::pair<const ::std::string*, const ::std::string*> r = ::std::equal_range(iceC_Test_MyClass_all, iceC_Test_MyClass_all + 6, current.operation);
    if(r.first == r.second)
    {
        throw ::Ice::OperationNotExistException(__FILE__, __LINE__, current.id, current.facet, current.operation);
    }

    switch(r.first - iceC_Test_MyClass_all)
    {
        case 0:
        {
            return _iceD_getContext(in, current);
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

Test::MyDerivedClass::~MyDerivedClass()
{
}

/// \cond INTERNAL
::Ice::Object* Test::upCast(MyDerivedClass* p) { return p; }

/// \endcond

namespace
{
const ::std::string iceC_Test_MyDerivedClass_ids[3] =
{
    "::Ice::Object",
    "::Test::MyClass",
    "::Test::MyDerivedClass"
};

}

bool
Test::MyDerivedClass::ice_isA(const ::std::string& s, const ::Ice::Current&) const
{
    return ::std::binary_search(iceC_Test_MyDerivedClass_ids, iceC_Test_MyDerivedClass_ids + 3, s);
}

::std::vector< ::std::string>
Test::MyDerivedClass::ice_ids(const ::Ice::Current&) const
{
    return ::std::vector< ::std::string>(&iceC_Test_MyDerivedClass_ids[0], &iceC_Test_MyDerivedClass_ids[3]);
}

const ::std::string&
Test::MyDerivedClass::ice_id(const ::Ice::Current&) const
{
    return ice_staticId();
}

const ::std::string&
Test::MyDerivedClass::ice_staticId()
{
#ifdef ICE_HAS_THREAD_SAFE_LOCAL_STATIC
    static const ::std::string typeId = "::Test::MyDerivedClass";
    return typeId;
#else
    return iceC_Test_MyDerivedClass_ids[2];
#endif
}

/// \cond INTERNAL
bool
Test::MyDerivedClass::_iceD_echo(::IceInternal::Incoming& inS, const ::Ice::Current& current)
{
    _iceCheckMode(::Ice::Normal, current.mode);
    ::Ice::InputStream* istr = inS.startReadParams();
    ::Ice::ObjectPrx iceP_obj;
    istr->read(iceP_obj);
    inS.endReadParams();
    ::Ice::ObjectPrx ret = this->echo(iceP_obj, current);
    ::Ice::OutputStream* ostr = inS.startWriteParams();
    ostr->write(ret);
    inS.endWriteParams();
    return true;
}
/// \endcond

namespace
{
const ::std::string iceC_Test_MyDerivedClass_all[] =
{
    "echo",
    "getContext",
    "ice_id",
    "ice_ids",
    "ice_isA",
    "ice_ping",
    "shutdown"
};

}

/// \cond INTERNAL
bool
Test::MyDerivedClass::_iceDispatch(::IceInternal::Incoming& in, const ::Ice::Current& current)
{
    ::std::pair<const ::std::string*, const ::std::string*> r = ::std::equal_range(iceC_Test_MyDerivedClass_all, iceC_Test_MyDerivedClass_all + 7, current.operation);
    if(r.first == r.second)
    {
        throw ::Ice::OperationNotExistException(__FILE__, __LINE__, current.id, current.facet, current.operation);
    }

    switch(r.first - iceC_Test_MyDerivedClass_all)
    {
        case 0:
        {
            return _iceD_echo(in, current);
        }
        case 1:
        {
            return _iceD_getContext(in, current);
        }
        case 2:
        {
            return _iceD_ice_id(in, current);
        }
        case 3:
        {
            return _iceD_ice_ids(in, current);
        }
        case 4:
        {
            return _iceD_ice_isA(in, current);
        }
        case 5:
        {
            return _iceD_ice_ping(in, current);
        }
        case 6:
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
Test::MyDerivedClass::_iceWriteImpl(::Ice::OutputStream* ostr) const
{
    ostr->startSlice(ice_staticId(), -1, true);
    ::Ice::StreamWriter< MyDerivedClass, ::Ice::OutputStream>::write(ostr, *this);
    ostr->endSlice();
}

void
Test::MyDerivedClass::_iceReadImpl(::Ice::InputStream* istr)
{
    istr->startSlice();
    ::Ice::StreamReader< MyDerivedClass, ::Ice::InputStream>::read(istr, *this);
    istr->endSlice();
}
/// \endcond

/// \cond INTERNAL
void
Test::_icePatchObjectPtr(MyDerivedClassPtr& handle, const ::Ice::ObjectPtr& v)
{
    handle = MyDerivedClassPtr::dynamicCast(v);
    if(v && !handle)
    {
        IceInternal::Ex::throwUOE(MyDerivedClass::ice_staticId(), v);
    }
}
/// \endcond

namespace Ice
{
}

#endif
