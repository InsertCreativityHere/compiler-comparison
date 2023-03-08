//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.7.9
//
// <auto-generated>
//
// Generated from file `LocalTest.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

#include <LocalTest.h>
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

const ::IceInternal::DefaultValueFactoryInit<::LocalTest::C1> iceC_LocalTest_C1_init("::LocalTest::C1");

const ::IceInternal::DefaultValueFactoryInit<::LocalTest::CB1> iceC_LocalTest_CB1_init("::LocalTest::CB1");

const ::IceInternal::DefaultValueFactoryInit<::LocalTest::CB2> iceC_LocalTest_CB2_init("::LocalTest::CB2");

const ::IceInternal::DefaultValueFactoryInit<::LocalTest::CB3> iceC_LocalTest_CB3_init("::LocalTest::CB3");

const ::IceInternal::DefaultValueFactoryInit<::LocalTest::CB4> iceC_LocalTest_CB4_init("::LocalTest::CB4");

const ::IceInternal::DefaultValueFactoryInit<::LocalTest::CB5> iceC_LocalTest_CB5_init("::LocalTest::CB5");

const ::IceInternal::DefaultValueFactoryInit<::LocalTest::CB6> iceC_LocalTest_CB6_init("::LocalTest::CB6");

const ::IceInternal::DefaultValueFactoryInit<::LocalTest::CB7> iceC_LocalTest_CB7_init("::LocalTest::CB7");

const ::IceInternal::DefaultValueFactoryInit<::LocalTest::CB8> iceC_LocalTest_CB8_init("::LocalTest::CB8");

const ::IceInternal::DefaultValueFactoryInit<::LocalTest::Opt> iceC_LocalTest_Opt_init("::LocalTest::Opt");

}

LocalTest::C1::~C1()
{
}

const ::std::string&
LocalTest::C1::ice_staticId()
{
    static const ::std::string typeId = "::LocalTest::C1";
    return typeId;
}

LocalTest::CB1::~CB1()
{
}

const ::std::string&
LocalTest::CB1::ice_staticId()
{
    static const ::std::string typeId = "::LocalTest::CB1";
    return typeId;
}

LocalTest::CB2::~CB2()
{
}

const ::std::string&
LocalTest::CB2::ice_staticId()
{
    static const ::std::string typeId = "::LocalTest::CB2";
    return typeId;
}

LocalTest::CB3::~CB3()
{
}

const ::std::string&
LocalTest::CB3::ice_staticId()
{
    static const ::std::string typeId = "::LocalTest::CB3";
    return typeId;
}

LocalTest::CB4::~CB4()
{
}

const ::std::string&
LocalTest::CB4::ice_staticId()
{
    static const ::std::string typeId = "::LocalTest::CB4";
    return typeId;
}

LocalTest::CB5::~CB5()
{
}

const ::std::string&
LocalTest::CB5::ice_staticId()
{
    static const ::std::string typeId = "::LocalTest::CB5";
    return typeId;
}

LocalTest::CB6::~CB6()
{
}

const ::std::string&
LocalTest::CB6::ice_staticId()
{
    static const ::std::string typeId = "::LocalTest::CB6";
    return typeId;
}

LocalTest::CB7::~CB7()
{
}

const ::std::string&
LocalTest::CB7::ice_staticId()
{
    static const ::std::string typeId = "::LocalTest::CB7";
    return typeId;
}

LocalTest::CB8::~CB8()
{
}

const ::std::string&
LocalTest::CB8::ice_staticId()
{
    static const ::std::string typeId = "::LocalTest::CB8";
    return typeId;
}

LocalTest::Opt::~Opt()
{
}

const ::std::string&
LocalTest::Opt::ice_staticId()
{
    static const ::std::string typeId = "::LocalTest::Opt";
    return typeId;
}

namespace Ice
{
}

#else // C++98 mapping

namespace
{

}

/// \cond INTERNAL
::IceProxy::Ice::Object* ::IceProxy::LocalTest::upCast(C1* p) { return p; }

void
::IceProxy::LocalTest::_readProxy(::Ice::InputStream* istr, ::IceInternal::ProxyHandle< C1>& v)
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
IceProxy::LocalTest::C1::_newInstance() const
{
    return new C1;
}
/// \endcond

const ::std::string&
IceProxy::LocalTest::C1::ice_staticId()
{
    return ::LocalTest::C1::ice_staticId();
}

/// \cond INTERNAL
::IceProxy::Ice::Object* ::IceProxy::LocalTest::upCast(CB1* p) { return p; }

void
::IceProxy::LocalTest::_readProxy(::Ice::InputStream* istr, ::IceInternal::ProxyHandle< CB1>& v)
{
    ::Ice::ObjectPrx proxy;
    istr->read(proxy);
    if(!proxy)
    {
        v = 0;
    }
    else
    {
        v = new CB1;
        v->_copyFrom(proxy);
    }
}
/// \endcond

/// \cond INTERNAL
::IceProxy::Ice::Object*
IceProxy::LocalTest::CB1::_newInstance() const
{
    return new CB1;
}
/// \endcond

const ::std::string&
IceProxy::LocalTest::CB1::ice_staticId()
{
    return ::LocalTest::CB1::ice_staticId();
}

/// \cond INTERNAL
::IceProxy::Ice::Object* ::IceProxy::LocalTest::upCast(CB2* p) { return p; }

void
::IceProxy::LocalTest::_readProxy(::Ice::InputStream* istr, ::IceInternal::ProxyHandle< CB2>& v)
{
    ::Ice::ObjectPrx proxy;
    istr->read(proxy);
    if(!proxy)
    {
        v = 0;
    }
    else
    {
        v = new CB2;
        v->_copyFrom(proxy);
    }
}
/// \endcond

/// \cond INTERNAL
::IceProxy::Ice::Object*
IceProxy::LocalTest::CB2::_newInstance() const
{
    return new CB2;
}
/// \endcond

