// Copyright (c) ZeroC, Inc.
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file 'Test.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>

// clang-format off

#ifndef Test_h_
#define Test_h_

#include <Ice/PushDisableWarnings.h>
#include <Ice/Ice.h>

#ifndef ICE_IGNORE_VERSION
#   if ICE_INT_VERSION  != 30850
#       error Ice version mismatch: an exact match is required for beta generated code
#   endif
#endif

// NOLINTBEGIN(modernize-concat-nested-namespaces)

namespace Test
{
    using ByteSeq = std::vector<std::byte>;

    class TimeoutPrx;

    class ControllerPrx;
}

namespace Test
{
    class TimeoutPrx : public Ice::Proxy<TimeoutPrx, Ice::ObjectPrx>
    {
    public:
        void op(const Ice::Context& context = Ice::noExplicitContext) const;

        [[nodiscard]] std::future<void> opAsync(const Ice::Context& context = Ice::noExplicitContext) const;

        // NOLINTNEXTLINE(modernize-use-nodiscard)
        std::function<void()> opAsync(std::function<void()> response, std::function<void(std::exception_ptr)> exception = nullptr, std::function<void(bool)> sent = nullptr, const Ice::Context& context = Ice::noExplicitContext) const;

        /// \cond INTERNAL
        void _iceI_op(const std::shared_ptr<IceInternal::OutgoingAsyncT<void>>&, const Ice::Context&) const;
        /// \endcond

        void sendData(const ByteSeq& seq, const Ice::Context& context = Ice::noExplicitContext) const;

        [[nodiscard]] std::future<void> sendDataAsync(const ByteSeq& seq, const Ice::Context& context = Ice::noExplicitContext) const;

        // NOLINTNEXTLINE(modernize-use-nodiscard)
        std::function<void()> sendDataAsync(const ByteSeq& seq, std::function<void()> response, std::function<void(std::exception_ptr)> exception = nullptr, std::function<void(bool)> sent = nullptr, const Ice::Context& context = Ice::noExplicitContext) const;

        /// \cond INTERNAL
        void _iceI_sendData(const std::shared_ptr<IceInternal::OutgoingAsyncT<void>>&, const ByteSeq&, const Ice::Context&) const;
        /// \endcond

        void sleep(std::int32_t to, const Ice::Context& context = Ice::noExplicitContext) const;

        [[nodiscard]] std::future<void> sleepAsync(std::int32_t to, const Ice::Context& context = Ice::noExplicitContext) const;

        // NOLINTNEXTLINE(modernize-use-nodiscard)
        std::function<void()> sleepAsync(std::int32_t to, std::function<void()> response, std::function<void(std::exception_ptr)> exception = nullptr, std::function<void(bool)> sent = nullptr, const Ice::Context& context = Ice::noExplicitContext) const;

        /// \cond INTERNAL
        void _iceI_sleep(const std::shared_ptr<IceInternal::OutgoingAsyncT<void>>&, std::int32_t, const Ice::Context&) const;
        /// \endcond

        /// Obtains the Slice type ID of this interface.
        /// @return The fully-scoped type ID.
        static const char* ice_staticId() noexcept;

        TimeoutPrx(const TimeoutPrx& other) noexcept : Ice::ObjectPrx(other) {} // NOLINT(modernize-use-equals-default)

        TimeoutPrx(TimeoutPrx&& other) noexcept : Ice::ObjectPrx(std::move(other)) {} // NOLINT(modernize-use-equals-default)

        TimeoutPrx(const Ice::CommunicatorPtr& communicator, std::string_view proxyString) : Ice::ObjectPrx(communicator, proxyString) {} // NOLINT(modernize-use-equals-default)

        ~TimeoutPrx() override;

        TimeoutPrx& operator=(const TimeoutPrx& rhs) noexcept
        {
            if (this != &rhs)
            {
                Ice::ObjectPrx::operator=(rhs);
            }
            return *this;
        }

