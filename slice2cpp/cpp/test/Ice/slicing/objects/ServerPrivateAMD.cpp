//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.7.9
//
// <auto-generated>
//
// Generated from file `ServerPrivateAMD.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

#include <ServerPrivateAMD.h>
#include <IceUtil/PushDisableWarnings.h>
#include <Ice/LocalException.h>
#include <Ice/ValueFactory.h>
#include <Ice/OutgoingAsync.h>
#include <Ice/InputStream.h>
#include <Ice/OutputStream.h>
#include <Ice/LocalException.h>
#include <Ice/SlicedData.h>
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

const ::IceInternal::DefaultValueFactoryInit<::Test::SBSUnknownDerived> iceC_Test_SBSUnknownDerived_init("::Test::SBSUnknownDerived");

const ::IceInternal::DefaultValueFactoryInit<::Test::SUnknown> iceC_Test_SUnknown_init("::Test::SUnknown");

const ::IceInternal::DefaultValueFactoryInit<::Test::D2> iceC_Test_D2_init("::Test::D2");

const ::IceInternal::DefaultValueFactoryInit<::Test::D4> iceC_Test_D4_init("::Test::D4");

const ::IceInternal::DefaultUserExceptionFactoryInit<::Test::UnknownDerivedException> iceC_Test_UnknownDerivedException_init("::Test::UnknownDerivedException");

const ::IceInternal::DefaultValueFactoryInit<::Test::MyClass> iceC_Test_MyClass_init("::Test::MyClass");

const ::IceInternal::DefaultValueFactoryInit<::Test::PSUnknown> iceC_Test_PSUnknown_init("::Test::PSUnknown");

const ::IceInternal::DefaultValueFactoryInit<::Test::PSUnknown2> iceC_Test_PSUnknown2_init("::Test::PSUnknown2");

const ::IceInternal::DefaultUserExceptionFactoryInit<::Test::PSUnknownException> iceC_Test_PSUnknownException_init("::Test::PSUnknownException");

}

Test::UnknownDerivedException::~UnknownDerivedException()
{
}

const ::std::string&
Test::UnknownDerivedException::ice_staticId()
{
    static const ::std::string typeId = "::Test::UnknownDerivedException";
    return typeId;
}

Test::PSUnknownException::~PSUnknownException()
{
}

const ::std::string&
Test::PSUnknownException::ice_staticId()
{
    static const ::std::string typeId = "::Test::PSUnknownException";
    return typeId;
}

/// \cond STREAM
bool
Test::PSUnknownException::_usesClasses() const
{
    return true;
}
/// \endcond

Test::SBSUnknownDerived::~SBSUnknownDerived()
{
}

const ::std::string&
Test::SBSUnknownDerived::ice_staticId()
{
    static const ::std::string typeId = "::Test::SBSUnknownDerived";
    return typeId;
}

Test::SUnknown::~SUnknown()
{
}

const ::std::string&
Test::SUnknown::ice_staticId()
{
    static const ::std::string typeId = "::Test::SUnknown";
    return typeId;
}

Test::D2::~D2()
{
}

const ::std::string&
Test::D2::ice_staticId()
{
    static const ::std::string typeId = "::Test::D2";
    return typeId;
}

Test::D4::~D4()
{
}

const ::std::string&
Test::D4::ice_staticId()
{
    static const ::std::string typeId = "::Test::D4";
    return typeId;
}

Test::MyClass::~MyClass()
{
}

const ::std::string&
Test::MyClass::ice_staticId()
{
    static const ::std::string typeId = "::Test::MyClass";
    return typeId;
}

Test::PSUnknown::~PSUnknown()
{
}

const ::std::string&
Test::PSUnknown::ice_staticId()
{
    static const ::std::string typeId = "::Test::PSUnknown";
    return typeId;
}

Test::PSUnknown2::~PSUnknown2()
{
}

const ::std::string&
Test::PSUnknown2::ice_staticId()
{
    static const ::std::string typeId = "::Test::PSUnknown2";
    return typeId;
}

#else // C++98 mapping

namespace
{

}