const ::std::string&
IceProxy::LocalTest::CB2::ice_staticId()
{
    return ::LocalTest::CB2::ice_staticId();
}

/// \cond INTERNAL
::IceProxy::Ice::Object* ::IceProxy::LocalTest::upCast(CB3* p) { return p; }

void
::IceProxy::LocalTest::_readProxy(::Ice::InputStream* istr, ::IceInternal::ProxyHandle< CB3>& v)
{
    ::Ice::ObjectPrx proxy;
    istr->read(proxy);
    if(!proxy)
    {
        v = 0;
    }
    else
    {
        v = new CB3;
        v->_copyFrom(proxy);
    }
}
/// \endcond

/// \cond INTERNAL
::IceProxy::Ice::Object*
IceProxy::LocalTest::CB3::_newInstance() const
{
    return new CB3;
}
/// \endcond

const ::std::string&
IceProxy::LocalTest::CB3::ice_staticId()
{
    return ::LocalTest::CB3::ice_staticId();
}

/// \cond INTERNAL
::IceProxy::Ice::Object* ::IceProxy::LocalTest::upCast(CB4* p) { return p; }

void
::IceProxy::LocalTest::_readProxy(::Ice::InputStream* istr, ::IceInternal::ProxyHandle< CB4>& v)
{
    ::Ice::ObjectPrx proxy;
    istr->read(proxy);
    if(!proxy)
    {
        v = 0;
    }
    else
    {
        v = new CB4;
        v->_copyFrom(proxy);
    }
}
/// \endcond

/// \cond INTERNAL
::IceProxy::Ice::Object*
IceProxy::LocalTest::CB4::_newInstance() const
{
    return new CB4;
}
/// \endcond

const ::std::string&
IceProxy::LocalTest::CB4::ice_staticId()
{
    return ::LocalTest::CB4::ice_staticId();
}

/// \cond INTERNAL
::IceProxy::Ice::Object* ::IceProxy::LocalTest::upCast(CB5* p) { return p; }

void
::IceProxy::LocalTest::_readProxy(::Ice::InputStream* istr, ::IceInternal::ProxyHandle< CB5>& v)
{
    ::Ice::ObjectPrx proxy;
    istr->read(proxy);
    if(!proxy)
    {
        v = 0;
    }
    else
    {
        v = new CB5;
        v->_copyFrom(proxy);
    }
}
/// \endcond

/// \cond INTERNAL
::IceProxy::Ice::Object*
IceProxy::LocalTest::CB5::_newInstance() const
{
    return new CB5;
}
/// \endcond

const ::std::string&
IceProxy::LocalTest::CB5::ice_staticId()
{
    return ::LocalTest::CB5::ice_staticId();
}

/// \cond INTERNAL
::IceProxy::Ice::Object* ::IceProxy::LocalTest::upCast(CB6* p) { return p; }

void
::IceProxy::LocalTest::_readProxy(::Ice::InputStream* istr, ::IceInternal::ProxyHandle< CB6>& v)
{
    ::Ice::ObjectPrx proxy;
    istr->read(proxy);
    if(!proxy)
    {
        v = 0;
    }
    else
    {
        v = new CB6;
        v->_copyFrom(proxy);
    }
}
/// \endcond

/// \cond INTERNAL
::IceProxy::Ice::Object*
IceProxy::LocalTest::CB6::_newInstance() const
{
    return new CB6;
}
/// \endcond

const ::std::string&
IceProxy::LocalTest::CB6::ice_staticId()
{
    return ::LocalTest::CB6::ice_staticId();
}

/// \cond INTERNAL
::IceProxy::Ice::Object* ::IceProxy::LocalTest::upCast(CB7* p) { return p; }

void
::IceProxy::LocalTest::_readProxy(::Ice::InputStream* istr, ::IceInternal::ProxyHandle< CB7>& v)
{
    ::Ice::ObjectPrx proxy;
    istr->read(proxy);
    if(!proxy)
    {
        v = 0;
    }
    else
    {
        v = new CB7;
        v->_copyFrom(proxy);
    }
}
/// \endcond

/// \cond INTERNAL
::IceProxy::Ice::Object*
IceProxy::LocalTest::CB7::_newInstance() const
{
    return new CB7;
}
/// \endcond

const ::std::string&
IceProxy::LocalTest::CB7::ice_staticId()
{
    return ::LocalTest::CB7::ice_staticId();
}

/// \cond INTERNAL
::IceProxy::Ice::Object* ::IceProxy::LocalTest::upCast(CB8* p) { return p; }

void
::IceProxy::LocalTest::_readProxy(::Ice::InputStream* istr, ::IceInternal::ProxyHandle< CB8>& v)
{
    ::Ice::ObjectPrx proxy;
    istr->read(proxy);
    if(!proxy)
    {
        v = 0;
    }
    else
    {
        v = new CB8;
        v->_copyFrom(proxy);
    }
}
/// \endcond

/// \cond INTERNAL
::IceProxy::Ice::Object*
IceProxy::LocalTest::CB8::_newInstance() const
{
    return new CB8;
}
/// \endcond

const ::std::string&
IceProxy::LocalTest::CB8::ice_staticId()
{
    return ::LocalTest::CB8::ice_staticId();
}

/// \cond INTERNAL
::IceProxy::Ice::Object* ::IceProxy::LocalTest::upCast(Opt* p) { return p; }

void
::IceProxy::LocalTest::_readProxy(::Ice::InputStream* istr, ::IceInternal::ProxyHandle< Opt>& v)
{
    ::Ice::ObjectPrx proxy;
    istr->read(proxy);
    if(!proxy)
    {
        v = 0;
    }
    else
    {
        v = new Opt;
        v->_copyFrom(proxy);
    }
}
/// \endcond

/// \cond INTERNAL
::IceProxy::Ice::Object*
IceProxy::LocalTest::Opt::_newInstance() const
{
    return new Opt;
}
/// \endcond

