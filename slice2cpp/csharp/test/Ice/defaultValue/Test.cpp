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

const ::IceInternal::DefaultValueFactoryInit<::Test::Base> iceC_Test_Base_init("::Test::Base");

const ::IceInternal::DefaultValueFactoryInit<::Test::Derived> iceC_Test_Derived_init("::Test::Derived");

const ::IceInternal::DefaultUserExceptionFactoryInit<::Test::BaseEx> iceC_Test_BaseEx_init("::Test::BaseEx");

const ::IceInternal::DefaultUserExceptionFactoryInit<::Test::DerivedEx> iceC_Test_DerivedEx_init("::Test::DerivedEx");

const ::IceInternal::DefaultValueFactoryInit<::Test::ClassProperty> iceC_Test_ClassProperty_init("::Test::ClassProperty");

const ::IceInternal::DefaultUserExceptionFactoryInit<::Test::ExceptionProperty> iceC_Test_ExceptionProperty_init("::Test::ExceptionProperty");

const ::IceInternal::DefaultUserExceptionFactoryInit<::Test::ExceptionNoDefaultsBase> iceC_Test_ExceptionNoDefaultsBase_init("::Test::ExceptionNoDefaultsBase");

const ::IceInternal::DefaultUserExceptionFactoryInit<::Test::ExceptionNoDefaults> iceC_Test_ExceptionNoDefaults_init("::Test::ExceptionNoDefaults");

const ::IceInternal::DefaultValueFactoryInit<::Test::ClassNoDefaultsBase> iceC_Test_ClassNoDefaultsBase_init("::Test::ClassNoDefaultsBase");

const ::IceInternal::DefaultValueFactoryInit<::Test::ClassNoDefaults> iceC_Test_ClassNoDefaults_init("::Test::ClassNoDefaults");

}

Test::Base::~Base()
{
}

::std::string_view
Test::Base::ice_staticId()
{
    static constexpr ::std::string_view typeId = "::Test::Base";
    return typeId;
}

Test::Derived::~Derived()
{
}

::std::string_view
Test::Derived::ice_staticId()
{
    static constexpr ::std::string_view typeId = "::Test::Derived";
    return typeId;
}

Test::BaseEx::~BaseEx()
{
}

::std::string_view
Test::BaseEx::ice_staticId()
{
    static constexpr ::std::string_view typeId = "::Test::BaseEx";
    return typeId;
}

Test::DerivedEx::~DerivedEx()
{
}

::std::string_view
Test::DerivedEx::ice_staticId()
{
    static constexpr ::std::string_view typeId = "::Test::DerivedEx";
    return typeId;
}

Test::ClassProperty::~ClassProperty()
{
}

::std::string_view
Test::ClassProperty::ice_staticId()
{
    static constexpr ::std::string_view typeId = "::Test::ClassProperty";
    return typeId;
}

Test::ExceptionProperty::~ExceptionProperty()
{
}

::std::string_view
Test::ExceptionProperty::ice_staticId()
{
    static constexpr ::std::string_view typeId = "::Test::ExceptionProperty";
    return typeId;
}

Test::ExceptionNoDefaultsBase::~ExceptionNoDefaultsBase()
{
}

::std::string_view
Test::ExceptionNoDefaultsBase::ice_staticId()
{
    static constexpr ::std::string_view typeId = "::Test::ExceptionNoDefaultsBase";
    return typeId;
}

Test::ExceptionNoDefaults::~ExceptionNoDefaults()
{
}

::std::string_view
Test::ExceptionNoDefaults::ice_staticId()
{
    static constexpr ::std::string_view typeId = "::Test::ExceptionNoDefaults";
    return typeId;
}

Test::ClassNoDefaultsBase::~ClassNoDefaultsBase()
{
}

::std::string_view
Test::ClassNoDefaultsBase::ice_staticId()
{
    static constexpr ::std::string_view typeId = "::Test::ClassNoDefaultsBase";
    return typeId;
}

Test::ClassNoDefaults::~ClassNoDefaults()
{
}

::std::string_view
Test::ClassNoDefaults::ice_staticId()
{
    static constexpr ::std::string_view typeId = "::Test::ClassNoDefaults";
    return typeId;
}
