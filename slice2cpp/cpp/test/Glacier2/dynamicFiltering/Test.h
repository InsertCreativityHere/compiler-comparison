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
#include <Glacier2/Session.h>

#ifndef ICE_IGNORE_VERSION
#   if ICE_INT_VERSION  != 30850
#       error Ice version mismatch: an exact match is required for beta generated code
#   endif
#endif

namespace Test
{
    class BackendPrx;

    enum class StateCode : ::std::uint8_t
    {
        Initial,
        Running,
        Finished
    };

    struct TestToken;

    class TestControllerPrx;

    class TestSessionPrx;

}

namespace Test
{

class BackendPrx : public ::Ice::Proxy<BackendPrx, ::Ice::ObjectPrx>
{
public:

    void check(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    [[nodiscard]] ::std::future<void> checkAsync(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::function<void()>
    checkAsync(::std::function<void()> response, ::std::function<void(::std::exception_ptr)> ex = nullptr, ::std::function<void(bool)> sent = nullptr, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /// \cond INTERNAL
    void _iceI_check(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>&, const ::Ice::Context&) const;
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
    BackendPrx(const BackendPrx& other) noexcept : ::Ice::ObjectPrx(other)
    {
    }

    BackendPrx(BackendPrx&& other) noexcept : ::Ice::ObjectPrx(::std::move(other))
    {
    }

    BackendPrx(const ::Ice::CommunicatorPtr& communicator, std::string_view proxyString) :
        ::Ice::ObjectPrx(communicator, proxyString)
    {
    }

    BackendPrx& operator=(const BackendPrx& rhs) noexcept
    {
        if (this != &rhs)
        {
            ::Ice::ObjectPrx::operator=(rhs);
        }
        return *this;
    }

    BackendPrx& operator=(BackendPrx&& rhs) noexcept
    {
        if (this != &rhs)
        {
            ::Ice::ObjectPrx::operator=(::std::move(rhs));
        }
        return *this;
    }

    /// \cond INTERNAL
    static BackendPrx _fromReference(::IceInternal::ReferencePtr ref) { return BackendPrx(::std::move(ref)); }

protected:

    BackendPrx() = default;

    explicit BackendPrx(::IceInternal::ReferencePtr&& ref) : ::Ice::ObjectPrx(::std::move(ref))
    {
    }
    /// \endcond
};

class TestControllerPrx : public ::Ice::Proxy<TestControllerPrx, ::Ice::ObjectPrx>
{
public:

    void step(const ::std::optional<::Glacier2::SessionPrx>& currentSession, const TestToken& currentState, TestToken& newState, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    [[nodiscard]] ::std::future<TestToken> stepAsync(const ::std::optional<::Glacier2::SessionPrx>& currentSession, const TestToken& currentState, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::function<void()>
    stepAsync(const ::std::optional<::Glacier2::SessionPrx>& currentSession, const TestToken& currentState, ::std::function<void(::Test::TestToken)> response, ::std::function<void(::std::exception_ptr)> ex = nullptr, ::std::function<void(bool)> sent = nullptr, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /// \cond INTERNAL
    void _iceI_step(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<TestToken>>&, const ::std::optional<::Glacier2::SessionPrx>&, const TestToken&, const ::Ice::Context&) const;
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
    TestControllerPrx(const TestControllerPrx& other) noexcept : ::Ice::ObjectPrx(other)
    {
    }

    TestControllerPrx(TestControllerPrx&& other) noexcept : ::Ice::ObjectPrx(::std::move(other))
    {
    }

    TestControllerPrx(const ::Ice::CommunicatorPtr& communicator, std::string_view proxyString) :
        ::Ice::ObjectPrx(communicator, proxyString)
    {
    }

    TestControllerPrx& operator=(const TestControllerPrx& rhs) noexcept
    {
        if (this != &rhs)
        {
            ::Ice::ObjectPrx::operator=(rhs);
        }
        return *this;
    }

    TestControllerPrx& operator=(TestControllerPrx&& rhs) noexcept
    {
        if (this != &rhs)
        {
            ::Ice::ObjectPrx::operator=(::std::move(rhs));
        }
        return *this;
    }

    /// \cond INTERNAL
    static TestControllerPrx _fromReference(::IceInternal::ReferencePtr ref) { return TestControllerPrx(::std::move(ref)); }

protected:

    TestControllerPrx() = default;

    explicit TestControllerPrx(::IceInternal::ReferencePtr&& ref) : ::Ice::ObjectPrx(::std::move(ref))
    {
    }
    /// \endcond
};

class TestSessionPrx : public ::Ice::Proxy<TestSessionPrx, ::Glacier2::SessionPrx>
{
public:

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

#if defined(__GNUC__)
#   pragma GCC diagnostic push
#   pragma GCC diagnostic ignored "-Wextra" // initialize all virtual bases in correct order
#endif
    TestSessionPrx(const TestSessionPrx& other) noexcept : ::Ice::ObjectPrx(other)
    {
    }

    TestSessionPrx(TestSessionPrx&& other) noexcept : ::Ice::ObjectPrx(::std::move(other))
    {
    }

    TestSessionPrx(const ::Ice::CommunicatorPtr& communicator, std::string_view proxyString) :
        ::Ice::ObjectPrx(communicator, proxyString)
    {
    }

    TestSessionPrx& operator=(const TestSessionPrx& rhs) noexcept
    {
        if (this != &rhs)
        {
            ::Ice::ObjectPrx::operator=(rhs);
        }
        return *this;
    }

    TestSessionPrx& operator=(TestSessionPrx&& rhs) noexcept
    {
        if (this != &rhs)
        {
            ::Ice::ObjectPrx::operator=(::std::move(rhs));
        }
        return *this;
    }

    /// \cond INTERNAL
    static TestSessionPrx _fromReference(::IceInternal::ReferencePtr ref) { return TestSessionPrx(::std::move(ref)); }

protected:

    TestSessionPrx() = default;

    explicit TestSessionPrx(::IceInternal::ReferencePtr&& ref) : ::Ice::ObjectPrx(::std::move(ref))
    {
    }
    /// \endcond

#if defined(__GNUC__)
#   pragma GCC diagnostic pop
#endif
};

}

namespace Test
{

struct TestToken
{
    bool expectedResult;
    ::std::string description;
    ::Test::StateCode code;
    ::std::int16_t config;
    ::std::int16_t caseIndex;
    ::std::string testReference;

    /// Obtains a tuple containing all of the struct's data members.
    /// @return The data members in a tuple.
    [[nodiscard]] std::tuple<const bool&, const ::std::string&, const ::Test::StateCode&, const ::std::int16_t&, const ::std::int16_t&, const ::std::string&> ice_tuple() const
    {
        return std::tie(expectedResult, description, code, config, caseIndex, testReference);
    }
};

using Ice::Tuple::operator<;
using Ice::Tuple::operator<=;
using Ice::Tuple::operator>;
using Ice::Tuple::operator>=;
using Ice::Tuple::operator==;
using Ice::Tuple::operator!=;

}

namespace Test
{

class Backend : public virtual ::Ice::Object
{
public:

    using ProxyType = BackendPrx;

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

    virtual void check(const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    void _iceD_check(::Ice::IncomingRequest&, ::std::function<void(::Ice::OutgoingResponse)>);
    /// \endcond

    virtual void shutdown(const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    void _iceD_shutdown(::Ice::IncomingRequest&, ::std::function<void(::Ice::OutgoingResponse)>);
    /// \endcond

    /// \cond INTERNAL
    void dispatch(::Ice::IncomingRequest&, ::std::function<void(::Ice::OutgoingResponse)>) override;
    /// \endcond
};

using BackendPtr = ::std::shared_ptr<Backend>;

class TestController : public virtual ::Ice::Object
{
public:

    using ProxyType = TestControllerPrx;

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

    virtual void step(::std::optional<::Glacier2::SessionPrx> currentSession, TestToken currentState, TestToken& newState, const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    void _iceD_step(::Ice::IncomingRequest&, ::std::function<void(::Ice::OutgoingResponse)>);
    /// \endcond

    virtual void shutdown(const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    void _iceD_shutdown(::Ice::IncomingRequest&, ::std::function<void(::Ice::OutgoingResponse)>);
    /// \endcond

    /// \cond INTERNAL
    void dispatch(::Ice::IncomingRequest&, ::std::function<void(::Ice::OutgoingResponse)>) override;
    /// \endcond
};

using TestControllerPtr = ::std::shared_ptr<TestController>;

class TestSession : public virtual ::Glacier2::Session
{
public:

    using ProxyType = TestSessionPrx;

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

    virtual void shutdown(const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    void _iceD_shutdown(::Ice::IncomingRequest&, ::std::function<void(::Ice::OutgoingResponse)>);
    /// \endcond

    /// \cond INTERNAL
    void dispatch(::Ice::IncomingRequest&, ::std::function<void(::Ice::OutgoingResponse)>) override;
    /// \endcond
};

using TestSessionPtr = ::std::shared_ptr<TestSession>;

}

/// \cond STREAM
namespace Ice
{

template<>
struct StreamableTraits< ::Test::StateCode>
{
    static const StreamHelperCategory helper = StreamHelperCategoryEnum;
    static const int minValue = 0;
    static const int maxValue = 2;
    static const int minWireSize = 1;
    static const bool fixedLength = false;
};

template<>
struct StreamableTraits<::Test::TestToken>
{
    static const StreamHelperCategory helper = StreamHelperCategoryStruct;
    static const int minWireSize = 8;
    static const bool fixedLength = false;
};

template<>
struct StreamReader<::Test::TestToken>
{
    static void read(InputStream* istr, ::Test::TestToken& v)
    {
        istr->readAll(v.expectedResult, v.description, v.code, v.config, v.caseIndex, v.testReference);
    }
};

}
/// \endcond

#include <Ice/PopDisableWarnings.h>
#endif
