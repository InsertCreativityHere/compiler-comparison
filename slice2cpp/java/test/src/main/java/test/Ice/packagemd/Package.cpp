//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.7.9
//
// <auto-generated>
//
// Generated from file `Package.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

#include <Package.h>
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

const ::IceInternal::DefaultValueFactoryInit<::Test2::C1> iceC_Test2_C1_init("::Test2::C1");

const ::IceInternal::DefaultValueFactoryInit<::Test2::C2> iceC_Test2_C2_init("::Test2::C2");

const ::IceInternal::DefaultUserExceptionFactoryInit<::Test2::E1> iceC_Test2_E1_init("::Test2::E1");

const ::IceInternal::DefaultUserExceptionFactoryInit<::Test2::E2> iceC_Test2_E2_init("::Test2::E2");

const ::IceInternal::DefaultValueFactoryInit<::Test3::C1> iceC_Test3_C1_init("::Test3::C1");

const ::IceInternal::DefaultValueFactoryInit<::Test3::C2> iceC_Test3_C2_init("::Test3::C2");

const ::IceInternal::DefaultUserExceptionFactoryInit<::Test3::E1> iceC_Test3_E1_init("::Test3::E1");

const ::IceInternal::DefaultUserExceptionFactoryInit<::Test3::E2> iceC_Test3_E2_init("::Test3::E2");

}

Test2::E1::~E1()
{
}

const ::std::string&
Test2::E1::ice_staticId()
{
    static const ::std::string typeId = "::Test2::E1";
    return typeId;
}

Test2::E2::~E2()
{
}

const ::std::string&
Test2::E2::ice_staticId()
{
    static const ::std::string typeId = "::Test2::E2";
    return typeId;
}

Test3::E1::~E1()
{
}

const ::std::string&
Test3::E1::ice_staticId()
{
    static const ::std::string typeId = "::Test3::E1";
    return typeId;
}

Test3::E2::~E2()
{
}

const ::std::string&
Test3::E2::ice_staticId()
{
    static const ::std::string typeId = "::Test3::E2";
    return typeId;
}

Test2::C1::~C1()
{
}

const ::std::string&
Test2::C1::ice_staticId()
{
    static const ::std::string typeId = "::Test2::C1";
    return typeId;
}

Test2::C2::~C2()
{
}

const ::std::string&
Test2::C2::ice_staticId()
{
    static const ::std::string typeId = "::Test2::C2";
    return typeId;
}

Test3::C1::~C1()
{
}

const ::std::string&
Test3::C1::ice_staticId()
{
    static const ::std::string typeId = "::Test3::C1";
    return typeId;
}

Test3::C2::~C2()
{
}

const ::std::string&
Test3::C2::ice_staticId()
{
    static const ::std::string typeId = "::Test3::C2";
    return typeId;
}

#else // C++98 mapping

namespace
{

}

namespace
{

}

namespace
{

const ::IceInternal::DefaultUserExceptionFactoryInit< ::Test2::E1> iceC_Test2_E1_init("::Test2::E1");

}

Test2::E1::E1(::Ice::Int i) :
    ::Ice::UserException(),
    i(i)
{
}

#ifdef ICE_CPP11_COMPILER
Test2::E1::~E1()
{
}
#else
Test2::E1::~E1() throw()
{
}
#endif

::std::string
Test2::E1::ice_id() const
{
    return "::Test2::E1";
}

Test2::E1*
Test2::E1::ice_clone() const
{
    return new E1(*this);
}

void
Test2::E1::ice_throw() const
{
    throw *this;
}

/// \cond STREAM
void
Test2::E1::_writeImpl(::Ice::OutputStream* ostr) const
{
    ostr->startSlice("::Test2::E1", -1, true);
    ::Ice::StreamWriter< E1, ::Ice::OutputStream>::write(ostr, *this);
    ostr->endSlice();
}

void
Test2::E1::_readImpl(::Ice::InputStream* istr)
{
    istr->startSlice();
    ::Ice::StreamReader< E1, ::Ice::InputStream>::read(istr, *this);
    istr->endSlice();
}
/// \endcond

namespace
{

const ::IceInternal::DefaultUserExceptionFactoryInit< ::Test2::E2> iceC_Test2_E2_init("::Test2::E2");

}

Test2::E2::E2(::Ice::Int i, ::Ice::Long l) :
    E1(i),
    l(l)
{
}

