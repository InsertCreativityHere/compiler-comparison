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

#include <IceUtil/PushDisableWarnings.h>
#include <Ice/Ice.h>
#include <Ice/BuiltinSequences.h>
#include <Ice/Identity.h>
#include <IceUtil/UndefSysMacros.h>

#ifndef ICE_IGNORE_VERSION
#   if ICE_INT_VERSION  != 30850
#       error Ice version mismatch: an exact match is required for beta generated code
#   endif
#endif

namespace Test
{


enum class CloseMode : unsigned char
{
    Forcefully,
    Gracefully,
    GracefullyWithWait
};
class PingReplyPrx;

using PingReplyPrxPtr = ::std::optional<PingReplyPrx>;
class TestIntfPrx;

using TestIntfPrxPtr = ::std::optional<TestIntfPrx>;
class TestIntfControllerPrx;

using TestIntfControllerPrxPtr = ::std::optional<TestIntfControllerPrx>;

namespace Outer
{


namespace Inner
{

class TestIntfPrx;

using TestIntfPrxPtr = ::std::optional<TestIntfPrx>;

}

}

}

namespace Test
{

class PingReplyPrx : public ::Ice::Proxy<PingReplyPrx, ::Ice::ObjectPrx>
{
public:

    void reply(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::future<void> replyAsync(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::function<void()>
    replyAsync(::std::function<void()> response, ::std::function<void(::std::exception_ptr)> ex = nullptr, ::std::function<void(bool)> sent = nullptr, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /// \cond INTERNAL
    void _iceI_reply(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>&, const ::Ice::Context&) const;
    /// \endcond

    /**
     * Obtains the Slice type ID of this interface.
     * @return The fully-scoped type ID.
     */
    static ::std::string_view ice_staticId();

    explicit PingReplyPrx(const ::Ice::ObjectPrx& other) : ::Ice::ObjectPrx(other)
    {
    }

    PingReplyPrx(const PingReplyPrx& other) noexcept : ::Ice::ObjectPrx(other)
    {
    }

    PingReplyPrx(PingReplyPrx&& other) noexcept : ::Ice::ObjectPrx(::std::move(other))
    {
    }

    PingReplyPrx(const ::std::shared_ptr<::Ice::Communicator>& communicator, const ::std::string& proxyString) :
        ::Ice::ObjectPrx(communicator, proxyString)
    {
    }

    PingReplyPrx& operator=(const PingReplyPrx& rhs) noexcept
    {
        ::Ice::ObjectPrx::operator=(rhs);
        return *this;
    }

    PingReplyPrx& operator=(PingReplyPrx&& rhs) noexcept
    {
        ::Ice::ObjectPrx::operator=(::std::move(rhs));
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

    ::std::future<void> opAsync(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::function<void()>
    opAsync(::std::function<void()> response, ::std::function<void(::std::exception_ptr)> ex = nullptr, ::std::function<void(bool)> sent = nullptr, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /// \cond INTERNAL
    void _iceI_op(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>&, const ::Ice::Context&) const;
    /// \endcond

    void opWithPayload(const ::Ice::ByteSeq& seq, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::future<void> opWithPayloadAsync(const ::Ice::ByteSeq& seq, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::function<void()>
    opWithPayloadAsync(const ::Ice::ByteSeq& seq, ::std::function<void()> response, ::std::function<void(::std::exception_ptr)> ex = nullptr, ::std::function<void(bool)> sent = nullptr, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /// \cond INTERNAL
    void _iceI_opWithPayload(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>&, const ::Ice::ByteSeq&, const ::Ice::Context&) const;
    /// \endcond

    ::std::int32_t opWithResult(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::future<::std::int32_t> opWithResultAsync(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::function<void()>
    opWithResultAsync(::std::function<void(::std::int32_t)> response, ::std::function<void(::std::exception_ptr)> ex = nullptr, ::std::function<void(bool)> sent = nullptr, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /// \cond INTERNAL
    void _iceI_opWithResult(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<::std::int32_t>>&, const ::Ice::Context&) const;
    /// \endcond

    void opWithUE(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::future<void> opWithUEAsync(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::function<void()>
    opWithUEAsync(::std::function<void()> response, ::std::function<void(::std::exception_ptr)> ex = nullptr, ::std::function<void(bool)> sent = nullptr, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /// \cond INTERNAL
    void _iceI_opWithUE(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>&, const ::Ice::Context&) const;
    /// \endcond

    void opBatch(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::future<void> opBatchAsync(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::function<void()>
    opBatchAsync(::std::function<void()> response, ::std::function<void(::std::exception_ptr)> ex = nullptr, ::std::function<void(bool)> sent = nullptr, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /// \cond INTERNAL
    void _iceI_opBatch(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>&, const ::Ice::Context&) const;
    /// \endcond

    ::std::int32_t opBatchCount(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::future<::std::int32_t> opBatchCountAsync(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::function<void()>
    opBatchCountAsync(::std::function<void(::std::int32_t)> response, ::std::function<void(::std::exception_ptr)> ex = nullptr, ::std::function<void(bool)> sent = nullptr, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /// \cond INTERNAL
    void _iceI_opBatchCount(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<::std::int32_t>>&, const ::Ice::Context&) const;
    /// \endcond

    bool waitForBatch(::std::int32_t count, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::future<bool> waitForBatchAsync(::std::int32_t count, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::function<void()>
    waitForBatchAsync(::std::int32_t count, ::std::function<void(bool)> response, ::std::function<void(::std::exception_ptr)> ex = nullptr, ::std::function<void(bool)> sent = nullptr, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /// \cond INTERNAL
    void _iceI_waitForBatch(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<bool>>&, ::std::int32_t, const ::Ice::Context&) const;
    /// \endcond

    void close(CloseMode mode, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::future<void> closeAsync(CloseMode mode, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::function<void()>
    closeAsync(CloseMode mode, ::std::function<void()> response, ::std::function<void(::std::exception_ptr)> ex = nullptr, ::std::function<void(bool)> sent = nullptr, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /// \cond INTERNAL
    void _iceI_close(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>&, CloseMode, const ::Ice::Context&) const;
    /// \endcond

    void sleep(::std::int32_t ms, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::future<void> sleepAsync(::std::int32_t ms, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::function<void()>
    sleepAsync(::std::int32_t ms, ::std::function<void()> response, ::std::function<void(::std::exception_ptr)> ex = nullptr, ::std::function<void(bool)> sent = nullptr, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /// \cond INTERNAL
    void _iceI_sleep(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>&, ::std::int32_t, const ::Ice::Context&) const;
    /// \endcond

    void startDispatch(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::future<void> startDispatchAsync(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::function<void()>
    startDispatchAsync(::std::function<void()> response, ::std::function<void(::std::exception_ptr)> ex = nullptr, ::std::function<void(bool)> sent = nullptr, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /// \cond INTERNAL
    void _iceI_startDispatch(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>&, const ::Ice::Context&) const;
    /// \endcond

    void finishDispatch(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::future<void> finishDispatchAsync(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::function<void()>
    finishDispatchAsync(::std::function<void()> response, ::std::function<void(::std::exception_ptr)> ex = nullptr, ::std::function<void(bool)> sent = nullptr, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /// \cond INTERNAL
    void _iceI_finishDispatch(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>&, const ::Ice::Context&) const;
    /// \endcond

    void shutdown(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::future<void> shutdownAsync(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::function<void()>
    shutdownAsync(::std::function<void()> response, ::std::function<void(::std::exception_ptr)> ex = nullptr, ::std::function<void(bool)> sent = nullptr, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /// \cond INTERNAL
    void _iceI_shutdown(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>&, const ::Ice::Context&) const;
    /// \endcond

    bool supportsAMD(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::future<bool> supportsAMDAsync(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::function<void()>
    supportsAMDAsync(::std::function<void(bool)> response, ::std::function<void(::std::exception_ptr)> ex = nullptr, ::std::function<void(bool)> sent = nullptr, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /// \cond INTERNAL
    void _iceI_supportsAMD(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<bool>>&, const ::Ice::Context&) const;
    /// \endcond

    bool supportsFunctionalTests(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::future<bool> supportsFunctionalTestsAsync(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::function<void()>
    supportsFunctionalTestsAsync(::std::function<void(bool)> response, ::std::function<void(::std::exception_ptr)> ex = nullptr, ::std::function<void(bool)> sent = nullptr, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /// \cond INTERNAL
    void _iceI_supportsFunctionalTests(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<bool>>&, const ::Ice::Context&) const;
    /// \endcond

    void pingBiDir(const ::std::optional<PingReplyPrx>& reply, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::future<void> pingBiDirAsync(const ::std::optional<PingReplyPrx>& reply, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::function<void()>
    pingBiDirAsync(const ::std::optional<PingReplyPrx>& reply, ::std::function<void()> response, ::std::function<void(::std::exception_ptr)> ex = nullptr, ::std::function<void(bool)> sent = nullptr, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /// \cond INTERNAL
    void _iceI_pingBiDir(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>&, const ::std::optional<PingReplyPrx>&, const ::Ice::Context&) const;
    /// \endcond

    /**
     * Obtains the Slice type ID of this interface.
     * @return The fully-scoped type ID.
     */
    static ::std::string_view ice_staticId();

    explicit TestIntfPrx(const ::Ice::ObjectPrx& other) : ::Ice::ObjectPrx(other)
    {
    }

    TestIntfPrx(const TestIntfPrx& other) noexcept : ::Ice::ObjectPrx(other)
    {
    }

    TestIntfPrx(TestIntfPrx&& other) noexcept : ::Ice::ObjectPrx(::std::move(other))
    {
    }

    TestIntfPrx(const ::std::shared_ptr<::Ice::Communicator>& communicator, const ::std::string& proxyString) :
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

class TestIntfControllerPrx : public ::Ice::Proxy<TestIntfControllerPrx, ::Ice::ObjectPrx>
{
public:

    void holdAdapter(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::future<void> holdAdapterAsync(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::function<void()>
    holdAdapterAsync(::std::function<void()> response, ::std::function<void(::std::exception_ptr)> ex = nullptr, ::std::function<void(bool)> sent = nullptr, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /// \cond INTERNAL
    void _iceI_holdAdapter(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>&, const ::Ice::Context&) const;
    /// \endcond

    void resumeAdapter(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::future<void> resumeAdapterAsync(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::function<void()>
    resumeAdapterAsync(::std::function<void()> response, ::std::function<void(::std::exception_ptr)> ex = nullptr, ::std::function<void(bool)> sent = nullptr, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /// \cond INTERNAL
    void _iceI_resumeAdapter(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>&, const ::Ice::Context&) const;
    /// \endcond

    /**
     * Obtains the Slice type ID of this interface.
     * @return The fully-scoped type ID.
     */
    static ::std::string_view ice_staticId();

    explicit TestIntfControllerPrx(const ::Ice::ObjectPrx& other) : ::Ice::ObjectPrx(other)
    {
    }

    TestIntfControllerPrx(const TestIntfControllerPrx& other) noexcept : ::Ice::ObjectPrx(other)
    {
    }

    TestIntfControllerPrx(TestIntfControllerPrx&& other) noexcept : ::Ice::ObjectPrx(::std::move(other))
    {
    }

    TestIntfControllerPrx(const ::std::shared_ptr<::Ice::Communicator>& communicator, const ::std::string& proxyString) :
        ::Ice::ObjectPrx(communicator, proxyString)
    {
    }

    TestIntfControllerPrx& operator=(const TestIntfControllerPrx& rhs) noexcept
    {
        ::Ice::ObjectPrx::operator=(rhs);
        return *this;
    }

    TestIntfControllerPrx& operator=(TestIntfControllerPrx&& rhs) noexcept
    {
        ::Ice::ObjectPrx::operator=(::std::move(rhs));
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

    ::std::future<::std::tuple<::std::int32_t, ::std::int32_t>> opAsync(::std::int32_t i, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::function<void()>
    opAsync(::std::int32_t i, ::std::function<void(::std::int32_t, ::std::int32_t)> response, ::std::function<void(::std::exception_ptr)> ex = nullptr, ::std::function<void(bool)> sent = nullptr, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /// \cond INTERNAL
    void _iceI_op(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<::std::tuple<::std::int32_t, ::std::int32_t>>>&, ::std::int32_t, const ::Ice::Context&) const;
    /// \endcond

    /**
     * Obtains the Slice type ID of this interface.
     * @return The fully-scoped type ID.
     */
    static ::std::string_view ice_staticId();

    explicit TestIntfPrx(const ::Ice::ObjectPrx& other) : ::Ice::ObjectPrx(other)
    {
    }

    TestIntfPrx(const TestIntfPrx& other) noexcept : ::Ice::ObjectPrx(other)
    {
    }

    TestIntfPrx(TestIntfPrx&& other) noexcept : ::Ice::ObjectPrx(::std::move(other))
    {
    }

    TestIntfPrx(const ::std::shared_ptr<::Ice::Communicator>& communicator, const ::std::string& proxyString) :
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

}

}

}

namespace Test
{

class TestIntfException : public ::Ice::UserExceptionHelper<TestIntfException, ::Ice::UserException>
{
public:

    virtual ~TestIntfException();

    TestIntfException(const TestIntfException&) = default;

    TestIntfException() = default;

    /**
     * Obtains a tuple containing all of the exception's data members.
     * @return The data members in a tuple.
     */
    std::tuple<> ice_tuple() const
    {
        return std::tie();
    }

    /**
     * Obtains the Slice type ID of this exception.
     * @return The fully-scoped type ID.
     */
    static ::std::string_view ice_staticId();
};

/// \cond INTERNAL
static TestIntfException _iceS_TestIntfException_init;
/// \endcond

}

namespace Test
{

class PingReply : public virtual ::Ice::Object
{
public:

    using ProxyType = PingReplyPrx;

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

    virtual void reply(const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    bool _iceD_reply(::IceInternal::Incoming&);
    /// \endcond

    /// \cond INTERNAL
    virtual bool _iceDispatch(::IceInternal::Incoming&) override;
    /// \endcond
};

using PingReplyPtr = ::std::shared_ptr<PingReply>;

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
    static ::std::string_view ice_staticId();

    virtual void op(const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    bool _iceD_op(::IceInternal::Incoming&);
    /// \endcond

    virtual void opWithPayload(::Ice::ByteSeq seq, const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    bool _iceD_opWithPayload(::IceInternal::Incoming&);
    /// \endcond

    virtual ::std::int32_t opWithResult(const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    bool _iceD_opWithResult(::IceInternal::Incoming&);
    /// \endcond

    virtual void opWithUE(const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    bool _iceD_opWithUE(::IceInternal::Incoming&);
    /// \endcond

    virtual void opBatch(const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    bool _iceD_opBatch(::IceInternal::Incoming&);
    /// \endcond

    virtual ::std::int32_t opBatchCount(const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    bool _iceD_opBatchCount(::IceInternal::Incoming&);
    /// \endcond

    virtual bool waitForBatch(::std::int32_t count, const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    bool _iceD_waitForBatch(::IceInternal::Incoming&);
    /// \endcond

    virtual void close(CloseMode mode, const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    bool _iceD_close(::IceInternal::Incoming&);
    /// \endcond

    virtual void sleep(::std::int32_t ms, const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    bool _iceD_sleep(::IceInternal::Incoming&);
    /// \endcond

    virtual void startDispatchAsync(::std::function<void()> response, ::std::function<void(::std::exception_ptr)> exception, const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    bool _iceD_startDispatch(::IceInternal::Incoming&);
    /// \endcond

    virtual void finishDispatch(const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    bool _iceD_finishDispatch(::IceInternal::Incoming&);
    /// \endcond

    virtual void shutdown(const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    bool _iceD_shutdown(::IceInternal::Incoming&);
    /// \endcond

    virtual bool supportsAMD(const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    bool _iceD_supportsAMD(::IceInternal::Incoming&);
    /// \endcond

    virtual bool supportsFunctionalTests(const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    bool _iceD_supportsFunctionalTests(::IceInternal::Incoming&);
    /// \endcond

    virtual void pingBiDir(::std::optional<PingReplyPrx> reply, const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    bool _iceD_pingBiDir(::IceInternal::Incoming&);
    /// \endcond

    /// \cond INTERNAL
    virtual bool _iceDispatch(::IceInternal::Incoming&) override;
    /// \endcond
};

using TestIntfPtr = ::std::shared_ptr<TestIntf>;

class TestIntfController : public virtual ::Ice::Object
{
public:

    using ProxyType = TestIntfControllerPrx;

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

    virtual void holdAdapter(const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    bool _iceD_holdAdapter(::IceInternal::Incoming&);
    /// \endcond

    virtual void resumeAdapter(const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    bool _iceD_resumeAdapter(::IceInternal::Incoming&);
    /// \endcond

    /// \cond INTERNAL
    virtual bool _iceDispatch(::IceInternal::Incoming&) override;
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

    virtual ::std::int32_t op(::std::int32_t i, ::std::int32_t& j, const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    bool _iceD_op(::IceInternal::Incoming&);
    /// \endcond

    /// \cond INTERNAL
    virtual bool _iceDispatch(::IceInternal::Incoming&) override;
    /// \endcond
};

using TestIntfPtr = ::std::shared_ptr<TestIntf>;

}

}

}

/// \cond STREAM
namespace Ice
{

template<>
struct StreamableTraits< ::Test::CloseMode>
{
    static const StreamHelperCategory helper = StreamHelperCategoryEnum;
    static const int minValue = 0;
    static const int maxValue = 2;
    static const int minWireSize = 1;
    static const bool fixedLength = false;
};

}
/// \endcond

#include <IceUtil/PopDisableWarnings.h>
#endif
