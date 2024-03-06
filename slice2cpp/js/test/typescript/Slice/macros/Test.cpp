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
#include <Ice/OutgoingAsync.h>
#include <Ice/Incoming.h>

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

const ::IceInternal::DefaultValueFactoryInit<::Test::Default> iceC_Test_Default_init("::Test::Default");

const ::IceInternal::DefaultValueFactoryInit<::Test::NoDefault> iceC_Test_NoDefault_init("::Test::NoDefault");

}

Test::Default::~Default()
{
}

::std::string_view
Test::Default::ice_staticId()
{
    static constexpr ::std::string_view typeId = "::Test::Default";
    return typeId;
}

Test::NoDefault::~NoDefault()
{
}

::std::string_view
Test::NoDefault::ice_staticId()
{
    static constexpr ::std::string_view typeId = "::Test::NoDefault";
    return typeId;
}
