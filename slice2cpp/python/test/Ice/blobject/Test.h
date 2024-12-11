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

#ifndef Test_h_
#define Test_h_

#include <Ice/PushDisableWarnings.h>
#include <Ice/Ice.h>

#ifndef ICE_IGNORE_VERSION
#   if ICE_INT_VERSION  != 30850
#       error Ice version mismatch: an exact match is required for beta generated code
#   endif
#endif

namespace Test
{
    class HelloPrx;

}

namespace Test
{

class HelloPrx : public ::Ice::Proxy<HelloPrx, ::Ice::ObjectPrx>
{
public:

    void sayHello(::std::int32_t delay, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    [[nodiscard]] ::std::future<void> sayHelloAsync(::std::int32_t delay, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::function<void()>
    sayHelloAsync(::std::int32_t delay, ::std::function<void()> response, ::std::function<void(::std::exception_ptr)> ex = nullptr, ::std::function<void(bool)> sent = nullptr, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /// \cond INTERNAL
    void _iceI_sayHello(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>&, ::std::int32_t, const ::Ice::Context&) const;
    /// \endcond

    ::std::int32_t add(::std::int32_t s1, ::std::int32_t s2, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    [[nodiscard]] ::std::future<::std::int32_t> addAsync(::std::int32_t s1, ::std::int32_t s2, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::function<void()>
    addAsync(::std::int32_t s1, ::std::int32_t s2, ::std::function<void(::std::int32_t)> response, ::std::function<void(::std::exception_ptr)> ex = nullptr, ::std::function<void(bool)> sent = nullptr, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /// \cond INTERNAL
    void _iceI_add(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<::std::int32_t>>&, ::std::int32_t, ::std::int32_t, const ::Ice::Context&) const;
    /// \endcond

    void raiseUE(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    [[nodiscard]] ::std::future<void> raiseUEAsync(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::function<void()>
    raiseUEAsync(::std::function<void()> response, ::std::function<void(::std::exception_ptr)> ex = nullptr, ::std::function<void(bool)> sent = nullptr, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /// \cond INTERNAL
    void _iceI_raiseUE(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>&, const ::Ice::Context&) const;
    /// \endcond

    void shutdown(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    [[nodiscard]] ::std::future<void> shutdownAsync(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::function<void()>
    shutdownAsync(::std::function<void()> response, ::std::function<void(::std::exception_ptr)> ex = nullptr, ::std::function<void(bool)> sent = nullptr, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /// \cond INTERNAL
    void _iceI_shutdown(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>&, const ::Ice::Context&) const;
    /// \endcond

    /// Obtains the Slice type ID of this interface.
    /// @return The fully-scoped type ID.
    static const char* ice_staticId() noexcept;
    HelloPrx(const HelloPrx& other) noexcept : ::Ice::ObjectPrx(other)
    {
    }

    HelloPrx(HelloPrx&& other) noexcept : ::Ice::ObjectPrx(::std::move(other))
    {
    }

    HelloPrx(const ::Ice::CommunicatorPtr& communicator, std::string_view proxyString) :
        ::Ice::ObjectPrx(communicator, proxyString)
    {
    }

    HelloPrx& operator=(const HelloPrx& rhs) noexcept
    {
        if (this != &rhs)
        {
            ::Ice::ObjectPrx::operator=(rhs);
        }
        return *this;
    }

    HelloPrx& operator=(HelloPrx&& rhs) noexcept
    {
        if (this != &rhs)
        {
            ::Ice::ObjectPrx::operator=(::std::move(rhs));
        }
        return *this;
    }

    /// \cond INTERNAL
    static HelloPrx _fromReference(::IceInternal::ReferencePtr ref) { return HelloPrx(::std::move(ref)); }

protected:

    HelloPrx() = default;

    explicit HelloPrx(::IceInternal::ReferencePtr&& ref) : ::Ice::ObjectPrx(::std::move(ref))
    {
    }
    /// \endcond
};

}

namespace Test
{

class UE : public ::Ice::UserException
{
public:
    /// Obtains the Slice type ID of this exception.
    /// @return The fully-scoped type ID.
    static const char* ice_staticId() noexcept;

    const char* ice_id() const noexcept override;

    void ice_throw() const override;

protected:
    void _writeImpl(::Ice::OutputStream*) const override;

    void _readImpl(::Ice::InputStream*) override;
};

}

namespace Test
{

class Hello : public virtual ::Ice::Object
{
public:

    using ProxyType = HelloPrx;

    /// Obtains a list of the Slice type IDs representing the interfaces supported by this object.
    /// @param current The Current object for the invocation.
    /// @return A list of fully-scoped type IDs.
    ::std::vector<::std::string> ice_ids(const ::Ice::Current& current) const override;

    /// Obtains a Slice type ID representing the most-derived interface supported by this object.
    /// @param current The Current object for the invocation.
    /// @return A fully-scoped type ID.
    ::std::string ice_id(const ::Ice::Current& current) const override;

    /// Obtains the Slice type ID corresponding to this interface.
    /// @return A fully-scoped type ID.
    static const char* ice_staticId() noexcept;

    virtual void sayHello(::std::int32_t delay, const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    void _iceD_sayHello(::Ice::IncomingRequest&, ::std::function<void(::Ice::OutgoingResponse)>);
    /// \endcond

    virtual ::std::int32_t add(::std::int32_t s1, ::std::int32_t s2, const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    void _iceD_add(::Ice::IncomingRequest&, ::std::function<void(::Ice::OutgoingResponse)>);
    /// \endcond

    virtual void raiseUE(const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    void _iceD_raiseUE(::Ice::IncomingRequest&, ::std::function<void(::Ice::OutgoingResponse)>);
    /// \endcond

    virtual void shutdown(const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    void _iceD_shutdown(::Ice::IncomingRequest&, ::std::function<void(::Ice::OutgoingResponse)>);
    /// \endcond

    /// \cond INTERNAL
    void dispatch(::Ice::IncomingRequest&, ::std::function<void(::Ice::OutgoingResponse)>) override;
    /// \endcond
};

using HelloPtr = ::std::shared_ptr<Hello>;

}

/// \cond STREAM
namespace Ice
{

}
/// \endcond

#include <Ice/PopDisableWarnings.h>
#endif
