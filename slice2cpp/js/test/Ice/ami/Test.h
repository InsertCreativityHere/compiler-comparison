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

class PingReply;
class PingReplyPrx;
class TestIntf;
class TestIntfPrx;
class TestIntfController;
class TestIntfControllerPrx;

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
    static const ::std::string& ice_staticId();
};

/// \cond INTERNAL
static TestIntfException _iceS_TestIntfException_init;
/// \endcond

enum class CloseMode : unsigned char
{
    Forcefully,
    Gracefully,
    GracefullyWithWait
};

}

namespace Test
{

class PingReply : public virtual ::Ice::Object
{
public:

    using ProxyType = PingReplyPrx;

    /**
     * Determines whether this object supports an interface with the given Slice type ID.
     * @param id The fully-scoped Slice type ID.
     * @param current The Current object for the invocation.
     * @return True if this object supports the interface, false, otherwise.
     */
    virtual bool ice_isA(::std::string id, const ::Ice::Current& current) const override;

    /**
     * Obtains a list of the Slice type IDs representing the interfaces supported by this object.
     * @param current The Current object for the invocation.
     * @return A list of fully-scoped type IDs.
     */
    virtual ::std::vector<::std::string> ice_ids(const ::Ice::Current& current) const override;

    /**
     * Obtains a Slice type ID representing the most-derived interface supported by this object.
     * @param current The Current object for the invocation.
     * @return A fully-scoped type ID.
     */
    virtual ::std::string ice_id(const ::Ice::Current& current) const override;

    /**
     * Obtains the Slice type ID corresponding to this class.
     * @return A fully-scoped type ID.
     */
    static const ::std::string& ice_staticId();

    virtual void reply(const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    bool _iceD_reply(::IceInternal::Incoming&, const ::Ice::Current&);
    /// \endcond

    /// \cond INTERNAL
    virtual bool _iceDispatch(::IceInternal::Incoming&, const ::Ice::Current&) override;
    /// \endcond
};

class TestIntf : public virtual ::Ice::Object
{
public:

    using ProxyType = TestIntfPrx;

    /**
     * Determines whether this object supports an interface with the given Slice type ID.
     * @param id The fully-scoped Slice type ID.
     * @param current The Current object for the invocation.
     * @return True if this object supports the interface, false, otherwise.
     */
    virtual bool ice_isA(::std::string id, const ::Ice::Current& current) const override;

    /**
     * Obtains a list of the Slice type IDs representing the interfaces supported by this object.
     * @param current The Current object for the invocation.
     * @return A list of fully-scoped type IDs.
     */
    virtual ::std::vector<::std::string> ice_ids(const ::Ice::Current& current) const override;

    /**
     * Obtains a Slice type ID representing the most-derived interface supported by this object.
     * @param current The Current object for the invocation.
     * @return A fully-scoped type ID.
     */
    virtual ::std::string ice_id(const ::Ice::Current& current) const override;

    /**
     * Obtains the Slice type ID corresponding to this class.
     * @return A fully-scoped type ID.
     */
    static const ::std::string& ice_staticId();

