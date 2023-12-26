//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.7.10
//
// <auto-generated>
//
// Generated from file `ServerPrivate.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

#define ICE_BUILDING_GENERATED_CODE
#include <ServerPrivate.h>
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

const ::IceInternal::DefaultValueFactoryInit<::Test::Empty> iceC_Test_Empty_init("::Test::Empty");

const ::IceInternal::DefaultValueFactoryInit<::Test::AlsoEmpty> iceC_Test_AlsoEmpty_init("::Test::AlsoEmpty");

const ::std::string iceC_Test_UnexpectedObjectExceptionTest_ids[2] =
{
    "::Ice::Object",
    "::Test::UnexpectedObjectExceptionTest"
};
const ::std::string iceC_Test_UnexpectedObjectExceptionTest_ops[] =
{
    "ice_id",
    "ice_ids",
    "ice_isA",
    "ice_ping",
    "op"
};
const ::std::string iceC_Test_UnexpectedObjectExceptionTest_op_name = "op";

const ::IceInternal::DefaultValueFactoryInit<::Test::COneMember> iceC_Test_COneMember_init("::Test::COneMember");

const ::IceInternal::DefaultValueFactoryInit<::Test::CTwoMembers> iceC_Test_CTwoMembers_init("::Test::CTwoMembers");

const ::IceInternal::DefaultUserExceptionFactoryInit<::Test::EOneMember> iceC_Test_EOneMember_init("::Test::EOneMember");

const ::IceInternal::DefaultUserExceptionFactoryInit<::Test::ETwoMembers> iceC_Test_ETwoMembers_init("::Test::ETwoMembers");

}

Test::EOneMember::~EOneMember()
{
}

const ::std::string&
Test::EOneMember::ice_staticId()
{
    static const ::std::string typeId = "::Test::EOneMember";
    return typeId;
}

/// \cond STREAM
bool
Test::EOneMember::_usesClasses() const
{
    return true;
}
/// \endcond

Test::ETwoMembers::~ETwoMembers()
{
}

const ::std::string&
Test::ETwoMembers::ice_staticId()
{
    static const ::std::string typeId = "::Test::ETwoMembers";
    return typeId;
}

/// \cond STREAM
bool
Test::ETwoMembers::_usesClasses() const
{
    return true;
}
/// \endcond

bool
Test::UnexpectedObjectExceptionTest::ice_isA(::std::string s, const ::Ice::Current&) const
{
    return ::std::binary_search(iceC_Test_UnexpectedObjectExceptionTest_ids, iceC_Test_UnexpectedObjectExceptionTest_ids + 2, s);
}

::std::vector<::std::string>
Test::UnexpectedObjectExceptionTest::ice_ids(const ::Ice::Current&) const
{
    return ::std::vector<::std::string>(&iceC_Test_UnexpectedObjectExceptionTest_ids[0], &iceC_Test_UnexpectedObjectExceptionTest_ids[2]);
}

::std::string
Test::UnexpectedObjectExceptionTest::ice_id(const ::Ice::Current&) const
{
    return ice_staticId();
}

const ::std::string&
Test::UnexpectedObjectExceptionTest::ice_staticId()
{
    static const ::std::string typeId = "::Test::UnexpectedObjectExceptionTest";
    return typeId;
}