namespace
{

const ::IceInternal::DefaultUserExceptionFactoryInit< ::Test::UnknownDerivedException> iceC_Test_UnknownDerivedException_init("::Test::UnknownDerivedException");

}

Test::UnknownDerivedException::UnknownDerivedException(const ::std::string& sbe, const BPtr& pb, const ::std::string& sude, const D2Ptr& pd2) :
    BaseException(sbe, pb),
    sude(sude),
    pd2(pd2)
{
}

#ifdef ICE_CPP11_COMPILER
Test::UnknownDerivedException::~UnknownDerivedException()
{
}
#else
Test::UnknownDerivedException::~UnknownDerivedException() throw()
{
}
#endif

::std::string
Test::UnknownDerivedException::ice_id() const
{
    return "::Test::UnknownDerivedException";
}

Test::UnknownDerivedException*
Test::UnknownDerivedException::ice_clone() const
{
    return new UnknownDerivedException(*this);
}

void
Test::UnknownDerivedException::ice_throw() const
{
    throw *this;
}

/// \cond STREAM
void
Test::UnknownDerivedException::_writeImpl(::Ice::OutputStream* ostr) const
{
    ostr->startSlice("::Test::UnknownDerivedException", -1, false);
    ::Ice::StreamWriter< UnknownDerivedException, ::Ice::OutputStream>::write(ostr, *this);
    ostr->endSlice();
    BaseException::_writeImpl(ostr);
}

void
Test::UnknownDerivedException::_readImpl(::Ice::InputStream* istr)
{
    istr->startSlice();
    ::Ice::StreamReader< UnknownDerivedException, ::Ice::InputStream>::read(istr, *this);
    istr->endSlice();
    BaseException::_readImpl(istr);
}
/// \endcond

namespace
{

const ::IceInternal::DefaultUserExceptionFactoryInit< ::Test::PSUnknownException> iceC_Test_PSUnknownException_init("::Test::PSUnknownException");

}

Test::PSUnknownException::PSUnknownException(const PSUnknown2Ptr& p) :
    PreservedException(),
    p(p)
{
}

#ifdef ICE_CPP11_COMPILER
Test::PSUnknownException::~PSUnknownException()
{
}
#else
Test::PSUnknownException::~PSUnknownException() throw()
{
}
#endif

::std::string
Test::PSUnknownException::ice_id() const
{
    return "::Test::PSUnknownException";
}

Test::PSUnknownException*
Test::PSUnknownException::ice_clone() const
{
    return new PSUnknownException(*this);
}

void
Test::PSUnknownException::ice_throw() const
{
    throw *this;
}

bool
Test::PSUnknownException::_usesClasses() const
{
    return true;
}

/// \cond STREAM
void
Test::PSUnknownException::_writeImpl(::Ice::OutputStream* ostr) const
{
    ostr->startSlice("::Test::PSUnknownException", -1, false);
    ::Ice::StreamWriter< PSUnknownException, ::Ice::OutputStream>::write(ostr, *this);
    ostr->endSlice();
    PreservedException::_writeImpl(ostr);
}

void
Test::PSUnknownException::_readImpl(::Ice::InputStream* istr)
{
    istr->startSlice();
    ::Ice::StreamReader< PSUnknownException, ::Ice::InputStream>::read(istr, *this);
    istr->endSlice();
    PreservedException::_readImpl(istr);
}
/// \endcond

/// \cond INTERNAL
::IceProxy::Ice::Object* ::IceProxy::Test::upCast(SBSUnknownDerived* p) { return p; }

void
::IceProxy::Test::_readProxy(::Ice::InputStream* istr, ::IceInternal::ProxyHandle< SBSUnknownDerived>& v)
{
    ::Ice::ObjectPrx proxy;
    istr->read(proxy);
    if(!proxy)
    {
        v = 0;
    }
    else
    {
        v = new SBSUnknownDerived;
        v->_copyFrom(proxy);
    }
}
/// \endcond

/// \cond INTERNAL
::IceProxy::Ice::Object*
IceProxy::Test::SBSUnknownDerived::_newInstance() const
{
    return new SBSUnknownDerived;
}
/// \endcond

