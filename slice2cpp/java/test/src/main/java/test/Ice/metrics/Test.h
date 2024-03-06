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
#include <IceUtil/UndefSysMacros.h>

#ifndef ICE_IGNORE_VERSION
#   if ICE_INT_VERSION  != 30850
#       error Ice version mismatch: an exact match is required for beta generated code
#   endif
#endif

namespace Test
{


using ByteSeq = ::std::vector<::std::uint8_t>;
class MetricsPrx;

using MetricsPrxPtr = ::std::optional<MetricsPrx>;
class ControllerPrx;

using ControllerPrxPtr = ::std::optional<ControllerPrx>;

}

namespace Test
{

class MetricsPrx : public ::Ice::Proxy<MetricsPrx, ::Ice::ObjectPrx>
{
public:

    void op(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::future<void> opAsync(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::function<void()>
    opAsync(::std::function<void()> response, ::std::function<void(::std::exception_ptr)> ex = nullptr, ::std::function<void(bool)> sent = nullptr, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /// \cond INTERNAL
    void _iceI_op(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>&, const ::Ice::Context&) const;
    /// \endcond

    void fail(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::future<void> failAsync(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::function<void()>
    failAsync(::std::function<void()> response, ::std::function<void(::std::exception_ptr)> ex = nullptr, ::std::function<void(bool)> sent = nullptr, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /// \cond INTERNAL
    void _iceI_fail(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>&, const ::Ice::Context&) const;
    /// \endcond

    void opWithUserException(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::future<void> opWithUserExceptionAsync(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::function<void()>
    opWithUserExceptionAsync(::std::function<void()> response, ::std::function<void(::std::exception_ptr)> ex = nullptr, ::std::function<void(bool)> sent = nullptr, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /// \cond INTERNAL
    void _iceI_opWithUserException(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>&, const ::Ice::Context&) const;
    /// \endcond

    void opWithRequestFailedException(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::future<void> opWithRequestFailedExceptionAsync(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::function<void()>
    opWithRequestFailedExceptionAsync(::std::function<void()> response, ::std::function<void(::std::exception_ptr)> ex = nullptr, ::std::function<void(bool)> sent = nullptr, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /// \cond INTERNAL
    void _iceI_opWithRequestFailedException(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>&, const ::Ice::Context&) const;
    /// \endcond

    void opWithLocalException(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::future<void> opWithLocalExceptionAsync(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::function<void()>
    opWithLocalExceptionAsync(::std::function<void()> response, ::std::function<void(::std::exception_ptr)> ex = nullptr, ::std::function<void(bool)> sent = nullptr, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /// \cond INTERNAL
    void _iceI_opWithLocalException(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>&, const ::Ice::Context&) const;
    /// \endcond

    void opWithUnknownException(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::future<void> opWithUnknownExceptionAsync(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::function<void()>
    opWithUnknownExceptionAsync(::std::function<void()> response, ::std::function<void(::std::exception_ptr)> ex = nullptr, ::std::function<void(bool)> sent = nullptr, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /// \cond INTERNAL
    void _iceI_opWithUnknownException(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>&, const ::Ice::Context&) const;
    /// \endcond

    void opByteS(const ByteSeq& bs, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::future<void> opByteSAsync(const ByteSeq& bs, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::function<void()>
    opByteSAsync(const ByteSeq& bs, ::std::function<void()> response, ::std::function<void(::std::exception_ptr)> ex = nullptr, ::std::function<void(bool)> sent = nullptr, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /// \cond INTERNAL
    void _iceI_opByteS(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>&, const ByteSeq&, const ::Ice::Context&) const;
    /// \endcond

    ::std::optional<::Ice::ObjectPrx> getAdmin(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::future<::std::optional<::Ice::ObjectPrx>> getAdminAsync(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::function<void()>
    getAdminAsync(::std::function<void(::std::optional<::Ice::ObjectPrx>)> response, ::std::function<void(::std::exception_ptr)> ex = nullptr, ::std::function<void(bool)> sent = nullptr, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /// \cond INTERNAL
    void _iceI_getAdmin(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<::std::optional<::Ice::ObjectPrx>>>&, const ::Ice::Context&) const;
    /// \endcond

    void shutdown(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::future<void> shutdownAsync(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::function<void()>
    shutdownAsync(::std::function<void()> response, ::std::function<void(::std::exception_ptr)> ex = nullptr, ::std::function<void(bool)> sent = nullptr, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /// \cond INTERNAL
    void _iceI_shutdown(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>&, const ::Ice::Context&) const;
    /// \endcond

    /**
     * Obtains the Slice type ID of this interface.
     * @return The fully-scoped type ID.
     */
    static ::std::string_view ice_staticId();

    explicit MetricsPrx(const ::Ice::ObjectPrx& other) : ::Ice::ObjectPrx(other)
    {
    }

    MetricsPrx(const MetricsPrx& other) noexcept : ::Ice::ObjectPrx(other)
    {
    }

    MetricsPrx(MetricsPrx&& other) noexcept : ::Ice::ObjectPrx(::std::move(other))
    {
    }

    MetricsPrx(const ::std::shared_ptr<::Ice::Communicator>& communicator, const ::std::string& proxyString) :
        ::Ice::ObjectPrx(communicator, proxyString)
    {
    }

    MetricsPrx& operator=(const MetricsPrx& rhs) noexcept
    {
        ::Ice::ObjectPrx::operator=(rhs);
        return *this;
    }

    MetricsPrx& operator=(MetricsPrx&& rhs) noexcept
    {
        ::Ice::ObjectPrx::operator=(::std::move(rhs));
        return *this;
    }

    /// \cond INTERNAL
    static MetricsPrx _fromReference(::IceInternal::ReferencePtr ref) { return MetricsPrx(::std::move(ref)); }

protected:

    MetricsPrx() = default;

    explicit MetricsPrx(::IceInternal::ReferencePtr&& ref) : ::Ice::ObjectPrx(::std::move(ref))
    {
    }
    /// \endcond
};

class ControllerPrx : public ::Ice::Proxy<ControllerPrx, ::Ice::ObjectPrx>
{
public:

    void hold(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::future<void> holdAsync(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::function<void()>
    holdAsync(::std::function<void()> response, ::std::function<void(::std::exception_ptr)> ex = nullptr, ::std::function<void(bool)> sent = nullptr, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /// \cond INTERNAL
    void _iceI_hold(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>&, const ::Ice::Context&) const;
    /// \endcond

    void resume(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::future<void> resumeAsync(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::function<void()>
    resumeAsync(::std::function<void()> response, ::std::function<void(::std::exception_ptr)> ex = nullptr, ::std::function<void(bool)> sent = nullptr, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /// \cond INTERNAL
    void _iceI_resume(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>&, const ::Ice::Context&) const;
    /// \endcond

    /**
     * Obtains the Slice type ID of this interface.
     * @return The fully-scoped type ID.
     */
    static ::std::string_view ice_staticId();

    explicit ControllerPrx(const ::Ice::ObjectPrx& other) : ::Ice::ObjectPrx(other)
    {
    }

    ControllerPrx(const ControllerPrx& other) noexcept : ::Ice::ObjectPrx(other)
    {
    }

    ControllerPrx(ControllerPrx&& other) noexcept : ::Ice::ObjectPrx(::std::move(other))
    {
    }

    ControllerPrx(const ::std::shared_ptr<::Ice::Communicator>& communicator, const ::std::string& proxyString) :
        ::Ice::ObjectPrx(communicator, proxyString)
    {
    }

    ControllerPrx& operator=(const ControllerPrx& rhs) noexcept
    {
        ::Ice::ObjectPrx::operator=(rhs);
        return *this;
    }

    ControllerPrx& operator=(ControllerPrx&& rhs) noexcept
    {
        ::Ice::ObjectPrx::operator=(::std::move(rhs));
        return *this;
    }

    /// \cond INTERNAL
    static ControllerPrx _fromReference(::IceInternal::ReferencePtr ref) { return ControllerPrx(::std::move(ref)); }

protected:

    ControllerPrx() = default;

    explicit ControllerPrx(::IceInternal::ReferencePtr&& ref) : ::Ice::ObjectPrx(::std::move(ref))
    {
    }
    /// \endcond
};

}

namespace Test
{

class UserEx : public ::Ice::UserExceptionHelper<UserEx, ::Ice::UserException>
{
public:

    virtual ~UserEx();

    UserEx(const UserEx&) = default;

    UserEx() = default;

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
static UserEx _iceS_UserEx_init;
/// \endcond

}

namespace Test
{

class Metrics : public virtual ::Ice::Object
{
public:

    using ProxyType = MetricsPrx;

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

    virtual void fail(const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    bool _iceD_fail(::IceInternal::Incoming&);
    /// \endcond

    virtual void opWithUserException(const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    bool _iceD_opWithUserException(::IceInternal::Incoming&);
    /// \endcond

    virtual void opWithRequestFailedException(const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    bool _iceD_opWithRequestFailedException(::IceInternal::Incoming&);
    /// \endcond

    virtual void opWithLocalException(const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    bool _iceD_opWithLocalException(::IceInternal::Incoming&);
    /// \endcond

    virtual void opWithUnknownException(const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    bool _iceD_opWithUnknownException(::IceInternal::Incoming&);
    /// \endcond

    virtual void opByteS(ByteSeq bs, const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    bool _iceD_opByteS(::IceInternal::Incoming&);
    /// \endcond

    virtual ::std::optional<::Ice::ObjectPrx> getAdmin(const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    bool _iceD_getAdmin(::IceInternal::Incoming&);
    /// \endcond

    virtual void shutdown(const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    bool _iceD_shutdown(::IceInternal::Incoming&);
    /// \endcond

    /// \cond INTERNAL
    virtual bool _iceDispatch(::IceInternal::Incoming&) override;
    /// \endcond
};

using MetricsPtr = ::std::shared_ptr<Metrics>;

class Controller : public virtual ::Ice::Object
{
public:

    using ProxyType = ControllerPrx;

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

    virtual void hold(const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    bool _iceD_hold(::IceInternal::Incoming&);
    /// \endcond

    virtual void resume(const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    bool _iceD_resume(::IceInternal::Incoming&);
    /// \endcond

    /// \cond INTERNAL
    virtual bool _iceDispatch(::IceInternal::Incoming&) override;
    /// \endcond
};

using ControllerPtr = ::std::shared_ptr<Controller>;

}

/// \cond STREAM
namespace Ice
{

}
/// \endcond

#include <IceUtil/PopDisableWarnings.h>
#endif
