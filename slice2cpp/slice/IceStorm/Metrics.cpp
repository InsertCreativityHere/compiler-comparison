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
#include "Metrics.h"
#include <Ice/AsyncResponseHandler.h>
#include <Ice/FactoryTable.h>
#include <Ice/OutgoingAsync.h>

#if defined(_MSC_VER)
#   pragma warning(disable : 4458) // declaration of ... hides class member
#   pragma warning(disable : 4996) // ... was declared deprecated
#elif defined(__clang__)
#   pragma clang diagnostic ignored "-Wshadow"
#   pragma clang diagnostic ignored "-Wdeprecated-declarations"
#elif defined(__GNUC__)
#   pragma GCC diagnostic ignored "-Wshadow"
#   pragma GCC diagnostic ignored "-Wdeprecated-declarations"
#endif

#ifndef ICE_IGNORE_VERSION
#   if ICE_INT_VERSION  != 30850
#       error Ice version mismatch: an exact match is required for beta generated code
#   endif
#endif

namespace
{
    const ::IceInternal::FactoryTableInit iceC_factoryTableInit;
    const ::IceInternal::DefaultValueFactoryInit<::IceMX::TopicMetrics> iceC_IceMX_TopicMetrics_init("::IceMX::TopicMetrics");
    const ::IceInternal::DefaultValueFactoryInit<::IceMX::SubscriberMetrics> iceC_IceMX_SubscriberMetrics_init("::IceMX::SubscriberMetrics");
}

const char*
IceMX::TopicMetrics::ice_staticId() noexcept
{
    return "::IceMX::TopicMetrics";
}

const char*
IceMX::TopicMetrics::ice_id() const noexcept
{
    return ice_staticId();
}

::Ice::ValuePtr
IceMX::TopicMetrics::_iceCloneImpl() const
{
    return CloneEnabler<TopicMetrics>::clone(*this);
}

void
IceMX::TopicMetrics::_iceWriteImpl(::Ice::OutputStream* ostr) const
{
    ostr->startSlice(ice_staticId(), -1, false);
    ::Ice::StreamWriter<TopicMetrics>::write(ostr, *this);
    ostr->endSlice();
    Metrics::_iceWriteImpl(ostr);
}

void
IceMX::TopicMetrics::_iceReadImpl(::Ice::InputStream* istr)
{
    istr->startSlice();
    ::Ice::StreamReader<TopicMetrics>::read(istr, *this);
    istr->endSlice();
    Metrics::_iceReadImpl(istr);
}

const char*
IceMX::SubscriberMetrics::ice_staticId() noexcept
{
    return "::IceMX::SubscriberMetrics";
}

const char*
IceMX::SubscriberMetrics::ice_id() const noexcept
{
    return ice_staticId();
}

::Ice::ValuePtr
IceMX::SubscriberMetrics::_iceCloneImpl() const
{
    return CloneEnabler<SubscriberMetrics>::clone(*this);
}

void
IceMX::SubscriberMetrics::_iceWriteImpl(::Ice::OutputStream* ostr) const
{
    ostr->startSlice(ice_staticId(), -1, false);
    ::Ice::StreamWriter<SubscriberMetrics>::write(ostr, *this);
    ostr->endSlice();
    Metrics::_iceWriteImpl(ostr);
}

void
IceMX::SubscriberMetrics::_iceReadImpl(::Ice::InputStream* istr)
{
    istr->startSlice();
    ::Ice::StreamReader<SubscriberMetrics>::read(istr, *this);
    istr->endSlice();
    Metrics::_iceReadImpl(istr);
}