const ::std::string&
IceProxy::Test::SBSUnknownDerived::ice_staticId()
{
    return ::Test::SBSUnknownDerived::ice_staticId();
}

/// \cond INTERNAL
::IceProxy::Ice::Object* ::IceProxy::Test::upCast(SUnknown* p) { return p; }

void
::IceProxy::Test::_readProxy(::Ice::InputStream* istr, ::IceInternal::ProxyHandle< SUnknown>& v)
{
    ::Ice::ObjectPrx proxy;
    istr->read(proxy);
    if(!proxy)
    {
        v = 0;
    }
    else
    {
        v = new SUnknown;
        v->_copyFrom(proxy);
    }
}
/// \endcond

/// \cond INTERNAL
::IceProxy::Ice::Object*
IceProxy::Test::SUnknown::_newInstance() const
{
    return new SUnknown;
}
/// \endcond

const ::std::string&
IceProxy::Test::SUnknown::ice_staticId()
{
    return ::Test::SUnknown::ice_staticId();
}

/// \cond INTERNAL
::IceProxy::Ice::Object* ::IceProxy::Test::upCast(D2* p) { return p; }

void
::IceProxy::Test::_readProxy(::Ice::InputStream* istr, ::IceInternal::ProxyHandle< D2>& v)
{
    ::Ice::ObjectPrx proxy;
    istr->read(proxy);
    if(!proxy)
    {
        v = 0;
    }
    else
    {
        v = new D2;
        v->_copyFrom(proxy);
    }
}
/// \endcond

/// \cond INTERNAL
::IceProxy::Ice::Object*
IceProxy::Test::D2::_newInstance() const
{
    return new D2;
}
/// \endcond

const ::std::string&
IceProxy::Test::D2::ice_staticId()
{
    return ::Test::D2::ice_staticId();
}

/// \cond INTERNAL
::IceProxy::Ice::Object* ::IceProxy::Test::upCast(D4* p) { return p; }

void
::IceProxy::Test::_readProxy(::Ice::InputStream* istr, ::IceInternal::ProxyHandle< D4>& v)
{
    ::Ice::ObjectPrx proxy;
    istr->read(proxy);
    if(!proxy)
    {
        v = 0;
    }
    else
    {
        v = new D4;
        v->_copyFrom(proxy);
    }
}
/// \endcond

/// \cond INTERNAL
::IceProxy::Ice::Object*
IceProxy::Test::D4::_newInstance() const
{
    return new D4;
}
/// \endcond