#ifdef ICE_CPP11_COMPILER
Test2::E2::~E2()
{
}
#else
Test2::E2::~E2() throw()
{
}
#endif

::std::string
Test2::E2::ice_id() const
{
    return "::Test2::E2";
}

Test2::E2*
Test2::E2::ice_clone() const
{
    return new E2(*this);
}

void
Test2::E2::ice_throw() const
{
    throw *this;
}

/// \cond STREAM
void
Test2::E2::_writeImpl(::Ice::OutputStream* ostr) const
{
    ostr->startSlice("::Test2::E2", -1, false);
    ::Ice::StreamWriter< E2, ::Ice::OutputStream>::write(ostr, *this);
    ostr->endSlice();
    E1::_writeImpl(ostr);
}

void
Test2::E2::_readImpl(::Ice::InputStream* istr)
{
    istr->startSlice();
    ::Ice::StreamReader< E2, ::Ice::InputStream>::read(istr, *this);
    istr->endSlice();
    E1::_readImpl(istr);
}
/// \endcond

namespace
{

const ::IceInternal::DefaultUserExceptionFactoryInit< ::Test3::E1> iceC_Test3_E1_init("::Test3::E1");

}

Test3::E1::E1(::Ice::Int i) :
    ::Ice::UserException(),
    i(i)
{
}

#ifdef ICE_CPP11_COMPILER
Test3::E1::~E1()
{
}
#else
Test3::E1::~E1() throw()
{
}
#endif

::std::string
Test3::E1::ice_id() const
{
    return "::Test3::E1";
}

Test3::E1*
Test3::E1::ice_clone() const
{
    return new E1(*this);
}

void
Test3::E1::ice_throw() const
{
    throw *this;
}

/// \cond STREAM
void
Test3::E1::_writeImpl(::Ice::OutputStream* ostr) const
{
    ostr->startSlice("::Test3::E1", -1, true);
    ::Ice::StreamWriter< E1, ::Ice::OutputStream>::write(ostr, *this);
    ostr->endSlice();
}

void
Test3::E1::_readImpl(::Ice::InputStream* istr)
{
    istr->startSlice();
    ::Ice::StreamReader< E1, ::Ice::InputStream>::read(istr, *this);
    istr->endSlice();
}
/// \endcond

namespace
{

const ::IceInternal::DefaultUserExceptionFactoryInit< ::Test3::E2> iceC_Test3_E2_init("::Test3::E2");

}

Test3::E2::E2(::Ice::Int i, ::Ice::Long l) :
    E1(i),
    l(l)
{
}

#ifdef ICE_CPP11_COMPILER
Test3::E2::~E2()
{
}
#else
Test3::E2::~E2() throw()
{
}
#endif

::std::string
Test3::E2::ice_id() const
{
    return "::Test3::E2";
}

Test3::E2*
Test3::E2::ice_clone() const
{
    return new E2(*this);
}

void
Test3::E2::ice_throw() const
{
    throw *this;
}

/// \cond STREAM
void
Test3::E2::_writeImpl(::Ice::OutputStream* ostr) const
{
    ostr->startSlice("::Test3::E2", -1, false);
    ::Ice::StreamWriter< E2, ::Ice::OutputStream>::write(ostr, *this);
    ostr->endSlice();
    E1::_writeImpl(ostr);
}

void
Test3::E2::_readImpl(::Ice::InputStream* istr)
{
    istr->startSlice();
    ::Ice::StreamReader< E2, ::Ice::InputStream>::read(istr, *this);
    istr->endSlice();
    E1::_readImpl(istr);
}
/// \endcond

/// \cond INTERNAL
::IceProxy::Ice::Object* ::IceProxy::Test2::upCast(C1* p) { return p; }

void
::IceProxy::Test2::_readProxy(::Ice::InputStream* istr, ::IceInternal::ProxyHandle< C1>& v)
{
    ::Ice::ObjectPrx proxy;
    istr->read(proxy);
    if(!proxy)
    {
        v = 0;
    }
    else
    {
        v = new C1;
        v->_copyFrom(proxy);
    }
}
/// \endcond

/// \cond INTERNAL
::IceProxy::Ice::Object*
IceProxy::Test2::C1::_newInstance() const
{
    return new C1;
}
/// \endcond

