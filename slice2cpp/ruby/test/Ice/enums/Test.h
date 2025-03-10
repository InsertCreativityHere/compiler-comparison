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
    constexpr std::uint8_t ByteConst1 = 10;

    constexpr std::int16_t ShortConst1 = 20;

    constexpr std::int32_t IntConst1 = 30;

    constexpr std::int64_t LongConst1 = INT64_C(40);

    constexpr std::uint8_t ByteConst2 = 126;

    constexpr std::int16_t ShortConst2 = 32766;

    constexpr std::int32_t IntConst2 = 2147483647;

    constexpr std::int64_t LongConst2 = INT64_C(2147483646);

    enum class ByteEnum : std::uint8_t
    {
        benum1 = 0,
        benum2 = 1,
        benum3 = 10,
        benum4 = 11,
        benum5 = 20,
        benum6 = 21,
        benum7 = 30,
        benum8 = 31,
        benum9 = 40,
        benum10 = 41,
        benum11 = 126
    };

    std::ostream& operator<<(std::ostream&, ByteEnum);

    enum class ShortEnum : std::int32_t // NOLINT(performance-enum-size)
    {
        senum1 = 3,
        senum2 = 4,
        senum3 = 10,
        senum4 = 11,
        senum5 = 20,
        senum6 = 21,
        senum7 = 30,
        senum8 = 31,
        senum9 = 40,
        senum10 = 41,
        senum11 = 32766
    };

    std::ostream& operator<<(std::ostream&, ShortEnum);

    enum class IntEnum : std::int32_t
    {
        ienum1 = 0,
        ienum2 = 1,
        ienum3 = 10,
        ienum4 = 11,
        ienum5 = 20,
        ienum6 = 21,
        ienum7 = 30,
        ienum8 = 31,
        ienum9 = 40,
        ienum10 = 41,
        ienum11 = 2147483647,
        ienum12 = 2147483646
    };

    std::ostream& operator<<(std::ostream&, IntEnum);

    enum class SimpleEnum : std::uint8_t
    {
        red,
        green,
        blue
    };

    std::ostream& operator<<(std::ostream&, SimpleEnum);

    class TestIntfPrx;
}

namespace Test
{
    class TestIntfPrx : public Ice::Proxy<TestIntfPrx, Ice::ObjectPrx>
    {
    public:
        ByteEnum opByte(ByteEnum b1, ByteEnum& b2, const Ice::Context& context = Ice::noExplicitContext) const;

        [[nodiscard]] std::future<std::tuple<ByteEnum, ByteEnum>> opByteAsync(ByteEnum b1, const Ice::Context& context = Ice::noExplicitContext) const;

        // NOLINTNEXTLINE(modernize-use-nodiscard)
        std::function<void()> opByteAsync(ByteEnum b1, std::function<void(::Test::ByteEnum, ::Test::ByteEnum)> response, std::function<void(std::exception_ptr)> exception = nullptr, std::function<void(bool)> sent = nullptr, const Ice::Context& context = Ice::noExplicitContext) const;

        /// \cond INTERNAL
        void _iceI_opByte(const std::shared_ptr<IceInternal::OutgoingAsyncT<std::tuple<ByteEnum, ByteEnum>>>&, ByteEnum, const Ice::Context&) const;
        /// \endcond

        ShortEnum opShort(ShortEnum s1, ShortEnum& s2, const Ice::Context& context = Ice::noExplicitContext) const;

        [[nodiscard]] std::future<std::tuple<ShortEnum, ShortEnum>> opShortAsync(ShortEnum s1, const Ice::Context& context = Ice::noExplicitContext) const;

        // NOLINTNEXTLINE(modernize-use-nodiscard)
        std::function<void()> opShortAsync(ShortEnum s1, std::function<void(::Test::ShortEnum, ::Test::ShortEnum)> response, std::function<void(std::exception_ptr)> exception = nullptr, std::function<void(bool)> sent = nullptr, const Ice::Context& context = Ice::noExplicitContext) const;

        /// \cond INTERNAL
        void _iceI_opShort(const std::shared_ptr<IceInternal::OutgoingAsyncT<std::tuple<ShortEnum, ShortEnum>>>&, ShortEnum, const Ice::Context&) const;
        /// \endcond

        IntEnum opInt(IntEnum i1, IntEnum& i2, const Ice::Context& context = Ice::noExplicitContext) const;

        [[nodiscard]] std::future<std::tuple<IntEnum, IntEnum>> opIntAsync(IntEnum i1, const Ice::Context& context = Ice::noExplicitContext) const;

        // NOLINTNEXTLINE(modernize-use-nodiscard)
        std::function<void()> opIntAsync(IntEnum i1, std::function<void(::Test::IntEnum, ::Test::IntEnum)> response, std::function<void(std::exception_ptr)> exception = nullptr, std::function<void(bool)> sent = nullptr, const Ice::Context& context = Ice::noExplicitContext) const;

        /// \cond INTERNAL
        void _iceI_opInt(const std::shared_ptr<IceInternal::OutgoingAsyncT<std::tuple<IntEnum, IntEnum>>>&, IntEnum, const Ice::Context&) const;
        /// \endcond

        SimpleEnum opSimple(SimpleEnum s1, SimpleEnum& s2, const Ice::Context& context = Ice::noExplicitContext) const;