const ::std::string&
IceProxy::LocalTest::Opt::ice_staticId()
{
    return ::LocalTest::Opt::ice_staticId();
}

LocalTest::C1::~C1()
{
}

/// \cond INTERNAL
::Ice::Object* LocalTest::upCast(C1* p) { return p; }

/// \endcond
::Ice::ObjectPtr
LocalTest::C1::ice_clone() const
{
    ::Ice::Object* p = new C1(*this);
    return p;
}

namespace
{
const ::std::string iceC_LocalTest_C1_ids[2] =
{
    "::Ice::Object",
    "::LocalTest::C1"
};

}

bool
LocalTest::C1::ice_isA(const ::std::string& s, const ::Ice::Current&) const
{
    return ::std::binary_search(iceC_LocalTest_C1_ids, iceC_LocalTest_C1_ids + 2, s);
}

::std::vector< ::std::string>
LocalTest::C1::ice_ids(const ::Ice::Current&) const
{
    return ::std::vector< ::std::string>(&iceC_LocalTest_C1_ids[0], &iceC_LocalTest_C1_ids[2]);
}

const ::std::string&
LocalTest::C1::ice_id(const ::Ice::Current&) const
{
    return ice_staticId();
}

const ::std::string&
LocalTest::C1::ice_staticId()
{
#ifdef ICE_HAS_THREAD_SAFE_LOCAL_STATIC
    static const ::std::string typeId = "::LocalTest::C1";
    return typeId;
#else
    return iceC_LocalTest_C1_ids[1];
#endif
}

/// \cond STREAM
void
LocalTest::C1::_iceWriteImpl(::Ice::OutputStream* ostr) const
{
    ostr->startSlice(ice_staticId(), -1, true);
    ::Ice::StreamWriter< C1, ::Ice::OutputStream>::write(ostr, *this);
    ostr->endSlice();
}

void
LocalTest::C1::_iceReadImpl(::Ice::InputStream* istr)
{
    istr->startSlice();
    ::Ice::StreamReader< C1, ::Ice::InputStream>::read(istr, *this);
    istr->endSlice();
}
/// \endcond

namespace
{
const ::IceInternal::DefaultValueFactoryInit< ::LocalTest::C1> iceC_LocalTest_C1_init("::LocalTest::C1");
}

::Ice::ValueFactoryPtr
LocalTest::C1::ice_factory()
{
    return ::IceInternal::factoryTable->getValueFactory(::LocalTest::C1::ice_staticId());
}

/// \cond INTERNAL
void
LocalTest::_icePatchObjectPtr(C1Ptr& handle, const ::Ice::ObjectPtr& v)
{
    handle = C1Ptr::dynamicCast(v);
    if(v && !handle)
    {
        IceInternal::Ex::throwUOE(C1::ice_staticId(), v);
    }
}
/// \endcond

LocalTest::CB1::~CB1()
{
}

/// \cond INTERNAL
::Ice::Object* LocalTest::upCast(CB1* p) { return p; }

/// \endcond

#if defined(_MSC_VER) && (_MSC_VER >= 1900)
#   pragma warning(push)
#   pragma warning(disable:4589)
#endif
::Ice::ObjectPtr
LocalTest::CB1::ice_clone() const
{
    ::Ice::Object* p = new CB1(*this);
    return p;
}
#if defined(_MSC_VER) && (_MSC_VER >= 1900)
#   pragma warning(pop)
#endif

namespace
{
const ::std::string iceC_LocalTest_CB1_ids[2] =
{
    "::Ice::Object",
    "::LocalTest::CB1"
};

}

bool
LocalTest::CB1::ice_isA(const ::std::string& s, const ::Ice::Current&) const
{
    return ::std::binary_search(iceC_LocalTest_CB1_ids, iceC_LocalTest_CB1_ids + 2, s);
}

::std::vector< ::std::string>
LocalTest::CB1::ice_ids(const ::Ice::Current&) const
{
    return ::std::vector< ::std::string>(&iceC_LocalTest_CB1_ids[0], &iceC_LocalTest_CB1_ids[2]);
}

const ::std::string&
LocalTest::CB1::ice_id(const ::Ice::Current&) const
{
    return ice_staticId();
}

const ::std::string&
LocalTest::CB1::ice_staticId()
{
#ifdef ICE_HAS_THREAD_SAFE_LOCAL_STATIC
    static const ::std::string typeId = "::LocalTest::CB1";
    return typeId;
#else
    return iceC_LocalTest_CB1_ids[1];
#endif
}

void
LocalTest::CB1::_iceGcVisitMembers(::IceInternal::GCVisitor& v_)
{
    if(s1.c1)
    {
        if((::LocalTest::upCast(s1.c1.get())->_iceGcVisit(v_)))
        {
            s1.c1 = 0;
        }
    }
}

/// \cond STREAM
void
LocalTest::CB1::_iceWriteImpl(::Ice::OutputStream* ostr) const
{
    ostr->startSlice(ice_staticId(), -1, true);
    ::Ice::StreamWriter< CB1, ::Ice::OutputStream>::write(ostr, *this);
    ostr->endSlice();
}

void
LocalTest::CB1::_iceReadImpl(::Ice::InputStream* istr)
{
    istr->startSlice();
    ::Ice::StreamReader< CB1, ::Ice::InputStream>::read(istr, *this);
    istr->endSlice();
}
/// \endcond

namespace
{
const ::IceInternal::DefaultValueFactoryInit< ::LocalTest::CB1> iceC_LocalTest_CB1_init("::LocalTest::CB1");
}

::Ice::ValueFactoryPtr
LocalTest::CB1::ice_factory()
{
    return ::IceInternal::factoryTable->getValueFactory(::LocalTest::CB1::ice_staticId());
}