/// \cond INTERNAL
bool
Test::UnexpectedObjectExceptionTest::_iceD_op(::IceInternal::Incoming& inS, const ::Ice::Current& current)
{
    _iceCheckMode(::Ice::OperationMode::Normal, current.mode);
    inS.readEmptyParams();
    ::std::shared_ptr<AlsoEmpty> ret = this->op(current);
    auto ostr = inS.startWriteParams();
    ostr->writeAll(ret);
    ostr->writePendingValues();
    inS.endWriteParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
Test::UnexpectedObjectExceptionTest::_iceDispatch(::IceInternal::Incoming& in, const ::Ice::Current& current)
{
    ::std::pair<const ::std::string*, const ::std::string*> r = ::std::equal_range(iceC_Test_UnexpectedObjectExceptionTest_ops, iceC_Test_UnexpectedObjectExceptionTest_ops + 5, current.operation);
    if(r.first == r.second)
    {
        throw ::Ice::OperationNotExistException(__FILE__, __LINE__, current.id, current.facet, current.operation);
    }

    switch(r.first - iceC_Test_UnexpectedObjectExceptionTest_ops)
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
        default:
        {
            assert(false);
            throw ::Ice::OperationNotExistException(__FILE__, __LINE__, current.id, current.facet, current.operation);
        }
    }
}
/// \endcond

Test::Empty::~Empty()
{
}

const ::std::string&
Test::Empty::ice_staticId()
{
    static const ::std::string typeId = "::Test::Empty";
    return typeId;
}

Test::AlsoEmpty::~AlsoEmpty()
{
}

const ::std::string&
Test::AlsoEmpty::ice_staticId()
{
    static const ::std::string typeId = "::Test::AlsoEmpty";
    return typeId;
}

Test::COneMember::~COneMember()
{
}

const ::std::string&
Test::COneMember::ice_staticId()
{
    static const ::std::string typeId = "::Test::COneMember";
    return typeId;
}

Test::CTwoMembers::~CTwoMembers()
{
}

const ::std::string&
Test::CTwoMembers::ice_staticId()
{
    static const ::std::string typeId = "::Test::CTwoMembers";
    return typeId;
}

/// \cond INTERNAL
void
Test::UnexpectedObjectExceptionTestPrx::_iceI_op(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<::std::shared_ptr<::Test::AlsoEmpty>>>& outAsync, const ::Ice::Context& context)
{
    _checkTwowayOnly(iceC_Test_UnexpectedObjectExceptionTest_op_name);
    outAsync->invoke(iceC_Test_UnexpectedObjectExceptionTest_op_name, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        nullptr,
        nullptr,
        [](::Ice::InputStream* istr)
        {
            ::std::shared_ptr<AlsoEmpty> ret;
            istr->readAll(ret);
            istr->readPendingValues();
            return ret;
        });
}
/// \endcond

/// \cond INTERNAL
::std::shared_ptr<::Ice::ObjectPrx>
Test::UnexpectedObjectExceptionTestPrx::_newInstance() const
{
    return ::IceInternal::createProxy<UnexpectedObjectExceptionTestPrx>();
}
/// \endcond

const ::std::string&
Test::UnexpectedObjectExceptionTestPrx::ice_staticId()
{
    return UnexpectedObjectExceptionTest::ice_staticId();
}

namespace Ice
{
}

#else // C++98 mapping

namespace
{

const ::std::string iceC_Test_UnexpectedObjectExceptionTest_op_name = "op";

}

namespace
{

const ::IceInternal::DefaultUserExceptionFactoryInit< ::Test::EOneMember> iceC_Test_EOneMember_init("::Test::EOneMember");

}

Test::EOneMember::EOneMember(const EmptyPtr& e) :
    ::Ice::UserException(),
    e(e)
{
}

#ifdef ICE_CPP11_COMPILER
Test::EOneMember::~EOneMember()
{
}
#else
Test::EOneMember::~EOneMember() throw()
{
}
#endif

::std::string
Test::EOneMember::ice_id() const
{
    return "::Test::EOneMember";
}

Test::EOneMember*
Test::EOneMember::ice_clone() const
{
    return new EOneMember(*this);
}

void
Test::EOneMember::ice_throw() const
{
    throw *this;
}

bool
Test::EOneMember::_usesClasses() const
{
    return true;
}

/// \cond STREAM
void
Test::EOneMember::_writeImpl(::Ice::OutputStream* ostr) const
{
    ostr->startSlice("::Test::EOneMember", -1, true);
    ::Ice::StreamWriter< EOneMember, ::Ice::OutputStream>::write(ostr, *this);
    ostr->endSlice();
}