        [[nodiscard]] std::future<std::tuple<SimpleEnum, SimpleEnum>> opSimpleAsync(SimpleEnum s1, const Ice::Context& context = Ice::noExplicitContext) const;

        // NOLINTNEXTLINE(modernize-use-nodiscard)
        std::function<void()> opSimpleAsync(SimpleEnum s1, std::function<void(::Test::SimpleEnum, ::Test::SimpleEnum)> response, std::function<void(std::exception_ptr)> exception = nullptr, std::function<void(bool)> sent = nullptr, const Ice::Context& context = Ice::noExplicitContext) const;

        /// \cond INTERNAL
        void _iceI_opSimple(const std::shared_ptr<IceInternal::OutgoingAsyncT<std::tuple<SimpleEnum, SimpleEnum>>>&, SimpleEnum, const Ice::Context&) const;
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

        TestIntfPrx(const TestIntfPrx& other) noexcept : Ice::ObjectPrx(other) {} // NOLINT(modernize-use-equals-default)

        TestIntfPrx(TestIntfPrx&& other) noexcept : Ice::ObjectPrx(std::move(other)) {} // NOLINT(modernize-use-equals-default)

        TestIntfPrx(const Ice::CommunicatorPtr& communicator, std::string_view proxyString) : Ice::ObjectPrx(communicator, proxyString) {} // NOLINT(modernize-use-equals-default)

        ~TestIntfPrx() override;

        TestIntfPrx& operator=(const TestIntfPrx& rhs) noexcept
        {
            if (this != &rhs)
            {
                Ice::ObjectPrx::operator=(rhs);
            }
            return *this;
        }

        TestIntfPrx& operator=(TestIntfPrx&& rhs) noexcept
        {
            if (this != &rhs)
            {
                Ice::ObjectPrx::operator=(std::move(rhs));
            }
            return *this;
        }

        /// \cond INTERNAL
        static TestIntfPrx _fromReference(IceInternal::ReferencePtr ref) { return TestIntfPrx(std::move(ref)); }

    protected:
        TestIntfPrx() = default;

        explicit TestIntfPrx(IceInternal::ReferencePtr&& ref) : Ice::ObjectPrx(std::move(ref))
        {
        }
        /// \endcond
    };
}

namespace Test
{
    class TestIntf : public virtual Ice::Object
    {
    public:
        using ProxyType = TestIntfPrx;

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

        virtual ByteEnum opByte(ByteEnum b1, ByteEnum& b2, const Ice::Current& current) = 0;

        /// \cond INTERNAL
        void _iceD_opByte(Ice::IncomingRequest&, std::function<void(Ice::OutgoingResponse)>);
        /// \endcond

        virtual ShortEnum opShort(ShortEnum s1, ShortEnum& s2, const Ice::Current& current) = 0;

        /// \cond INTERNAL
        void _iceD_opShort(Ice::IncomingRequest&, std::function<void(Ice::OutgoingResponse)>);
        /// \endcond

        virtual IntEnum opInt(IntEnum i1, IntEnum& i2, const Ice::Current& current) = 0;

        /// \cond INTERNAL
        void _iceD_opInt(Ice::IncomingRequest&, std::function<void(Ice::OutgoingResponse)>);
        /// \endcond

        virtual SimpleEnum opSimple(SimpleEnum s1, SimpleEnum& s2, const Ice::Current& current) = 0;

        /// \cond INTERNAL
        void _iceD_opSimple(Ice::IncomingRequest&, std::function<void(Ice::OutgoingResponse)>);
        /// \endcond

        virtual void shutdown(const Ice::Current& current) = 0;

        /// \cond INTERNAL
        void _iceD_shutdown(Ice::IncomingRequest&, std::function<void(Ice::OutgoingResponse)>);
        /// \endcond

        void dispatch(Ice::IncomingRequest&, std::function<void(Ice::OutgoingResponse)>) override;
    };

    using TestIntfPtr = std::shared_ptr<TestIntf>;
}

/// \cond STREAM
namespace Ice
{
    template<>
    struct StreamableTraits<::Test::ByteEnum>
    {
        static const StreamHelperCategory helper = StreamHelperCategoryEnum;
        static const int minValue = 0;
        static const int maxValue = 126;
        static const int minWireSize = 1;
        static const bool fixedLength = false;
    };

    template<>
    struct StreamableTraits<::Test::ShortEnum>
    {
        static const StreamHelperCategory helper = StreamHelperCategoryEnum;
        static const int minValue = 3;
        static const int maxValue = 32766;
        static const int minWireSize = 1;
        static const bool fixedLength = false;
    };

    template<>
    struct StreamableTraits<::Test::IntEnum>
    {
        static const StreamHelperCategory helper = StreamHelperCategoryEnum;
        static const int minValue = 0;
        static const int maxValue = 2147483647;
        static const int minWireSize = 1;
        static const bool fixedLength = false;
    };

    template<>
    struct StreamableTraits<::Test::SimpleEnum>
    {
        static const StreamHelperCategory helper = StreamHelperCategoryEnum;
        static const int minValue = 0;
        static const int maxValue = 2;
        static const int minWireSize = 1;
        static const bool fixedLength = false;
    };
}
/// \endcond

// NOLINTEND(modernize-concat-nested-namespaces)

#include <Ice/PopDisableWarnings.h>
#endif
