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

#ifndef __Metrics_h__
#define __Metrics_h__

#include <IceUtil/PushDisableWarnings.h>
#include <Ice/Ice.h>
#include <Ice/Metrics.h>
#include <IceUtil/UndefSysMacros.h>
#include <IceStorm/Config.h>

#ifndef ICE_IGNORE_VERSION
#   if ICE_INT_VERSION  != 30850
#       error Ice version mismatch: an exact match is required for beta generated code
#   endif
#endif

#ifndef ICESTORM_API
#   if defined(ICE_STATIC_LIBS)
#       define ICESTORM_API /**/
#   elif defined(ICESTORM_API_EXPORTS)
#       define ICESTORM_API ICE_DECLSPEC_EXPORT
#   else
#       define ICESTORM_API ICE_DECLSPEC_IMPORT
#   endif
#endif

namespace IceMX
{

class TopicMetrics;
class SubscriberMetrics;

}

namespace IceMX
{

/**
 * Provides information on IceStorm topics.
 * \headerfile IceStorm/IceStorm.h
 */
class ICE_CLASS(ICESTORM_API) TopicMetrics : public ::Ice::ValueHelper<TopicMetrics, Metrics>
{
public:

    ICE_MEMBER(ICESTORM_API) virtual ~TopicMetrics();

    TopicMetrics() = default;

    TopicMetrics(const TopicMetrics&) = default;
    TopicMetrics(TopicMetrics&&) = default;
    TopicMetrics& operator=(const TopicMetrics&) = default;
    TopicMetrics& operator=(TopicMetrics&&) = default;

    /**
     * One-shot constructor to initialize all data members.
     * @param id The metrics identifier.
     * @param total The total number of objects observed by this metrics.
     * @param current The number of objects currently observed by this metrics.
     * @param totalLifetime The sum of the lifetime of each observed objects.
     * @param failures The number of failures observed.
     * @param published Number of events published on the topic by publishers.
     * @param forwarded Number of events forwarded on the topic by IceStorm topic links.
     */
    TopicMetrics(const ::std::string& id, long long int total, int current, long long int totalLifetime, int failures, long long int published, long long int forwarded) :
        Ice::ValueHelper<TopicMetrics, Metrics>(id, total, current, totalLifetime, failures),
        published(published),
        forwarded(forwarded)
    {
    }

    /**
     * Obtains a tuple containing all of the value's data members.
     * @return The data members in a tuple.
     */
    std::tuple<const ::std::string&, const long long int&, const int&, const long long int&, const int&, const long long int&, const long long int&> ice_tuple() const
    {
        return std::tie(id, total, current, totalLifetime, failures, published, forwarded);
    }

    /**
     * Obtains the Slice type ID of this value.
     * @return The fully-scoped type ID.
     */
    ICE_MEMBER(ICESTORM_API) static const ::std::string& ice_staticId();

    /**
     * Number of events published on the topic by publishers.
     */
    long long int published = 0LL;
    /**
     * Number of events forwarded on the topic by IceStorm topic links.
     */
    long long int forwarded = 0LL;
};

/// \cond INTERNAL
static TopicMetrics _iceS_TopicMetrics_init;
/// \endcond

/**
 * Provides information on IceStorm subscribers.
 * \headerfile IceStorm/IceStorm.h
 */
class ICE_CLASS(ICESTORM_API) SubscriberMetrics : public ::Ice::ValueHelper<SubscriberMetrics, Metrics>
{
public:

    ICE_MEMBER(ICESTORM_API) virtual ~SubscriberMetrics();

    SubscriberMetrics() = default;

    SubscriberMetrics(const SubscriberMetrics&) = default;
    SubscriberMetrics(SubscriberMetrics&&) = default;
    SubscriberMetrics& operator=(const SubscriberMetrics&) = default;
    SubscriberMetrics& operator=(SubscriberMetrics&&) = default;

    /**
     * One-shot constructor to initialize all data members.
     * @param id The metrics identifier.
     * @param total The total number of objects observed by this metrics.
     * @param current The number of objects currently observed by this metrics.
     * @param totalLifetime The sum of the lifetime of each observed objects.
     * @param failures The number of failures observed.
     * @param queued Number of queued events.
     * @param outstanding Number of outstanding events.
     * @param delivered Number of forwarded events.
     */
    SubscriberMetrics(const ::std::string& id, long long int total, int current, long long int totalLifetime, int failures, int queued, int outstanding, long long int delivered) :
        Ice::ValueHelper<SubscriberMetrics, Metrics>(id, total, current, totalLifetime, failures),
        queued(queued),
        outstanding(outstanding),
        delivered(delivered)
    {
    }

    /**
     * Obtains a tuple containing all of the value's data members.
     * @return The data members in a tuple.
     */
    std::tuple<const ::std::string&, const long long int&, const int&, const long long int&, const int&, const int&, const int&, const long long int&> ice_tuple() const
    {
        return std::tie(id, total, current, totalLifetime, failures, queued, outstanding, delivered);
    }

    /**
     * Obtains the Slice type ID of this value.
     * @return The fully-scoped type ID.
     */
    ICE_MEMBER(ICESTORM_API) static const ::std::string& ice_staticId();

    /**
     * Number of queued events.
     */
    int queued = 0;
    /**
     * Number of outstanding events.
     */
    int outstanding = 0;
    /**
     * Number of forwarded events.
     */
    long long int delivered = 0LL;
};

}

/// \cond STREAM
namespace Ice
{

template<typename S>
struct StreamWriter<::IceMX::TopicMetrics, S>
{
    static void write(S* ostr, const ::IceMX::TopicMetrics& v)
    {
        ostr->writeAll(v.published, v.forwarded);
    }
};

template<typename S>
struct StreamReader<::IceMX::TopicMetrics, S>
{
    static void read(S* istr, ::IceMX::TopicMetrics& v)
    {
        istr->readAll(v.published, v.forwarded);
    }
};

template<typename S>
struct StreamWriter<::IceMX::SubscriberMetrics, S>
{
    static void write(S* ostr, const ::IceMX::SubscriberMetrics& v)
    {
        ostr->writeAll(v.queued, v.outstanding, v.delivered);
    }
};

template<typename S>
struct StreamReader<::IceMX::SubscriberMetrics, S>
{
    static void read(S* istr, ::IceMX::SubscriberMetrics& v)
    {
        istr->readAll(v.queued, v.outstanding, v.delivered);
    }
};

}
/// \endcond

/// \cond INTERNAL
namespace IceMX
{

using TopicMetricsPtr = ::std::shared_ptr<TopicMetrics>;

using SubscriberMetricsPtr = ::std::shared_ptr<SubscriberMetrics>;

}
/// \endcond

#include <IceUtil/PopDisableWarnings.h>
#endif