        TimeoutPrx& operator=(TimeoutPrx&& rhs) noexcept
        {
            if (this != &rhs)
            {
                Ice::ObjectPrx::operator=(std::move(rhs));
            }
            return *this;
        }

        /// \cond INTERNAL
        static TimeoutPrx _fromReference(IceInternal::ReferencePtr ref) { return TimeoutPrx(std::move(ref)); }

    protected:
        TimeoutPrx() = default;

        explicit TimeoutPrx(IceInternal::ReferencePtr&& ref) : Ice::ObjectPrx(std::move(ref))
        {
        }
        /// \endcond
    };

    class ControllerPrx : public Ice::Proxy<ControllerPrx, Ice::ObjectPrx>
    {
    public:
        void holdAdapter(std::int32_t to, const Ice::Context& context = Ice::noExplicitContext) const;

        [[nodiscard]] std::future<void> holdAdapterAsync(std::int32_t to, const Ice::Context& context = Ice::noExplicitContext) const;

        // NOLINTNEXTLINE(modernize-use-nodiscard)
        std::function<void()> holdAdapterAsync(std::int32_t to, std::function<void()> response, std::function<void(std::exception_ptr)> exception = nullptr, std::function<void(bool)> sent = nullptr, const Ice::Context& context = Ice::noExplicitContext) const;

        /// \cond INTERNAL
        void _iceI_holdAdapter(const std::shared_ptr<IceInternal::OutgoingAsyncT<void>>&, std::int32_t, const Ice::Context&) const;
        /// \endcond

        void resumeAdapter(const Ice::Context& context = Ice::noExplicitContext) const;

        [[nodiscard]] std::future<void> resumeAdapterAsync(const Ice::Context& context = Ice::noExplicitContext) const;

        // NOLINTNEXTLINE(modernize-use-nodiscard)
        std::function<void()> resumeAdapterAsync(std::function<void()> response, std::function<void(std::exception_ptr)> exception = nullptr, std::function<void(bool)> sent = nullptr, const Ice::Context& context = Ice::noExplicitContext) const;

        /// \cond INTERNAL
        void _iceI_resumeAdapter(const std::shared_ptr<IceInternal::OutgoingAsyncT<void>>&, const Ice::Context&) const;
        /// \endcond

        void shutdown(const Ice::Context& context = Ice::noExplicitContext) const;

        [[nodiscard]] std::future<void> shutdownAsync(const Ice::Context& context = Ice::noExplicitContext) const;

        // NOLINTNEXTLINE(modernize-use-nodiscard)
        std::function<void()> shutdownAsync(std::function<void()> response, std::function<void(std::exception_ptr)> exception = nullptr, std::function<void(bool)> sent = nullptr, const Ice::Context& context = Ice::noExplicitContext) const;

        /// \cond INTERNAL
        void _iceI_shutdown(const std::shared_ptr<IceInternal::OutgoingAsyncT<void>>&, const Ice::Context&) const;
        /// \endcond

        /// Obtains the Slice type ID of this interface.
        /// @return The fully-scoped type ID.
        static const char* ice_staticId() noexcept;

        ControllerPrx(const ControllerPrx& other) noexcept : Ice::ObjectPrx(other) {} // NOLINT(modernize-use-equals-default)

        ControllerPrx(ControllerPrx&& other) noexcept : Ice::ObjectPrx(std::move(other)) {} // NOLINT(modernize-use-equals-default)

        ControllerPrx(const Ice::CommunicatorPtr& communicator, std::string_view proxyString) : Ice::ObjectPrx(communicator, proxyString) {} // NOLINT(modernize-use-equals-default)

        ~ControllerPrx() override;

        ControllerPrx& operator=(const ControllerPrx& rhs) noexcept
        {
            if (this != &rhs)
            {
                Ice::ObjectPrx::operator=(rhs);
            }
            return *this;
        }

        ControllerPrx& operator=(ControllerPrx&& rhs) noexcept
        {
            if (this != &rhs)
            {
                Ice::ObjectPrx::operator=(std::move(rhs));
            }
            return *this;
        }