/// \cond INTERNAL
void
LocalTest::_icePatchObjectPtr(CB1Ptr& handle, const ::Ice::ObjectPtr& v)
{
    handle = CB1Ptr::dynamicCast(v);
    if(v && !handle)
    {
        IceInternal::Ex::throwUOE(CB1::ice_staticId(), v);
    }
}
/// \endcond

LocalTest::CB2::~CB2()
{
}

/// \cond INTERNAL
::Ice::Object* LocalTest::upCast(CB2* p) { return p; }

/// \endcond

#if defined(_MSC_VER) && (_MSC_VER >= 1900)
#   pragma warning(push)
#   pragma warning(disable:4589)
#endif
::Ice::ObjectPtr
LocalTest::CB2::ice_clone() const
{
    ::Ice::Object* p = new CB2(*this);
    return p;
}
#if defined(_MSC_VER) && (_MSC_VER >= 1900)
#   pragma warning(pop)
#endif

namespace
{
const ::std::string iceC_LocalTest_CB2_ids[2] =
{
    "::Ice::Object",
    "::LocalTest::CB2"
};

}

bool
LocalTest::CB2::ice_isA(const ::std::string& s, const ::Ice::Current&) const
{
    return ::std::binary_search(iceC_LocalTest_CB2_ids, iceC_LocalTest_CB2_ids + 2, s);
}

::std::vector< ::std::string>
LocalTest::CB2::ice_ids(const ::Ice::Current&) const
{
    return ::std::vector< ::std::string>(&iceC_LocalTest_CB2_ids[0], &iceC_LocalTest_CB2_ids[2]);
}

const ::std::string&
LocalTest::CB2::ice_id(const ::Ice::Current&) const
{
    return ice_staticId();
}

const ::std::string&
LocalTest::CB2::ice_staticId()
{
#ifdef ICE_HAS_THREAD_SAFE_LOCAL_STATIC
    static const ::std::string typeId = "::LocalTest::CB2";
    return typeId;
#else
    return iceC_LocalTest_CB2_ids[1];
#endif
}

void
LocalTest::CB2::_iceGcVisitMembers(::IceInternal::GCVisitor& v_)
{
    {
        for(::LocalTest::C1Seq::iterator _i0 = c1seq.begin(); _i0 != c1seq.end(); ++_i0)
        {
            if((*_i0))
            {
                if((::LocalTest::upCast((*_i0).get())->_iceGcVisit(v_)))
                {
                    (*_i0) = 0;
                }
            }
        }
    }
}

/// \cond STREAM
void
LocalTest::CB2::_iceWriteImpl(::Ice::OutputStream* ostr) const
{
    ostr->startSlice(ice_staticId(), -1, true);
    ::Ice::StreamWriter< CB2, ::Ice::OutputStream>::write(ostr, *this);
    ostr->endSlice();
}

void
LocalTest::CB2::_iceReadImpl(::Ice::InputStream* istr)
{
    istr->startSlice();
    ::Ice::StreamReader< CB2, ::Ice::InputStream>::read(istr, *this);
    istr->endSlice();
}
/// \endcond

namespace
{
const ::IceInternal::DefaultValueFactoryInit< ::LocalTest::CB2> iceC_LocalTest_CB2_init("::LocalTest::CB2");
}

::Ice::ValueFactoryPtr
LocalTest::CB2::ice_factory()
{
    return ::IceInternal::factoryTable->getValueFactory(::LocalTest::CB2::ice_staticId());
}

/// \cond INTERNAL
void
LocalTest::_icePatchObjectPtr(CB2Ptr& handle, const ::Ice::ObjectPtr& v)
{
    handle = CB2Ptr::dynamicCast(v);
    if(v && !handle)
    {
        IceInternal::Ex::throwUOE(CB2::ice_staticId(), v);
    }
}
/// \endcond

LocalTest::CB3::~CB3()
{
}

/// \cond INTERNAL
::Ice::Object* LocalTest::upCast(CB3* p) { return p; }

/// \endcond

#if defined(_MSC_VER) && (_MSC_VER >= 1900)
#   pragma warning(push)
#   pragma warning(disable:4589)
#endif
::Ice::ObjectPtr
LocalTest::CB3::ice_clone() const
{
    ::Ice::Object* p = new CB3(*this);
    return p;
}
#if defined(_MSC_VER) && (_MSC_VER >= 1900)
#   pragma warning(pop)
#endif

namespace
{
const ::std::string iceC_LocalTest_CB3_ids[2] =
{
    "::Ice::Object",
    "::LocalTest::CB3"
};

}

bool
LocalTest::CB3::ice_isA(const ::std::string& s, const ::Ice::Current&) const
{
    return ::std::binary_search(iceC_LocalTest_CB3_ids, iceC_LocalTest_CB3_ids + 2, s);
}

::std::vector< ::std::string>
LocalTest::CB3::ice_ids(const ::Ice::Current&) const
{
    return ::std::vector< ::std::string>(&iceC_LocalTest_CB3_ids[0], &iceC_LocalTest_CB3_ids[2]);
}

const ::std::string&
LocalTest::CB3::ice_id(const ::Ice::Current&) const
{
    return ice_staticId();
}

const ::std::string&
LocalTest::CB3::ice_staticId()
{
#ifdef ICE_HAS_THREAD_SAFE_LOCAL_STATIC
    static const ::std::string typeId = "::LocalTest::CB3";
    return typeId;
#else
    return iceC_LocalTest_CB3_ids[1];
#endif
}

void
LocalTest::CB3::_iceGcVisitMembers(::IceInternal::GCVisitor& v_)
{
    {
        for(::LocalTest::S1Seq::iterator _i0 = s1seq.begin(); _i0 != s1seq.end(); ++_i0)
        {
            if((*_i0).c1)
            {
                if((::LocalTest::upCast((*_i0).c1.get())->_iceGcVisit(v_)))
                {
                    (*_i0).c1 = 0;
                }
            }
        }
    }
}

