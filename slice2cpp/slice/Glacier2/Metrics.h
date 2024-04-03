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
#include "../Ice/Metrics.h"
#include <Glacier2/Config.h>

#ifndef ICE_IGNORE_VERSION
#   if ICE_INT_VERSION  != 30850
#       error Ice version mismatch: an exact match is required for beta generated code
#   endif
#endif

#ifndef GLACIER2_API
#   if defined(ICE_STATIC_LIBS)
#       define GLACIER2_API /**/
#   elif defined(GLACIER2_API_EXPORTS)
#       define GLACIER2_API ICE_DECLSPEC_EXPORT
#   else
#       define GLACIER2_API ICE_DECLSPEC_IMPORT
#   endif
#endif

namespace IceMX
{
    class SessionMetrics;
    using SessionMetricsPtr = ::std::shared_ptr<SessionMetrics>;

}

namespace IceMX
{

/**
 * Provides information on Glacier2 sessions.
 * \headerfile Glacier2/Glacier2.h
 */
class ICE_CLASS(GLACIER2_API) SessionMetrics : public Metrics
{
public:

    SessionMetrics() = default;

    /**
     * One-shot constructor to initialize all data members.
     * @param id The metrics identifier.
     * @param total The total number of objects observed by this metrics.
     * @param current The number of objects currently observed by this metrics.
     * @param totalLifetime The sum of the lifetime of each observed objects.
     * @param failures The number of failures observed.
     * @param forwardedClient Number of client requests forwarded.
     * @param forwardedServer Number of server requests forwarded.
     * @param routingTableSize The size of the routing table.
     * @param queuedClient Number of client requests queued.
     * @param queuedServer Number of server requests queued.
     * @param overriddenClient Number of client requests overridden.
     * @param overriddenServer Number of server requests overridden.
     */
    SessionMetrics(::std::string id, ::std::int64_t total, ::std::int32_t current, ::std::int64_t totalLifetime, ::std::int32_t failures, ::std::int32_t forwardedClient, ::std::int32_t forwardedServer, ::std::int32_t routingTableSize, ::std::int32_t queuedClient, ::std::int32_t queuedServer, ::std::int32_t overriddenClient, ::std::int32_t overriddenServer) :
        Metrics(::std::move(id), total, current, totalLifetime, failures),
        forwardedClient(forwardedClient),
        forwardedServer(forwardedServer),
        routingTableSize(routingTableSize),
        queuedClient(queuedClient),
        queuedServer(queuedServer),
        overriddenClient(overriddenClient),
        overriddenServer(overriddenServer)
    {
    }

    /**
     * Obtains the Slice type ID of this value.
     * @return The fully-scoped type ID.
     */
    ICE_MEMBER(GLACIER2_API) static ::std::string_view ice_staticId() noexcept;

    ICE_MEMBER(GLACIER2_API) ::std::string ice_id() const override;

    /**
     * Obtains a tuple containing all of the value's data members.
     * @return The data members in a tuple.
     */
    std::tuple<const ::std::string&, const ::std::int64_t&, const ::std::int32_t&, const ::std::int64_t&, const ::std::int32_t&, const ::std::int32_t&, const ::std::int32_t&, const ::std::int32_t&, const ::std::int32_t&, const ::std::int32_t&, const ::std::int32_t&, const ::std::int32_t&> ice_tuple() const
    {
        return std::tie(id, total, current, totalLifetime, failures, forwardedClient, forwardedServer, routingTableSize, queuedClient, queuedServer, overriddenClient, overriddenServer);
    }

    /**
     * Creates a shallow polymorphic copy of this instance.
     * @return The cloned value.
     */
    SessionMetricsPtr ice_clone() const { return ::std::static_pointer_cast <SessionMetrics>(_iceCloneImpl()); }

    /**
     * Number of client requests forwarded.
     */
    ::std::int32_t forwardedClient = 0;
    /**
     * Number of server requests forwarded.
     */
    ::std::int32_t forwardedServer = 0;
    /**
     * The size of the routing table.
     */
    ::std::int32_t routingTableSize = 0;
    /**
     * Number of client requests queued.
     */
    ::std::int32_t queuedClient = 0;
    /**
     * Number of server requests queued.
     */
    ::std::int32_t queuedServer = 0;
    /**
     * Number of client requests overridden.
     */
    ::std::int32_t overriddenClient = 0;
    /**
     * Number of server requests overridden.
     */
    ::std::int32_t overriddenServer = 0;

protected:

    SessionMetrics(const SessionMetrics&) = default;

    ICE_MEMBER(GLACIER2_API) ::Ice::ValuePtr _iceCloneImpl() const override;
    ICE_MEMBER(GLACIER2_API) void _iceWriteImpl(::Ice::OutputStream*) const override;

    ICE_MEMBER(GLACIER2_API) void _iceReadImpl(::Ice::InputStream*) override;
};

/// \cond INTERNAL
static SessionMetrics _iceS_SessionMetrics_init;
/// \endcond

}

/// \cond STREAM
namespace Ice
{

template<>
struct StreamWriter<::IceMX::SessionMetrics>
{
    static void write(OutputStream* ostr, const ::IceMX::SessionMetrics& v)
    {
        ostr->writeAll(v.forwardedClient, v.forwardedServer, v.routingTableSize, v.queuedClient, v.queuedServer, v.overriddenClient, v.overriddenServer);
    }
};

template<>
struct StreamReader<::IceMX::SessionMetrics>
{
    static void read(InputStream* istr, ::IceMX::SessionMetrics& v)
    {
        istr->readAll(v.forwardedClient, v.forwardedServer, v.routingTableSize, v.queuedClient, v.queuedServer, v.overriddenClient, v.overriddenServer);
    }
};

}
/// \endcond

#include <IceUtil/PopDisableWarnings.h>
#endif