        /// \cond INTERNAL
        static ControllerPrx _fromReference(IceInternal::ReferencePtr ref) { return ControllerPrx(std::move(ref)); }

    protected:
        ControllerPrx() = default;

        explicit ControllerPrx(IceInternal::ReferencePtr&& ref) : Ice::ObjectPrx(std::move(ref))
        {
        }
        /// \endcond
    };
}

namespace Test
{
    class Timeout : public virtual Ice::Object
    {
    public:
        using ProxyType = TimeoutPrx;

        /// Obtains a list of the Slice type IDs representing the interfaces supported by this object.
        /// @param current The Current object for the invocation.
        /// @return A list of fully-scoped type IDs.
        [[nodiscard]] std::vector<std::string> ice_ids(const Ice::Current& current) const override;

        /// Obtains a Slice type ID representing the most-derived interface supported by this object.
        /// @param current The Current object for the invocation.
        /// @return A fully-scoped type ID.
        [[nodiscard]] std::string ice_id(const Ice::Current& current) const override;

        /// Obtains the Slice type ID corresponding to this interface.
        /// @return A fully-scoped type ID.
        static const char* ice_staticId() noexcept;

        virtual void op(const Ice::Current& current) = 0;

        /// \cond INTERNAL
        void _iceD_op(Ice::IncomingRequest&, std::function<void(Ice::OutgoingResponse)>);
        /// \endcond

        virtual void sendData(ByteSeq seq, const Ice::Current& current) = 0;

        /// \cond INTERNAL
        void _iceD_sendData(Ice::IncomingRequest&, std::function<void(Ice::OutgoingResponse)>);
        /// \endcond

        virtual void sleep(std::int32_t to, const Ice::Current& current) = 0;

        /// \cond INTERNAL
        void _iceD_sleep(Ice::IncomingRequest&, std::function<void(Ice::OutgoingResponse)>);
        /// \endcond

        void dispatch(Ice::IncomingRequest&, std::function<void(Ice::OutgoingResponse)>) override;
    };

    using TimeoutPtr = std::shared_ptr<Timeout>;

    class Controller : public virtual Ice::Object
    {
    public:
        using ProxyType = ControllerPrx;

        /// Obtains a list of the Slice type IDs representing the interfaces supported by this object.
        /// @param current The Current object for the invocation.
        /// @return A list of fully-scoped type IDs.
        [[nodiscard]] std::vector<std::string> ice_ids(const Ice::Current& current) const override;

        /// Obtains a Slice type ID representing the most-derived interface supported by this object.
        /// @param current The Current object for the invocation.
        /// @return A fully-scoped type ID.
        [[nodiscard]] std::string ice_id(const Ice::Current& current) const override;

        /// Obtains the Slice type ID corresponding to this interface.
        /// @return A fully-scoped type ID.
        static const char* ice_staticId() noexcept;

        virtual void holdAdapter(std::int32_t to, const Ice::Current& current) = 0;

        /// \cond INTERNAL
        void _iceD_holdAdapter(Ice::IncomingRequest&, std::function<void(Ice::OutgoingResponse)>);
        /// \endcond

        virtual void resumeAdapter(const Ice::Current& current) = 0;

        /// \cond INTERNAL
        void _iceD_resumeAdapter(Ice::IncomingRequest&, std::function<void(Ice::OutgoingResponse)>);
        /// \endcond

        virtual void shutdown(const Ice::Current& current) = 0;

        /// \cond INTERNAL
        void _iceD_shutdown(Ice::IncomingRequest&, std::function<void(Ice::OutgoingResponse)>);
        /// \endcond

        void dispatch(Ice::IncomingRequest&, std::function<void(Ice::OutgoingResponse)>) override;
    };

    using ControllerPtr = std::shared_ptr<Controller>;
}

// NOLINTEND(modernize-concat-nested-namespaces)

#include <Ice/PopDisableWarnings.h>
#endif
