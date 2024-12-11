//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `Process.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

#ifndef Process_h_
#define Process_h_

#include <Ice/PushDisableWarnings.h>
#include <Ice/Ice.h>

#ifndef ICE_IGNORE_VERSION
#   if ICE_INT_VERSION  != 30850
#       error Ice version mismatch: an exact match is required for beta generated code
#   endif
#endif

namespace Ice
{
    class ProcessPrx;

}

namespace Ice
{

/// An administrative interface for process management. Managed servers must implement this interface.
/// <p class="Note">A servant implementing this interface is a potential target for denial-of-service attacks,
/// therefore proper security precautions should be taken. For example, the servant can use a UUID to make its
/// identity harder to guess, and be registered in an object adapter with a secured endpoint.
class ICE_API ProcessPrx : public Proxy<ProcessPrx, ObjectPrx>
{
public:

    /// Initiate a graceful shut-down.
    /// @param context The Context map to send with the invocation.
    /// @see Communicator#shutdown
    void shutdown(const Context& context = noExplicitContext) const;

    /// Initiate a graceful shut-down.
    /// @param context The Context map to send with the invocation.
    /// @return The future object for the invocation.
    /// @see Communicator#shutdown
    [[nodiscard]] ::std::future<void> shutdownAsync(const Context& context = noExplicitContext) const;

    /// Initiate a graceful shut-down.
    /// @param response The response callback.
    /// @param ex The exception callback.
    /// @param sent The sent callback.
    /// @param context The Context map to send with the invocation.
    /// @return A function that can be called to cancel the invocation locally.
    /// @see Communicator#shutdown
    ::std::function<void()>
    shutdownAsync(::std::function<void()> response, ::std::function<void(::std::exception_ptr)> ex = nullptr, ::std::function<void(bool)> sent = nullptr, const Context& context = noExplicitContext) const;

    /// \cond INTERNAL
    void _iceI_shutdown(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>&, const Context&) const;
    /// \endcond

    /// Write a message on the process' stdout or stderr.
    /// @param message The message.
    /// @param fd 1 for stdout, 2 for stderr.
    /// @param context The Context map to send with the invocation.
    void writeMessage(::std::string_view message, ::std::int32_t fd, const Context& context = noExplicitContext) const;

    /// Write a message on the process' stdout or stderr.
    /// @param message The message.
    /// @param fd 1 for stdout, 2 for stderr.
    /// @param context The Context map to send with the invocation.
    /// @return The future object for the invocation.
    [[nodiscard]] ::std::future<void> writeMessageAsync(::std::string_view message, ::std::int32_t fd, const Context& context = noExplicitContext) const;

    /// Write a message on the process' stdout or stderr.
    /// @param message The message.
    /// @param fd 1 for stdout, 2 for stderr.
    /// @param response The response callback.
    /// @param ex The exception callback.
    /// @param sent The sent callback.
    /// @param context The Context map to send with the invocation.
    /// @return A function that can be called to cancel the invocation locally.
    ::std::function<void()>
    writeMessageAsync(::std::string_view message, ::std::int32_t fd, ::std::function<void()> response, ::std::function<void(::std::exception_ptr)> ex = nullptr, ::std::function<void(bool)> sent = nullptr, const Context& context = noExplicitContext) const;

    /// \cond INTERNAL
    void _iceI_writeMessage(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>&, ::std::string_view, ::std::int32_t, const Context&) const;
    /// \endcond

    /// Obtains the Slice type ID of this interface.
    /// @return The fully-scoped type ID.
    static const char* ice_staticId() noexcept;
    ProcessPrx(const ProcessPrx& other) noexcept : ::Ice::ObjectPrx(other)
    {
    }

    ProcessPrx(ProcessPrx&& other) noexcept : ::Ice::ObjectPrx(::std::move(other))
    {
    }

    ProcessPrx(const ::Ice::CommunicatorPtr& communicator, std::string_view proxyString) :
        ::Ice::ObjectPrx(communicator, proxyString)
    {
    }

    ProcessPrx& operator=(const ProcessPrx& rhs) noexcept
    {
        if (this != &rhs)
        {
            ::Ice::ObjectPrx::operator=(rhs);
        }
        return *this;
    }

    ProcessPrx& operator=(ProcessPrx&& rhs) noexcept
    {
        if (this != &rhs)
        {
            ::Ice::ObjectPrx::operator=(::std::move(rhs));
        }
        return *this;
    }

    /// \cond INTERNAL
    static ProcessPrx _fromReference(::IceInternal::ReferencePtr ref) { return ProcessPrx(::std::move(ref)); }

protected:

    ProcessPrx() = default;

    explicit ProcessPrx(::IceInternal::ReferencePtr&& ref) : ::Ice::ObjectPrx(::std::move(ref))
    {
    }
    /// \endcond
};

}

namespace Ice
{

/// An administrative interface for process management. Managed servers must implement this interface.
/// <p class="Note">A servant implementing this interface is a potential target for denial-of-service attacks,
/// therefore proper security precautions should be taken. For example, the servant can use a UUID to make its
/// identity harder to guess, and be registered in an object adapter with a secured endpoint.
class ICE_API Process : public virtual Object
{
public:

    using ProxyType = ProcessPrx;

    /// Obtains a list of the Slice type IDs representing the interfaces supported by this object.
    /// @param current The Current object for the invocation.
    /// @return A list of fully-scoped type IDs.
    ::std::vector<::std::string> ice_ids(const Current& current) const override;

    /// Obtains a Slice type ID representing the most-derived interface supported by this object.
    /// @param current The Current object for the invocation.
    /// @return A fully-scoped type ID.
    ::std::string ice_id(const Current& current) const override;

    /// Obtains the Slice type ID corresponding to this interface.
    /// @return A fully-scoped type ID.
    static const char* ice_staticId() noexcept;

    /// Initiate a graceful shut-down.
    /// @param current The Current object for the invocation.
    /// @see Communicator#shutdown
    virtual void shutdown(const Current& current) = 0;
    /// \cond INTERNAL
    void _iceD_shutdown(::Ice::IncomingRequest&, ::std::function<void(::Ice::OutgoingResponse)>);
    /// \endcond

    /// Write a message on the process' stdout or stderr.
    /// @param message The message.
    /// @param fd 1 for stdout, 2 for stderr.
    /// @param current The Current object for the invocation.
    virtual void writeMessage(::std::string message, ::std::int32_t fd, const Current& current) = 0;
    /// \cond INTERNAL
    void _iceD_writeMessage(::Ice::IncomingRequest&, ::std::function<void(::Ice::OutgoingResponse)>);
    /// \endcond

    /// \cond INTERNAL
    void dispatch(::Ice::IncomingRequest&, ::std::function<void(::Ice::OutgoingResponse)>) override;
    /// \endcond
};

using ProcessPtr = ::std::shared_ptr<Process>;

}

#include <Ice/PopDisableWarnings.h>
#endif
