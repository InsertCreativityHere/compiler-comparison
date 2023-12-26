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

const ::IceInternal::DefaultValueFactoryInit<::Test::OptionalClass> iceC_Test_OptionalClass_init("::Test::OptionalClass");

const ::IceInternal::DefaultValueFactoryInit<::Test::MyClass> iceC_Test_MyClass_init("::Test::MyClass");

const ::std::string iceC_Test_MyInterface_ids[2] =
{
    "::Ice::Object",
    "::Test::MyInterface"
};
const ::std::string iceC_Test_MyInterface_ops[] =
{
    "ice_id",
    "ice_ids",
    "ice_isA",
    "ice_ping"
};

const ::IceInternal::DefaultUserExceptionFactoryInit<::Test::MyException> iceC_Test_MyException_init("::Test::MyException");

const ::IceInternal::DefaultUserExceptionFactoryInit<::Test::Sub::NestedException> iceC_Test_Sub_NestedException_init("::Test::Sub::NestedException");

const ::IceInternal::DefaultUserExceptionFactoryInit<::Test2::Sub2::NestedException2> iceC_Test2_Sub2_NestedException2_init("::Test2::Sub2::NestedException2");

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

/// \cond STREAM
bool
Test::MyException::_usesClasses() const
{
    return true;
}
/// \endcond

Test::Sub::NestedException::~NestedException()
{
}

const ::std::string&
Test::Sub::NestedException::ice_staticId()
{
    static const ::std::string typeId = "::Test::Sub::NestedException";
    return typeId;
}

Test2::Sub2::NestedException2::~NestedException2()
{
}

const ::std::string&
Test2::Sub2::NestedException2::ice_staticId()
{
    static const ::std::string typeId = "::Test2::Sub2::NestedException2";
    return typeId;
}

bool
Test::MyInterface::ice_isA(::std::string s, const ::Ice::Current&) const
{
    return ::std::binary_search(iceC_Test_MyInterface_ids, iceC_Test_MyInterface_ids + 2, s);
}

::std::vector<::std::string>
Test::MyInterface::ice_ids(const ::Ice::Current&) const
{
    return ::std::vector<::std::string>(&iceC_Test_MyInterface_ids[0], &iceC_Test_MyInterface_ids[2]);
}

::std::string
Test::MyInterface::ice_id(const ::Ice::Current&) const
{
    return ice_staticId();
}

const ::std::string&
Test::MyInterface::ice_staticId()
{
    static const ::std::string typeId = "::Test::MyInterface";
    return typeId;
}

Test::OptionalClass::~OptionalClass()
{
}