const ::std::string&
IceProxy::Test2::C1::ice_staticId()
{
    return ::Test2::C1::ice_staticId();
}

/// \cond INTERNAL
::IceProxy::Ice::Object* ::IceProxy::Test2::upCast(C2* p) { return p; }

void
::IceProxy::Test2::_readProxy(::Ice::InputStream* istr, ::IceInternal::ProxyHandle< C2>& v)
{
    ::Ice::ObjectPrx proxy;
    istr->read(proxy);
    if(!proxy)
    {
        v = 0;
    }
    else
    {
        v = new C2;
        v->_copyFrom(proxy);
    }
}
/// \endcond

/// \cond INTERNAL
::IceProxy::Ice::Object*
IceProxy::Test2::C2::_newInstance() const
{
    return new C2;
}
/// \endcond

const ::std::string&
IceProxy::Test2::C2::ice_staticId()
{
    return ::Test2::C2::ice_staticId();
}

/// \cond INTERNAL
::IceProxy::Ice::Object* ::IceProxy::Test3::upCast(C1* p) { return p; }

void
::IceProxy::Test3::_readProxy(::Ice::InputStream* istr, ::IceInternal::ProxyHandle< C1>& v)
{
    ::Ice::ObjectPrx proxy;
    istr->read(proxy);
    if(!proxy)
    {
        v = 0;
    }
    else
    {
        v = new C1;
        v->_copyFrom(proxy);
    }
}
/// \endcond

/// \cond INTERNAL
::IceProxy::Ice::Object*
IceProxy::Test3::C1::_newInstance() const
{
    return new C1;
}
/// \endcond

const ::std::string&
IceProxy::Test3::C1::ice_staticId()
{
    return ::Test3::C1::ice_staticId();
}

/// \cond INTERNAL
::IceProxy::Ice::Object* ::IceProxy::Test3::upCast(C2* p) { return p; }

void
::IceProxy::Test3::_readProxy(::Ice::InputStream* istr, ::IceInternal::ProxyHandle< C2>& v)
{
    ::Ice::ObjectPrx proxy;
    istr->read(proxy);
    if(!proxy)
    {
        v = 0;
    }
    else
    {
        v = new C2;
        v->_copyFrom(proxy);
    }
}
/// \endcond

/// \cond INTERNAL
::IceProxy::Ice::Object*
IceProxy::Test3::C2::_newInstance() const
{
    return new C2;
}
/// \endcond

const ::std::string&
IceProxy::Test3::C2::ice_staticId()
{
    return ::Test3::C2::ice_staticId();
}

Test2::C1::~C1()
{
}

/// \cond INTERNAL
::Ice::Object* Test2::upCast(C1* p) { return p; }

/// \endcond
::Ice::ObjectPtr
Test2::C1::ice_clone() const
{
    ::Ice::Object* p = new C1(*this);
    return p;
}

namespace
{
const ::std::string iceC_Test2_C1_ids[2] =
{
    "::Ice::Object",
    "::Test2::C1"
};

}

bool
Test2::C1::ice_isA(const ::std::string& s, const ::Ice::Current&) const
{
    return ::std::binary_search(iceC_Test2_C1_ids, iceC_Test2_C1_ids + 2, s);
}

::std::vector< ::std::string>
Test2::C1::ice_ids(const ::Ice::Current&) const
{
    return ::std::vector< ::std::string>(&iceC_Test2_C1_ids[0], &iceC_Test2_C1_ids[2]);
}

const ::std::string&
Test2::C1::ice_id(const ::Ice::Current&) const
{
    return ice_staticId();
}

const ::std::string&
Test2::C1::ice_staticId()
{
#ifdef ICE_HAS_THREAD_SAFE_LOCAL_STATIC
    static const ::std::string typeId = "::Test2::C1";
    return typeId;
#else
    return iceC_Test2_C1_ids[1];
#endif
}

/// \cond STREAM
void
Test2::C1::_iceWriteImpl(::Ice::OutputStream* ostr) const
{
    ostr->startSlice(ice_staticId(), -1, true);
    ::Ice::StreamWriter< C1, ::Ice::OutputStream>::write(ostr, *this);
    ostr->endSlice();
}

void
Test2::C1::_iceReadImpl(::Ice::InputStream* istr)
{
    istr->startSlice();
    ::Ice::StreamReader< C1, ::Ice::InputStream>::read(istr, *this);
    istr->endSlice();
}
/// \endcond

