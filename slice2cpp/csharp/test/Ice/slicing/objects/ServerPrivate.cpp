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

Test::SBSUnknownDerived::~SBSUnknownDerived()
{
}

::std::string_view
Test::SBSUnknownDerived::ice_staticId()
{
    static constexpr ::std::string_view typeId = "::Test::SBSUnknownDerived";
    return typeId;
}

Test::SUnknown::~SUnknown()
{
}

::std::string_view
Test::SUnknown::ice_staticId()
{
    static constexpr ::std::string_view typeId = "::Test::SUnknown";
    return typeId;
}

Test::D2::~D2()
{
}

::std::string_view
Test::D2::ice_staticId()
{
    static constexpr ::std::string_view typeId = "::Test::D2";
    return typeId;
}

Test::D4::~D4()
{
}

::std::string_view
Test::D4::ice_staticId()
{
    static constexpr ::std::string_view typeId = "::Test::D4";
    return typeId;
}

Test::UnknownDerivedException::~UnknownDerivedException()
{
}

::std::string_view
Test::UnknownDerivedException::ice_staticId()
{
    static constexpr ::std::string_view typeId = "::Test::UnknownDerivedException";
    return typeId;
}

Test::MyClass::~MyClass()
{
}

::std::string_view
Test::MyClass::ice_staticId()
{
    static constexpr ::std::string_view typeId = "::Test::MyClass";
    return typeId;
}

Test::PSUnknown::~PSUnknown()
{
}

::std::string_view
Test::PSUnknown::ice_staticId()
{
    static constexpr ::std::string_view typeId = "::Test::PSUnknown";
    return typeId;
}

Test::PSUnknown2::~PSUnknown2()
{
}

::std::string_view
Test::PSUnknown2::ice_staticId()
{
    static constexpr ::std::string_view typeId = "::Test::PSUnknown2";
    return typeId;
}

Test::PSUnknownException::~PSUnknownException()
{
}

::std::string_view
Test::PSUnknownException::ice_staticId()
{
    static constexpr ::std::string_view typeId = "::Test::PSUnknownException";
    return typeId;
}

/// \cond STREAM
bool
Test::PSUnknownException::_usesClasses() const
{
    return true;
}
/// \endcond