void
Test::EOneMember::_readImpl(::Ice::InputStream* istr)
{
    istr->startSlice();
    ::Ice::StreamReader< EOneMember, ::Ice::InputStream>::read(istr, *this);
    istr->endSlice();
}
/// \endcond

namespace
{

const ::IceInternal::DefaultUserExceptionFactoryInit< ::Test::ETwoMembers> iceC_Test_ETwoMembers_init("::Test::ETwoMembers");

}

Test::ETwoMembers::ETwoMembers(const EmptyPtr& e1, const EmptyPtr& e2) :
    ::Ice::UserException(),
    e1(e1),
    e2(e2)
{
}

#ifdef ICE_CPP11_COMPILER
Test::ETwoMembers::~ETwoMembers()
{
}
#else
Test::ETwoMembers::~ETwoMembers() throw()
{
}
#endif

::std::string
Test::ETwoMembers::ice_id() const
{
    return "::Test::ETwoMembers";
}

Test::ETwoMembers*
Test::ETwoMembers::ice_clone() const
{
    return new ETwoMembers(*this);
}

void
Test::ETwoMembers::ice_throw() const
{
    throw *this;
}

bool
Test::ETwoMembers::_usesClasses() const
{
    return true;
}

/// \cond STREAM
void
Test::ETwoMembers::_writeImpl(::Ice::OutputStream* ostr) const
{
    ostr->startSlice("::Test::ETwoMembers", -1, true);
    ::Ice::StreamWriter< ETwoMembers, ::Ice::OutputStream>::write(ostr, *this);
    ostr->endSlice();
}

void
Test::ETwoMembers::_readImpl(::Ice::InputStream* istr)
{
    istr->startSlice();
    ::Ice::StreamReader< ETwoMembers, ::Ice::InputStream>::read(istr, *this);
    istr->endSlice();
}
/// \endcond

/// \cond INTERNAL
::IceProxy::Ice::Object* ::IceProxy::Test::upCast(Empty* p) { return p; }

void
::IceProxy::Test::_readProxy(::Ice::InputStream* istr, ::IceInternal::ProxyHandle< Empty>& v)
{
    ::Ice::ObjectPrx proxy;
    istr->read(proxy);
    if(!proxy)
    {
        v = 0;
    }
    else
    {
        v = new Empty;
        v->_copyFrom(proxy);
    }
}
/// \endcond

/// \cond INTERNAL
::IceProxy::Ice::Object*
IceProxy::Test::Empty::_newInstance() const
{
    return new Empty;
}
/// \endcond

const ::std::string&
IceProxy::Test::Empty::ice_staticId()
{
    return ::Test::Empty::ice_staticId();
}

/// \cond INTERNAL
::IceProxy::Ice::Object* ::IceProxy::Test::upCast(AlsoEmpty* p) { return p; }

void
::IceProxy::Test::_readProxy(::Ice::InputStream* istr, ::IceInternal::ProxyHandle< AlsoEmpty>& v)
{
    ::Ice::ObjectPrx proxy;
    istr->read(proxy);
    if(!proxy)
    {
        v = 0;
    }
    else
    {
        v = new AlsoEmpty;
        v->_copyFrom(proxy);
    }
}
/// \endcond

/// \cond INTERNAL
::IceProxy::Ice::Object*
IceProxy::Test::AlsoEmpty::_newInstance() const
{
    return new AlsoEmpty;
}
/// \endcond

const ::std::string&
IceProxy::Test::AlsoEmpty::ice_staticId()
{
    return ::Test::AlsoEmpty::ice_staticId();
}

/// \cond INTERNAL
::IceProxy::Ice::Object* ::IceProxy::Test::upCast(UnexpectedObjectExceptionTest* p) { return p; }

