//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `IceDiscovery.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

#ifndef __IceDiscovery_h__
#define __IceDiscovery_h__

#include <IceUtil/PushDisableWarnings.h>
#include <Ice/Ice.h>
#include <Ice/Identity.h>
#include <IceUtil/UndefSysMacros.h>

#ifndef ICE_IGNORE_VERSION
#   if ICE_INT_VERSION  != 30850
#       error Ice version mismatch: an exact match is required for beta generated code
#   endif
#endif

namespace IceDiscovery
{

class LookupReplyPrx;

using LookupReplyPrxPtr = ::std::optional<LookupReplyPrx>;
class LookupPrx;

using LookupPrxPtr = ::std::optional<LookupPrx>;

}

namespace IceDiscovery
{

/**
 * The LookupReply interface is used by IceDiscovery clients to answer requests
 * received on the Lookup interface.
 */
class LookupReplyPrx : public ::Ice::Proxy<LookupReplyPrx, ::Ice::ObjectPrx>
{
public:

    /**
     * Reply to the findObjectById request.
     * @param id The identity of the object.
     * @param prx The proxy of the object.
     * @param context The Context map to send with the invocation.
     */
    void foundObjectById(const ::Ice::Identity& id, const ::std::optional<::Ice::ObjectPrx>& prx, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /**
     * Reply to the findObjectById request.
     * @param id The identity of the object.
     * @param prx The proxy of the object.
     * @param context The Context map to send with the invocation.
     * @return The future object for the invocation.
     */
    ::std::future<void> foundObjectByIdAsync(const ::Ice::Identity& id, const ::std::optional<::Ice::ObjectPrx>& prx, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /**
     * Reply to the findObjectById request.
     * @param id The identity of the object.
     * @param prx The proxy of the object.
     * @param response The response callback.
     * @param ex The exception callback.
     * @param sent The sent callback.
     * @param context The Context map to send with the invocation.
     * @return A function that can be called to cancel the invocation locally.
     */
    ::std::function<void()>
    foundObjectByIdAsync(const ::Ice::Identity& id, const ::std::optional<::Ice::ObjectPrx>& prx, ::std::function<void()> response, ::std::function<void(::std::exception_ptr)> ex = nullptr, ::std::function<void(bool)> sent = nullptr, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /// \cond INTERNAL
    void _iceI_foundObjectById(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>&, const ::Ice::Identity&, const ::std::optional<::Ice::ObjectPrx>&, const ::Ice::Context&) const;
    /// \endcond

    /**
     * Reply to the findAdpaterById request.
     * @param id The adapter ID.
     * @param prx The adapter proxy (a dummy proxy created by the adapter). The proxy provides the adapter
     * endpoints.
     * @param isReplicaGroup True if the adapter is also a member of a replica group.
     * @param context The Context map to send with the invocation.
     */
    void foundAdapterById(::std::string_view id, const ::std::optional<::Ice::ObjectPrx>& prx, bool isReplicaGroup, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /**
     * Reply to the findAdpaterById request.
     * @param id The adapter ID.
     * @param prx The adapter proxy (a dummy proxy created by the adapter). The proxy provides the adapter
     * endpoints.
     * @param isReplicaGroup True if the adapter is also a member of a replica group.
     * @param context The Context map to send with the invocation.
     * @return The future object for the invocation.
     */
    ::std::future<void> foundAdapterByIdAsync(::std::string_view id, const ::std::optional<::Ice::ObjectPrx>& prx, bool isReplicaGroup, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /**
     * Reply to the findAdpaterById request.
     * @param id The adapter ID.
     * @param prx The adapter proxy (a dummy proxy created by the adapter). The proxy provides the adapter
     * endpoints.
     * @param isReplicaGroup True if the adapter is also a member of a replica group.
     * @param response The response callback.
     * @param ex The exception callback.
     * @param sent The sent callback.
     * @param context The Context map to send with the invocation.
     * @return A function that can be called to cancel the invocation locally.
     */
    ::std::function<void()>
    foundAdapterByIdAsync(::std::string_view id, const ::std::optional<::Ice::ObjectPrx>& prx, bool isReplicaGroup, ::std::function<void()> response, ::std::function<void(::std::exception_ptr)> ex = nullptr, ::std::function<void(bool)> sent = nullptr, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /// \cond INTERNAL
    void _iceI_foundAdapterById(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>&, ::std::string_view, const ::std::optional<::Ice::ObjectPrx>&, bool, const ::Ice::Context&) const;
    /// \endcond

    /**
     * Obtains the Slice type ID of this interface.
     * @return The fully-scoped type ID.
     */
    static ::std::string_view ice_staticId();

    explicit LookupReplyPrx(const ::Ice::ObjectPrx& other) : ::Ice::ObjectPrx(other)
    {
    }

    LookupReplyPrx(const LookupReplyPrx& other) noexcept : ::Ice::ObjectPrx(other)
    {
    }

    LookupReplyPrx(LookupReplyPrx&& other) noexcept : ::Ice::ObjectPrx(::std::move(other))
    {
    }

    LookupReplyPrx(const ::std::shared_ptr<::Ice::Communicator>& communicator, const ::std::string& proxyString) :
        ::Ice::ObjectPrx(communicator, proxyString)
    {
    }

    LookupReplyPrx& operator=(const LookupReplyPrx& rhs) noexcept
    {
        ::Ice::ObjectPrx::operator=(rhs);
        return *this;
    }

    LookupReplyPrx& operator=(LookupReplyPrx&& rhs) noexcept
    {
        ::Ice::ObjectPrx::operator=(::std::move(rhs));
        return *this;
    }

    /// \cond INTERNAL
    static LookupReplyPrx _fromReference(::IceInternal::ReferencePtr ref) { return LookupReplyPrx(::std::move(ref)); }

protected:

    LookupReplyPrx() = default;

    explicit LookupReplyPrx(::IceInternal::ReferencePtr&& ref) : ::Ice::ObjectPrx(::std::move(ref))
    {
    }
    /// \endcond
};

/**
 * The Lookup interface is used by IceDiscovery clients to look for objects and adapters using UDP multicast.
 */
class LookupPrx : public ::Ice::Proxy<LookupPrx, ::Ice::ObjectPrx>
{
public:

    /**
     * Request to find an Ice object
     * @param domainId The IceDiscovery domain identifier. An IceDiscovery client only replies to requests with a
     * matching domain identifier.
     * @param id The object identity.
     * @param reply The proxy of the LookupReply interface that should be used to send the reply if a matching
     * object is found.
     * @param context The Context map to send with the invocation.
     */
    void findObjectById(::std::string_view domainId, const ::Ice::Identity& id, const ::std::optional<LookupReplyPrx>& reply, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /**
     * Request to find an Ice object
     * @param domainId The IceDiscovery domain identifier. An IceDiscovery client only replies to requests with a
     * matching domain identifier.
     * @param id The object identity.
     * @param reply The proxy of the LookupReply interface that should be used to send the reply if a matching
     * object is found.
     * @param context The Context map to send with the invocation.
     * @return The future object for the invocation.
     */
    ::std::future<void> findObjectByIdAsync(::std::string_view domainId, const ::Ice::Identity& id, const ::std::optional<LookupReplyPrx>& reply, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /**
     * Request to find an Ice object
     * @param domainId The IceDiscovery domain identifier. An IceDiscovery client only replies to requests with a
     * matching domain identifier.
     * @param id The object identity.
     * @param reply The proxy of the LookupReply interface that should be used to send the reply if a matching
     * object is found.
     * @param response The response callback.
     * @param ex The exception callback.
     * @param sent The sent callback.
     * @param context The Context map to send with the invocation.
     * @return A function that can be called to cancel the invocation locally.
     */
    ::std::function<void()>
    findObjectByIdAsync(::std::string_view domainId, const ::Ice::Identity& id, const ::std::optional<LookupReplyPrx>& reply, ::std::function<void()> response, ::std::function<void(::std::exception_ptr)> ex = nullptr, ::std::function<void(bool)> sent = nullptr, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /// \cond INTERNAL
    void _iceI_findObjectById(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>&, ::std::string_view, const ::Ice::Identity&, const ::std::optional<LookupReplyPrx>&, const ::Ice::Context&) const;
    /// \endcond

    /**
     * Request to find an object adapter
     * @param domainId The IceDiscovery domain identifier. An IceDiscovery client only replies to requests with a
     * matching domain identifier.
     * @param id The adapter ID.
     * @param reply The proxy of the LookupReply interface that should be used to send the reply if a matching
     * adapter is found.
     * @param context The Context map to send with the invocation.
     */
    void findAdapterById(::std::string_view domainId, ::std::string_view id, const ::std::optional<LookupReplyPrx>& reply, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /**
     * Request to find an object adapter
     * @param domainId The IceDiscovery domain identifier. An IceDiscovery client only replies to requests with a
     * matching domain identifier.
     * @param id The adapter ID.
     * @param reply The proxy of the LookupReply interface that should be used to send the reply if a matching
     * adapter is found.
     * @param context The Context map to send with the invocation.
     * @return The future object for the invocation.
     */
    ::std::future<void> findAdapterByIdAsync(::std::string_view domainId, ::std::string_view id, const ::std::optional<LookupReplyPrx>& reply, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /**
     * Request to find an object adapter
     * @param domainId The IceDiscovery domain identifier. An IceDiscovery client only replies to requests with a
     * matching domain identifier.
     * @param id The adapter ID.
     * @param reply The proxy of the LookupReply interface that should be used to send the reply if a matching
     * adapter is found.
     * @param response The response callback.
     * @param ex The exception callback.
     * @param sent The sent callback.
     * @param context The Context map to send with the invocation.
     * @return A function that can be called to cancel the invocation locally.
     */
    ::std::function<void()>
    findAdapterByIdAsync(::std::string_view domainId, ::std::string_view id, const ::std::optional<LookupReplyPrx>& reply, ::std::function<void()> response, ::std::function<void(::std::exception_ptr)> ex = nullptr, ::std::function<void(bool)> sent = nullptr, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /// \cond INTERNAL
    void _iceI_findAdapterById(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>&, ::std::string_view, ::std::string_view, const ::std::optional<LookupReplyPrx>&, const ::Ice::Context&) const;
    /// \endcond

    /**
     * Obtains the Slice type ID of this interface.
     * @return The fully-scoped type ID.
     */
    static ::std::string_view ice_staticId();

    explicit LookupPrx(const ::Ice::ObjectPrx& other) : ::Ice::ObjectPrx(other)
    {
    }

    LookupPrx(const LookupPrx& other) noexcept : ::Ice::ObjectPrx(other)
    {
    }

    LookupPrx(LookupPrx&& other) noexcept : ::Ice::ObjectPrx(::std::move(other))
    {
    }

    LookupPrx(const ::std::shared_ptr<::Ice::Communicator>& communicator, const ::std::string& proxyString) :
        ::Ice::ObjectPrx(communicator, proxyString)
    {
    }

    LookupPrx& operator=(const LookupPrx& rhs) noexcept
    {
        ::Ice::ObjectPrx::operator=(rhs);
        return *this;
    }

    LookupPrx& operator=(LookupPrx&& rhs) noexcept
    {
        ::Ice::ObjectPrx::operator=(::std::move(rhs));
        return *this;
    }

    /// \cond INTERNAL
    static LookupPrx _fromReference(::IceInternal::ReferencePtr ref) { return LookupPrx(::std::move(ref)); }

protected:

    LookupPrx() = default;

    explicit LookupPrx(::IceInternal::ReferencePtr&& ref) : ::Ice::ObjectPrx(::std::move(ref))
    {
    }
    /// \endcond
};

}

namespace IceDiscovery
{

/**
 * The LookupReply interface is used by IceDiscovery clients to answer requests
 * received on the Lookup interface.
 */
class LookupReply : public virtual ::Ice::Object
{
public:

    using ProxyType = LookupReplyPrx;

    /**
     * Obtains a list of the Slice type IDs representing the interfaces supported by this object.
     * @param current The Current object for the invocation.
     * @return A list of fully-scoped type IDs.
     */
    ::std::vector<::std::string> ice_ids(const ::Ice::Current& current) const override;

    /**
     * Obtains a Slice type ID representing the most-derived interface supported by this object.
     * @param current The Current object for the invocation.
     * @return A fully-scoped type ID.
     */
    ::std::string ice_id(const ::Ice::Current& current) const override;

    /**
     * Obtains the Slice type ID corresponding to this interface.
     * @return A fully-scoped type ID.
     */
    static ::std::string_view ice_staticId();

    /**
     * Reply to the findObjectById request.
     * @param id The identity of the object.
     * @param prx The proxy of the object.
     * @param current The Current object for the invocation.
     */
    virtual void foundObjectById(::Ice::Identity id, ::std::optional<::Ice::ObjectPrx> prx, const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    bool _iceD_foundObjectById(::IceInternal::Incoming&);
    /// \endcond

    /**
     * Reply to the findAdpaterById request.
     * @param id The adapter ID.
     * @param prx The adapter proxy (a dummy proxy created by the adapter). The proxy provides the adapter
     * endpoints.
     * @param isReplicaGroup True if the adapter is also a member of a replica group.
     * @param current The Current object for the invocation.
     */
    virtual void foundAdapterById(::std::string id, ::std::optional<::Ice::ObjectPrx> prx, bool isReplicaGroup, const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    bool _iceD_foundAdapterById(::IceInternal::Incoming&);
    /// \endcond

    /// \cond INTERNAL
    virtual bool _iceDispatch(::IceInternal::Incoming&) override;
    /// \endcond
};

using LookupReplyPtr = ::std::shared_ptr<LookupReply>;

/**
 * The Lookup interface is used by IceDiscovery clients to look for objects and adapters using UDP multicast.
 */
class Lookup : public virtual ::Ice::Object
{
public:

    using ProxyType = LookupPrx;

    /**
     * Obtains a list of the Slice type IDs representing the interfaces supported by this object.
     * @param current The Current object for the invocation.
     * @return A list of fully-scoped type IDs.
     */
    ::std::vector<::std::string> ice_ids(const ::Ice::Current& current) const override;

    /**
     * Obtains a Slice type ID representing the most-derived interface supported by this object.
     * @param current The Current object for the invocation.
     * @return A fully-scoped type ID.
     */
    ::std::string ice_id(const ::Ice::Current& current) const override;

    /**
     * Obtains the Slice type ID corresponding to this interface.
     * @return A fully-scoped type ID.
     */
    static ::std::string_view ice_staticId();

    /**
     * Request to find an Ice object
     * @param domainId The IceDiscovery domain identifier. An IceDiscovery client only replies to requests with a
     * matching domain identifier.
     * @param id The object identity.
     * @param reply The proxy of the LookupReply interface that should be used to send the reply if a matching
     * object is found.
     * @param current The Current object for the invocation.
     */
    virtual void findObjectById(::std::string domainId, ::Ice::Identity id, ::std::optional<LookupReplyPrx> reply, const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    bool _iceD_findObjectById(::IceInternal::Incoming&);
    /// \endcond

    /**
     * Request to find an object adapter
     * @param domainId The IceDiscovery domain identifier. An IceDiscovery client only replies to requests with a
     * matching domain identifier.
     * @param id The adapter ID.
     * @param reply The proxy of the LookupReply interface that should be used to send the reply if a matching
     * adapter is found.
     * @param current The Current object for the invocation.
     */
    virtual void findAdapterById(::std::string domainId, ::std::string id, ::std::optional<LookupReplyPrx> reply, const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    bool _iceD_findAdapterById(::IceInternal::Incoming&);
    /// \endcond

    /// \cond INTERNAL
    virtual bool _iceDispatch(::IceInternal::Incoming&) override;
    /// \endcond
};

using LookupPtr = ::std::shared_ptr<Lookup>;

}

#include <IceUtil/PopDisableWarnings.h>
#endif
