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
    using ByteSeq = ::std::vector<std::byte>;

    using ShortSeq = ::std::vector<::std::int16_t>;

    using StringSeq = ::std::vector<::std::string>;

    class TestIntfPrx;

}

namespace Test
{

class TestIntfPrx : public ::Ice::Proxy<TestIntfPrx, ::Ice::ObjectPrx>
{
public:

    ByteSeq opByteSpan(std::span<const std::byte> dataIn, ByteSeq& dataOut, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    [[nodiscard]] ::std::future<::std::tuple<ByteSeq, ByteSeq>> opByteSpanAsync(std::span<const std::byte> dataIn, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::function<void()>
    opByteSpanAsync(std::span<const std::byte> dataIn, ::std::function<void(::Test::ByteSeq, ::Test::ByteSeq)> response, ::std::function<void(::std::exception_ptr)> ex = nullptr, ::std::function<void(bool)> sent = nullptr, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /// \cond INTERNAL
    void _iceI_opByteSpan(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<::std::tuple<ByteSeq, ByteSeq>>>&, std::span<const std::byte>, const ::Ice::Context&) const;
    /// \endcond

    ShortSeq opShortSpan(std::span<const std::int16_t> dataIn, ShortSeq& dataOut, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    [[nodiscard]] ::std::future<::std::tuple<ShortSeq, ShortSeq>> opShortSpanAsync(std::span<const std::int16_t> dataIn, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::function<void()>
    opShortSpanAsync(std::span<const std::int16_t> dataIn, ::std::function<void(::Test::ShortSeq, ::Test::ShortSeq)> response, ::std::function<void(::std::exception_ptr)> ex = nullptr, ::std::function<void(bool)> sent = nullptr, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /// \cond INTERNAL
    void _iceI_opShortSpan(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<::std::tuple<ShortSeq, ShortSeq>>>&, std::span<const std::int16_t>, const ::Ice::Context&) const;
    /// \endcond

    StringSeq opStringSpan(std::span<std::string> dataIn, StringSeq& dataOut, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    [[nodiscard]] ::std::future<::std::tuple<StringSeq, StringSeq>> opStringSpanAsync(std::span<std::string> dataIn, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::function<void()>
    opStringSpanAsync(std::span<std::string> dataIn, ::std::function<void(::Test::StringSeq, ::Test::StringSeq)> response, ::std::function<void(::std::exception_ptr)> ex = nullptr, ::std::function<void(bool)> sent = nullptr, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /// \cond INTERNAL
    void _iceI_opStringSpan(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<::std::tuple<StringSeq, StringSeq>>>&, std::span<std::string>, const ::Ice::Context&) const;
    /// \endcond

    ::std::optional<ByteSeq> opOptionalByteSpan(::std::optional<std::span<const std::byte>> dataIn, ::std::optional<ByteSeq>& dataOut, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    [[nodiscard]] ::std::future<::std::tuple<::std::optional<ByteSeq>, ::std::optional<ByteSeq>>> opOptionalByteSpanAsync(::std::optional<std::span<const std::byte>> dataIn, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::function<void()>
    opOptionalByteSpanAsync(::std::optional<std::span<const std::byte>> dataIn, ::std::function<void(::std::optional<::Test::ByteSeq>, ::std::optional<::Test::ByteSeq>)> response, ::std::function<void(::std::exception_ptr)> ex = nullptr, ::std::function<void(bool)> sent = nullptr, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /// \cond INTERNAL
    void _iceI_opOptionalByteSpan(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<::std::tuple<::std::optional<ByteSeq>, ::std::optional<ByteSeq>>>>&, ::std::optional<std::span<const std::byte>>, const ::Ice::Context&) const;
    /// \endcond

    ::std::optional<ShortSeq> opOptionalShortSpan(::std::optional<std::span<const std::int16_t>> dataIn, ::std::optional<ShortSeq>& dataOut, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    [[nodiscard]] ::std::future<::std::tuple<::std::optional<ShortSeq>, ::std::optional<ShortSeq>>> opOptionalShortSpanAsync(::std::optional<std::span<const std::int16_t>> dataIn, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::function<void()>
    opOptionalShortSpanAsync(::std::optional<std::span<const std::int16_t>> dataIn, ::std::function<void(::std::optional<::Test::ShortSeq>, ::std::optional<::Test::ShortSeq>)> response, ::std::function<void(::std::exception_ptr)> ex = nullptr, ::std::function<void(bool)> sent = nullptr, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /// \cond INTERNAL
    void _iceI_opOptionalShortSpan(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<::std::tuple<::std::optional<ShortSeq>, ::std::optional<ShortSeq>>>>&, ::std::optional<std::span<const std::int16_t>>, const ::Ice::Context&) const;
    /// \endcond

    ::std::optional<StringSeq> opOptionalStringSpan(::std::optional<std::span<std::string>> dataIn, ::std::optional<StringSeq>& dataOut, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    [[nodiscard]] ::std::future<::std::tuple<::std::optional<StringSeq>, ::std::optional<StringSeq>>> opOptionalStringSpanAsync(::std::optional<std::span<std::string>> dataIn, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::function<void()>
    opOptionalStringSpanAsync(::std::optional<std::span<std::string>> dataIn, ::std::function<void(::std::optional<::Test::StringSeq>, ::std::optional<::Test::StringSeq>)> response, ::std::function<void(::std::exception_ptr)> ex = nullptr, ::std::function<void(bool)> sent = nullptr, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /// \cond INTERNAL
    void _iceI_opOptionalStringSpan(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<::std::tuple<::std::optional<StringSeq>, ::std::optional<StringSeq>>>>&, ::std::optional<std::span<std::string>>, const ::Ice::Context&) const;
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

    virtual ByteSeq opByteSpan(ByteSeq dataIn, ByteSeq& dataOut, const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    void _iceD_opByteSpan(::Ice::IncomingRequest&, ::std::function<void(::Ice::OutgoingResponse)>);
    /// \endcond

    virtual ShortSeq opShortSpan(ShortSeq dataIn, ShortSeq& dataOut, const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    void _iceD_opShortSpan(::Ice::IncomingRequest&, ::std::function<void(::Ice::OutgoingResponse)>);
    /// \endcond

    virtual StringSeq opStringSpan(StringSeq dataIn, StringSeq& dataOut, const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    void _iceD_opStringSpan(::Ice::IncomingRequest&, ::std::function<void(::Ice::OutgoingResponse)>);
    /// \endcond

    virtual ::std::optional<ByteSeq> opOptionalByteSpan(::std::optional<ByteSeq> dataIn, ::std::optional<ByteSeq>& dataOut, const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    void _iceD_opOptionalByteSpan(::Ice::IncomingRequest&, ::std::function<void(::Ice::OutgoingResponse)>);
    /// \endcond

    virtual ::std::optional<ShortSeq> opOptionalShortSpan(::std::optional<ShortSeq> dataIn, ::std::optional<ShortSeq>& dataOut, const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    void _iceD_opOptionalShortSpan(::Ice::IncomingRequest&, ::std::function<void(::Ice::OutgoingResponse)>);
    /// \endcond

    virtual ::std::optional<StringSeq> opOptionalStringSpan(::std::optional<StringSeq> dataIn, ::std::optional<StringSeq>& dataOut, const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    void _iceD_opOptionalStringSpan(::Ice::IncomingRequest&, ::std::function<void(::Ice::OutgoingResponse)>);
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

}

#include <Ice/PopDisableWarnings.h>
#endif