void
::IceProxy::Test::_readProxy(::Ice::InputStream* istr, ::IceInternal::ProxyHandle< UnexpectedObjectExceptionTest>& v)
{
    ::Ice::ObjectPrx proxy;
    istr->read(proxy);
    if(!proxy)
    {
        v = 0;
    }
    else
    {
        v = new UnexpectedObjectExceptionTest;
        v->_copyFrom(proxy);
    }
}
/// \endcond

::Ice::AsyncResultPtr
IceProxy::Test::UnexpectedObjectExceptionTest::_iceI_begin_op(const ::Ice::Context& context, const ::IceInternal::CallbackBasePtr& del, const ::Ice::LocalObjectPtr& cookie, bool sync)
{
    _checkTwowayOnly(iceC_Test_UnexpectedObjectExceptionTest_op_name, sync);
    ::IceInternal::OutgoingAsyncPtr result = new ::IceInternal::CallbackOutgoing(this, iceC_Test_UnexpectedObjectExceptionTest_op_name, del, cookie, sync);
    try
    {
        result->prepare(iceC_Test_UnexpectedObjectExceptionTest_op_name, ::Ice::Normal, context);
        result->writeEmptyParams();
        result->invoke(iceC_Test_UnexpectedObjectExceptionTest_op_name);
    }
    catch(const ::Ice::Exception& ex)
    {
        result->abort(ex);
    }
    return result;
}

::Test::AlsoEmptyPtr
IceProxy::Test::UnexpectedObjectExceptionTest::end_op(const ::Ice::AsyncResultPtr& result)
{
    ::Ice::AsyncResult::_check(result, this, iceC_Test_UnexpectedObjectExceptionTest_op_name);
    ::Test::AlsoEmptyPtr ret;
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
    istr->readPendingValues();
    result->_endReadParams();
    return ret;
}

/// \cond INTERNAL
::IceProxy::Ice::Object*
IceProxy::Test::UnexpectedObjectExceptionTest::_newInstance() const
{
    return new UnexpectedObjectExceptionTest;
}
/// \endcond

const ::std::string&
IceProxy::Test::UnexpectedObjectExceptionTest::ice_staticId()
{
    return ::Test::UnexpectedObjectExceptionTest::ice_staticId();
}

/// \cond INTERNAL
::IceProxy::Ice::Object* ::IceProxy::Test::upCast(COneMember* p) { return p; }

void
::IceProxy::Test::_readProxy(::Ice::InputStream* istr, ::IceInternal::ProxyHandle< COneMember>& v)
{
    ::Ice::ObjectPrx proxy;
    istr->read(proxy);
    if(!proxy)
    {
        v = 0;
    }
    else
    {
        v = new COneMember;
        v->_copyFrom(proxy);
    }
}
/// \endcond

/// \cond INTERNAL
::IceProxy::Ice::Object*
IceProxy::Test::COneMember::_newInstance() const
{
    return new COneMember;
}
/// \endcond

const ::std::string&
IceProxy::Test::COneMember::ice_staticId()
{
    return ::Test::COneMember::ice_staticId();
}

/// \cond INTERNAL
::IceProxy::Ice::Object* ::IceProxy::Test::upCast(CTwoMembers* p) { return p; }

void
::IceProxy::Test::_readProxy(::Ice::InputStream* istr, ::IceInternal::ProxyHandle< CTwoMembers>& v)
{
    ::Ice::ObjectPrx proxy;
    istr->read(proxy);
    if(!proxy)
    {
        v = 0;
    }
    else
    {
        v = new CTwoMembers;
        v->_copyFrom(proxy);
    }
}
/// \endcond

/// \cond INTERNAL
::IceProxy::Ice::Object*
IceProxy::Test::CTwoMembers::_newInstance() const
{
    return new CTwoMembers;
}
/// \endcond