    virtual void op(const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    bool _iceD_op(::IceInternal::Incoming&, const ::Ice::Current&);
    /// \endcond

    virtual void opWithPayload(::Ice::ByteSeq seq, const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    bool _iceD_opWithPayload(::IceInternal::Incoming&, const ::Ice::Current&);
    /// \endcond

    virtual int opWithResult(const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    bool _iceD_opWithResult(::IceInternal::Incoming&, const ::Ice::Current&);
    /// \endcond

    virtual void opWithUE(const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    bool _iceD_opWithUE(::IceInternal::Incoming&, const ::Ice::Current&);
    /// \endcond

    virtual void opBatch(const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    bool _iceD_opBatch(::IceInternal::Incoming&, const ::Ice::Current&);
    /// \endcond

    virtual int opBatchCount(const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    bool _iceD_opBatchCount(::IceInternal::Incoming&, const ::Ice::Current&);
    /// \endcond

    virtual bool waitForBatch(int count, const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    bool _iceD_waitForBatch(::IceInternal::Incoming&, const ::Ice::Current&);
    /// \endcond

    virtual void close(CloseMode mode, const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    bool _iceD_close(::IceInternal::Incoming&, const ::Ice::Current&);
    /// \endcond

    virtual void sleep(int ms, const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    bool _iceD_sleep(::IceInternal::Incoming&, const ::Ice::Current&);
    /// \endcond

    virtual void startDispatchAsync(::std::function<void()> response, ::std::function<void(::std::exception_ptr)> exception, const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    bool _iceD_startDispatch(::IceInternal::Incoming&, const ::Ice::Current&);
    /// \endcond

    virtual void finishDispatch(const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    bool _iceD_finishDispatch(::IceInternal::Incoming&, const ::Ice::Current&);
    /// \endcond

    virtual void shutdown(const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    bool _iceD_shutdown(::IceInternal::Incoming&, const ::Ice::Current&);
    /// \endcond

    virtual bool supportsAMD(const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    bool _iceD_supportsAMD(::IceInternal::Incoming&, const ::Ice::Current&);
    /// \endcond

    virtual bool supportsFunctionalTests(const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    bool _iceD_supportsFunctionalTests(::IceInternal::Incoming&, const ::Ice::Current&);
    /// \endcond

    virtual void pingBidDir(::Ice::Identity id, const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    bool _iceD_pingBidDir(::IceInternal::Incoming&, const ::Ice::Current&);
    /// \endcond

    /// \cond INTERNAL
    virtual bool _iceDispatch(::IceInternal::Incoming&, const ::Ice::Current&) override;
    /// \endcond
};

class TestIntfController : public virtual ::Ice::Object
{
public:

    using ProxyType = TestIntfControllerPrx;

    /**
     * Determines whether this object supports an interface with the given Slice type ID.
     * @param id The fully-scoped Slice type ID.
     * @param current The Current object for the invocation.
     * @return True if this object supports the interface, false, otherwise.
     */
    virtual bool ice_isA(::std::string id, const ::Ice::Current& current) const override;

    /**
     * Obtains a list of the Slice type IDs representing the interfaces supported by this object.
     * @param current The Current object for the invocation.
     * @return A list of fully-scoped type IDs.
     */
    virtual ::std::vector<::std::string> ice_ids(const ::Ice::Current& current) const override;

    /**
     * Obtains a Slice type ID representing the most-derived interface supported by this object.
     * @param current The Current object for the invocation.
     * @return A fully-scoped type ID.
     */
    virtual ::std::string ice_id(const ::Ice::Current& current) const override;

    /**
     * Obtains the Slice type ID corresponding to this class.
     * @return A fully-scoped type ID.
     */
    static const ::std::string& ice_staticId();

    virtual void holdAdapter(const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    bool _iceD_holdAdapter(::IceInternal::Incoming&, const ::Ice::Current&);
    /// \endcond

    virtual void resumeAdapter(const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    bool _iceD_resumeAdapter(::IceInternal::Incoming&, const ::Ice::Current&);
    /// \endcond

    /// \cond INTERNAL
    virtual bool _iceDispatch(::IceInternal::Incoming&, const ::Ice::Current&) override;
    /// \endcond
};

}

namespace Test
{

class PingReplyPrx : public virtual ::Ice::Proxy<PingReplyPrx, ::Ice::ObjectPrx>
{
public:

    void reply(const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        _makePromiseOutgoing<void>(true, this, &PingReplyPrx::_iceI_reply, context).get();
    }

    template<template<typename> class P = ::std::promise>
    auto replyAsync(const ::Ice::Context& context = ::Ice::noExplicitContext)
        -> decltype(::std::declval<P<void>>().get_future())
    {
        return _makePromiseOutgoing<void, P>(false, this, &PingReplyPrx::_iceI_reply, context);
    }

    ::std::function<void()>
    replyAsync(::std::function<void()> response,
               ::std::function<void(::std::exception_ptr)> ex = nullptr,
               ::std::function<void(bool)> sent = nullptr,
               const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        return _makeLambdaOutgoing<void>(std::move(response), std::move(ex), std::move(sent), this, &Test::PingReplyPrx::_iceI_reply, context);
    }

    /// \cond INTERNAL
    void _iceI_reply(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>&, const ::Ice::Context&);
    /// \endcond

    /**
     * Obtains the Slice type ID of this interface.
     * @return The fully-scoped type ID.
     */
    static const ::std::string& ice_staticId();

protected:

    /// \cond INTERNAL
    PingReplyPrx() = default;
    friend ::std::shared_ptr<PingReplyPrx> IceInternal::createProxy<PingReplyPrx>();

    virtual ::std::shared_ptr<::Ice::ObjectPrx> _newInstance() const override;
    /// \endcond
};

class TestIntfPrx : public virtual ::Ice::Proxy<TestIntfPrx, ::Ice::ObjectPrx>
{
public:

    void op(const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        _makePromiseOutgoing<void>(true, this, &TestIntfPrx::_iceI_op, context).get();
    }

    template<template<typename> class P = ::std::promise>
    auto opAsync(const ::Ice::Context& context = ::Ice::noExplicitContext)
        -> decltype(::std::declval<P<void>>().get_future())
    {
        return _makePromiseOutgoing<void, P>(false, this, &TestIntfPrx::_iceI_op, context);
    }

    ::std::function<void()>
    opAsync(::std::function<void()> response,
            ::std::function<void(::std::exception_ptr)> ex = nullptr,
            ::std::function<void(bool)> sent = nullptr,
            const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        return _makeLambdaOutgoing<void>(std::move(response), std::move(ex), std::move(sent), this, &Test::TestIntfPrx::_iceI_op, context);
    }

    /// \cond INTERNAL
    void _iceI_op(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>&, const ::Ice::Context&);
    /// \endcond

    void opWithPayload(const ::Ice::ByteSeq& seq, const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        _makePromiseOutgoing<void>(true, this, &TestIntfPrx::_iceI_opWithPayload, seq, context).get();
    }

    template<template<typename> class P = ::std::promise>
    auto opWithPayloadAsync(const ::Ice::ByteSeq& seq, const ::Ice::Context& context = ::Ice::noExplicitContext)
        -> decltype(::std::declval<P<void>>().get_future())
    {
        return _makePromiseOutgoing<void, P>(false, this, &TestIntfPrx::_iceI_opWithPayload, seq, context);
    }

    ::std::function<void()>
    opWithPayloadAsync(const ::Ice::ByteSeq& seq,
                       ::std::function<void()> response,
                       ::std::function<void(::std::exception_ptr)> ex = nullptr,
                       ::std::function<void(bool)> sent = nullptr,
                       const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        return _makeLambdaOutgoing<void>(std::move(response), std::move(ex), std::move(sent), this, &Test::TestIntfPrx::_iceI_opWithPayload, seq, context);
    }

    /// \cond INTERNAL
    void _iceI_opWithPayload(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>&, const ::Ice::ByteSeq&, const ::Ice::Context&);
    /// \endcond

    int opWithResult(const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        return _makePromiseOutgoing<int>(true, this, &TestIntfPrx::_iceI_opWithResult, context).get();
    }

    template<template<typename> class P = ::std::promise>
    auto opWithResultAsync(const ::Ice::Context& context = ::Ice::noExplicitContext)
        -> decltype(::std::declval<P<int>>().get_future())
    {
        return _makePromiseOutgoing<int, P>(false, this, &TestIntfPrx::_iceI_opWithResult, context);
    }

    ::std::function<void()>
    opWithResultAsync(::std::function<void(int)> response,
                      ::std::function<void(::std::exception_ptr)> ex = nullptr,
                      ::std::function<void(bool)> sent = nullptr,
                      const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        return _makeLambdaOutgoing<int>(std::move(response), std::move(ex), std::move(sent), this, &Test::TestIntfPrx::_iceI_opWithResult, context);
    }

    /// \cond INTERNAL
    void _iceI_opWithResult(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<int>>&, const ::Ice::Context&);
    /// \endcond

    void opWithUE(const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        _makePromiseOutgoing<void>(true, this, &TestIntfPrx::_iceI_opWithUE, context).get();
    }

    template<template<typename> class P = ::std::promise>
    auto opWithUEAsync(const ::Ice::Context& context = ::Ice::noExplicitContext)
        -> decltype(::std::declval<P<void>>().get_future())
    {
        return _makePromiseOutgoing<void, P>(false, this, &TestIntfPrx::_iceI_opWithUE, context);
    }

    ::std::function<void()>
    opWithUEAsync(::std::function<void()> response,
                  ::std::function<void(::std::exception_ptr)> ex = nullptr,
                  ::std::function<void(bool)> sent = nullptr,
                  const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        return _makeLambdaOutgoing<void>(std::move(response), std::move(ex), std::move(sent), this, &Test::TestIntfPrx::_iceI_opWithUE, context);
    }

    /// \cond INTERNAL
    void _iceI_opWithUE(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>&, const ::Ice::Context&);
    /// \endcond

    void opBatch(const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        _makePromiseOutgoing<void>(true, this, &TestIntfPrx::_iceI_opBatch, context).get();
    }

    template<template<typename> class P = ::std::promise>
    auto opBatchAsync(const ::Ice::Context& context = ::Ice::noExplicitContext)
        -> decltype(::std::declval<P<void>>().get_future())
    {
        return _makePromiseOutgoing<void, P>(false, this, &TestIntfPrx::_iceI_opBatch, context);
    }

    ::std::function<void()>
    opBatchAsync(::std::function<void()> response,
                 ::std::function<void(::std::exception_ptr)> ex = nullptr,
                 ::std::function<void(bool)> sent = nullptr,
                 const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        return _makeLambdaOutgoing<void>(std::move(response), std::move(ex), std::move(sent), this, &Test::TestIntfPrx::_iceI_opBatch, context);
    }

    /// \cond INTERNAL
    void _iceI_opBatch(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>&, const ::Ice::Context&);
    /// \endcond

    int opBatchCount(const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        return _makePromiseOutgoing<int>(true, this, &TestIntfPrx::_iceI_opBatchCount, context).get();
    }

    template<template<typename> class P = ::std::promise>
    auto opBatchCountAsync(const ::Ice::Context& context = ::Ice::noExplicitContext)
        -> decltype(::std::declval<P<int>>().get_future())
    {
        return _makePromiseOutgoing<int, P>(false, this, &TestIntfPrx::_iceI_opBatchCount, context);
    }

    ::std::function<void()>
    opBatchCountAsync(::std::function<void(int)> response,
                      ::std::function<void(::std::exception_ptr)> ex = nullptr,
                      ::std::function<void(bool)> sent = nullptr,
                      const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        return _makeLambdaOutgoing<int>(std::move(response), std::move(ex), std::move(sent), this, &Test::TestIntfPrx::_iceI_opBatchCount, context);
    }

    /// \cond INTERNAL
    void _iceI_opBatchCount(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<int>>&, const ::Ice::Context&);
    /// \endcond

    bool waitForBatch(int count, const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        return _makePromiseOutgoing<bool>(true, this, &TestIntfPrx::_iceI_waitForBatch, count, context).get();
    }

    template<template<typename> class P = ::std::promise>
    auto waitForBatchAsync(int count, const ::Ice::Context& context = ::Ice::noExplicitContext)
        -> decltype(::std::declval<P<bool>>().get_future())
    {
        return _makePromiseOutgoing<bool, P>(false, this, &TestIntfPrx::_iceI_waitForBatch, count, context);
    }

    ::std::function<void()>
    waitForBatchAsync(int count,
                      ::std::function<void(bool)> response,
                      ::std::function<void(::std::exception_ptr)> ex = nullptr,
                      ::std::function<void(bool)> sent = nullptr,
                      const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        return _makeLambdaOutgoing<bool>(std::move(response), std::move(ex), std::move(sent), this, &Test::TestIntfPrx::_iceI_waitForBatch, count, context);
    }

    /// \cond INTERNAL
    void _iceI_waitForBatch(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<bool>>&, int, const ::Ice::Context&);
    /// \endcond

    void close(CloseMode mode, const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        _makePromiseOutgoing<void>(true, this, &TestIntfPrx::_iceI_close, mode, context).get();
    }

    template<template<typename> class P = ::std::promise>
    auto closeAsync(CloseMode mode, const ::Ice::Context& context = ::Ice::noExplicitContext)
        -> decltype(::std::declval<P<void>>().get_future())
    {
        return _makePromiseOutgoing<void, P>(false, this, &TestIntfPrx::_iceI_close, mode, context);
    }

    ::std::function<void()>
    closeAsync(CloseMode mode,
               ::std::function<void()> response,
               ::std::function<void(::std::exception_ptr)> ex = nullptr,
               ::std::function<void(bool)> sent = nullptr,
               const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        return _makeLambdaOutgoing<void>(std::move(response), std::move(ex), std::move(sent), this, &Test::TestIntfPrx::_iceI_close, mode, context);
    }

    /// \cond INTERNAL
    void _iceI_close(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>&, CloseMode, const ::Ice::Context&);
    /// \endcond

    void sleep(int ms, const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        _makePromiseOutgoing<void>(true, this, &TestIntfPrx::_iceI_sleep, ms, context).get();
    }

    template<template<typename> class P = ::std::promise>
    auto sleepAsync(int ms, const ::Ice::Context& context = ::Ice::noExplicitContext)
        -> decltype(::std::declval<P<void>>().get_future())
    {
        return _makePromiseOutgoing<void, P>(false, this, &TestIntfPrx::_iceI_sleep, ms, context);
    }

    ::std::function<void()>
    sleepAsync(int ms,
               ::std::function<void()> response,
               ::std::function<void(::std::exception_ptr)> ex = nullptr,
               ::std::function<void(bool)> sent = nullptr,
               const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        return _makeLambdaOutgoing<void>(std::move(response), std::move(ex), std::move(sent), this, &Test::TestIntfPrx::_iceI_sleep, ms, context);
    }

    /// \cond INTERNAL
    void _iceI_sleep(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>&, int, const ::Ice::Context&);
    /// \endcond

    void startDispatch(const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        _makePromiseOutgoing<void>(true, this, &TestIntfPrx::_iceI_startDispatch, context).get();
    }

    template<template<typename> class P = ::std::promise>
    auto startDispatchAsync(const ::Ice::Context& context = ::Ice::noExplicitContext)
        -> decltype(::std::declval<P<void>>().get_future())
    {
        return _makePromiseOutgoing<void, P>(false, this, &TestIntfPrx::_iceI_startDispatch, context);
    }

    ::std::function<void()>
    startDispatchAsync(::std::function<void()> response,
                       ::std::function<void(::std::exception_ptr)> ex = nullptr,
                       ::std::function<void(bool)> sent = nullptr,
                       const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        return _makeLambdaOutgoing<void>(std::move(response), std::move(ex), std::move(sent), this, &Test::TestIntfPrx::_iceI_startDispatch, context);
    }

    /// \cond INTERNAL
    void _iceI_startDispatch(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>&, const ::Ice::Context&);
    /// \endcond

    void finishDispatch(const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        _makePromiseOutgoing<void>(true, this, &TestIntfPrx::_iceI_finishDispatch, context).get();
    }

    template<template<typename> class P = ::std::promise>
    auto finishDispatchAsync(const ::Ice::Context& context = ::Ice::noExplicitContext)
        -> decltype(::std::declval<P<void>>().get_future())
    {
        return _makePromiseOutgoing<void, P>(false, this, &TestIntfPrx::_iceI_finishDispatch, context);
    }

    ::std::function<void()>
    finishDispatchAsync(::std::function<void()> response,
                        ::std::function<void(::std::exception_ptr)> ex = nullptr,
                        ::std::function<void(bool)> sent = nullptr,
                        const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        return _makeLambdaOutgoing<void>(std::move(response), std::move(ex), std::move(sent), this, &Test::TestIntfPrx::_iceI_finishDispatch, context);
    }

    /// \cond INTERNAL
    void _iceI_finishDispatch(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>&, const ::Ice::Context&);
    /// \endcond

    void shutdown(const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        _makePromiseOutgoing<void>(true, this, &TestIntfPrx::_iceI_shutdown, context).get();
    }

    template<template<typename> class P = ::std::promise>
    auto shutdownAsync(const ::Ice::Context& context = ::Ice::noExplicitContext)
        -> decltype(::std::declval<P<void>>().get_future())
    {
        return _makePromiseOutgoing<void, P>(false, this, &TestIntfPrx::_iceI_shutdown, context);
    }

    ::std::function<void()>
    shutdownAsync(::std::function<void()> response,
                  ::std::function<void(::std::exception_ptr)> ex = nullptr,
                  ::std::function<void(bool)> sent = nullptr,
                  const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        return _makeLambdaOutgoing<void>(std::move(response), std::move(ex), std::move(sent), this, &Test::TestIntfPrx::_iceI_shutdown, context);
    }

    /// \cond INTERNAL
    void _iceI_shutdown(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>&, const ::Ice::Context&);
    /// \endcond

    bool supportsAMD(const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        return _makePromiseOutgoing<bool>(true, this, &TestIntfPrx::_iceI_supportsAMD, context).get();
    }

    template<template<typename> class P = ::std::promise>
    auto supportsAMDAsync(const ::Ice::Context& context = ::Ice::noExplicitContext)
        -> decltype(::std::declval<P<bool>>().get_future())
    {
        return _makePromiseOutgoing<bool, P>(false, this, &TestIntfPrx::_iceI_supportsAMD, context);
    }

    ::std::function<void()>
    supportsAMDAsync(::std::function<void(bool)> response,
                     ::std::function<void(::std::exception_ptr)> ex = nullptr,
                     ::std::function<void(bool)> sent = nullptr,
                     const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        return _makeLambdaOutgoing<bool>(std::move(response), std::move(ex), std::move(sent), this, &Test::TestIntfPrx::_iceI_supportsAMD, context);
    }

    /// \cond INTERNAL
    void _iceI_supportsAMD(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<bool>>&, const ::Ice::Context&);
    /// \endcond

    bool supportsFunctionalTests(const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        return _makePromiseOutgoing<bool>(true, this, &TestIntfPrx::_iceI_supportsFunctionalTests, context).get();
    }

    template<template<typename> class P = ::std::promise>
    auto supportsFunctionalTestsAsync(const ::Ice::Context& context = ::Ice::noExplicitContext)
        -> decltype(::std::declval<P<bool>>().get_future())
    {
        return _makePromiseOutgoing<bool, P>(false, this, &TestIntfPrx::_iceI_supportsFunctionalTests, context);
    }

    ::std::function<void()>
    supportsFunctionalTestsAsync(::std::function<void(bool)> response,
                                 ::std::function<void(::std::exception_ptr)> ex = nullptr,
                                 ::std::function<void(bool)> sent = nullptr,
                                 const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        return _makeLambdaOutgoing<bool>(std::move(response), std::move(ex), std::move(sent), this, &Test::TestIntfPrx::_iceI_supportsFunctionalTests, context);
    }

    /// \cond INTERNAL
    void _iceI_supportsFunctionalTests(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<bool>>&, const ::Ice::Context&);
    /// \endcond

    void pingBidDir(const ::Ice::Identity& id, const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        _makePromiseOutgoing<void>(true, this, &TestIntfPrx::_iceI_pingBidDir, id, context).get();
    }

    template<template<typename> class P = ::std::promise>
    auto pingBidDirAsync(const ::Ice::Identity& id, const ::Ice::Context& context = ::Ice::noExplicitContext)
        -> decltype(::std::declval<P<void>>().get_future())
    {
        return _makePromiseOutgoing<void, P>(false, this, &TestIntfPrx::_iceI_pingBidDir, id, context);
    }

    ::std::function<void()>
    pingBidDirAsync(const ::Ice::Identity& id,
                    ::std::function<void()> response,
                    ::std::function<void(::std::exception_ptr)> ex = nullptr,
                    ::std::function<void(bool)> sent = nullptr,
                    const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        return _makeLambdaOutgoing<void>(std::move(response), std::move(ex), std::move(sent), this, &Test::TestIntfPrx::_iceI_pingBidDir, id, context);
    }

    /// \cond INTERNAL
    void _iceI_pingBidDir(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>&, const ::Ice::Identity&, const ::Ice::Context&);
    /// \endcond

    /**
     * Obtains the Slice type ID of this interface.
     * @return The fully-scoped type ID.
     */
    static const ::std::string& ice_staticId();

protected:

    /// \cond INTERNAL
    TestIntfPrx() = default;
    friend ::std::shared_ptr<TestIntfPrx> IceInternal::createProxy<TestIntfPrx>();

    virtual ::std::shared_ptr<::Ice::ObjectPrx> _newInstance() const override;
    /// \endcond
};

class TestIntfControllerPrx : public virtual ::Ice::Proxy<TestIntfControllerPrx, ::Ice::ObjectPrx>
{
public:

    void holdAdapter(const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        _makePromiseOutgoing<void>(true, this, &TestIntfControllerPrx::_iceI_holdAdapter, context).get();
    }

    template<template<typename> class P = ::std::promise>
    auto holdAdapterAsync(const ::Ice::Context& context = ::Ice::noExplicitContext)
        -> decltype(::std::declval<P<void>>().get_future())
    {
        return _makePromiseOutgoing<void, P>(false, this, &TestIntfControllerPrx::_iceI_holdAdapter, context);
    }

    ::std::function<void()>
    holdAdapterAsync(::std::function<void()> response,
                     ::std::function<void(::std::exception_ptr)> ex = nullptr,
                     ::std::function<void(bool)> sent = nullptr,
                     const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        return _makeLambdaOutgoing<void>(std::move(response), std::move(ex), std::move(sent), this, &Test::TestIntfControllerPrx::_iceI_holdAdapter, context);
    }

    /// \cond INTERNAL
    void _iceI_holdAdapter(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>&, const ::Ice::Context&);
    /// \endcond

    void resumeAdapter(const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        _makePromiseOutgoing<void>(true, this, &TestIntfControllerPrx::_iceI_resumeAdapter, context).get();
    }

    template<template<typename> class P = ::std::promise>
    auto resumeAdapterAsync(const ::Ice::Context& context = ::Ice::noExplicitContext)
        -> decltype(::std::declval<P<void>>().get_future())
    {
        return _makePromiseOutgoing<void, P>(false, this, &TestIntfControllerPrx::_iceI_resumeAdapter, context);
    }

    ::std::function<void()>
    resumeAdapterAsync(::std::function<void()> response,
                       ::std::function<void(::std::exception_ptr)> ex = nullptr,
                       ::std::function<void(bool)> sent = nullptr,
                       const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        return _makeLambdaOutgoing<void>(std::move(response), std::move(ex), std::move(sent), this, &Test::TestIntfControllerPrx::_iceI_resumeAdapter, context);
    }

    /// \cond INTERNAL
    void _iceI_resumeAdapter(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>&, const ::Ice::Context&);
    /// \endcond

    /**
     * Obtains the Slice type ID of this interface.
     * @return The fully-scoped type ID.
     */
    static const ::std::string& ice_staticId();

protected:

    /// \cond INTERNAL
    TestIntfControllerPrx() = default;
    friend ::std::shared_ptr<TestIntfControllerPrx> IceInternal::createProxy<TestIntfControllerPrx>();

    virtual ::std::shared_ptr<::Ice::ObjectPrx> _newInstance() const override;
    /// \endcond
};

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

/// \cond INTERNAL
namespace Test
{

using PingReplyPtr = ::std::shared_ptr<PingReply>;
using PingReplyPrxPtr = ::std::shared_ptr<PingReplyPrx>;

using TestIntfPtr = ::std::shared_ptr<TestIntf>;
using TestIntfPrxPtr = ::std::shared_ptr<TestIntfPrx>;

using TestIntfControllerPtr = ::std::shared_ptr<TestIntfController>;
using TestIntfControllerPrxPtr = ::std::shared_ptr<TestIntfControllerPrx>;

}
/// \endcond

#include <IceUtil/PopDisableWarnings.h>
#endif
