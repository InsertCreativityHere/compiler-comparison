//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
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
#   if ICE_INT_VERSION  != 30850
#       error Ice version mismatch: an exact match is required for beta generated code
#   endif
#endif

namespace
{

const ::IceInternal::DefaultUserExceptionFactoryInit<::Test::BaseException> iceC_Test_BaseException_init("::Test::BaseException");

const ::IceInternal::DefaultUserExceptionFactoryInit<::Test::InvalidPointException> iceC_Test_InvalidPointException_init("::Test::InvalidPointException");

const ::IceInternal::DefaultUserExceptionFactoryInit<::Test::InvalidLengthException> iceC_Test_InvalidLengthException_init("::Test::InvalidLengthException");

const ::IceInternal::DefaultUserExceptionFactoryInit<::Test::OtherException> iceC_Test_OtherException_init("::Test::OtherException");

const ::IceInternal::DefaultValueFactoryInit<::Test::Pen> iceC_Test_Pen_init("::Test::Pen");

}

Test::BaseException::~BaseException()
{
}

const ::std::string&
Test::BaseException::ice_staticId()
{
    static const ::std::string typeId = "::Test::BaseException";
    return typeId;
}

Test::InvalidPointException::~InvalidPointException()
{
}

const ::std::string&
Test::InvalidPointException::ice_staticId()
{
    static const ::std::string typeId = "::Test::InvalidPointException";
    return typeId;
}

Test::InvalidLengthException::~InvalidLengthException()
{
}

const ::std::string&
Test::InvalidLengthException::ice_staticId()
{
    static const ::std::string typeId = "::Test::InvalidLengthException";
    return typeId;
}

Test::OtherException::~OtherException()
{
}

const ::std::string&
Test::OtherException::ice_staticId()
{
    static const ::std::string typeId = "::Test::OtherException";
    return typeId;
}

Test::Pen::~Pen()
{
}

const ::std::string&
Test::Pen::ice_staticId()
{
    static const ::std::string typeId = "::Test::Pen";
    return typeId;
}

namespace Ice
{
}