/// \cond STREAM
void
LocalTest::CB3::_iceWriteImpl(::Ice::OutputStream* ostr) const
{
    ostr->startSlice(ice_staticId(), -1, true);
    ::Ice::StreamWriter< CB3, ::Ice::OutputStream>::write(ostr, *this);
    ostr->endSlice();
}

void
LocalTest::CB3::_iceReadImpl(::Ice::InputStream* istr)
{
    istr->startSlice();
    ::Ice::StreamReader< CB3, ::Ice::InputStream>::read(istr, *this);
    istr->endSlice();
}
/// \endcond

namespace
{
const ::IceInternal::DefaultValueFactoryInit< ::LocalTest::CB3> iceC_LocalTest_CB3_init("::LocalTest::CB3");
}

::Ice::ValueFactoryPtr
LocalTest::CB3::ice_factory()
{
    return ::IceInternal::factoryTable->getValueFactory(::LocalTest::CB3::ice_staticId());
}

/// \cond INTERNAL
void
LocalTest::_icePatchObjectPtr(CB3Ptr& handle, const ::Ice::ObjectPtr& v)
{
    handle = CB3Ptr::dynamicCast(v);
    if(v && !handle)
    {
        IceInternal::Ex::throwUOE(CB3::ice_staticId(), v);
    }
}
/// \endcond

LocalTest::CB4::~CB4()
{
}

/// \cond INTERNAL
::Ice::Object* LocalTest::upCast(CB4* p) { return p; }

/// \endcond

#if defined(_MSC_VER) && (_MSC_VER >= 1900)
#   pragma warning(push)
#   pragma warning(disable:4589)
#endif
::Ice::ObjectPtr
LocalTest::CB4::ice_clone() const
{
    ::Ice::Object* p = new CB4(*this);
    return p;
}
#if defined(_MSC_VER) && (_MSC_VER >= 1900)
#   pragma warning(pop)
#endif

namespace
{
const ::std::string iceC_LocalTest_CB4_ids[2] =
{
    "::Ice::Object",
    "::LocalTest::CB4"
};

}

bool
LocalTest::CB4::ice_isA(const ::std::string& s, const ::Ice::Current&) const
{
    return ::std::binary_search(iceC_LocalTest_CB4_ids, iceC_LocalTest_CB4_ids + 2, s);
}

::std::vector< ::std::string>
LocalTest::CB4::ice_ids(const ::Ice::Current&) const
{
    return ::std::vector< ::std::string>(&iceC_LocalTest_CB4_ids[0], &iceC_LocalTest_CB4_ids[2]);
}

const ::std::string&
LocalTest::CB4::ice_id(const ::Ice::Current&) const
{
    return ice_staticId();
}

const ::std::string&
LocalTest::CB4::ice_staticId()
{
#ifdef ICE_HAS_THREAD_SAFE_LOCAL_STATIC
    static const ::std::string typeId = "::LocalTest::CB4";
    return typeId;
#else
    return iceC_LocalTest_CB4_ids[1];
#endif
}

void
LocalTest::CB4::_iceGcVisitMembers(::IceInternal::GCVisitor& v_)
{
    {
        for(::LocalTest::C1Dict::iterator _i0 = c1dict.begin(); _i0 != c1dict.end(); ++_i0)
        {
            if((*_i0).second)
            {
                if((::LocalTest::upCast((*_i0).second.get())->_iceGcVisit(v_)))
                {
                    (*_i0).second = 0;
                }
            }
        }
    }
}

/// \cond STREAM
void
LocalTest::CB4::_iceWriteImpl(::Ice::OutputStream* ostr) const
{
    ostr->startSlice(ice_staticId(), -1, true);
    ::Ice::StreamWriter< CB4, ::Ice::OutputStream>::write(ostr, *this);
    ostr->endSlice();
}

void
LocalTest::CB4::_iceReadImpl(::Ice::InputStream* istr)
{
    istr->startSlice();
    ::Ice::StreamReader< CB4, ::Ice::InputStream>::read(istr, *this);
    istr->endSlice();
}
/// \endcond

namespace
{
const ::IceInternal::DefaultValueFactoryInit< ::LocalTest::CB4> iceC_LocalTest_CB4_init("::LocalTest::CB4");
}

::Ice::ValueFactoryPtr
LocalTest::CB4::ice_factory()
{
    return ::IceInternal::factoryTable->getValueFactory(::LocalTest::CB4::ice_staticId());
}

/// \cond INTERNAL
void
LocalTest::_icePatchObjectPtr(CB4Ptr& handle, const ::Ice::ObjectPtr& v)
{
    handle = CB4Ptr::dynamicCast(v);
    if(v && !handle)
    {
        IceInternal::Ex::throwUOE(CB4::ice_staticId(), v);
    }
}
/// \endcond

LocalTest::CB5::~CB5()
{
}

/// \cond INTERNAL
::Ice::Object* LocalTest::upCast(CB5* p) { return p; }

/// \endcond

#if defined(_MSC_VER) && (_MSC_VER >= 1900)
#   pragma warning(push)
#   pragma warning(disable:4589)
#endif
::Ice::ObjectPtr
LocalTest::CB5::ice_clone() const
{
    ::Ice::Object* p = new CB5(*this);
    return p;
}
#if defined(_MSC_VER) && (_MSC_VER >= 1900)
#   pragma warning(pop)
#endif

namespace
{
const ::std::string iceC_LocalTest_CB5_ids[2] =
{
    "::Ice::Object",
    "::LocalTest::CB5"
};

}

bool
LocalTest::CB5::ice_isA(const ::std::string& s, const ::Ice::Current&) const
{
    return ::std::binary_search(iceC_LocalTest_CB5_ids, iceC_LocalTest_CB5_ids + 2, s);
}

::std::vector< ::std::string>
LocalTest::CB5::ice_ids(const ::Ice::Current&) const
{
    return ::std::vector< ::std::string>(&iceC_LocalTest_CB5_ids[0], &iceC_LocalTest_CB5_ids[2]);
}

