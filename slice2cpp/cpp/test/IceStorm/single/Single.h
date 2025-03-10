// Copyright (c) ZeroC, Inc.
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file 'Single.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>

// clang-format off

#ifndef Single_h_
#define Single_h_

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
    class SinglePrx;
}

namespace Test
{
    class SinglePrx : public Ice::Proxy<SinglePrx, Ice::ObjectPrx>
    {
    public:
        void event(std::int32_t i, const Ice::Context& context = Ice::noExplicitContext) const;

        [[nodiscard]] std::future<void> eventAsync(std::int32_t i, const Ice::Context& context = Ice::noExplicitContext) const;

        // NOLINTNEXTLINE(modernize-use-nodiscard)
        std::function<void()> eventAsync(std::int32_t i, std::function<void()> response, std::function<void(std::exception_ptr)> exception = nullptr, std::function<void(bool)> sent = nullptr, const Ice::Context& context = Ice::noExplicitContext) const;

        /// \cond INTERNAL
        void _iceI_event(const std::shared_ptr<IceInternal::OutgoingAsyncT<void>>&, std::int32_t, const Ice::Context&) const;
        /// \endcond

        /// Obtains the Slice type ID of this interface.
        /// @return The fully-scoped type ID.
        static const char* ice_staticId() noexcept;

        SinglePrx(const SinglePrx& other) noexcept : Ice::ObjectPrx(other) {} // NOLINT(modernize-use-equals-default)

        SinglePrx(SinglePrx&& other) noexcept : Ice::ObjectPrx(std::move(other)) {} // NOLINT(modernize-use-equals-default)

        SinglePrx(const Ice::CommunicatorPtr& communicator, std::string_view proxyString) : Ice::ObjectPrx(communicator, proxyString) {} // NOLINT(modernize-use-equals-default)

        ~SinglePrx() override;

        SinglePrx& operator=(const SinglePrx& rhs) noexcept
        {
            if (this != &rhs)
            {
                Ice::ObjectPrx::operator=(rhs);
            }
            return *this;
        }

        SinglePrx& operator=(SinglePrx&& rhs) noexcept
        {
            if (this != &rhs)
            {
                Ice::ObjectPrx::operator=(std::move(rhs));
            }
            return *this;
        }

        /// \cond INTERNAL
        static SinglePrx _fromReference(IceInternal::ReferencePtr ref) { return SinglePrx(std::move(ref)); }

    protected:
        SinglePrx() = default;

        explicit SinglePrx(IceInternal::ReferencePtr&& ref) : Ice::ObjectPrx(std::move(ref))
        {
        }
        /// \endcond
    };
}

namespace Test
{
    class Single : public virtual Ice::Object
    {
    public:
        using ProxyType = SinglePrx;

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

        virtual void event(std::int32_t i, const Ice::Current& current) = 0;

        /// \cond INTERNAL
        void _iceD_event(Ice::IncomingRequest&, std::function<void(Ice::OutgoingResponse)>);
        /// \endcond

        void dispatch(Ice::IncomingRequest&, std::function<void(Ice::OutgoingResponse)>) override;
    };

    using SinglePtr = std::shared_ptr<Single>;
}

// NOLINTEND(modernize-concat-nested-namespaces)

#include <Ice/PopDisableWarnings.h>
#endif