namespace
{
const ::IceInternal::DefaultValueFactoryInit< ::Test2::C1> iceC_Test2_C1_init("::Test2::C1");
}

::Ice::ValueFactoryPtr
Test2::C1::ice_factory()
{
    return ::IceInternal::factoryTable->getValueFactory(::Test2::C1::ice_staticId());
}

/// \cond INTERNAL
void
Test2::_icePatchObjectPtr(C1Ptr& handle, const ::Ice::ObjectPtr& v)
{
    handle = C1Ptr::dynamicCast(v);
    if(v && !handle)
    {
        IceInternal::Ex::throwUOE(C1::ice_staticId(), v);
    }
}
/// \endcond

Test2::C2::~C2()
{
}

/// \cond INTERNAL
::Ice::Object* Test2::upCast(C2* p) { return p; }

/// \endcond
::Ice::ObjectPtr
Test2::C2::ice_clone() const
{
    ::Ice::Object* p = new C2(*this);
    return p;
}

namespace
{
const ::std::string iceC_Test2_C2_ids[3] =
{
    "::Ice::Object",
    "::Test2::C1",
    "::Test2::C2"
};

}

bool
Test2::C2::ice_isA(const ::std::string& s, const ::Ice::Current&) const
{
    return ::std::binary_search(iceC_Test2_C2_ids, iceC_Test2_C2_ids + 3, s);
}

::std::vector< ::std::string>
Test2::C2::ice_ids(const ::Ice::Current&) const
{
    return ::std::vector< ::std::string>(&iceC_Test2_C2_ids[0], &iceC_Test2_C2_ids[3]);
}

const ::std::string&
Test2::C2::ice_id(const ::Ice::Current&) const
{
    return ice_staticId();
}

const ::std::string&
Test2::C2::ice_staticId()
{
#ifdef ICE_HAS_THREAD_SAFE_LOCAL_STATIC
    static const ::std::string typeId = "::Test2::C2";
    return typeId;
#else
    return iceC_Test2_C2_ids[2];
#endif
}

/// \cond STREAM
void
Test2::C2::_iceWriteImpl(::Ice::OutputStream* ostr) const
{
    ostr->startSlice(ice_staticId(), -1, false);
    ::Ice::StreamWriter< C2, ::Ice::OutputStream>::write(ostr, *this);
    ostr->endSlice();
    C1::_iceWriteImpl(ostr);
}

void
Test2::C2::_iceReadImpl(::Ice::InputStream* istr)
{
    istr->startSlice();
    ::Ice::StreamReader< C2, ::Ice::InputStream>::read(istr, *this);
    istr->endSlice();
    C1::_iceReadImpl(istr);
}
/// \endcond

namespace
{
const ::IceInternal::DefaultValueFactoryInit< ::Test2::C2> iceC_Test2_C2_init("::Test2::C2");
}

::Ice::ValueFactoryPtr
Test2::C2::ice_factory()
{
    return ::IceInternal::factoryTable->getValueFactory(::Test2::C2::ice_staticId());
}

/// \cond INTERNAL
void
Test2::_icePatchObjectPtr(C2Ptr& handle, const ::Ice::ObjectPtr& v)
{
    handle = C2Ptr::dynamicCast(v);
    if(v && !handle)
    {
        IceInternal::Ex::throwUOE(C2::ice_staticId(), v);
    }
}
/// \endcond

Test3::C1::~C1()
{
}

/// \cond INTERNAL
::Ice::Object* Test3::upCast(C1* p) { return p; }

/// \endcond
::Ice::ObjectPtr
Test3::C1::ice_clone() const
{
    ::Ice::Object* p = new C1(*this);
    return p;
}

namespace
{
const ::std::string iceC_Test3_C1_ids[2] =
{
    "::Ice::Object",
    "::Test3::C1"
};

}

bool
Test3::C1::ice_isA(const ::std::string& s, const ::Ice::Current&) const
{
    return ::std::binary_search(iceC_Test3_C1_ids, iceC_Test3_C1_ids + 2, s);
}

::std::vector< ::std::string>
Test3::C1::ice_ids(const ::Ice::Current&) const
{
    return ::std::vector< ::std::string>(&iceC_Test3_C1_ids[0], &iceC_Test3_C1_ids[2]);
}