const ::std::string&
IceProxy::Test::CTwoMembers::ice_staticId()
{
    return ::Test::CTwoMembers::ice_staticId();
}

Test::Empty::~Empty()
{
}

/// \cond INTERNAL
::Ice::Object* Test::upCast(Empty* p) { return p; }

/// \endcond
::Ice::ObjectPtr
Test::Empty::ice_clone() const
{
    ::Ice::Object* p = new Empty(*this);
    return p;
}

namespace
{
const ::std::string iceC_Test_Empty_ids[2] =
{
    "::Ice::Object",
    "::Test::Empty"
};

}

bool
Test::Empty::ice_isA(const ::std::string& s, const ::Ice::Current&) const
{
    return ::std::binary_search(iceC_Test_Empty_ids, iceC_Test_Empty_ids + 2, s);
}

::std::vector< ::std::string>
Test::Empty::ice_ids(const ::Ice::Current&) const
{
    return ::std::vector< ::std::string>(&iceC_Test_Empty_ids[0], &iceC_Test_Empty_ids[2]);
}

const ::std::string&
Test::Empty::ice_id(const ::Ice::Current&) const
{
    return ice_staticId();
}

const ::std::string&
Test::Empty::ice_staticId()
{
    static const ::std::string typeId = "::Test::Empty";
    return typeId;
}

/// \cond STREAM
void
Test::Empty::_iceWriteImpl(::Ice::OutputStream* ostr) const
{
    ostr->startSlice(ice_staticId(), -1, true);
    ::Ice::StreamWriter< Empty, ::Ice::OutputStream>::write(ostr, *this);
    ostr->endSlice();
}

void
Test::Empty::_iceReadImpl(::Ice::InputStream* istr)
{
    istr->startSlice();
    ::Ice::StreamReader< Empty, ::Ice::InputStream>::read(istr, *this);
    istr->endSlice();
}
/// \endcond

namespace
{
const ::IceInternal::DefaultValueFactoryInit< ::Test::Empty> iceC_Test_Empty_init("::Test::Empty");
}

::Ice::ValueFactoryPtr
Test::Empty::ice_factory()
{
    return ::IceInternal::factoryTable->getValueFactory(::Test::Empty::ice_staticId());
}

/// \cond INTERNAL
void
Test::_icePatchObjectPtr(EmptyPtr& handle, const ::Ice::ObjectPtr& v)
{
    handle = EmptyPtr::dynamicCast(v);
    if(v && !handle)
    {
        IceInternal::Ex::throwUOE(Empty::ice_staticId(), v);
    }
}
/// \endcond

Test::AlsoEmpty::~AlsoEmpty()
{
}

/// \cond INTERNAL
::Ice::Object* Test::upCast(AlsoEmpty* p) { return p; }

/// \endcond
::Ice::ObjectPtr
Test::AlsoEmpty::ice_clone() const
{
    ::Ice::Object* p = new AlsoEmpty(*this);
    return p;
}

namespace
{
const ::std::string iceC_Test_AlsoEmpty_ids[2] =
{
    "::Ice::Object",
    "::Test::AlsoEmpty"
};

}

bool
Test::AlsoEmpty::ice_isA(const ::std::string& s, const ::Ice::Current&) const
{
    return ::std::binary_search(iceC_Test_AlsoEmpty_ids, iceC_Test_AlsoEmpty_ids + 2, s);
}

::std::vector< ::std::string>
Test::AlsoEmpty::ice_ids(const ::Ice::Current&) const
{
    return ::std::vector< ::std::string>(&iceC_Test_AlsoEmpty_ids[0], &iceC_Test_AlsoEmpty_ids[2]);
}

const ::std::string&
Test::AlsoEmpty::ice_id(const ::Ice::Current&) const
{
    return ice_staticId();
}

const ::std::string&
Test::AlsoEmpty::ice_staticId()
{
    static const ::std::string typeId = "::Test::AlsoEmpty";
    return typeId;
}

