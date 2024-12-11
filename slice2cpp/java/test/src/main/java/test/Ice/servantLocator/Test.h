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
    class TestIntfPrx;

    class TestActivationPrx;

}

namespace Test
{

class TestIntfPrx : public ::Ice::Proxy<TestIntfPrx, ::Ice::ObjectPrx>
{
public:

    void requestFailedException(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    [[nodiscard]] ::std::future<void> requestFailedExceptionAsync(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::function<void()>
    requestFailedExceptionAsync(::std::function<void()> response, ::std::function<void(::std::exception_ptr)> ex = nullptr, ::std::function<void(bool)> sent = nullptr, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /// \cond INTERNAL
    void _iceI_requestFailedException(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>&, const ::Ice::Context&) const;
    /// \endcond

    void unknownUserException(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    [[nodiscard]] ::std::future<void> unknownUserExceptionAsync(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::function<void()>
    unknownUserExceptionAsync(::std::function<void()> response, ::std::function<void(::std::exception_ptr)> ex = nullptr, ::std::function<void(bool)> sent = nullptr, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /// \cond INTERNAL
    void _iceI_unknownUserException(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>&, const ::Ice::Context&) const;
    /// \endcond

    void unknownLocalException(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    [[nodiscard]] ::std::future<void> unknownLocalExceptionAsync(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::function<void()>
    unknownLocalExceptionAsync(::std::function<void()> response, ::std::function<void(::std::exception_ptr)> ex = nullptr, ::std::function<void(bool)> sent = nullptr, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /// \cond INTERNAL
    void _iceI_unknownLocalException(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>&, const ::Ice::Context&) const;
    /// \endcond

    void unknownException(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    [[nodiscard]] ::std::future<void> unknownExceptionAsync(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::function<void()>
    unknownExceptionAsync(::std::function<void()> response, ::std::function<void(::std::exception_ptr)> ex = nullptr, ::std::function<void(bool)> sent = nullptr, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /// \cond INTERNAL
    void _iceI_unknownException(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>&, const ::Ice::Context&) const;
    /// \endcond

    void localException(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    [[nodiscard]] ::std::future<void> localExceptionAsync(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::function<void()>
    localExceptionAsync(::std::function<void()> response, ::std::function<void(::std::exception_ptr)> ex = nullptr, ::std::function<void(bool)> sent = nullptr, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /// \cond INTERNAL
    void _iceI_localException(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>&, const ::Ice::Context&) const;
    /// \endcond

    void javaException(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    [[nodiscard]] ::std::future<void> javaExceptionAsync(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::function<void()>
    javaExceptionAsync(::std::function<void()> response, ::std::function<void(::std::exception_ptr)> ex = nullptr, ::std::function<void(bool)> sent = nullptr, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /// \cond INTERNAL
    void _iceI_javaException(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>&, const ::Ice::Context&) const;
    /// \endcond

    void unknownExceptionWithServantException(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    [[nodiscard]] ::std::future<void> unknownExceptionWithServantExceptionAsync(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::function<void()>
    unknownExceptionWithServantExceptionAsync(::std::function<void()> response, ::std::function<void(::std::exception_ptr)> ex = nullptr, ::std::function<void(bool)> sent = nullptr, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /// \cond INTERNAL
    void _iceI_unknownExceptionWithServantException(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>&, const ::Ice::Context&) const;
    /// \endcond

    ::std::string impossibleException(bool _cpp_throw, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    [[nodiscard]] ::std::future<::std::string> impossibleExceptionAsync(bool _cpp_throw, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::function<void()>
    impossibleExceptionAsync(bool _cpp_throw, ::std::function<void(::std::string)> response, ::std::function<void(::std::exception_ptr)> ex = nullptr, ::std::function<void(bool)> sent = nullptr, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /// \cond INTERNAL
    void _iceI_impossibleException(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<::std::string>>&, bool, const ::Ice::Context&) const;
    /// \endcond

    ::std::string intfUserException(bool _cpp_throw, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    [[nodiscard]] ::std::future<::std::string> intfUserExceptionAsync(bool _cpp_throw, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::function<void()>
    intfUserExceptionAsync(bool _cpp_throw, ::std::function<void(::std::string)> response, ::std::function<void(::std::exception_ptr)> ex = nullptr, ::std::function<void(bool)> sent = nullptr, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /// \cond INTERNAL
    void _iceI_intfUserException(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<::std::string>>&, bool, const ::Ice::Context&) const;
    /// \endcond

    void asyncResponse(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    [[nodiscard]] ::std::future<void> asyncResponseAsync(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::function<void()>
    asyncResponseAsync(::std::function<void()> response, ::std::function<void(::std::exception_ptr)> ex = nullptr, ::std::function<void(bool)> sent = nullptr, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /// \cond INTERNAL
    void _iceI_asyncResponse(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>&, const ::Ice::Context&) const;
    /// \endcond

    void asyncException(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    [[nodiscard]] ::std::future<void> asyncExceptionAsync(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::function<void()>
    asyncExceptionAsync(::std::function<void()> response, ::std::function<void(::std::exception_ptr)> ex = nullptr, ::std::function<void(bool)> sent = nullptr, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /// \cond INTERNAL
    void _iceI_asyncException(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>&, const ::Ice::Context&) const;
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
        if (this != &rhs)
        {
            ::Ice::ObjectPrx::operator=(rhs);
        }
        return *this;
    }

    TestIntfPrx& operator=(TestIntfPrx&& rhs) noexcept
    {
        if (this != &rhs)
        {
            ::Ice::ObjectPrx::operator=(::std::move(rhs));
        }
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

class TestActivationPrx : public ::Ice::Proxy<TestActivationPrx, ::Ice::ObjectPrx>
{
public:

    void activateServantLocator(bool activate, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    [[nodiscard]] ::std::future<void> activateServantLocatorAsync(bool activate, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::function<void()>
    activateServantLocatorAsync(bool activate, ::std::function<void()> response, ::std::function<void(::std::exception_ptr)> ex = nullptr, ::std::function<void(bool)> sent = nullptr, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /// \cond INTERNAL
    void _iceI_activateServantLocator(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>&, bool, const ::Ice::Context&) const;
    /// \endcond

    /// Obtains the Slice type ID of this interface.
    /// @return The fully-scoped type ID.
    static const char* ice_staticId() noexcept;
    TestActivationPrx(const TestActivationPrx& other) noexcept : ::Ice::ObjectPrx(other)
    {
    }

    TestActivationPrx(TestActivationPrx&& other) noexcept : ::Ice::ObjectPrx(::std::move(other))
    {
    }

    TestActivationPrx(const ::Ice::CommunicatorPtr& communicator, std::string_view proxyString) :
        ::Ice::ObjectPrx(communicator, proxyString)
    {
    }

    TestActivationPrx& operator=(const TestActivationPrx& rhs) noexcept
    {
        if (this != &rhs)
        {
            ::Ice::ObjectPrx::operator=(rhs);
        }
        return *this;
    }

    TestActivationPrx& operator=(TestActivationPrx&& rhs) noexcept
    {
        if (this != &rhs)
        {
            ::Ice::ObjectPrx::operator=(::std::move(rhs));
        }
        return *this;
    }

    /// \cond INTERNAL
    static TestActivationPrx _fromReference(::IceInternal::ReferencePtr ref) { return TestActivationPrx(::std::move(ref)); }

protected:

    TestActivationPrx() = default;

    explicit TestActivationPrx(::IceInternal::ReferencePtr&& ref) : ::Ice::ObjectPrx(::std::move(ref))
    {
    }
    /// \endcond
};

}

namespace Test
{

class TestIntfUserException : public ::Ice::UserException
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

class TestImpossibleException : public ::Ice::UserException
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

class TestIntf : public virtual ::Ice::Object
{
public:

    using ProxyType = TestIntfPrx;

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

    virtual void requestFailedException(const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    void _iceD_requestFailedException(::Ice::IncomingRequest&, ::std::function<void(::Ice::OutgoingResponse)>);
    /// \endcond

    virtual void unknownUserException(const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    void _iceD_unknownUserException(::Ice::IncomingRequest&, ::std::function<void(::Ice::OutgoingResponse)>);
    /// \endcond

    virtual void unknownLocalException(const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    void _iceD_unknownLocalException(::Ice::IncomingRequest&, ::std::function<void(::Ice::OutgoingResponse)>);
    /// \endcond

    virtual void unknownException(const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    void _iceD_unknownException(::Ice::IncomingRequest&, ::std::function<void(::Ice::OutgoingResponse)>);
    /// \endcond

    virtual void localException(const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    void _iceD_localException(::Ice::IncomingRequest&, ::std::function<void(::Ice::OutgoingResponse)>);
    /// \endcond

    virtual void javaException(const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    void _iceD_javaException(::Ice::IncomingRequest&, ::std::function<void(::Ice::OutgoingResponse)>);
    /// \endcond

    virtual void unknownExceptionWithServantException(const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    void _iceD_unknownExceptionWithServantException(::Ice::IncomingRequest&, ::std::function<void(::Ice::OutgoingResponse)>);
    /// \endcond

    virtual ::std::string impossibleException(bool _cpp_throw, const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    void _iceD_impossibleException(::Ice::IncomingRequest&, ::std::function<void(::Ice::OutgoingResponse)>);
    /// \endcond

    virtual ::std::string intfUserException(bool _cpp_throw, const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    void _iceD_intfUserException(::Ice::IncomingRequest&, ::std::function<void(::Ice::OutgoingResponse)>);
    /// \endcond

    virtual void asyncResponse(const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    void _iceD_asyncResponse(::Ice::IncomingRequest&, ::std::function<void(::Ice::OutgoingResponse)>);
    /// \endcond

    virtual void asyncException(const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    void _iceD_asyncException(::Ice::IncomingRequest&, ::std::function<void(::Ice::OutgoingResponse)>);
    /// \endcond

    virtual void shutdown(const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    void _iceD_shutdown(::Ice::IncomingRequest&, ::std::function<void(::Ice::OutgoingResponse)>);
    /// \endcond

    /// \cond INTERNAL
    void dispatch(::Ice::IncomingRequest&, ::std::function<void(::Ice::OutgoingResponse)>) override;
    /// \endcond
};

using TestIntfPtr = ::std::shared_ptr<TestIntf>;

class TestActivation : public virtual ::Ice::Object
{
public:

    using ProxyType = TestActivationPrx;

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

    virtual void activateServantLocator(bool activate, const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    void _iceD_activateServantLocator(::Ice::IncomingRequest&, ::std::function<void(::Ice::OutgoingResponse)>);
    /// \endcond

    /// \cond INTERNAL
    void dispatch(::Ice::IncomingRequest&, ::std::function<void(::Ice::OutgoingResponse)>) override;
    /// \endcond
};

using TestActivationPtr = ::std::shared_ptr<TestActivation>;

}

/// \cond STREAM
namespace Ice
{

}
/// \endcond

#include <Ice/PopDisableWarnings.h>
#endif