const ::std::string&
Test3::C1::ice_id(const ::Ice::Current&) const
{
    return ice_staticId();
}

const ::std::string&
Test3::C1::ice_staticId()
{
#ifdef ICE_HAS_THREAD_SAFE_LOCAL_STATIC
    static const ::std::string typeId = "::Test3::C1";
    return typeId;
#else
    return iceC_Test3_C1_ids[1];
#endif
}

/// \cond STREAM
void
Test3::C1::_iceWriteImpl(::Ice::OutputStream* ostr) const
{
    ostr->startSlice(ice_staticId(), -1, true);
    ::Ice::StreamWriter< C1, ::Ice::OutputStream>::write(ostr, *this);
    ostr->endSlice();
}

void
Test3::C1::_iceReadImpl(::Ice::InputStream* istr)
{
    istr->startSlice();
    ::Ice::StreamReader< C1, ::Ice::InputStream>::read(istr, *this);
    istr->endSlice();
}
/// \endcond

namespace
{
const ::IceInternal::DefaultValueFactoryInit< ::Test3::C1> iceC_Test3_C1_init("::Test3::C1");
}

::Ice::ValueFactoryPtr
Test3::C1::ice_factory()
{
    return ::IceInternal::factoryTable->getValueFactory(::Test3::C1::ice_staticId());
}

/// \cond INTERNAL
void
Test3::_icePatchObjectPtr(C1Ptr& handle, const ::Ice::ObjectPtr& v)
{
    handle = C1Ptr::dynamicCast(v);
    if(v && !handle)
    {
        IceInternal::Ex::throwUOE(C1::ice_staticId(), v);
    }
}
/// \endcond

Test3::C2::~C2()
{
}

/// \cond INTERNAL
::Ice::Object* Test3::upCast(C2* p) { return p; }

/// \endcond
::Ice::ObjectPtr
Test3::C2::ice_clone() const
{
    ::Ice::Object* p = new C2(*this);
    return p;
}

namespace
{
const ::std::string iceC_Test3_C2_ids[3] =
{
    "::Ice::Object",
    "::Test3::C1",
    "::Test3::C2"
};

}

bool
Test3::C2::ice_isA(const ::std::string& s, const ::Ice::Current&) const
{
    return ::std::binary_search(iceC_Test3_C2_ids, iceC_Test3_C2_ids + 3, s);
}

::std::vector< ::std::string>
Test3::C2::ice_ids(const ::Ice::Current&) const
{
    return ::std::vector< ::std::string>(&iceC_Test3_C2_ids[0], &iceC_Test3_C2_ids[3]);
}

const ::std::string&
Test3::C2::ice_id(const ::Ice::Current&) const
{
    return ice_staticId();
}

const ::std::string&
Test3::C2::ice_staticId()
{
#ifdef ICE_HAS_THREAD_SAFE_LOCAL_STATIC
    static const ::std::string typeId = "::Test3::C2";
    return typeId;
#else
    return iceC_Test3_C2_ids[2];
#endif
}

/// \cond STREAM
void
Test3::C2::_iceWriteImpl(::Ice::OutputStream* ostr) const
{
    ostr->startSlice(ice_staticId(), -1, false);
    ::Ice::StreamWriter< C2, ::Ice::OutputStream>::write(ostr, *this);
    ostr->endSlice();
    C1::_iceWriteImpl(ostr);
}

void
Test3::C2::_iceReadImpl(::Ice::InputStream* istr)
{
    istr->startSlice();
    ::Ice::StreamReader< C2, ::Ice::InputStream>::read(istr, *this);
    istr->endSlice();
    C1::_iceReadImpl(istr);
}
/// \endcond

namespace
{
const ::IceInternal::DefaultValueFactoryInit< ::Test3::C2> iceC_Test3_C2_init("::Test3::C2");
}

::Ice::ValueFactoryPtr
Test3::C2::ice_factory()
{
    return ::IceInternal::factoryTable->getValueFactory(::Test3::C2::ice_staticId());
}

/// \cond INTERNAL
void
Test3::_icePatchObjectPtr(C2Ptr& handle, const ::Ice::ObjectPtr& v)
{
    handle = C2Ptr::dynamicCast(v);
    if(v && !handle)
    {
        IceInternal::Ex::throwUOE(C2::ice_staticId(), v);
    }
}
/// \endcond

namespace Ice
{
}

namespace Ice
{
}

#endif