const ::std::string&
LocalTest::CB5::ice_id(const ::Ice::Current&) const
{
    return ice_staticId();
}

const ::std::string&
LocalTest::CB5::ice_staticId()
{
#ifdef ICE_HAS_THREAD_SAFE_LOCAL_STATIC
    static const ::std::string typeId = "::LocalTest::CB5";
    return typeId;
#else
    return iceC_LocalTest_CB5_ids[1];
#endif
}

void
LocalTest::CB5::_iceGcVisitMembers(::IceInternal::GCVisitor& v_)
{
    {
        for(::LocalTest::S1Dict::iterator _i0 = s1dict.begin(); _i0 != s1dict.end(); ++_i0)
        {
            if((*_i0).second.c1)
            {
                if((::LocalTest::upCast((*_i0).second.c1.get())->_iceGcVisit(v_)))
                {
                    (*_i0).second.c1 = 0;
                }
            }
        }
    }
}

/// \cond STREAM
void
LocalTest::CB5::_iceWriteImpl(::Ice::OutputStream* ostr) const
{
    ostr->startSlice(ice_staticId(), -1, true);
    ::Ice::StreamWriter< CB5, ::Ice::OutputStream>::write(ostr, *this);
    ostr->endSlice();
}

void
LocalTest::CB5::_iceReadImpl(::Ice::InputStream* istr)
{
    istr->startSlice();
    ::Ice::StreamReader< CB5, ::Ice::InputStream>::read(istr, *this);
    istr->endSlice();
}
/// \endcond

namespace
{
const ::IceInternal::DefaultValueFactoryInit< ::LocalTest::CB5> iceC_LocalTest_CB5_init("::LocalTest::CB5");
}

::Ice::ValueFactoryPtr
LocalTest::CB5::ice_factory()
{
    return ::IceInternal::factoryTable->getValueFactory(::LocalTest::CB5::ice_staticId());
}

/// \cond INTERNAL
void
LocalTest::_icePatchObjectPtr(CB5Ptr& handle, const ::Ice::ObjectPtr& v)
{
    handle = CB5Ptr::dynamicCast(v);
    if(v && !handle)
    {
        IceInternal::Ex::throwUOE(CB5::ice_staticId(), v);
    }
}
/// \endcond

LocalTest::CB6::~CB6()
{
}

/// \cond INTERNAL
::Ice::Object* LocalTest::upCast(CB6* p) { return p; }

/// \endcond

#if defined(_MSC_VER) && (_MSC_VER >= 1900)
#   pragma warning(push)
#   pragma warning(disable:4589)
#endif
::Ice::ObjectPtr
LocalTest::CB6::ice_clone() const
{
    ::Ice::Object* p = new CB6(*this);
    return p;
}
#if defined(_MSC_VER) && (_MSC_VER >= 1900)
#   pragma warning(pop)
#endif

namespace
{
const ::std::string iceC_LocalTest_CB6_ids[2] =
{
    "::Ice::Object",
    "::LocalTest::CB6"
};

}

bool
LocalTest::CB6::ice_isA(const ::std::string& s, const ::Ice::Current&) const
{
    return ::std::binary_search(iceC_LocalTest_CB6_ids, iceC_LocalTest_CB6_ids + 2, s);
}

::std::vector< ::std::string>
LocalTest::CB6::ice_ids(const ::Ice::Current&) const
{
    return ::std::vector< ::std::string>(&iceC_LocalTest_CB6_ids[0], &iceC_LocalTest_CB6_ids[2]);
}

const ::std::string&
LocalTest::CB6::ice_id(const ::Ice::Current&) const
{
    return ice_staticId();
}

const ::std::string&
LocalTest::CB6::ice_staticId()
{
#ifdef ICE_HAS_THREAD_SAFE_LOCAL_STATIC
    static const ::std::string typeId = "::LocalTest::CB6";
    return typeId;
#else
    return iceC_LocalTest_CB6_ids[1];
#endif
}

void
LocalTest::CB6::_iceGcVisitMembers(::IceInternal::GCVisitor& v_)
{
    {
        for(::LocalTest::C1SeqSeq::iterator _i0 = c1seqseq.begin(); _i0 != c1seqseq.end(); ++_i0)
        {
            {
                for(::LocalTest::C1Seq::iterator _i1 = (*_i0).begin(); _i1 != (*_i0).end(); ++_i1)
                {
                    if((*_i1))
                    {
                        if((::LocalTest::upCast((*_i1).get())->_iceGcVisit(v_)))
                        {
                            (*_i1) = 0;
                        }
                    }
                }
            }
        }
    }
}

/// \cond STREAM
void
LocalTest::CB6::_iceWriteImpl(::Ice::OutputStream* ostr) const
{
    ostr->startSlice(ice_staticId(), -1, true);
    ::Ice::StreamWriter< CB6, ::Ice::OutputStream>::write(ostr, *this);
    ostr->endSlice();
}

void
LocalTest::CB6::_iceReadImpl(::Ice::InputStream* istr)
{
    istr->startSlice();
    ::Ice::StreamReader< CB6, ::Ice::InputStream>::read(istr, *this);
    istr->endSlice();
}
/// \endcond

namespace
{
const ::IceInternal::DefaultValueFactoryInit< ::LocalTest::CB6> iceC_LocalTest_CB6_init("::LocalTest::CB6");
}

::Ice::ValueFactoryPtr
LocalTest::CB6::ice_factory()
{
    return ::IceInternal::factoryTable->getValueFactory(::LocalTest::CB6::ice_staticId());
}

/// \cond INTERNAL
void
LocalTest::_icePatchObjectPtr(CB6Ptr& handle, const ::Ice::ObjectPtr& v)
{
    handle = CB6Ptr::dynamicCast(v);
    if(v && !handle)
    {
        IceInternal::Ex::throwUOE(CB6::ice_staticId(), v);
    }
}
/// \endcond

LocalTest::CB7::~CB7()
{
}