/// \cond STREAM
void
Test::AlsoEmpty::_iceWriteImpl(::Ice::OutputStream* ostr) const
{
    ostr->startSlice(ice_staticId(), -1, true);
    ::Ice::StreamWriter< AlsoEmpty, ::Ice::OutputStream>::write(ostr, *this);
    ostr->endSlice();
}

void
Test::AlsoEmpty::_iceReadImpl(::Ice::InputStream* istr)
{
    istr->startSlice();
    ::Ice::StreamReader< AlsoEmpty, ::Ice::InputStream>::read(istr, *this);
    istr->endSlice();
}
/// \endcond

namespace
{
const ::IceInternal::DefaultValueFactoryInit< ::Test::AlsoEmpty> iceC_Test_AlsoEmpty_init("::Test::AlsoEmpty");
}

::Ice::ValueFactoryPtr
Test::AlsoEmpty::ice_factory()
{
    return ::IceInternal::factoryTable->getValueFactory(::Test::AlsoEmpty::ice_staticId());
}

/// \cond INTERNAL
void
Test::_icePatchObjectPtr(AlsoEmptyPtr& handle, const ::Ice::ObjectPtr& v)
{
    handle = AlsoEmptyPtr::dynamicCast(v);
    if(v && !handle)
    {
        IceInternal::Ex::throwUOE(AlsoEmpty::ice_staticId(), v);
    }
}
/// \endcond

Test::UnexpectedObjectExceptionTest::~UnexpectedObjectExceptionTest()
{
}

/// \cond INTERNAL
::Ice::Object* Test::upCast(UnexpectedObjectExceptionTest* p) { return p; }

/// \endcond

namespace
{
const ::std::string iceC_Test_UnexpectedObjectExceptionTest_ids[2] =
{
    "::Ice::Object",
    "::Test::UnexpectedObjectExceptionTest"
};

}

bool
Test::UnexpectedObjectExceptionTest::ice_isA(const ::std::string& s, const ::Ice::Current&) const
{
    return ::std::binary_search(iceC_Test_UnexpectedObjectExceptionTest_ids, iceC_Test_UnexpectedObjectExceptionTest_ids + 2, s);
}

::std::vector< ::std::string>
Test::UnexpectedObjectExceptionTest::ice_ids(const ::Ice::Current&) const
{
    return ::std::vector< ::std::string>(&iceC_Test_UnexpectedObjectExceptionTest_ids[0], &iceC_Test_UnexpectedObjectExceptionTest_ids[2]);
}

const ::std::string&
Test::UnexpectedObjectExceptionTest::ice_id(const ::Ice::Current&) const
{
    return ice_staticId();
}

const ::std::string&
Test::UnexpectedObjectExceptionTest::ice_staticId()
{
    static const ::std::string typeId = "::Test::UnexpectedObjectExceptionTest";
    return typeId;
}

/// \cond INTERNAL
bool
Test::UnexpectedObjectExceptionTest::_iceD_op(::IceInternal::Incoming& inS, const ::Ice::Current& current)
{
    _iceCheckMode(::Ice::Normal, current.mode);
    inS.readEmptyParams();
    AlsoEmptyPtr ret = this->op(current);
    ::Ice::OutputStream* ostr = inS.startWriteParams();
    ostr->write(ret);
    ostr->writePendingValues();
    inS.endWriteParams();
    return true;
}
/// \endcond

namespace
{
const ::std::string iceC_Test_UnexpectedObjectExceptionTest_all[] =
{
    "ice_id",
    "ice_ids",
    "ice_isA",
    "ice_ping",
    "op"
};

}

