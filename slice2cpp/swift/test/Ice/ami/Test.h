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
#include <Ice/BuiltinSequences.h>
#include <Ice/Identity.h>

#ifndef ICE_IGNORE_VERSION
#   if ICE_INT_VERSION  != 30850
#       error Ice version mismatch: an exact match is required for beta generated code
#   endif
#endif

namespace Test
{
    class PingReplyPrx;

    class TestIntfPrx;

    class TestIntfControllerPrx;


    namespace Outer
    {

        namespace Inner
        {
            class TestIntfPrx;

        }
    }
}

namespace Test
{

class PingReplyPrx : public ::Ice::Proxy<PingReplyPrx, ::Ice::ObjectPrx>
{
public:

    void reply(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    [[nodiscard]] ::std::future<void> replyAsync(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::function<void()>
    replyAsync(::std::function<void()> response, ::std::function<void(::std::exception_ptr)> ex = nullptr, ::std::function<void(bool)> sent = nullptr, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /// \cond INTERNAL
    void _iceI_reply(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>&, const ::Ice::Context&) const;
    /// \endcond

    /// Obtains the Slice type ID of this interface.
    /// @return The fully-scoped type ID.
    static const char* ice_staticId() noexcept;
    PingReplyPrx(const PingReplyPrx& other) noexcept : ::Ice::ObjectPrx(other)
    {
    }

    PingReplyPrx(PingReplyPrx&& other) noexcept : ::Ice::ObjectPrx(::std::move(other))
    {
    }

    PingReplyPrx(const ::Ice::CommunicatorPtr& communicator, std::string_view proxyString) :
        ::Ice::ObjectPrx(communicator, proxyString)
    {
    }

    PingReplyPrx& operator=(const PingReplyPrx& rhs) noexcept
    {
        if (this != &rhs)
        {
            ::Ice::ObjectPrx::operator=(rhs);
        }
        return *this;
    }

    PingReplyPrx& operator=(PingReplyPrx&& rhs) noexcept
    {
        if (this != &rhs)
        {
            ::Ice::ObjectPrx::operator=(::std::move(rhs));
        }
        return *this;
    }

    /// \cond INTERNAL
    static PingReplyPrx _fromReference(::IceInternal::ReferencePtr ref) { return PingReplyPrx(::std::move(ref)); }

protected:

    PingReplyPrx() = default;

    explicit PingReplyPrx(::IceInternal::ReferencePtr&& ref) : ::Ice::ObjectPrx(::std::move(ref))
    {
    }
    /// \endcond
};

class TestIntfPrx : public ::Ice::Proxy<TestIntfPrx, ::Ice::ObjectPrx>
{
public:

    void op(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    [[nodiscard]] ::std::future<void> opAsync(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::function<void()>
    opAsync(::std::function<void()> response, ::std::function<void(::std::exception_ptr)> ex = nullptr, ::std::function<void(bool)> sent = nullptr, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /// \cond INTERNAL
    void _iceI_op(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>&, const ::Ice::Context&) const;
    /// \endcond

    void opWithPayload(const ::Ice::ByteSeq& seq, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    [[nodiscard]] ::std::future<void> opWithPayloadAsync(const ::Ice::ByteSeq& seq, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::function<void()>
    opWithPayloadAsync(const ::Ice::ByteSeq& seq, ::std::function<void()> response, ::std::function<void(::std::exception_ptr)> ex = nullptr, ::std::function<void(bool)> sent = nullptr, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /// \cond INTERNAL
    void _iceI_opWithPayload(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>&, const ::Ice::ByteSeq&, const ::Ice::Context&) const;
    /// \endcond

    ::std::int32_t opWithResult(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    [[nodiscard]] ::std::future<::std::int32_t> opWithResultAsync(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::function<void()>
    opWithResultAsync(::std::function<void(::std::int32_t)> response, ::std::function<void(::std::exception_ptr)> ex = nullptr, ::std::function<void(bool)> sent = nullptr, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /// \cond INTERNAL
    void _iceI_opWithResult(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<::std::int32_t>>&, const ::Ice::Context&) const;
    /// \endcond

    void opWithUE(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    [[nodiscard]] ::std::future<void> opWithUEAsync(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::function<void()>
    opWithUEAsync(::std::function<void()> response, ::std::function<void(::std::exception_ptr)> ex = nullptr, ::std::function<void(bool)> sent = nullptr, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /// \cond INTERNAL
    void _iceI_opWithUE(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>&, const ::Ice::Context&) const;
    /// \endcond

    ::std::int32_t opWithResultAndUE(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    [[nodiscard]] ::std::future<::std::int32_t> opWithResultAndUEAsync(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::function<void()>
    opWithResultAndUEAsync(::std::function<void(::std::int32_t)> response, ::std::function<void(::std::exception_ptr)> ex = nullptr, ::std::function<void(bool)> sent = nullptr, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /// \cond INTERNAL
    void _iceI_opWithResultAndUE(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<::std::int32_t>>&, const ::Ice::Context&) const;
    /// \endcond

    void opBatch(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    [[nodiscard]] ::std::future<void> opBatchAsync(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::function<void()>
    opBatchAsync(::std::function<void()> response, ::std::function<void(::std::exception_ptr)> ex = nullptr, ::std::function<void(bool)> sent = nullptr, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /// \cond INTERNAL
    void _iceI_opBatch(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>&, const ::Ice::Context&) const;
    /// \endcond

    void opWithArgs(::std::int32_t& one, ::std::int32_t& two, ::std::int32_t& three, ::std::int32_t& four, ::std::int32_t& five, ::std::int32_t& six, ::std::int32_t& seven, ::std::int32_t& eight, ::std::int32_t& nine, ::std::int32_t& ten, ::std::int32_t& eleven, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    [[nodiscard]] ::std::future<::std::tuple<::std::int32_t, ::std::int32_t, ::std::int32_t, ::std::int32_t, ::std::int32_t, ::std::int32_t, ::std::int32_t, ::std::int32_t, ::std::int32_t, ::std::int32_t, ::std::int32_t>> opWithArgsAsync(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::function<void()>
    opWithArgsAsync(::std::function<void(::std::int32_t, ::std::int32_t, ::std::int32_t, ::std::int32_t, ::std::int32_t, ::std::int32_t, ::std::int32_t, ::std::int32_t, ::std::int32_t, ::std::int32_t, ::std::int32_t)> response, ::std::function<void(::std::exception_ptr)> ex = nullptr, ::std::function<void(bool)> sent = nullptr, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /// \cond INTERNAL
    void _iceI_opWithArgs(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<::std::tuple<::std::int32_t, ::std::int32_t, ::std::int32_t, ::std::int32_t, ::std::int32_t, ::std::int32_t, ::std::int32_t, ::std::int32_t, ::std::int32_t, ::std::int32_t, ::std::int32_t>>>&, const ::Ice::Context&) const;
    /// \endcond

    ::std::int32_t opBatchCount(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    [[nodiscard]] ::std::future<::std::int32_t> opBatchCountAsync(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::function<void()>
    opBatchCountAsync(::std::function<void(::std::int32_t)> response, ::std::function<void(::std::exception_ptr)> ex = nullptr, ::std::function<void(bool)> sent = nullptr, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /// \cond INTERNAL
    void _iceI_opBatchCount(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<::std::int32_t>>&, const ::Ice::Context&) const;
    /// \endcond

    bool waitForBatch(::std::int32_t count, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    [[nodiscard]] ::std::future<bool> waitForBatchAsync(::std::int32_t count, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::function<void()>
    waitForBatchAsync(::std::int32_t count, ::std::function<void(bool)> response, ::std::function<void(::std::exception_ptr)> ex = nullptr, ::std::function<void(bool)> sent = nullptr, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /// \cond INTERNAL
    void _iceI_waitForBatch(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<bool>>&, ::std::int32_t, const ::Ice::Context&) const;
    /// \endcond

    void closeConnection(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    [[nodiscard]] ::std::future<void> closeConnectionAsync(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::function<void()>
    closeConnectionAsync(::std::function<void()> response, ::std::function<void(::std::exception_ptr)> ex = nullptr, ::std::function<void(bool)> sent = nullptr, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /// \cond INTERNAL
    void _iceI_closeConnection(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>&, const ::Ice::Context&) const;
    /// \endcond

    void abortConnection(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    [[nodiscard]] ::std::future<void> abortConnectionAsync(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::function<void()>
    abortConnectionAsync(::std::function<void()> response, ::std::function<void(::std::exception_ptr)> ex = nullptr, ::std::function<void(bool)> sent = nullptr, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /// \cond INTERNAL
    void _iceI_abortConnection(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>&, const ::Ice::Context&) const;
    /// \endcond

    void sleep(::std::int32_t ms, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    [[nodiscard]] ::std::future<void> sleepAsync(::std::int32_t ms, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::function<void()>
    sleepAsync(::std::int32_t ms, ::std::function<void()> response, ::std::function<void(::std::exception_ptr)> ex = nullptr, ::std::function<void(bool)> sent = nullptr, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /// \cond INTERNAL
    void _iceI_sleep(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>&, ::std::int32_t, const ::Ice::Context&) const;
    /// \endcond

    void startDispatch(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    [[nodiscard]] ::std::future<void> startDispatchAsync(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::function<void()>
    startDispatchAsync(::std::function<void()> response, ::std::function<void(::std::exception_ptr)> ex = nullptr, ::std::function<void(bool)> sent = nullptr, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /// \cond INTERNAL
    void _iceI_startDispatch(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>&, const ::Ice::Context&) const;
    /// \endcond

    void finishDispatch(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    [[nodiscard]] ::std::future<void> finishDispatchAsync(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::function<void()>
    finishDispatchAsync(::std::function<void()> response, ::std::function<void(::std::exception_ptr)> ex = nullptr, ::std::function<void(bool)> sent = nullptr, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /// \cond INTERNAL
    void _iceI_finishDispatch(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>&, const ::Ice::Context&) const;
    /// \endcond

    void shutdown(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    [[nodiscard]] ::std::future<void> shutdownAsync(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::function<void()>
    shutdownAsync(::std::function<void()> response, ::std::function<void(::std::exception_ptr)> ex = nullptr, ::std::function<void(bool)> sent = nullptr, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /// \cond INTERNAL
    void _iceI_shutdown(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>&, const ::Ice::Context&) const;
    /// \endcond

    bool supportsFunctionalTests(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    [[nodiscard]] ::std::future<bool> supportsFunctionalTestsAsync(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::function<void()>
    supportsFunctionalTestsAsync(::std::function<void(bool)> response, ::std::function<void(::std::exception_ptr)> ex = nullptr, ::std::function<void(bool)> sent = nullptr, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /// \cond INTERNAL
    void _iceI_supportsFunctionalTests(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<bool>>&, const ::Ice::Context&) const;
    /// \endcond

    bool supportsBackPressureTests(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    [[nodiscard]] ::std::future<bool> supportsBackPressureTestsAsync(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::function<void()>
    supportsBackPressureTestsAsync(::std::function<void(bool)> response, ::std::function<void(::std::exception_ptr)> ex = nullptr, ::std::function<void(bool)> sent = nullptr, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /// \cond INTERNAL
    void _iceI_supportsBackPressureTests(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<bool>>&, const ::Ice::Context&) const;
    /// \endcond

    void pingBiDir(const ::std::optional<PingReplyPrx>& reply, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    [[nodiscard]] ::std::future<void> pingBiDirAsync(const ::std::optional<PingReplyPrx>& reply, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::function<void()>
    pingBiDirAsync(const ::std::optional<PingReplyPrx>& reply, ::std::function<void()> response, ::std::function<void(::std::exception_ptr)> ex = nullptr, ::std::function<void(bool)> sent = nullptr, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /// \cond INTERNAL
    void _iceI_pingBiDir(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>&, const ::std::optional<PingReplyPrx>&, const ::Ice::Context&) const;
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

class TestIntfControllerPrx : public ::Ice::Proxy<TestIntfControllerPrx, ::Ice::ObjectPrx>
{
public:

    void holdAdapter(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    [[nodiscard]] ::std::future<void> holdAdapterAsync(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::function<void()>
    holdAdapterAsync(::std::function<void()> response, ::std::function<void(::std::exception_ptr)> ex = nullptr, ::std::function<void(bool)> sent = nullptr, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /// \cond INTERNAL
    void _iceI_holdAdapter(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>&, const ::Ice::Context&) const;
    /// \endcond

    void resumeAdapter(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    [[nodiscard]] ::std::future<void> resumeAdapterAsync(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::function<void()>
    resumeAdapterAsync(::std::function<void()> response, ::std::function<void(::std::exception_ptr)> ex = nullptr, ::std::function<void(bool)> sent = nullptr, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /// \cond INTERNAL
    void _iceI_resumeAdapter(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>&, const ::Ice::Context&) const;
    /// \endcond

    /// Obtains the Slice type ID of this interface.
    /// @return The fully-scoped type ID.
    static const char* ice_staticId() noexcept;
    TestIntfControllerPrx(const TestIntfControllerPrx& other) noexcept : ::Ice::ObjectPrx(other)
    {
    }

    TestIntfControllerPrx(TestIntfControllerPrx&& other) noexcept : ::Ice::ObjectPrx(::std::move(other))
    {
    }

    TestIntfControllerPrx(const ::Ice::CommunicatorPtr& communicator, std::string_view proxyString) :
        ::Ice::ObjectPrx(communicator, proxyString)
    {
    }

    TestIntfControllerPrx& operator=(const TestIntfControllerPrx& rhs) noexcept
    {
        if (this != &rhs)
        {
            ::Ice::ObjectPrx::operator=(rhs);
        }
        return *this;
    }

    TestIntfControllerPrx& operator=(TestIntfControllerPrx&& rhs) noexcept
    {
        if (this != &rhs)
        {
            ::Ice::ObjectPrx::operator=(::std::move(rhs));
        }
        return *this;
    }

    /// \cond INTERNAL
    static TestIntfControllerPrx _fromReference(::IceInternal::ReferencePtr ref) { return TestIntfControllerPrx(::std::move(ref)); }

protected:

    TestIntfControllerPrx() = default;

    explicit TestIntfControllerPrx(::IceInternal::ReferencePtr&& ref) : ::Ice::ObjectPrx(::std::move(ref))
    {
    }
    /// \endcond
};

namespace Outer
{

namespace Inner
{

class TestIntfPrx : public ::Ice::Proxy<TestIntfPrx, ::Ice::ObjectPrx>
{
public:

    ::std::int32_t op(::std::int32_t i, ::std::int32_t& j, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    [[nodiscard]] ::std::future<::std::tuple<::std::int32_t, ::std::int32_t>> opAsync(::std::int32_t i, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::function<void()>
    opAsync(::std::int32_t i, ::std::function<void(::std::int32_t, ::std::int32_t)> response, ::std::function<void(::std::exception_ptr)> ex = nullptr, ::std::function<void(bool)> sent = nullptr, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /// \cond INTERNAL
    void _iceI_op(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<::std::tuple<::std::int32_t, ::std::int32_t>>>&, ::std::int32_t, const ::Ice::Context&) const;
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

}

}

}

namespace Test
{

class TestIntfException : public ::Ice::UserException
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

class PingReply : public virtual ::Ice::Object
{
public:

    using ProxyType = PingReplyPrx;

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

    virtual void reply(const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    void _iceD_reply(::Ice::IncomingRequest&, ::std::function<void(::Ice::OutgoingResponse)>);
    /// \endcond

    /// \cond INTERNAL
    void dispatch(::Ice::IncomingRequest&, ::std::function<void(::Ice::OutgoingResponse)>) override;
    /// \endcond
};

using PingReplyPtr = ::std::shared_ptr<PingReply>;

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

    virtual void op(const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    void _iceD_op(::Ice::IncomingRequest&, ::std::function<void(::Ice::OutgoingResponse)>);
    /// \endcond

    virtual void opWithPayload(::Ice::ByteSeq seq, const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    void _iceD_opWithPayload(::Ice::IncomingRequest&, ::std::function<void(::Ice::OutgoingResponse)>);
    /// \endcond

    virtual ::std::int32_t opWithResult(const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    void _iceD_opWithResult(::Ice::IncomingRequest&, ::std::function<void(::Ice::OutgoingResponse)>);
    /// \endcond

    virtual void opWithUE(const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    void _iceD_opWithUE(::Ice::IncomingRequest&, ::std::function<void(::Ice::OutgoingResponse)>);
    /// \endcond

    virtual ::std::int32_t opWithResultAndUE(const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    void _iceD_opWithResultAndUE(::Ice::IncomingRequest&, ::std::function<void(::Ice::OutgoingResponse)>);
    /// \endcond

    virtual void opBatch(const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    void _iceD_opBatch(::Ice::IncomingRequest&, ::std::function<void(::Ice::OutgoingResponse)>);
    /// \endcond

    virtual void opWithArgs(::std::int32_t& one, ::std::int32_t& two, ::std::int32_t& three, ::std::int32_t& four, ::std::int32_t& five, ::std::int32_t& six, ::std::int32_t& seven, ::std::int32_t& eight, ::std::int32_t& nine, ::std::int32_t& ten, ::std::int32_t& eleven, const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    void _iceD_opWithArgs(::Ice::IncomingRequest&, ::std::function<void(::Ice::OutgoingResponse)>);
    /// \endcond

    virtual ::std::int32_t opBatchCount(const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    void _iceD_opBatchCount(::Ice::IncomingRequest&, ::std::function<void(::Ice::OutgoingResponse)>);
    /// \endcond

    virtual bool waitForBatch(::std::int32_t count, const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    void _iceD_waitForBatch(::Ice::IncomingRequest&, ::std::function<void(::Ice::OutgoingResponse)>);
    /// \endcond

    virtual void closeConnection(const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    void _iceD_closeConnection(::Ice::IncomingRequest&, ::std::function<void(::Ice::OutgoingResponse)>);
    /// \endcond

    virtual void abortConnection(const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    void _iceD_abortConnection(::Ice::IncomingRequest&, ::std::function<void(::Ice::OutgoingResponse)>);
    /// \endcond

    virtual void sleep(::std::int32_t ms, const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    void _iceD_sleep(::Ice::IncomingRequest&, ::std::function<void(::Ice::OutgoingResponse)>);
    /// \endcond

    virtual void startDispatchAsync(::std::function<void()> response, ::std::function<void(::std::exception_ptr)> exception, const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    void _iceD_startDispatch(::Ice::IncomingRequest&, ::std::function<void(::Ice::OutgoingResponse)>);
    /// \endcond

    virtual void finishDispatch(const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    void _iceD_finishDispatch(::Ice::IncomingRequest&, ::std::function<void(::Ice::OutgoingResponse)>);
    /// \endcond

    virtual void shutdown(const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    void _iceD_shutdown(::Ice::IncomingRequest&, ::std::function<void(::Ice::OutgoingResponse)>);
    /// \endcond

    virtual bool supportsFunctionalTests(const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    void _iceD_supportsFunctionalTests(::Ice::IncomingRequest&, ::std::function<void(::Ice::OutgoingResponse)>);
    /// \endcond

    virtual bool supportsBackPressureTests(const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    void _iceD_supportsBackPressureTests(::Ice::IncomingRequest&, ::std::function<void(::Ice::OutgoingResponse)>);
    /// \endcond

    virtual void pingBiDir(::std::optional<PingReplyPrx> reply, const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    void _iceD_pingBiDir(::Ice::IncomingRequest&, ::std::function<void(::Ice::OutgoingResponse)>);
    /// \endcond

    /// \cond INTERNAL
    void dispatch(::Ice::IncomingRequest&, ::std::function<void(::Ice::OutgoingResponse)>) override;
    /// \endcond
};

using TestIntfPtr = ::std::shared_ptr<TestIntf>;

class TestIntfController : public virtual ::Ice::Object
{
public:

    using ProxyType = TestIntfControllerPrx;

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

    virtual void holdAdapter(const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    void _iceD_holdAdapter(::Ice::IncomingRequest&, ::std::function<void(::Ice::OutgoingResponse)>);
    /// \endcond

    virtual void resumeAdapter(const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    void _iceD_resumeAdapter(::Ice::IncomingRequest&, ::std::function<void(::Ice::OutgoingResponse)>);
    /// \endcond

    /// \cond INTERNAL
    void dispatch(::Ice::IncomingRequest&, ::std::function<void(::Ice::OutgoingResponse)>) override;
    /// \endcond
};

using TestIntfControllerPtr = ::std::shared_ptr<TestIntfController>;

namespace Outer
{

namespace Inner
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

    virtual ::std::int32_t op(::std::int32_t i, ::std::int32_t& j, const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    void _iceD_op(::Ice::IncomingRequest&, ::std::function<void(::Ice::OutgoingResponse)>);
    /// \endcond

    /// \cond INTERNAL
    void dispatch(::Ice::IncomingRequest&, ::std::function<void(::Ice::OutgoingResponse)>) override;
    /// \endcond
};

using TestIntfPtr = ::std::shared_ptr<TestIntf>;

}

}

}

/// \cond STREAM
namespace Ice
{

}
/// \endcond

#include <Ice/PopDisableWarnings.h>
#endif