/// \cond INTERNAL
::Ice::Object* LocalTest::upCast(CB7* p) { return p; }

/// \endcond

#if defined(_MSC_VER) && (_MSC_VER >= 1900)
#   pragma warning(push)
#   pragma warning(disable:4589)
#endif
::Ice::ObjectPtr
LocalTest::CB7::ice_clone() const
{
    ::Ice::Object* p = new CB7(*this);
    return p;
}
#if defined(_MSC_VER) && (_MSC_VER >= 1900)
#   pragma warning(pop)
#endif

namespace
{
const ::std::string iceC_LocalTest_CB7_ids[2] =
{
    "::Ice::Object",
    "::LocalTest::CB7"
};

}

bool
LocalTest::CB7::ice_isA(const ::std::string& s, const ::Ice::Current&) const
{
    return ::std::binary_search(iceC_LocalTest_CB7_ids, iceC_LocalTest_CB7_ids + 2, s);
}

::std::vector< ::std::string>
LocalTest::CB7::ice_ids(const ::Ice::Current&) const
{
    return ::std::vector< ::std::string>(&iceC_LocalTest_CB7_ids[0], &iceC_LocalTest_CB7_ids[2]);
}

const ::std::string&
LocalTest::CB7::ice_id(const ::Ice::Current&) const
{
    return ice_staticId();
}

const ::std::string&
LocalTest::CB7::ice_staticId()
{
#ifdef ICE_HAS_THREAD_SAFE_LOCAL_STATIC
    static const ::std::string typeId = "::LocalTest::CB7";
    return typeId;
#else
    return iceC_LocalTest_CB7_ids[1];
#endif
}

void
LocalTest::CB7::_iceGcVisitMembers(::IceInternal::GCVisitor& v_)
{
    {
        for(::LocalTest::S1SeqSeq::iterator _i0 = s1seqseq.begin(); _i0 != s1seqseq.end(); ++_i0)
        {
            {
                for(::LocalTest::S1Seq::iterator _i1 = (*_i0).begin(); _i1 != (*_i0).end(); ++_i1)
                {
                    if((*_i1).c1)
                    {
                        if((::LocalTest::upCast((*_i1).c1.get())->_iceGcVisit(v_)))
                        {
                            (*_i1).c1 = 0;
                        }
                    }
                }
            }
        }
    }
}

/// \cond STREAM
void
LocalTest::CB7::_iceWriteImpl(::Ice::OutputStream* ostr) const
{
    ostr->startSlice(ice_staticId(), -1, true);
    ::Ice::StreamWriter< CB7, ::Ice::OutputStream>::write(ostr, *this);
    ostr->endSlice();
}

void
LocalTest::CB7::_iceReadImpl(::Ice::InputStream* istr)
{
    istr->startSlice();
    ::Ice::StreamReader< CB7, ::Ice::InputStream>::read(istr, *this);
    istr->endSlice();
}
/// \endcond

namespace
{
const ::IceInternal::DefaultValueFactoryInit< ::LocalTest::CB7> iceC_LocalTest_CB7_init("::LocalTest::CB7");
}

::Ice::ValueFactoryPtr
LocalTest::CB7::ice_factory()
{
    return ::IceInternal::factoryTable->getValueFactory(::LocalTest::CB7::ice_staticId());
}

/// \cond INTERNAL
void
LocalTest::_icePatchObjectPtr(CB7Ptr& handle, const ::Ice::ObjectPtr& v)
{
    handle = CB7Ptr::dynamicCast(v);
    if(v && !handle)
    {
        IceInternal::Ex::throwUOE(CB7::ice_staticId(), v);
    }
}
/// \endcond

LocalTest::CB8::~CB8()
{
}

/// \cond INTERNAL
::Ice::Object* LocalTest::upCast(CB8* p) { return p; }

/// \endcond

#if defined(_MSC_VER) && (_MSC_VER >= 1900)
#   pragma warning(push)
#   pragma warning(disable:4589)
#endif
::Ice::ObjectPtr
LocalTest::CB8::ice_clone() const
{
    ::Ice::Object* p = new CB8(*this);
    return p;
}
#if defined(_MSC_VER) && (_MSC_VER >= 1900)
#   pragma warning(pop)
#endif

namespace
{
const ::std::string iceC_LocalTest_CB8_ids[2] =
{
    "::Ice::Object",
    "::LocalTest::CB8"
};

}

bool
LocalTest::CB8::ice_isA(const ::std::string& s, const ::Ice::Current&) const
{
    return ::std::binary_search(iceC_LocalTest_CB8_ids, iceC_LocalTest_CB8_ids + 2, s);
}

::std::vector< ::std::string>
LocalTest::CB8::ice_ids(const ::Ice::Current&) const
{
    return ::std::vector< ::std::string>(&iceC_LocalTest_CB8_ids[0], &iceC_LocalTest_CB8_ids[2]);
}

const ::std::string&
LocalTest::CB8::ice_id(const ::Ice::Current&) const
{
    return ice_staticId();
}

const ::std::string&
LocalTest::CB8::ice_staticId()
{
#ifdef ICE_HAS_THREAD_SAFE_LOCAL_STATIC
    static const ::std::string typeId = "::LocalTest::CB8";
    return typeId;
#else
    return iceC_LocalTest_CB8_ids[1];
#endif
}

void
LocalTest::CB8::_iceGcVisitMembers(::IceInternal::GCVisitor& v_)
{
    if(s1.c1)
    {
        if((::LocalTest::upCast(s1.c1.get())->_iceGcVisit(v_)))
        {
            s1.c1 = 0;
        }
    }
    {
        for(::LocalTest::C1Seq::iterator _i0 = c1seq.begin(); _i0 != c1seq.end(); ++_i0)
        {
            if((*_i0))
            {
                if((::LocalTest::upCast((*_i0).get())->_iceGcVisit(v_)))
                {
                    (*_i0) = 0;
                }
            }
        }
    }
    {
        for(::LocalTest::S1Dict::iterator _i0 = s1dict.begin(); _i0 != s1dict.end(); ++_i0)
        {
            if((*_i0).second.c1)
            {
                if((::LocalTest::upCast((*_i0).second.c1.get())->_iceGcVisit(v_)))
                {
                    (*_i0).second.c1 = 0;
                }
            }
        }
    }
}

