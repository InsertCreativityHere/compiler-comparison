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

#ifndef __Test_h__
#define __Test_h__

#include <Ice/PushDisableWarnings.h>
#include <Ice/Ice.h>

#ifndef ICE_IGNORE_VERSION
#   if ICE_INT_VERSION  != 30850
#       error Ice version mismatch: an exact match is required for beta generated code
#   endif
#endif

namespace Test
{
    class TestIntfPrx;

    class CleanerPrx;

}

namespace Test
{

class TestIntfPrx : public ::Ice::Proxy<TestIntfPrx, ::Ice::ObjectPrx>
{
public:

    void shutdown(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::future<void> shutdownAsync(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::function<void()>
    shutdownAsync(::std::function<void()> response, ::std::function<void(::std::exception_ptr)> ex = nullptr, ::std::function<void(bool)> sent = nullptr, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /// \cond INTERNAL
    void _iceI_shutdown(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>&, const ::Ice::Context&) const;
    /// \endcond

    void abort(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::future<void> abortAsync(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::function<void()>
    abortAsync(::std::function<void()> response, ::std::function<void(::std::exception_ptr)> ex = nullptr, ::std::function<void(bool)> sent = nullptr, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /// \cond INTERNAL
    void _iceI_abort(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>&, const ::Ice::Context&) const;
    /// \endcond

    void idempotentAbort(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::future<void> idempotentAbortAsync(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::function<void()>
    idempotentAbortAsync(::std::function<void()> response, ::std::function<void(::std::exception_ptr)> ex = nullptr, ::std::function<void(bool)> sent = nullptr, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /// \cond INTERNAL
    void _iceI_idempotentAbort(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>&, const ::Ice::Context&) const;
    /// \endcond

    ::std::int32_t pid(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::future<::std::int32_t> pidAsync(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::function<void()>
    pidAsync(::std::function<void(::std::int32_t)> response, ::std::function<void(::std::exception_ptr)> ex = nullptr, ::std::function<void(bool)> sent = nullptr, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /// \cond INTERNAL
    void _iceI_pid(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<::std::int32_t>>&, const ::Ice::Context&) const;
    /// \endcond

    /**
     * Obtains the Slice type ID of this interface.
     * @return The fully-scoped type ID.
     */
    static const char* ice_staticId() noexcept;

    explicit TestIntfPrx(const ::Ice::ObjectPrx& other) : ::Ice::ObjectPrx(other)
    {
    }

    TestIntfPrx(const TestIntfPrx& other) noexcept : ::Ice::ObjectPrx(other)
    {
    }

    TestIntfPrx(TestIntfPrx&& other) noexcept : ::Ice::ObjectPrx(::std::move(other))
    {
    }

    TestIntfPrx(const ::Ice::CommunicatorPtr& communicator, std::string_view proxyString) :
        ::Ice::ObjectPrx(communicator, proxyString)
    {
    }

    TestIntfPrx& operator=(const TestIntfPrx& rhs) noexcept
    {
        ::Ice::ObjectPrx::operator=(rhs);
        return *this;
    }

    TestIntfPrx& operator=(TestIntfPrx&& rhs) noexcept
    {
        ::Ice::ObjectPrx::operator=(::std::move(rhs));
        return *this;
    }

    /// \cond INTERNAL
    static TestIntfPrx _fromReference(::IceInternal::ReferencePtr ref) { return TestIntfPrx(::std::move(ref)); }

protected:

    TestIntfPrx() = default;

    explicit TestIntfPrx(::IceInternal::ReferencePtr&& ref) : ::Ice::ObjectPrx(::std::move(ref))
    {
    }
    /// \endcond
};

class CleanerPrx : public ::Ice::Proxy<CleanerPrx, ::Ice::ObjectPrx>
{
public:

    void cleanup(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::future<void> cleanupAsync(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::function<void()>
    cleanupAsync(::std::function<void()> response, ::std::function<void(::std::exception_ptr)> ex = nullptr, ::std::function<void(bool)> sent = nullptr, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /// \cond INTERNAL
    void _iceI_cleanup(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>&, const ::Ice::Context&) const;
    /// \endcond

    /**
     * Obtains the Slice type ID of this interface.
     * @return The fully-scoped type ID.
     */
    static const char* ice_staticId() noexcept;

    explicit CleanerPrx(const ::Ice::ObjectPrx& other) : ::Ice::ObjectPrx(other)
    {
    }

    CleanerPrx(const CleanerPrx& other) noexcept : ::Ice::ObjectPrx(other)
    {
    }

    CleanerPrx(CleanerPrx&& other) noexcept : ::Ice::ObjectPrx(::std::move(other))
    {
    }

    CleanerPrx(const ::Ice::CommunicatorPtr& communicator, std::string_view proxyString) :
        ::Ice::ObjectPrx(communicator, proxyString)
    {
    }

    CleanerPrx& operator=(const CleanerPrx& rhs) noexcept
    {
        ::Ice::ObjectPrx::operator=(rhs);
        return *this;
    }

    CleanerPrx& operator=(CleanerPrx&& rhs) noexcept
    {
        ::Ice::ObjectPrx::operator=(::std::move(rhs));
        return *this;
    }

    /// \cond INTERNAL
    static CleanerPrx _fromReference(::IceInternal::ReferencePtr ref) { return CleanerPrx(::std::move(ref)); }

protected:

    CleanerPrx() = default;

    explicit CleanerPrx(::IceInternal::ReferencePtr&& ref) : ::Ice::ObjectPrx(::std::move(ref))
    {
    }
    /// \endcond
};

}

namespace Test
{

class TestIntf : public virtual ::Ice::Object
{
public:

    using ProxyType = TestIntfPrx;

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
    static const char* ice_staticId() noexcept;

    virtual void shutdown(const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    void _iceD_shutdown(::Ice::IncomingRequest&, ::std::function<void(::Ice::OutgoingResponse)>);
    /// \endcond

    virtual void abort(const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    void _iceD_abort(::Ice::IncomingRequest&, ::std::function<void(::Ice::OutgoingResponse)>);
    /// \endcond

    virtual void idempotentAbort(const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    void _iceD_idempotentAbort(::Ice::IncomingRequest&, ::std::function<void(::Ice::OutgoingResponse)>);
    /// \endcond

    virtual ::std::int32_t pid(const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    void _iceD_pid(::Ice::IncomingRequest&, ::std::function<void(::Ice::OutgoingResponse)>);
    /// \endcond

    /// \cond INTERNAL
    void dispatch(::Ice::IncomingRequest&, ::std::function<void(::Ice::OutgoingResponse)>) override;
    /// \endcond
};

using TestIntfPtr = ::std::shared_ptr<TestIntf>;

class Cleaner : public virtual ::Ice::Object
{
public:

    using ProxyType = CleanerPrx;

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
    static const char* ice_staticId() noexcept;

    virtual void cleanup(const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    void _iceD_cleanup(::Ice::IncomingRequest&, ::std::function<void(::Ice::OutgoingResponse)>);
    /// \endcond

    /// \cond INTERNAL
    void dispatch(::Ice::IncomingRequest&, ::std::function<void(::Ice::OutgoingResponse)>) override;
    /// \endcond
};

using CleanerPtr = ::std::shared_ptr<Cleaner>;

}

#include <Ice/PopDisableWarnings.h>
#endif
