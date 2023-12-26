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
    "opSerialLargeJava",
    "opSerialSmallJava",
    "opSerialStructJava",
    "shutdown"
};
const ::std::string iceC_Test_MyClass_shutdown_name = "shutdown";
const ::std::string iceC_Test_MyClass_opSerialSmallJava_name = "opSerialSmallJava";
const ::std::string iceC_Test_MyClass_opSerialLargeJava_name = "opSerialLargeJava";
const ::std::string iceC_Test_MyClass_opSerialStructJava_name = "opSerialStructJava";

const ::IceInternal::DefaultUserExceptionFactoryInit<::Test::Bar> iceC_Test_Bar_init("::Test::Bar");

const ::IceInternal::DefaultValueFactoryInit<::Test::Baz> iceC_Test_Baz_init("::Test::Baz");

}

Test::Bar::~Bar()
{
}

const ::std::string&
Test::Bar::ice_staticId()
{
    static const ::std::string typeId = "::Test::Bar";
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
Test::MyClass::_iceD_opSerialSmallJava(::IceInternal::Incoming& inS, const ::Ice::Current& current)
{
    _iceCheckMode(::Ice::OperationMode::Normal, current.mode);
    auto istr = inS.startReadParams();
    SerialSmall iceP_i;
    istr->readAll(iceP_i);
    inS.endReadParams();
    SerialSmall iceP_o;
    SerialSmall ret = this->opSerialSmallJava(::std::move(iceP_i), iceP_o, current);
    auto ostr = inS.startWriteParams();
    ostr->writeAll(iceP_o, ret);
    inS.endWriteParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
Test::MyClass::_iceD_opSerialLargeJava(::IceInternal::Incoming& inS, const ::Ice::Current& current)
{
    _iceCheckMode(::Ice::OperationMode::Normal, current.mode);
    auto istr = inS.startReadParams();
    SerialLarge iceP_i;
    istr->readAll(iceP_i);
    inS.endReadParams();
    SerialLarge iceP_o;
    SerialLarge ret = this->opSerialLargeJava(::std::move(iceP_i), iceP_o, current);
    auto ostr = inS.startWriteParams();
    ostr->writeAll(iceP_o, ret);
    inS.endWriteParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
Test::MyClass::_iceD_opSerialStructJava(::IceInternal::Incoming& inS, const ::Ice::Current& current)
{
    _iceCheckMode(::Ice::OperationMode::Normal, current.mode);
    auto istr = inS.startReadParams();
    SerialStruct iceP_i;
    istr->readAll(iceP_i);
    inS.endReadParams();
    SerialStruct iceP_o;
    SerialStruct ret = this->opSerialStructJava(::std::move(iceP_i), iceP_o, current);
    auto ostr = inS.startWriteParams();
    ostr->writeAll(iceP_o, ret);
    inS.endWriteParams();
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
            return _iceD_opSerialLargeJava(in, current);
        }
        case 5:
        {
            return _iceD_opSerialSmallJava(in, current);
        }
        case 6:
        {
            return _iceD_opSerialStructJava(in, current);
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

Test::Baz::~Baz()
{
}

const ::std::string&
Test::Baz::ice_staticId()
{
    static const ::std::string typeId = "::Test::Baz";
    return typeId;
}

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
Test::MyClassPrx::_iceI_opSerialSmallJava(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<MyClass::OpSerialSmallJavaResult>>& outAsync, const SerialSmall& iceP_i, const ::Ice::Context& context)
{
    _checkTwowayOnly(iceC_Test_MyClass_opSerialSmallJava_name);
    outAsync->invoke(iceC_Test_MyClass_opSerialSmallJava_name, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        [&](::Ice::OutputStream* ostr)
        {
            ostr->writeAll(iceP_i);
        },
        nullptr,
        [](::Ice::InputStream* istr)
        {
            MyClass::OpSerialSmallJavaResult v;
            istr->readAll(v.o, v.returnValue);
            return v;
        });
}
/// \endcond

/// \cond INTERNAL
void
Test::MyClassPrx::_iceI_opSerialLargeJava(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<MyClass::OpSerialLargeJavaResult>>& outAsync, const SerialLarge& iceP_i, const ::Ice::Context& context)
{
    _checkTwowayOnly(iceC_Test_MyClass_opSerialLargeJava_name);
    outAsync->invoke(iceC_Test_MyClass_opSerialLargeJava_name, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        [&](::Ice::OutputStream* ostr)
        {
            ostr->writeAll(iceP_i);
        },
        nullptr,
        [](::Ice::InputStream* istr)
        {
            MyClass::OpSerialLargeJavaResult v;
            istr->readAll(v.o, v.returnValue);
            return v;
        });
}
/// \endcond

/// \cond INTERNAL
void
Test::MyClassPrx::_iceI_opSerialStructJava(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<MyClass::OpSerialStructJavaResult>>& outAsync, const SerialStruct& iceP_i, const ::Ice::Context& context)
{
    _checkTwowayOnly(iceC_Test_MyClass_opSerialStructJava_name);
    outAsync->invoke(iceC_Test_MyClass_opSerialStructJava_name, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        [&](::Ice::OutputStream* ostr)
        {
            ostr->writeAll(iceP_i);
        },
        nullptr,
        [](::Ice::InputStream* istr)
        {
            MyClass::OpSerialStructJavaResult v;
            istr->readAll(v.o, v.returnValue);
            return v;
        });
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

namespace Ice
{
}

#else // C++98 mapping

namespace
{

const ::std::string iceC_Test_MyClass_shutdown_name = "shutdown";

const ::std::string iceC_Test_MyClass_opSerialSmallJava_name = "opSerialSmallJava";

const ::std::string iceC_Test_MyClass_opSerialLargeJava_name = "opSerialLargeJava";

const ::std::string iceC_Test_MyClass_opSerialStructJava_name = "opSerialStructJava";

}

namespace
{

const ::IceInternal::DefaultUserExceptionFactoryInit< ::Test::Bar> iceC_Test_Bar_init("::Test::Bar");

}

Test::Bar::Bar(const SerialLarge& SLmem, const SLS& SLSmem) :
    ::Ice::UserException(),
    SLmem(SLmem),
    SLSmem(SLSmem)
{
}

#ifdef ICE_CPP11_COMPILER
Test::Bar::~Bar()
{
}
#else
Test::Bar::~Bar() throw()
{
}
#endif

::std::string
Test::Bar::ice_id() const
{
    return "::Test::Bar";
}

Test::Bar*
Test::Bar::ice_clone() const
{
    return new Bar(*this);
}

void
Test::Bar::ice_throw() const
{
    throw *this;
}

/// \cond STREAM
void
Test::Bar::_writeImpl(::Ice::OutputStream* ostr) const
{
    ostr->startSlice("::Test::Bar", -1, true);
    ::Ice::StreamWriter< Bar, ::Ice::OutputStream>::write(ostr, *this);
    ostr->endSlice();
}

void
Test::Bar::_readImpl(::Ice::InputStream* istr)
{
    istr->startSlice();
    ::Ice::StreamReader< Bar, ::Ice::InputStream>::read(istr, *this);
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
IceProxy::Test::MyClass::_iceI_begin_opSerialSmallJava(const ::Test::SerialSmall& iceP_i, const ::Ice::Context& context, const ::IceInternal::CallbackBasePtr& del, const ::Ice::LocalObjectPtr& cookie, bool sync)
{
    _checkTwowayOnly(iceC_Test_MyClass_opSerialSmallJava_name, sync);
    ::IceInternal::OutgoingAsyncPtr result = new ::IceInternal::CallbackOutgoing(this, iceC_Test_MyClass_opSerialSmallJava_name, del, cookie, sync);
    try
    {
        result->prepare(iceC_Test_MyClass_opSerialSmallJava_name, ::Ice::Normal, context);
        ::Ice::OutputStream* ostr = result->startWriteParams(::Ice::DefaultFormat);
        ostr->write(iceP_i);
        result->endWriteParams();
        result->invoke(iceC_Test_MyClass_opSerialSmallJava_name);
    }
    catch(const ::Ice::Exception& ex)
    {
        result->abort(ex);
    }
    return result;
}

::Test::SerialSmall
IceProxy::Test::MyClass::end_opSerialSmallJava(::Test::SerialSmall& iceP_o, const ::Ice::AsyncResultPtr& result)
{
    ::Ice::AsyncResult::_check(result, this, iceC_Test_MyClass_opSerialSmallJava_name);
    ::Test::SerialSmall ret;
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
    istr->read(iceP_o);
    istr->read(ret);
    result->_endReadParams();
    return ret;
}

void IceProxy::Test::MyClass::_iceI_end_opSerialSmallJava(::Test::SerialSmall& iceP_o, ::Test::SerialSmall& ret, const ::Ice::AsyncResultPtr& result)
{
    ::Ice::AsyncResult::_check(result, this, iceC_Test_MyClass_opSerialSmallJava_name);
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
    istr->read(iceP_o);
    istr->read(ret);
    result->_endReadParams();
}

::Ice::AsyncResultPtr
IceProxy::Test::MyClass::_iceI_begin_opSerialLargeJava(const ::Test::SerialLarge& iceP_i, const ::Ice::Context& context, const ::IceInternal::CallbackBasePtr& del, const ::Ice::LocalObjectPtr& cookie, bool sync)
{
    _checkTwowayOnly(iceC_Test_MyClass_opSerialLargeJava_name, sync);
    ::IceInternal::OutgoingAsyncPtr result = new ::IceInternal::CallbackOutgoing(this, iceC_Test_MyClass_opSerialLargeJava_name, del, cookie, sync);
    try
    {
        result->prepare(iceC_Test_MyClass_opSerialLargeJava_name, ::Ice::Normal, context);
        ::Ice::OutputStream* ostr = result->startWriteParams(::Ice::DefaultFormat);
        ostr->write(iceP_i);
        result->endWriteParams();
        result->invoke(iceC_Test_MyClass_opSerialLargeJava_name);
    }
    catch(const ::Ice::Exception& ex)
    {
        result->abort(ex);
    }
    return result;
}

::Test::SerialLarge
IceProxy::Test::MyClass::end_opSerialLargeJava(::Test::SerialLarge& iceP_o, const ::Ice::AsyncResultPtr& result)
{
    ::Ice::AsyncResult::_check(result, this, iceC_Test_MyClass_opSerialLargeJava_name);
    ::Test::SerialLarge ret;
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
    istr->read(iceP_o);
    istr->read(ret);
    result->_endReadParams();
    return ret;
}

void IceProxy::Test::MyClass::_iceI_end_opSerialLargeJava(::Test::SerialLarge& iceP_o, ::Test::SerialLarge& ret, const ::Ice::AsyncResultPtr& result)
{
    ::Ice::AsyncResult::_check(result, this, iceC_Test_MyClass_opSerialLargeJava_name);
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
    istr->read(iceP_o);
    istr->read(ret);
    result->_endReadParams();
}

::Ice::AsyncResultPtr
IceProxy::Test::MyClass::_iceI_begin_opSerialStructJava(const ::Test::SerialStruct& iceP_i, const ::Ice::Context& context, const ::IceInternal::CallbackBasePtr& del, const ::Ice::LocalObjectPtr& cookie, bool sync)
{
    _checkTwowayOnly(iceC_Test_MyClass_opSerialStructJava_name, sync);
    ::IceInternal::OutgoingAsyncPtr result = new ::IceInternal::CallbackOutgoing(this, iceC_Test_MyClass_opSerialStructJava_name, del, cookie, sync);
    try
    {
        result->prepare(iceC_Test_MyClass_opSerialStructJava_name, ::Ice::Normal, context);
        ::Ice::OutputStream* ostr = result->startWriteParams(::Ice::DefaultFormat);
        ostr->write(iceP_i);
        result->endWriteParams();
        result->invoke(iceC_Test_MyClass_opSerialStructJava_name);
    }
    catch(const ::Ice::Exception& ex)
    {
        result->abort(ex);
    }
    return result;
}

::Test::SerialStruct
IceProxy::Test::MyClass::end_opSerialStructJava(::Test::SerialStruct& iceP_o, const ::Ice::AsyncResultPtr& result)
{
    ::Ice::AsyncResult::_check(result, this, iceC_Test_MyClass_opSerialStructJava_name);
    ::Test::SerialStruct ret;
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
    istr->read(iceP_o);
    istr->read(ret);
    result->_endReadParams();
    return ret;
}

void IceProxy::Test::MyClass::_iceI_end_opSerialStructJava(::Test::SerialStruct& iceP_o, ::Test::SerialStruct& ret, const ::Ice::AsyncResultPtr& result)
{
    ::Ice::AsyncResult::_check(result, this, iceC_Test_MyClass_opSerialStructJava_name);
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
    istr->read(iceP_o);
    istr->read(ret);
    result->_endReadParams();
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
::IceProxy::Ice::Object* ::IceProxy::Test::upCast(Baz* p) { return p; }

void
::IceProxy::Test::_readProxy(::Ice::InputStream* istr, ::IceInternal::ProxyHandle< Baz>& v)
{
    ::Ice::ObjectPrx proxy;
    istr->read(proxy);
    if(!proxy)
    {
        v = 0;
    }
    else
    {
        v = new Baz;
        v->_copyFrom(proxy);
    }
}
/// \endcond

/// \cond INTERNAL
::IceProxy::Ice::Object*
IceProxy::Test::Baz::_newInstance() const
{
    return new Baz;
}
/// \endcond

const ::std::string&
IceProxy::Test::Baz::ice_staticId()
{
    return ::Test::Baz::ice_staticId();
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
    static const ::std::string typeId = "::Test::MyClass";
    return typeId;
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
Test::MyClass::_iceD_opSerialSmallJava(::IceInternal::Incoming& inS, const ::Ice::Current& current)
{
    _iceCheckMode(::Ice::Normal, current.mode);
    ::Ice::InputStream* istr = inS.startReadParams();
    SerialSmall iceP_i;
    istr->read(iceP_i);
    inS.endReadParams();
    SerialSmall iceP_o;
    SerialSmall ret = this->opSerialSmallJava(iceP_i, iceP_o, current);
    ::Ice::OutputStream* ostr = inS.startWriteParams();
    ostr->write(iceP_o);
    ostr->write(ret);
    inS.endWriteParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
Test::MyClass::_iceD_opSerialLargeJava(::IceInternal::Incoming& inS, const ::Ice::Current& current)
{
    _iceCheckMode(::Ice::Normal, current.mode);
    ::Ice::InputStream* istr = inS.startReadParams();
    SerialLarge iceP_i;
    istr->read(iceP_i);
    inS.endReadParams();
    SerialLarge iceP_o;
    SerialLarge ret = this->opSerialLargeJava(iceP_i, iceP_o, current);
    ::Ice::OutputStream* ostr = inS.startWriteParams();
    ostr->write(iceP_o);
    ostr->write(ret);
    inS.endWriteParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
Test::MyClass::_iceD_opSerialStructJava(::IceInternal::Incoming& inS, const ::Ice::Current& current)
{
    _iceCheckMode(::Ice::Normal, current.mode);
    ::Ice::InputStream* istr = inS.startReadParams();
    SerialStruct iceP_i;
    istr->read(iceP_i);
    inS.endReadParams();
    SerialStruct iceP_o;
    SerialStruct ret = this->opSerialStructJava(iceP_i, iceP_o, current);
    ::Ice::OutputStream* ostr = inS.startWriteParams();
    ostr->write(iceP_o);
    ostr->write(ret);
    inS.endWriteParams();
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
    "opSerialLargeJava",
    "opSerialSmallJava",
    "opSerialStructJava",
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
            return _iceD_opSerialLargeJava(in, current);
        }
        case 5:
        {
            return _iceD_opSerialSmallJava(in, current);
        }
        case 6:
        {
            return _iceD_opSerialStructJava(in, current);
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

Test::Baz::~Baz()
{
}

/// \cond INTERNAL
::Ice::Object* Test::upCast(Baz* p) { return p; }

/// \endcond
::Ice::ObjectPtr
Test::Baz::ice_clone() const
{
    ::Ice::Object* p = new Baz(*this);
    return p;
}

namespace
{
const ::std::string iceC_Test_Baz_ids[2] =
{
    "::Ice::Object",
    "::Test::Baz"
};

}

bool
Test::Baz::ice_isA(const ::std::string& s, const ::Ice::Current&) const
{
    return ::std::binary_search(iceC_Test_Baz_ids, iceC_Test_Baz_ids + 2, s);
}

::std::vector< ::std::string>
Test::Baz::ice_ids(const ::Ice::Current&) const
{
    return ::std::vector< ::std::string>(&iceC_Test_Baz_ids[0], &iceC_Test_Baz_ids[2]);
}

const ::std::string&
Test::Baz::ice_id(const ::Ice::Current&) const
{
    return ice_staticId();
}

const ::std::string&
Test::Baz::ice_staticId()
{
    static const ::std::string typeId = "::Test::Baz";
    return typeId;
}

/// \cond STREAM
void
Test::Baz::_iceWriteImpl(::Ice::OutputStream* ostr) const
{
    ostr->startSlice(ice_staticId(), -1, true);
    ::Ice::StreamWriter< Baz, ::Ice::OutputStream>::write(ostr, *this);
    ostr->endSlice();
}

void
Test::Baz::_iceReadImpl(::Ice::InputStream* istr)
{
    istr->startSlice();
    ::Ice::StreamReader< Baz, ::Ice::InputStream>::read(istr, *this);
    istr->endSlice();
}
/// \endcond

namespace
{
const ::IceInternal::DefaultValueFactoryInit< ::Test::Baz> iceC_Test_Baz_init("::Test::Baz");
}

::Ice::ValueFactoryPtr
Test::Baz::ice_factory()
{
    return ::IceInternal::factoryTable->getValueFactory(::Test::Baz::ice_staticId());
}

/// \cond INTERNAL
void
Test::_icePatchObjectPtr(BazPtr& handle, const ::Ice::ObjectPtr& v)
{
    handle = BazPtr::dynamicCast(v);
    if(v && !handle)
    {
        IceInternal::Ex::throwUOE(Baz::ice_staticId(), v);
    }
}
/// \endcond

namespace Ice
{
}

#endif
