//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `Metrics.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

#ifndef GLACIER2_API_EXPORTS
#   define GLACIER2_API_EXPORTS
#endif
#define ICE_BUILDING_GENERATED_CODE
#include <Metrics.h>
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

const ::IceInternal::DefaultValueFactoryInit<::IceMX::SessionMetrics> iceC_IceMX_SessionMetrics_init("::IceMX::SessionMetrics");

}

IceMX::SessionMetrics::~SessionMetrics()
{
}

::std::string_view
IceMX::SessionMetrics::ice_staticId()
{
    static constexpr ::std::string_view typeId = "::IceMX::SessionMetrics";
    return typeId;
}
