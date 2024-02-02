//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
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
#   if ICE_INT_VERSION  != 30850
#       error Ice version mismatch: an exact match is required for beta generated code
#   endif
#endif

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