const ::std::string&
Test::OptionalClass::ice_staticId()
{
    static const ::std::string typeId = "::Test::OptionalClass";
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

/// \cond INTERNAL
::std::shared_ptr<::Ice::ObjectPrx>
Test::MyInterfacePrx::_newInstance() const
{
    return ::IceInternal::createProxy<MyInterfacePrx>();
}
/// \endcond

const ::std::string&
Test::MyInterfacePrx::ice_staticId()
{
    return MyInterface::ice_staticId();
}

namespace Ice
{
}

namespace Ice
{
}

#else // C++98 mapping

namespace
{

}

namespace
{

const ::IceInternal::DefaultUserExceptionFactoryInit< ::Test::MyException> iceC_Test_MyException_init("::Test::MyException");

}

Test::MyException::MyException(const MyClassPtr& c) :
    ::Ice::UserException(),
    c(c)
{
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

bool
Test::MyException::_usesClasses() const
{
    return true;
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

namespace
{

const ::IceInternal::DefaultUserExceptionFactoryInit< ::Test::Sub::NestedException> iceC_Test_Sub_NestedException_init("::Test::Sub::NestedException");

}

Test::Sub::NestedException::NestedException(const ::std::string& str) :
    ::Ice::UserException(),
    str(str)
{
}

#ifdef ICE_CPP11_COMPILER
Test::Sub::NestedException::~NestedException()
{
}
#else
Test::Sub::NestedException::~NestedException() throw()
{
}
#endif

::std::string
Test::Sub::NestedException::ice_id() const
{
    return "::Test::Sub::NestedException";
}

Test::Sub::NestedException*
Test::Sub::NestedException::ice_clone() const
{
    return new NestedException(*this);
}

void
Test::Sub::NestedException::ice_throw() const
{
    throw *this;
}

/// \cond STREAM
void
Test::Sub::NestedException::_writeImpl(::Ice::OutputStream* ostr) const
{
    ostr->startSlice("::Test::Sub::NestedException", -1, true);
    ::Ice::StreamWriter< NestedException, ::Ice::OutputStream>::write(ostr, *this);
    ostr->endSlice();
}

void
Test::Sub::NestedException::_readImpl(::Ice::InputStream* istr)
{
    istr->startSlice();
    ::Ice::StreamReader< NestedException, ::Ice::InputStream>::read(istr, *this);
    istr->endSlice();
}
/// \endcond

namespace
{

const ::IceInternal::DefaultUserExceptionFactoryInit< ::Test2::Sub2::NestedException2> iceC_Test2_Sub2_NestedException2_init("::Test2::Sub2::NestedException2");

}

Test2::Sub2::NestedException2::NestedException2(const ::std::string& str) :
    ::Ice::UserException(),
    str(str)
{
}

#ifdef ICE_CPP11_COMPILER
Test2::Sub2::NestedException2::~NestedException2()
{
}
#else
Test2::Sub2::NestedException2::~NestedException2() throw()
{
}
#endif

::std::string
Test2::Sub2::NestedException2::ice_id() const
{
    return "::Test2::Sub2::NestedException2";
}

Test2::Sub2::NestedException2*
Test2::Sub2::NestedException2::ice_clone() const
{
    return new NestedException2(*this);
}

void
Test2::Sub2::NestedException2::ice_throw() const
{
    throw *this;
}

/// \cond STREAM
void
Test2::Sub2::NestedException2::_writeImpl(::Ice::OutputStream* ostr) const
{
    ostr->startSlice("::Test2::Sub2::NestedException2", -1, true);
    ::Ice::StreamWriter< NestedException2, ::Ice::OutputStream>::write(ostr, *this);
    ostr->endSlice();
}

void
Test2::Sub2::NestedException2::_readImpl(::Ice::InputStream* istr)
{
    istr->startSlice();
    ::Ice::StreamReader< NestedException2, ::Ice::InputStream>::read(istr, *this);
    istr->endSlice();
}
/// \endcond

/// \cond INTERNAL
::IceProxy::Ice::Object* ::IceProxy::Test::upCast(OptionalClass* p) { return p; }

void
::IceProxy::Test::_readProxy(::Ice::InputStream* istr, ::IceInternal::ProxyHandle< OptionalClass>& v)
{
    ::Ice::ObjectPrx proxy;
    istr->read(proxy);
    if(!proxy)
    {
        v = 0;
    }
    else
    {
        v = new OptionalClass;
        v->_copyFrom(proxy);
    }
}
/// \endcond

/// \cond INTERNAL
::IceProxy::Ice::Object*
IceProxy::Test::OptionalClass::_newInstance() const
{
    return new OptionalClass;
}
/// \endcond

const ::std::string&
IceProxy::Test::OptionalClass::ice_staticId()
{
    return ::Test::OptionalClass::ice_staticId();
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
::IceProxy::Ice::Object* ::IceProxy::Test::upCast(MyInterface* p) { return p; }

void
::IceProxy::Test::_readProxy(::Ice::InputStream* istr, ::IceInternal::ProxyHandle< MyInterface>& v)
{
    ::Ice::ObjectPrx proxy;
    istr->read(proxy);
    if(!proxy)
    {
        v = 0;
    }
    else
    {
        v = new MyInterface;
        v->_copyFrom(proxy);
    }
}
/// \endcond

/// \cond INTERNAL
::IceProxy::Ice::Object*
IceProxy::Test::MyInterface::_newInstance() const
{
    return new MyInterface;
}
/// \endcond

const ::std::string&
IceProxy::Test::MyInterface::ice_staticId()
{
    return ::Test::MyInterface::ice_staticId();
}

Test::OptionalClass::~OptionalClass()
{
}

/// \cond INTERNAL
::Ice::Object* Test::upCast(OptionalClass* p) { return p; }

/// \endcond
::Ice::ObjectPtr
Test::OptionalClass::ice_clone() const
{
    ::Ice::Object* p = new OptionalClass(*this);
    return p;
}

namespace
{
const ::std::string iceC_Test_OptionalClass_ids[2] =
{
    "::Ice::Object",
    "::Test::OptionalClass"
};

}

bool
Test::OptionalClass::ice_isA(const ::std::string& s, const ::Ice::Current&) const
{
    return ::std::binary_search(iceC_Test_OptionalClass_ids, iceC_Test_OptionalClass_ids + 2, s);
}

::std::vector< ::std::string>
Test::OptionalClass::ice_ids(const ::Ice::Current&) const
{
    return ::std::vector< ::std::string>(&iceC_Test_OptionalClass_ids[0], &iceC_Test_OptionalClass_ids[2]);
}

const ::std::string&
Test::OptionalClass::ice_id(const ::Ice::Current&) const
{
    return ice_staticId();
}

const ::std::string&
Test::OptionalClass::ice_staticId()
{
    static const ::std::string typeId = "::Test::OptionalClass";
    return typeId;
}

/// \cond STREAM
void
Test::OptionalClass::_iceWriteImpl(::Ice::OutputStream* ostr) const
{
    ostr->startSlice(ice_staticId(), -1, true);
    ::Ice::StreamWriter< OptionalClass, ::Ice::OutputStream>::write(ostr, *this);
    ostr->endSlice();
}

void
Test::OptionalClass::_iceReadImpl(::Ice::InputStream* istr)
{
    istr->startSlice();
    ::Ice::StreamReader< OptionalClass, ::Ice::InputStream>::read(istr, *this);
    istr->endSlice();
}
/// \endcond

namespace
{
const ::IceInternal::DefaultValueFactoryInit< ::Test::OptionalClass> iceC_Test_OptionalClass_init("::Test::OptionalClass");
}

::Ice::ValueFactoryPtr
Test::OptionalClass::ice_factory()
{
    return ::IceInternal::factoryTable->getValueFactory(::Test::OptionalClass::ice_staticId());
}

/// \cond INTERNAL
void
Test::_icePatchObjectPtr(OptionalClassPtr& handle, const ::Ice::ObjectPtr& v)
{
    handle = OptionalClassPtr::dynamicCast(v);
    if(v && !handle)
    {
        IceInternal::Ex::throwUOE(OptionalClass::ice_staticId(), v);
    }
}
/// \endcond

Test::MyClass::~MyClass()
{
}

/// \cond INTERNAL
::Ice::Object* Test::upCast(MyClass* p) { return p; }

/// \endcond

#if defined(_MSC_VER)
#   pragma warning(push)
#   pragma warning(disable:4589)
#endif
::Ice::ObjectPtr
Test::MyClass::ice_clone() const
{
    ::Ice::Object* p = new MyClass(*this);
    return p;
}
#if defined(_MSC_VER)
#   pragma warning(pop)
#endif

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

void
Test::MyClass::_iceGcVisitMembers(::IceInternal::GCVisitor& v_)
{
    if(c)
    {
        if((::Test::upCast(c.get())->_iceGcVisit(v_)))
        {
            c = 0;
        }
    }
    if(o)
    {
        if((o.get())->_iceGcVisit(v_))
        {
            o = 0;
        }
    }
    {
        for(::Test::MyClassS::iterator _i0 = seq10.begin(); _i0 != seq10.end(); ++_i0)
        {
            if((*_i0))
            {
                if((::Test::upCast((*_i0).get())->_iceGcVisit(v_)))
                {
                    (*_i0) = 0;
                }
            }
        }
    }
    {
        for(::Test::StringMyClassD::iterator _i0 = d.begin(); _i0 != d.end(); ++_i0)
        {
            if((*_i0).second)
            {
                if((::Test::upCast((*_i0).second.get())->_iceGcVisit(v_)))
                {
                    (*_i0).second = 0;
                }
            }
        }
    }
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

Test::MyInterface::~MyInterface()
{
}

/// \cond INTERNAL
::Ice::Object* Test::upCast(MyInterface* p) { return p; }

/// \endcond

namespace
{
const ::std::string iceC_Test_MyInterface_ids[2] =
{
    "::Ice::Object",
    "::Test::MyInterface"
};

}

bool
Test::MyInterface::ice_isA(const ::std::string& s, const ::Ice::Current&) const
{
    return ::std::binary_search(iceC_Test_MyInterface_ids, iceC_Test_MyInterface_ids + 2, s);
}

::std::vector< ::std::string>
Test::MyInterface::ice_ids(const ::Ice::Current&) const
{
    return ::std::vector< ::std::string>(&iceC_Test_MyInterface_ids[0], &iceC_Test_MyInterface_ids[2]);
}

const ::std::string&
Test::MyInterface::ice_id(const ::Ice::Current&) const
{
    return ice_staticId();
}

const ::std::string&
Test::MyInterface::ice_staticId()
{
    static const ::std::string typeId = "::Test::MyInterface";
    return typeId;
}

/// \cond STREAM
void
Test::MyInterface::_iceWriteImpl(::Ice::OutputStream* ostr) const
{
    ostr->startSlice(ice_staticId(), -1, true);
    ::Ice::StreamWriter< MyInterface, ::Ice::OutputStream>::write(ostr, *this);
    ostr->endSlice();
}

void
Test::MyInterface::_iceReadImpl(::Ice::InputStream* istr)
{
    istr->startSlice();
    ::Ice::StreamReader< MyInterface, ::Ice::InputStream>::read(istr, *this);
    istr->endSlice();
}
/// \endcond

/// \cond INTERNAL
void
Test::_icePatchObjectPtr(MyInterfacePtr& handle, const ::Ice::ObjectPtr& v)
{
    handle = MyInterfacePtr::dynamicCast(v);
    if(v && !handle)
    {
        IceInternal::Ex::throwUOE(MyInterface::ice_staticId(), v);
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