/// \cond STREAM
void
LocalTest::CB8::_iceWriteImpl(::Ice::OutputStream* ostr) const
{
    ostr->startSlice(ice_staticId(), -1, true);
    ::Ice::StreamWriter< CB8, ::Ice::OutputStream>::write(ostr, *this);
    ostr->endSlice();
}

void
LocalTest::CB8::_iceReadImpl(::Ice::InputStream* istr)
{
    istr->startSlice();
    ::Ice::StreamReader< CB8, ::Ice::InputStream>::read(istr, *this);
    istr->endSlice();
}
/// \endcond

namespace
{
const ::IceInternal::DefaultValueFactoryInit< ::LocalTest::CB8> iceC_LocalTest_CB8_init("::LocalTest::CB8");
}

::Ice::ValueFactoryPtr
LocalTest::CB8::ice_factory()
{
    return ::IceInternal::factoryTable->getValueFactory(::LocalTest::CB8::ice_staticId());
}

/// \cond INTERNAL
void
LocalTest::_icePatchObjectPtr(CB8Ptr& handle, const ::Ice::ObjectPtr& v)
{
    handle = CB8Ptr::dynamicCast(v);
    if(v && !handle)
    {
        IceInternal::Ex::throwUOE(CB8::ice_staticId(), v);
    }
}
/// \endcond

LocalTest::Opt::~Opt()
{
}

/// \cond INTERNAL
::Ice::Object* LocalTest::upCast(Opt* p) { return p; }

/// \endcond

#if defined(_MSC_VER) && (_MSC_VER >= 1900)
#   pragma warning(push)
#   pragma warning(disable:4589)
#endif
::Ice::ObjectPtr
LocalTest::Opt::ice_clone() const
{
    ::Ice::Object* p = new Opt(*this);
    return p;
}
#if defined(_MSC_VER) && (_MSC_VER >= 1900)
#   pragma warning(pop)
#endif

namespace
{
const ::std::string iceC_LocalTest_Opt_ids[2] =
{
    "::Ice::Object",
    "::LocalTest::Opt"
};

}

bool
LocalTest::Opt::ice_isA(const ::std::string& s, const ::Ice::Current&) const
{
    return ::std::binary_search(iceC_LocalTest_Opt_ids, iceC_LocalTest_Opt_ids + 2, s);
}

::std::vector< ::std::string>
LocalTest::Opt::ice_ids(const ::Ice::Current&) const
{
    return ::std::vector< ::std::string>(&iceC_LocalTest_Opt_ids[0], &iceC_LocalTest_Opt_ids[2]);
}

const ::std::string&
LocalTest::Opt::ice_id(const ::Ice::Current&) const
{
    return ice_staticId();
}

const ::std::string&
LocalTest::Opt::ice_staticId()
{
#ifdef ICE_HAS_THREAD_SAFE_LOCAL_STATIC
    static const ::std::string typeId = "::LocalTest::Opt";
    return typeId;
#else
    return iceC_LocalTest_Opt_ids[1];
#endif
}

void
LocalTest::Opt::_iceGcVisitMembers(::IceInternal::GCVisitor& v_)
{
    if(s1)
    {
        if((*s1).c1)
        {
            if((::LocalTest::upCast((*s1).c1.get())->_iceGcVisit(v_)))
            {
                (*s1).c1 = 0;
            }
        }
    }
    if(c1seq)
    {
        {
            for(::LocalTest::C1Seq::iterator _i0 = (*c1seq).begin(); _i0 != (*c1seq).end(); ++_i0)
            {
                if((*_i0))
                {
                    if((::LocalTest::upCast((*_i0).get())->_iceGcVisit(v_)))
                    {
                        (*_i0) = 0;
                    }
                }
            }
        }
    }
    if(s1dict)
    {
        {
            for(::LocalTest::S1Dict::iterator _i0 = (*s1dict).begin(); _i0 != (*s1dict).end(); ++_i0)
            {
                if((*_i0).second.c1)
                {
                    if((::LocalTest::upCast((*_i0).second.c1.get())->_iceGcVisit(v_)))
                    {
                        (*_i0).second.c1 = 0;
                    }
                }
            }
        }
    }
}

/// \cond STREAM
void
LocalTest::Opt::_iceWriteImpl(::Ice::OutputStream* ostr) const
{
    ostr->startSlice(ice_staticId(), -1, true);
    ::Ice::StreamWriter< Opt, ::Ice::OutputStream>::write(ostr, *this);
    ostr->endSlice();
}

void
LocalTest::Opt::_iceReadImpl(::Ice::InputStream* istr)
{
    istr->startSlice();
    ::Ice::StreamReader< Opt, ::Ice::InputStream>::read(istr, *this);
    istr->endSlice();
}
/// \endcond

namespace
{
const ::IceInternal::DefaultValueFactoryInit< ::LocalTest::Opt> iceC_LocalTest_Opt_init("::LocalTest::Opt");
}

::Ice::ValueFactoryPtr
LocalTest::Opt::ice_factory()
{
    return ::IceInternal::factoryTable->getValueFactory(::LocalTest::Opt::ice_staticId());
}

/// \cond INTERNAL
void
LocalTest::_icePatchObjectPtr(OptPtr& handle, const ::Ice::ObjectPtr& v)
{
    handle = OptPtr::dynamicCast(v);
    if(v && !handle)
    {
        IceInternal::Ex::throwUOE(Opt::ice_staticId(), v);
    }
}
/// \endcond

namespace Ice
{
}

#endif