/// \cond INTERNAL
bool
Test::UnexpectedObjectExceptionTest::_iceDispatch(::IceInternal::Incoming& in, const ::Ice::Current& current)
{
    ::std::pair<const ::std::string*, const ::std::string*> r = ::std::equal_range(iceC_Test_UnexpectedObjectExceptionTest_all, iceC_Test_UnexpectedObjectExceptionTest_all + 5, current.operation);
    if(r.first == r.second)
    {
        throw ::Ice::OperationNotExistException(__FILE__, __LINE__, current.id, current.facet, current.operation);
    }

    switch(r.first - iceC_Test_UnexpectedObjectExceptionTest_all)
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
Test::UnexpectedObjectExceptionTest::_iceWriteImpl(::Ice::OutputStream* ostr) const
{
    ostr->startSlice(ice_staticId(), -1, true);
    ::Ice::StreamWriter< UnexpectedObjectExceptionTest, ::Ice::OutputStream>::write(ostr, *this);
    ostr->endSlice();
}

void
Test::UnexpectedObjectExceptionTest::_iceReadImpl(::Ice::InputStream* istr)
{
    istr->startSlice();
    ::Ice::StreamReader< UnexpectedObjectExceptionTest, ::Ice::InputStream>::read(istr, *this);
    istr->endSlice();
}
/// \endcond

/// \cond INTERNAL
void
Test::_icePatchObjectPtr(UnexpectedObjectExceptionTestPtr& handle, const ::Ice::ObjectPtr& v)
{
    handle = UnexpectedObjectExceptionTestPtr::dynamicCast(v);
    if(v && !handle)
    {
        IceInternal::Ex::throwUOE(UnexpectedObjectExceptionTest::ice_staticId(), v);
    }
}
/// \endcond

Test::COneMember::~COneMember()
{
}

/// \cond INTERNAL
::Ice::Object* Test::upCast(COneMember* p) { return p; }

/// \endcond

#if defined(_MSC_VER)
#   pragma warning(push)
#   pragma warning(disable:4589)
#endif
::Ice::ObjectPtr
Test::COneMember::ice_clone() const
{
    ::Ice::Object* p = new COneMember(*this);
    return p;
}
#if defined(_MSC_VER)
#   pragma warning(pop)
#endif

namespace
{
const ::std::string iceC_Test_COneMember_ids[2] =
{
    "::Ice::Object",
    "::Test::COneMember"
};

}

bool
Test::COneMember::ice_isA(const ::std::string& s, const ::Ice::Current&) const
{
    return ::std::binary_search(iceC_Test_COneMember_ids, iceC_Test_COneMember_ids + 2, s);
}

::std::vector< ::std::string>
Test::COneMember::ice_ids(const ::Ice::Current&) const
{
    return ::std::vector< ::std::string>(&iceC_Test_COneMember_ids[0], &iceC_Test_COneMember_ids[2]);
}

const ::std::string&
Test::COneMember::ice_id(const ::Ice::Current&) const
{
    return ice_staticId();
}

const ::std::string&
Test::COneMember::ice_staticId()
{
    static const ::std::string typeId = "::Test::COneMember";
    return typeId;
}

void
Test::COneMember::_iceGcVisitMembers(::IceInternal::GCVisitor& v_)
{
    if(e)
    {
        if((::Test::upCast(e.get())->_iceGcVisit(v_)))
        {
            e = 0;
        }
    }
}

/// \cond STREAM
void
Test::COneMember::_iceWriteImpl(::Ice::OutputStream* ostr) const
{
    ostr->startSlice(ice_staticId(), -1, true);
    ::Ice::StreamWriter< COneMember, ::Ice::OutputStream>::write(ostr, *this);
    ostr->endSlice();
}

void
Test::COneMember::_iceReadImpl(::Ice::InputStream* istr)
{
    istr->startSlice();
    ::Ice::StreamReader< COneMember, ::Ice::InputStream>::read(istr, *this);
    istr->endSlice();
}
/// \endcond

namespace
{
const ::IceInternal::DefaultValueFactoryInit< ::Test::COneMember> iceC_Test_COneMember_init("::Test::COneMember");
}

::Ice::ValueFactoryPtr
Test::COneMember::ice_factory()
{
    return ::IceInternal::factoryTable->getValueFactory(::Test::COneMember::ice_staticId());
}

/// \cond INTERNAL
void
Test::_icePatchObjectPtr(COneMemberPtr& handle, const ::Ice::ObjectPtr& v)
{
    handle = COneMemberPtr::dynamicCast(v);
    if(v && !handle)
    {
        IceInternal::Ex::throwUOE(COneMember::ice_staticId(), v);
    }
}
/// \endcond

Test::CTwoMembers::~CTwoMembers()
{
}

/// \cond INTERNAL
::Ice::Object* Test::upCast(CTwoMembers* p) { return p; }

/// \endcond

#if defined(_MSC_VER)
#   pragma warning(push)
#   pragma warning(disable:4589)
#endif
::Ice::ObjectPtr
Test::CTwoMembers::ice_clone() const
{
    ::Ice::Object* p = new CTwoMembers(*this);
    return p;
}
#if defined(_MSC_VER)
#   pragma warning(pop)
#endif

namespace
{
const ::std::string iceC_Test_CTwoMembers_ids[2] =
{
    "::Ice::Object",
    "::Test::CTwoMembers"
};

}

bool
Test::CTwoMembers::ice_isA(const ::std::string& s, const ::Ice::Current&) const
{
    return ::std::binary_search(iceC_Test_CTwoMembers_ids, iceC_Test_CTwoMembers_ids + 2, s);
}

::std::vector< ::std::string>
Test::CTwoMembers::ice_ids(const ::Ice::Current&) const
{
    return ::std::vector< ::std::string>(&iceC_Test_CTwoMembers_ids[0], &iceC_Test_CTwoMembers_ids[2]);
}

const ::std::string&
Test::CTwoMembers::ice_id(const ::Ice::Current&) const
{
    return ice_staticId();
}

const ::std::string&
Test::CTwoMembers::ice_staticId()
{
    static const ::std::string typeId = "::Test::CTwoMembers";
    return typeId;
}

void
Test::CTwoMembers::_iceGcVisitMembers(::IceInternal::GCVisitor& v_)
{
    if(e1)
    {
        if((::Test::upCast(e1.get())->_iceGcVisit(v_)))
        {
            e1 = 0;
        }
    }
    if(e2)
    {
        if((::Test::upCast(e2.get())->_iceGcVisit(v_)))
        {
            e2 = 0;
        }
    }
}

/// \cond STREAM
void
Test::CTwoMembers::_iceWriteImpl(::Ice::OutputStream* ostr) const
{
    ostr->startSlice(ice_staticId(), -1, true);
    ::Ice::StreamWriter< CTwoMembers, ::Ice::OutputStream>::write(ostr, *this);
    ostr->endSlice();
}

void
Test::CTwoMembers::_iceReadImpl(::Ice::InputStream* istr)
{
    istr->startSlice();
    ::Ice::StreamReader< CTwoMembers, ::Ice::InputStream>::read(istr, *this);
    istr->endSlice();
}
/// \endcond

namespace
{
const ::IceInternal::DefaultValueFactoryInit< ::Test::CTwoMembers> iceC_Test_CTwoMembers_init("::Test::CTwoMembers");
}

::Ice::ValueFactoryPtr
Test::CTwoMembers::ice_factory()
{
    return ::IceInternal::factoryTable->getValueFactory(::Test::CTwoMembers::ice_staticId());
}

/// \cond INTERNAL
void
Test::_icePatchObjectPtr(CTwoMembersPtr& handle, const ::Ice::ObjectPtr& v)
{
    handle = CTwoMembersPtr::dynamicCast(v);
    if(v && !handle)
    {
        IceInternal::Ex::throwUOE(CTwoMembers::ice_staticId(), v);
    }
}
/// \endcond

namespace Ice
{
}

#endif