const ::std::string&
IceProxy::Test::D4::ice_staticId()
{
    return ::Test::D4::ice_staticId();
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
::IceProxy::Ice::Object* ::IceProxy::Test::upCast(PSUnknown* p) { return p; }

void
::IceProxy::Test::_readProxy(::Ice::InputStream* istr, ::IceInternal::ProxyHandle< PSUnknown>& v)
{
    ::Ice::ObjectPrx proxy;
    istr->read(proxy);
    if(!proxy)
    {
        v = 0;
    }
    else
    {
        v = new PSUnknown;
        v->_copyFrom(proxy);
    }
}
/// \endcond

/// \cond INTERNAL
::IceProxy::Ice::Object*
IceProxy::Test::PSUnknown::_newInstance() const
{
    return new PSUnknown;
}
/// \endcond

const ::std::string&
IceProxy::Test::PSUnknown::ice_staticId()
{
    return ::Test::PSUnknown::ice_staticId();
}

/// \cond INTERNAL
::IceProxy::Ice::Object* ::IceProxy::Test::upCast(PSUnknown2* p) { return p; }

void
::IceProxy::Test::_readProxy(::Ice::InputStream* istr, ::IceInternal::ProxyHandle< PSUnknown2>& v)
{
    ::Ice::ObjectPrx proxy;
    istr->read(proxy);
    if(!proxy)
    {
        v = 0;
    }
    else
    {
        v = new PSUnknown2;
        v->_copyFrom(proxy);
    }
}
/// \endcond

/// \cond INTERNAL
::IceProxy::Ice::Object*
IceProxy::Test::PSUnknown2::_newInstance() const
{
    return new PSUnknown2;
}
/// \endcond

const ::std::string&
IceProxy::Test::PSUnknown2::ice_staticId()
{
    return ::Test::PSUnknown2::ice_staticId();
}

Test::SBSUnknownDerived::~SBSUnknownDerived()
{
}

/// \cond INTERNAL
::Ice::Object* Test::upCast(SBSUnknownDerived* p) { return p; }

/// \endcond
::Ice::ObjectPtr
Test::SBSUnknownDerived::ice_clone() const
{
    ::Ice::Object* p = new SBSUnknownDerived(*this);
    return p;
}

namespace
{
const ::std::string iceC_Test_SBSUnknownDerived_ids[3] =
{
    "::Ice::Object",
    "::Test::SBSUnknownDerived",
    "::Test::SBase"
};

}

bool
Test::SBSUnknownDerived::ice_isA(const ::std::string& s, const ::Ice::Current&) const
{
    return ::std::binary_search(iceC_Test_SBSUnknownDerived_ids, iceC_Test_SBSUnknownDerived_ids + 3, s);
}

::std::vector< ::std::string>
Test::SBSUnknownDerived::ice_ids(const ::Ice::Current&) const
{
    return ::std::vector< ::std::string>(&iceC_Test_SBSUnknownDerived_ids[0], &iceC_Test_SBSUnknownDerived_ids[3]);
}

const ::std::string&
Test::SBSUnknownDerived::ice_id(const ::Ice::Current&) const
{
    return ice_staticId();
}

const ::std::string&
Test::SBSUnknownDerived::ice_staticId()
{
#ifdef ICE_HAS_THREAD_SAFE_LOCAL_STATIC
    static const ::std::string typeId = "::Test::SBSUnknownDerived";
    return typeId;
#else
    return iceC_Test_SBSUnknownDerived_ids[1];
#endif
}

/// \cond STREAM
void
Test::SBSUnknownDerived::_iceWriteImpl(::Ice::OutputStream* ostr) const
{
    ostr->startSlice(ice_staticId(), -1, false);
    ::Ice::StreamWriter< SBSUnknownDerived, ::Ice::OutputStream>::write(ostr, *this);
    ostr->endSlice();
    SBase::_iceWriteImpl(ostr);
}

void
Test::SBSUnknownDerived::_iceReadImpl(::Ice::InputStream* istr)
{
    istr->startSlice();
    ::Ice::StreamReader< SBSUnknownDerived, ::Ice::InputStream>::read(istr, *this);
    istr->endSlice();
    SBase::_iceReadImpl(istr);
}
/// \endcond

namespace
{
const ::IceInternal::DefaultValueFactoryInit< ::Test::SBSUnknownDerived> iceC_Test_SBSUnknownDerived_init("::Test::SBSUnknownDerived");
}

::Ice::ValueFactoryPtr
Test::SBSUnknownDerived::ice_factory()
{
    return ::IceInternal::factoryTable->getValueFactory(::Test::SBSUnknownDerived::ice_staticId());
}

/// \cond INTERNAL
void
Test::_icePatchObjectPtr(SBSUnknownDerivedPtr& handle, const ::Ice::ObjectPtr& v)
{
    handle = SBSUnknownDerivedPtr::dynamicCast(v);
    if(v && !handle)
    {
        IceInternal::Ex::throwUOE(SBSUnknownDerived::ice_staticId(), v);
    }
}
/// \endcond

Test::SUnknown::~SUnknown()
{
}

/// \cond INTERNAL
::Ice::Object* Test::upCast(SUnknown* p) { return p; }

/// \endcond

#if defined(_MSC_VER) && (_MSC_VER >= 1900)
#   pragma warning(push)
#   pragma warning(disable:4589)
#endif
::Ice::ObjectPtr
Test::SUnknown::ice_clone() const
{
    ::Ice::Object* p = new SUnknown(*this);
    return p;
}
#if defined(_MSC_VER) && (_MSC_VER >= 1900)
#   pragma warning(pop)
#endif

namespace
{
const ::std::string iceC_Test_SUnknown_ids[2] =
{
    "::Ice::Object",
    "::Test::SUnknown"
};

}

bool
Test::SUnknown::ice_isA(const ::std::string& s, const ::Ice::Current&) const
{
    return ::std::binary_search(iceC_Test_SUnknown_ids, iceC_Test_SUnknown_ids + 2, s);
}

::std::vector< ::std::string>
Test::SUnknown::ice_ids(const ::Ice::Current&) const
{
    return ::std::vector< ::std::string>(&iceC_Test_SUnknown_ids[0], &iceC_Test_SUnknown_ids[2]);
}

const ::std::string&
Test::SUnknown::ice_id(const ::Ice::Current&) const
{
    return ice_staticId();
}

const ::std::string&
Test::SUnknown::ice_staticId()
{
#ifdef ICE_HAS_THREAD_SAFE_LOCAL_STATIC
    static const ::std::string typeId = "::Test::SUnknown";
    return typeId;
#else
    return iceC_Test_SUnknown_ids[1];
#endif
}

void
Test::SUnknown::_iceGcVisitMembers(::IceInternal::GCVisitor& v_)
{
    if(cycle)
    {
        if((::Test::upCast(cycle.get())->_iceGcVisit(v_)))
        {
            cycle = 0;
        }
    }
}

/// \cond STREAM
void
Test::SUnknown::_iceWriteImpl(::Ice::OutputStream* ostr) const
{
    ostr->startSlice(ice_staticId(), -1, true);
    ::Ice::StreamWriter< SUnknown, ::Ice::OutputStream>::write(ostr, *this);
    ostr->endSlice();
}

void
Test::SUnknown::_iceReadImpl(::Ice::InputStream* istr)
{
    istr->startSlice();
    ::Ice::StreamReader< SUnknown, ::Ice::InputStream>::read(istr, *this);
    istr->endSlice();
}
/// \endcond

namespace
{
const ::IceInternal::DefaultValueFactoryInit< ::Test::SUnknown> iceC_Test_SUnknown_init("::Test::SUnknown");
}

::Ice::ValueFactoryPtr
Test::SUnknown::ice_factory()
{
    return ::IceInternal::factoryTable->getValueFactory(::Test::SUnknown::ice_staticId());
}

/// \cond INTERNAL
void
Test::_icePatchObjectPtr(SUnknownPtr& handle, const ::Ice::ObjectPtr& v)
{
    handle = SUnknownPtr::dynamicCast(v);
    if(v && !handle)
    {
        IceInternal::Ex::throwUOE(SUnknown::ice_staticId(), v);
    }
}
/// \endcond

Test::D2::~D2()
{
}

/// \cond INTERNAL
::Ice::Object* Test::upCast(D2* p) { return p; }

/// \endcond
::Ice::ObjectPtr
Test::D2::ice_clone() const
{
    ::Ice::Object* p = new D2(*this);
    return p;
}

namespace
{
const ::std::string iceC_Test_D2_ids[3] =
{
    "::Ice::Object",
    "::Test::B",
    "::Test::D2"
};

}

bool
Test::D2::ice_isA(const ::std::string& s, const ::Ice::Current&) const
{
    return ::std::binary_search(iceC_Test_D2_ids, iceC_Test_D2_ids + 3, s);
}

::std::vector< ::std::string>
Test::D2::ice_ids(const ::Ice::Current&) const
{
    return ::std::vector< ::std::string>(&iceC_Test_D2_ids[0], &iceC_Test_D2_ids[3]);
}

const ::std::string&
Test::D2::ice_id(const ::Ice::Current&) const
{
    return ice_staticId();
}

const ::std::string&
Test::D2::ice_staticId()
{
#ifdef ICE_HAS_THREAD_SAFE_LOCAL_STATIC
    static const ::std::string typeId = "::Test::D2";
    return typeId;
#else
    return iceC_Test_D2_ids[2];
#endif
}

void
Test::D2::_iceGcVisitMembers(::IceInternal::GCVisitor& v_)
{
    B::_iceGcVisitMembers(v_);
    if(pd2)
    {
        if((::Test::upCast(pd2.get())->_iceGcVisit(v_)))
        {
            pd2 = 0;
        }
    }
}

/// \cond STREAM
void
Test::D2::_iceWriteImpl(::Ice::OutputStream* ostr) const
{
    ostr->startSlice(ice_staticId(), -1, false);
    ::Ice::StreamWriter< D2, ::Ice::OutputStream>::write(ostr, *this);
    ostr->endSlice();
    B::_iceWriteImpl(ostr);
}

void
Test::D2::_iceReadImpl(::Ice::InputStream* istr)
{
    istr->startSlice();
    ::Ice::StreamReader< D2, ::Ice::InputStream>::read(istr, *this);
    istr->endSlice();
    B::_iceReadImpl(istr);
}
/// \endcond

namespace
{
const ::IceInternal::DefaultValueFactoryInit< ::Test::D2> iceC_Test_D2_init("::Test::D2");
}

::Ice::ValueFactoryPtr
Test::D2::ice_factory()
{
    return ::IceInternal::factoryTable->getValueFactory(::Test::D2::ice_staticId());
}

/// \cond INTERNAL
void
Test::_icePatchObjectPtr(D2Ptr& handle, const ::Ice::ObjectPtr& v)
{
    handle = D2Ptr::dynamicCast(v);
    if(v && !handle)
    {
        IceInternal::Ex::throwUOE(D2::ice_staticId(), v);
    }
}
/// \endcond

Test::D4::~D4()
{
}

/// \cond INTERNAL
::Ice::Object* Test::upCast(D4* p) { return p; }

/// \endcond
::Ice::ObjectPtr
Test::D4::ice_clone() const
{
    ::Ice::Object* p = new D4(*this);
    return p;
}

namespace
{
const ::std::string iceC_Test_D4_ids[3] =
{
    "::Ice::Object",
    "::Test::B",
    "::Test::D4"
};

}

bool
Test::D4::ice_isA(const ::std::string& s, const ::Ice::Current&) const
{
    return ::std::binary_search(iceC_Test_D4_ids, iceC_Test_D4_ids + 3, s);
}

::std::vector< ::std::string>
Test::D4::ice_ids(const ::Ice::Current&) const
{
    return ::std::vector< ::std::string>(&iceC_Test_D4_ids[0], &iceC_Test_D4_ids[3]);
}

const ::std::string&
Test::D4::ice_id(const ::Ice::Current&) const
{
    return ice_staticId();
}

const ::std::string&
Test::D4::ice_staticId()
{
#ifdef ICE_HAS_THREAD_SAFE_LOCAL_STATIC
    static const ::std::string typeId = "::Test::D4";
    return typeId;
#else
    return iceC_Test_D4_ids[2];
#endif
}

void
Test::D4::_iceGcVisitMembers(::IceInternal::GCVisitor& v_)
{
    B::_iceGcVisitMembers(v_);
    if(p1)
    {
        if((::Test::upCast(p1.get())->_iceGcVisit(v_)))
        {
            p1 = 0;
        }
    }
    if(p2)
    {
        if((::Test::upCast(p2.get())->_iceGcVisit(v_)))
        {
            p2 = 0;
        }
    }
}

/// \cond STREAM
void
Test::D4::_iceWriteImpl(::Ice::OutputStream* ostr) const
{
    ostr->startSlice(ice_staticId(), -1, false);
    ::Ice::StreamWriter< D4, ::Ice::OutputStream>::write(ostr, *this);
    ostr->endSlice();
    B::_iceWriteImpl(ostr);
}

void
Test::D4::_iceReadImpl(::Ice::InputStream* istr)
{
    istr->startSlice();
    ::Ice::StreamReader< D4, ::Ice::InputStream>::read(istr, *this);
    istr->endSlice();
    B::_iceReadImpl(istr);
}
/// \endcond

namespace
{
const ::IceInternal::DefaultValueFactoryInit< ::Test::D4> iceC_Test_D4_init("::Test::D4");
}

::Ice::ValueFactoryPtr
Test::D4::ice_factory()
{
    return ::IceInternal::factoryTable->getValueFactory(::Test::D4::ice_staticId());
}

/// \cond INTERNAL
void
Test::_icePatchObjectPtr(D4Ptr& handle, const ::Ice::ObjectPtr& v)
{
    handle = D4Ptr::dynamicCast(v);
    if(v && !handle)
    {
        IceInternal::Ex::throwUOE(D4::ice_staticId(), v);
    }
}
/// \endcond

Test::MyClass::~MyClass()
{
}

/// \cond INTERNAL
::Ice::Object* Test::upCast(MyClass* p) { return p; }

/// \endcond
::Ice::ObjectPtr
Test::MyClass::ice_clone() const
{
    ::Ice::Object* p = new MyClass(*this);
    return p;
}

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

namespace
{
const ::IceInternal::DefaultValueFactoryInit< ::Test::MyClass> iceC_Test_MyClass_init("::Test::MyClass");
}

::Ice::ValueFactoryPtr
Test::MyClass::ice_factory()
{
    return ::IceInternal::factoryTable->getValueFactory(::Test::MyClass::ice_staticId());
}

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

Test::PSUnknown::~PSUnknown()
{
}

/// \cond INTERNAL
::Ice::Object* Test::upCast(PSUnknown* p) { return p; }

/// \endcond

#if defined(_MSC_VER) && (_MSC_VER >= 1900)
#   pragma warning(push)
#   pragma warning(disable:4589)
#endif
::Ice::ObjectPtr
Test::PSUnknown::ice_clone() const
{
    ::Ice::Object* p = new PSUnknown(*this);
    return p;
}
#if defined(_MSC_VER) && (_MSC_VER >= 1900)
#   pragma warning(pop)
#endif

namespace
{
const ::std::string iceC_Test_PSUnknown_ids[4] =
{
    "::Ice::Object",
    "::Test::PBase",
    "::Test::PSUnknown",
    "::Test::Preserved"
};

}

bool
Test::PSUnknown::ice_isA(const ::std::string& s, const ::Ice::Current&) const
{
    return ::std::binary_search(iceC_Test_PSUnknown_ids, iceC_Test_PSUnknown_ids + 4, s);
}

::std::vector< ::std::string>
Test::PSUnknown::ice_ids(const ::Ice::Current&) const
{
    return ::std::vector< ::std::string>(&iceC_Test_PSUnknown_ids[0], &iceC_Test_PSUnknown_ids[4]);
}

const ::std::string&
Test::PSUnknown::ice_id(const ::Ice::Current&) const
{
    return ice_staticId();
}

const ::std::string&
Test::PSUnknown::ice_staticId()
{
#ifdef ICE_HAS_THREAD_SAFE_LOCAL_STATIC
    static const ::std::string typeId = "::Test::PSUnknown";
    return typeId;
#else
    return iceC_Test_PSUnknown_ids[2];
#endif
}

void
Test::PSUnknown::_iceGcVisitMembers(::IceInternal::GCVisitor& v_)
{
    Preserved::_iceGcVisitMembers(v_);
    if(graph)
    {
        if((::Test::upCast(graph.get())->_iceGcVisit(v_)))
        {
            graph = 0;
        }
    }
    if(cl)
    {
        if((::Test::upCast(cl.get())->_iceGcVisit(v_)))
        {
            cl = 0;
        }
    }
}

/// \cond STREAM
void
Test::PSUnknown::_iceWriteImpl(::Ice::OutputStream* ostr) const
{
    ostr->startSlice(ice_staticId(), -1, false);
    ::Ice::StreamWriter< PSUnknown, ::Ice::OutputStream>::write(ostr, *this);
    ostr->endSlice();
    Preserved::_iceWriteImpl(ostr);
}

void
Test::PSUnknown::_iceReadImpl(::Ice::InputStream* istr)
{
    istr->startSlice();
    ::Ice::StreamReader< PSUnknown, ::Ice::InputStream>::read(istr, *this);
    istr->endSlice();
    Preserved::_iceReadImpl(istr);
}
/// \endcond

namespace
{
const ::IceInternal::DefaultValueFactoryInit< ::Test::PSUnknown> iceC_Test_PSUnknown_init("::Test::PSUnknown");
}

::Ice::ValueFactoryPtr
Test::PSUnknown::ice_factory()
{
    return ::IceInternal::factoryTable->getValueFactory(::Test::PSUnknown::ice_staticId());
}

/// \cond INTERNAL
void
Test::_icePatchObjectPtr(PSUnknownPtr& handle, const ::Ice::ObjectPtr& v)
{
    handle = PSUnknownPtr::dynamicCast(v);
    if(v && !handle)
    {
        IceInternal::Ex::throwUOE(PSUnknown::ice_staticId(), v);
    }
}
/// \endcond

Test::PSUnknown2::~PSUnknown2()
{
}

/// \cond INTERNAL
::Ice::Object* Test::upCast(PSUnknown2* p) { return p; }

/// \endcond

#if defined(_MSC_VER) && (_MSC_VER >= 1900)
#   pragma warning(push)
#   pragma warning(disable:4589)
#endif
::Ice::ObjectPtr
Test::PSUnknown2::ice_clone() const
{
    ::Ice::Object* p = new PSUnknown2(*this);
    return p;
}
#if defined(_MSC_VER) && (_MSC_VER >= 1900)
#   pragma warning(pop)
#endif

namespace
{
const ::std::string iceC_Test_PSUnknown2_ids[4] =
{
    "::Ice::Object",
    "::Test::PBase",
    "::Test::PSUnknown2",
    "::Test::Preserved"
};

}

bool
Test::PSUnknown2::ice_isA(const ::std::string& s, const ::Ice::Current&) const
{
    return ::std::binary_search(iceC_Test_PSUnknown2_ids, iceC_Test_PSUnknown2_ids + 4, s);
}

::std::vector< ::std::string>
Test::PSUnknown2::ice_ids(const ::Ice::Current&) const
{
    return ::std::vector< ::std::string>(&iceC_Test_PSUnknown2_ids[0], &iceC_Test_PSUnknown2_ids[4]);
}

const ::std::string&
Test::PSUnknown2::ice_id(const ::Ice::Current&) const
{
    return ice_staticId();
}

const ::std::string&
Test::PSUnknown2::ice_staticId()
{
#ifdef ICE_HAS_THREAD_SAFE_LOCAL_STATIC
    static const ::std::string typeId = "::Test::PSUnknown2";
    return typeId;
#else
    return iceC_Test_PSUnknown2_ids[2];
#endif
}

void
Test::PSUnknown2::_iceGcVisitMembers(::IceInternal::GCVisitor& v_)
{
    Preserved::_iceGcVisitMembers(v_);
    if(pb)
    {
        if((::Test::upCast(pb.get())->_iceGcVisit(v_)))
        {
            pb = 0;
        }
    }
}

/// \cond STREAM
void
Test::PSUnknown2::_iceWriteImpl(::Ice::OutputStream* ostr) const
{
    ostr->startSlice(ice_staticId(), -1, false);
    ::Ice::StreamWriter< PSUnknown2, ::Ice::OutputStream>::write(ostr, *this);
    ostr->endSlice();
    Preserved::_iceWriteImpl(ostr);
}

void
Test::PSUnknown2::_iceReadImpl(::Ice::InputStream* istr)
{
    istr->startSlice();
    ::Ice::StreamReader< PSUnknown2, ::Ice::InputStream>::read(istr, *this);
    istr->endSlice();
    Preserved::_iceReadImpl(istr);
}
/// \endcond

namespace
{
const ::IceInternal::DefaultValueFactoryInit< ::Test::PSUnknown2> iceC_Test_PSUnknown2_init("::Test::PSUnknown2");
}

::Ice::ValueFactoryPtr
Test::PSUnknown2::ice_factory()
{
    return ::IceInternal::factoryTable->getValueFactory(::Test::PSUnknown2::ice_staticId());
}

/// \cond INTERNAL
void
Test::_icePatchObjectPtr(PSUnknown2Ptr& handle, const ::Ice::ObjectPtr& v)
{
    handle = PSUnknown2Ptr::dynamicCast(v);
    if(v && !handle)
    {
        IceInternal::Ex::throwUOE(PSUnknown2::ice_staticId(), v);
    }
}
/// \endcond

namespace Ice
{
}

#endif
