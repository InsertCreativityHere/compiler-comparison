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
    class ClockPrx;
}

namespace Test
{
    class ClockPrx : public Ice::Proxy<ClockPrx, Ice::ObjectPrx>
    {
    public:
        void tick(std::string_view time, const Ice::Context& context = Ice::noExplicitContext) const;

        [[nodiscard]] std::future<void> tickAsync(std::string_view time, const Ice::Context& context = Ice::noExplicitContext) const;

        // NOLINTNEXTLINE(modernize-use-nodiscard)
        std::function<void()> tickAsync(std::string_view time, std::function<void()> response, std::function<void(std::exception_ptr)> exception = nullptr, std::function<void(bool)> sent = nullptr, const Ice::Context& context = Ice::noExplicitContext) const;

        /// \cond INTERNAL
        void _iceI_tick(const std::shared_ptr<IceInternal::OutgoingAsyncT<void>>&, std::string_view, const Ice::Context&) const;
        /// \endcond

        /// Obtains the Slice type ID of this interface.
        /// @return The fully-scoped type ID.
        static const char* ice_staticId() noexcept;

        ClockPrx(const ClockPrx& other) noexcept : Ice::ObjectPrx(other) {} // NOLINT(modernize-use-equals-default)

        ClockPrx(ClockPrx&& other) noexcept : Ice::ObjectPrx(std::move(other)) {} // NOLINT(modernize-use-equals-default)

        ClockPrx(const Ice::CommunicatorPtr& communicator, std::string_view proxyString) : Ice::ObjectPrx(communicator, proxyString) {} // NOLINT(modernize-use-equals-default)

        ~ClockPrx() override;

        ClockPrx& operator=(const ClockPrx& rhs) noexcept
        {
            if (this != &rhs)
            {
                Ice::ObjectPrx::operator=(rhs);
            }
            return *this;
        }

        ClockPrx& operator=(ClockPrx&& rhs) noexcept
        {
            if (this != &rhs)
            {
                Ice::ObjectPrx::operator=(std::move(rhs));
            }
            return *this;
        }

        /// \cond INTERNAL
        static ClockPrx _fromReference(IceInternal::ReferencePtr ref) { return ClockPrx(std::move(ref)); }

    protected:
        ClockPrx() = default;

        explicit ClockPrx(IceInternal::ReferencePtr&& ref) : Ice::ObjectPrx(std::move(ref))
        {
        }
        /// \endcond
    };
}

namespace Test
{
    class Clock : public virtual Ice::Object
    {
    public:
        using ProxyType = ClockPrx;

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

        virtual void tick(std::string time, const Ice::Current& current) = 0;

        /// \cond INTERNAL
        void _iceD_tick(Ice::IncomingRequest&, std::function<void(Ice::OutgoingResponse)>);
        /// \endcond

        void dispatch(Ice::IncomingRequest&, std::function<void(Ice::OutgoingResponse)>) override;
    };

    using ClockPtr = std::shared_ptr<Clock>;
}

// NOLINTEND(modernize-concat-nested-namespaces)

#include <Ice/PopDisableWarnings.h>
#endif
