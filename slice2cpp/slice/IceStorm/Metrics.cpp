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

#ifndef ICESTORM_API_EXPORTS
#   define ICESTORM_API_EXPORTS
#endif
#define ICE_BUILDING_GENERATED_CODE
#include <Metrics.h>
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

const ::IceInternal::DefaultValueFactoryInit<::IceMX::TopicMetrics> iceC_IceMX_TopicMetrics_init("::IceMX::TopicMetrics");

const ::IceInternal::DefaultValueFactoryInit<::IceMX::SubscriberMetrics> iceC_IceMX_SubscriberMetrics_init("::IceMX::SubscriberMetrics");

}

IceMX::TopicMetrics::~TopicMetrics()
{
}

const ::std::string&
IceMX::TopicMetrics::ice_staticId()
{
    static const ::std::string typeId = "::IceMX::TopicMetrics";
    return typeId;
}

IceMX::SubscriberMetrics::~SubscriberMetrics()
{
}

const ::std::string&
IceMX::SubscriberMetrics::ice_staticId()
{
    static const ::std::string typeId = "::IceMX::SubscriberMetrics";
    return typeId;
}
