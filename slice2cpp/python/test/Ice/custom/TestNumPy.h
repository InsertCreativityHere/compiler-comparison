//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `TestNumPy.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

#ifndef TestNumPy_h_
#define TestNumPy_h_

#include <Ice/PushDisableWarnings.h>
#include <Ice/Ice.h>

#ifndef ICE_IGNORE_VERSION
#   if ICE_INT_VERSION  != 30850
#       error Ice version mismatch: an exact match is required for beta generated code
#   endif
#endif

namespace Test
{

    namespace NumPy
    {
        using BoolSeq1 = ::std::vector<bool>;

        using BoolSeq2 = ::std::vector<bool>;

        using ByteSeq1 = ::std::vector<std::byte>;

        using ByteSeq2 = ::std::vector<std::byte>;

        using ShortSeq1 = ::std::vector<::std::int16_t>;

        using ShortSeq2 = ::std::vector<::std::int16_t>;

        using IntSeq1 = ::std::vector<::std::int32_t>;

        using IntSeq2 = ::std::vector<::std::int32_t>;

        using LongSeq1 = ::std::vector<::std::int64_t>;

        using LongSeq2 = ::std::vector<::std::int64_t>;

        using FloatSeq1 = ::std::vector<float>;

        using FloatSeq2 = ::std::vector<float>;

        using DoubleSeq1 = ::std::vector<double>;

        using DoubleSeq2 = ::std::vector<double>;

        using Complex128Seq = ::std::vector<std::byte>;

        class D;
        using DPtr = ::std::shared_ptr<D>;

        class CustomPrx;

    }
}

namespace Test
{

namespace NumPy
{

class CustomPrx : public ::Ice::Proxy<CustomPrx, ::Ice::ObjectPrx>
{
public:

    BoolSeq1 opBoolSeq(const BoolSeq1& v1, BoolSeq2& v2, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    [[nodiscard]] ::std::future<::std::tuple<BoolSeq1, BoolSeq2>> opBoolSeqAsync(const BoolSeq1& v1, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::function<void()>
    opBoolSeqAsync(const BoolSeq1& v1, ::std::function<void(::Test::NumPy::BoolSeq1, ::Test::NumPy::BoolSeq2)> response, ::std::function<void(::std::exception_ptr)> ex = nullptr, ::std::function<void(bool)> sent = nullptr, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /// \cond INTERNAL
    void _iceI_opBoolSeq(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<::std::tuple<BoolSeq1, BoolSeq2>>>&, const BoolSeq1&, const ::Ice::Context&) const;
    /// \endcond

    ByteSeq1 opByteSeq(const ByteSeq1& v1, ByteSeq2& v2, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    [[nodiscard]] ::std::future<::std::tuple<ByteSeq1, ByteSeq2>> opByteSeqAsync(const ByteSeq1& v1, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::function<void()>
    opByteSeqAsync(const ByteSeq1& v1, ::std::function<void(::Test::NumPy::ByteSeq1, ::Test::NumPy::ByteSeq2)> response, ::std::function<void(::std::exception_ptr)> ex = nullptr, ::std::function<void(bool)> sent = nullptr, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /// \cond INTERNAL
    void _iceI_opByteSeq(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<::std::tuple<ByteSeq1, ByteSeq2>>>&, const ByteSeq1&, const ::Ice::Context&) const;
    /// \endcond

    ShortSeq1 opShortSeq(const ShortSeq1& v1, ShortSeq2& v2, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    [[nodiscard]] ::std::future<::std::tuple<ShortSeq1, ShortSeq2>> opShortSeqAsync(const ShortSeq1& v1, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::function<void()>
    opShortSeqAsync(const ShortSeq1& v1, ::std::function<void(::Test::NumPy::ShortSeq1, ::Test::NumPy::ShortSeq2)> response, ::std::function<void(::std::exception_ptr)> ex = nullptr, ::std::function<void(bool)> sent = nullptr, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /// \cond INTERNAL
    void _iceI_opShortSeq(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<::std::tuple<ShortSeq1, ShortSeq2>>>&, const ShortSeq1&, const ::Ice::Context&) const;
    /// \endcond

    IntSeq1 opIntSeq(const IntSeq1& v1, IntSeq2& v2, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    [[nodiscard]] ::std::future<::std::tuple<IntSeq1, IntSeq2>> opIntSeqAsync(const IntSeq1& v1, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::function<void()>
    opIntSeqAsync(const IntSeq1& v1, ::std::function<void(::Test::NumPy::IntSeq1, ::Test::NumPy::IntSeq2)> response, ::std::function<void(::std::exception_ptr)> ex = nullptr, ::std::function<void(bool)> sent = nullptr, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /// \cond INTERNAL
    void _iceI_opIntSeq(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<::std::tuple<IntSeq1, IntSeq2>>>&, const IntSeq1&, const ::Ice::Context&) const;
    /// \endcond

    LongSeq1 opLongSeq(const LongSeq1& v1, LongSeq2& v2, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    [[nodiscard]] ::std::future<::std::tuple<LongSeq1, LongSeq2>> opLongSeqAsync(const LongSeq1& v1, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::function<void()>
    opLongSeqAsync(const LongSeq1& v1, ::std::function<void(::Test::NumPy::LongSeq1, ::Test::NumPy::LongSeq2)> response, ::std::function<void(::std::exception_ptr)> ex = nullptr, ::std::function<void(bool)> sent = nullptr, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /// \cond INTERNAL
    void _iceI_opLongSeq(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<::std::tuple<LongSeq1, LongSeq2>>>&, const LongSeq1&, const ::Ice::Context&) const;
    /// \endcond

    FloatSeq1 opFloatSeq(const FloatSeq1& v1, FloatSeq2& v2, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    [[nodiscard]] ::std::future<::std::tuple<FloatSeq1, FloatSeq2>> opFloatSeqAsync(const FloatSeq1& v1, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::function<void()>
    opFloatSeqAsync(const FloatSeq1& v1, ::std::function<void(::Test::NumPy::FloatSeq1, ::Test::NumPy::FloatSeq2)> response, ::std::function<void(::std::exception_ptr)> ex = nullptr, ::std::function<void(bool)> sent = nullptr, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /// \cond INTERNAL
    void _iceI_opFloatSeq(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<::std::tuple<FloatSeq1, FloatSeq2>>>&, const FloatSeq1&, const ::Ice::Context&) const;
    /// \endcond

    DoubleSeq1 opDoubleSeq(const DoubleSeq1& v1, DoubleSeq2& v2, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    [[nodiscard]] ::std::future<::std::tuple<DoubleSeq1, DoubleSeq2>> opDoubleSeqAsync(const DoubleSeq1& v1, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::function<void()>
    opDoubleSeqAsync(const DoubleSeq1& v1, ::std::function<void(::Test::NumPy::DoubleSeq1, ::Test::NumPy::DoubleSeq2)> response, ::std::function<void(::std::exception_ptr)> ex = nullptr, ::std::function<void(bool)> sent = nullptr, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /// \cond INTERNAL
    void _iceI_opDoubleSeq(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<::std::tuple<DoubleSeq1, DoubleSeq2>>>&, const DoubleSeq1&, const ::Ice::Context&) const;
    /// \endcond

    Complex128Seq opComplex128Seq(const Complex128Seq& v1, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    [[nodiscard]] ::std::future<Complex128Seq> opComplex128SeqAsync(const Complex128Seq& v1, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::function<void()>
    opComplex128SeqAsync(const Complex128Seq& v1, ::std::function<void(::Test::NumPy::Complex128Seq)> response, ::std::function<void(::std::exception_ptr)> ex = nullptr, ::std::function<void(bool)> sent = nullptr, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /// \cond INTERNAL
    void _iceI_opComplex128Seq(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<Complex128Seq>>&, const Complex128Seq&, const ::Ice::Context&) const;
    /// \endcond

    BoolSeq1 opBoolMatrix(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    [[nodiscard]] ::std::future<BoolSeq1> opBoolMatrixAsync(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::function<void()>
    opBoolMatrixAsync(::std::function<void(::Test::NumPy::BoolSeq1)> response, ::std::function<void(::std::exception_ptr)> ex = nullptr, ::std::function<void(bool)> sent = nullptr, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /// \cond INTERNAL
    void _iceI_opBoolMatrix(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<BoolSeq1>>&, const ::Ice::Context&) const;
    /// \endcond

    ByteSeq1 opByteMatrix(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    [[nodiscard]] ::std::future<ByteSeq1> opByteMatrixAsync(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::function<void()>
    opByteMatrixAsync(::std::function<void(::Test::NumPy::ByteSeq1)> response, ::std::function<void(::std::exception_ptr)> ex = nullptr, ::std::function<void(bool)> sent = nullptr, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /// \cond INTERNAL
    void _iceI_opByteMatrix(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<ByteSeq1>>&, const ::Ice::Context&) const;
    /// \endcond

    ShortSeq1 opShortMatrix(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    [[nodiscard]] ::std::future<ShortSeq1> opShortMatrixAsync(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::function<void()>
    opShortMatrixAsync(::std::function<void(::Test::NumPy::ShortSeq1)> response, ::std::function<void(::std::exception_ptr)> ex = nullptr, ::std::function<void(bool)> sent = nullptr, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /// \cond INTERNAL
    void _iceI_opShortMatrix(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<ShortSeq1>>&, const ::Ice::Context&) const;
    /// \endcond

    IntSeq1 opIntMatrix(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    [[nodiscard]] ::std::future<IntSeq1> opIntMatrixAsync(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::function<void()>
    opIntMatrixAsync(::std::function<void(::Test::NumPy::IntSeq1)> response, ::std::function<void(::std::exception_ptr)> ex = nullptr, ::std::function<void(bool)> sent = nullptr, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /// \cond INTERNAL
    void _iceI_opIntMatrix(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<IntSeq1>>&, const ::Ice::Context&) const;
    /// \endcond

    LongSeq1 opLongMatrix(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    [[nodiscard]] ::std::future<LongSeq1> opLongMatrixAsync(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::function<void()>
    opLongMatrixAsync(::std::function<void(::Test::NumPy::LongSeq1)> response, ::std::function<void(::std::exception_ptr)> ex = nullptr, ::std::function<void(bool)> sent = nullptr, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /// \cond INTERNAL
    void _iceI_opLongMatrix(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<LongSeq1>>&, const ::Ice::Context&) const;
    /// \endcond

    FloatSeq1 opFloatMatrix(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    [[nodiscard]] ::std::future<FloatSeq1> opFloatMatrixAsync(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::function<void()>
    opFloatMatrixAsync(::std::function<void(::Test::NumPy::FloatSeq1)> response, ::std::function<void(::std::exception_ptr)> ex = nullptr, ::std::function<void(bool)> sent = nullptr, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /// \cond INTERNAL
    void _iceI_opFloatMatrix(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<FloatSeq1>>&, const ::Ice::Context&) const;
    /// \endcond

    DoubleSeq1 opDoubleMatrix(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    [[nodiscard]] ::std::future<DoubleSeq1> opDoubleMatrixAsync(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::function<void()>
    opDoubleMatrixAsync(::std::function<void(::Test::NumPy::DoubleSeq1)> response, ::std::function<void(::std::exception_ptr)> ex = nullptr, ::std::function<void(bool)> sent = nullptr, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /// \cond INTERNAL
    void _iceI_opDoubleMatrix(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<DoubleSeq1>>&, const ::Ice::Context&) const;
    /// \endcond

    BoolSeq1 opBogusNumpyArrayType(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    [[nodiscard]] ::std::future<BoolSeq1> opBogusNumpyArrayTypeAsync(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::function<void()>
    opBogusNumpyArrayTypeAsync(::std::function<void(::Test::NumPy::BoolSeq1)> response, ::std::function<void(::std::exception_ptr)> ex = nullptr, ::std::function<void(bool)> sent = nullptr, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /// \cond INTERNAL
    void _iceI_opBogusNumpyArrayType(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<BoolSeq1>>&, const ::Ice::Context&) const;
    /// \endcond

    DPtr opD(const DPtr& d, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    [[nodiscard]] ::std::future<DPtr> opDAsync(const DPtr& d, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::function<void()>
    opDAsync(const DPtr& d, ::std::function<void(::Test::NumPy::DPtr)> response, ::std::function<void(::std::exception_ptr)> ex = nullptr, ::std::function<void(bool)> sent = nullptr, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /// \cond INTERNAL
    void _iceI_opD(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<DPtr>>&, const DPtr&, const ::Ice::Context&) const;
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
    CustomPrx(const CustomPrx& other) noexcept : ::Ice::ObjectPrx(other)
    {
    }

    CustomPrx(CustomPrx&& other) noexcept : ::Ice::ObjectPrx(::std::move(other))
    {
    }

    CustomPrx(const ::Ice::CommunicatorPtr& communicator, std::string_view proxyString) :
        ::Ice::ObjectPrx(communicator, proxyString)
    {
    }

    CustomPrx& operator=(const CustomPrx& rhs) noexcept
    {
        if (this != &rhs)
        {
            ::Ice::ObjectPrx::operator=(rhs);
        }
        return *this;
    }

    CustomPrx& operator=(CustomPrx&& rhs) noexcept
    {
        if (this != &rhs)
        {
            ::Ice::ObjectPrx::operator=(::std::move(rhs));
        }
        return *this;
    }

    /// \cond INTERNAL
    static CustomPrx _fromReference(::IceInternal::ReferencePtr ref) { return CustomPrx(::std::move(ref)); }

protected:

    CustomPrx() = default;

    explicit CustomPrx(::IceInternal::ReferencePtr&& ref) : ::Ice::ObjectPrx(::std::move(ref))
    {
    }
    /// \endcond
};

}

}

namespace Test
{

namespace NumPy
{

class D : public ::Ice::Value
{
public:
    /// Default constructor.
    D() noexcept = default;

    /// One-shot constructor to initialize all data members.
    D(::std::optional<::Test::NumPy::BoolSeq1> boolSeq, ::std::optional<::Test::NumPy::ByteSeq1> byteSeq, ::std::optional<::Test::NumPy::ShortSeq1> shortSeq, ::std::optional<::Test::NumPy::IntSeq1> intSeq, ::std::optional<::Test::NumPy::LongSeq1> longSeq, ::std::optional<::Test::NumPy::FloatSeq1> floatSeq, ::std::optional<::Test::NumPy::DoubleSeq1> doubleSeq) noexcept :
        boolSeq(::std::move(boolSeq)),
        byteSeq(::std::move(byteSeq)),
        shortSeq(::std::move(shortSeq)),
        intSeq(::std::move(intSeq)),
        longSeq(::std::move(longSeq)),
        floatSeq(::std::move(floatSeq)),
        doubleSeq(::std::move(doubleSeq))
    {
    }

    /// Obtains the Slice type ID of this value.
    /// @return The fully-scoped type ID.
    static const char* ice_staticId() noexcept;

    const char* ice_id() const noexcept override;

    /// Obtains a tuple containing all of the value's data members.
    /// @return The data members in a tuple.
    [[nodiscard]] std::tuple<const ::std::optional<::Test::NumPy::BoolSeq1>&, const ::std::optional<::Test::NumPy::ByteSeq1>&, const ::std::optional<::Test::NumPy::ShortSeq1>&, const ::std::optional<::Test::NumPy::IntSeq1>&, const ::std::optional<::Test::NumPy::LongSeq1>&, const ::std::optional<::Test::NumPy::FloatSeq1>&, const ::std::optional<::Test::NumPy::DoubleSeq1>&> ice_tuple() const
    {
        return std::tie(boolSeq, byteSeq, shortSeq, intSeq, longSeq, floatSeq, doubleSeq);
    }

    /// Creates a shallow polymorphic copy of this instance.
    /// @return The cloned value.
    DPtr ice_clone() const { return ::std::static_pointer_cast<D>(_iceCloneImpl()); }

    ::std::optional<::Test::NumPy::BoolSeq1> boolSeq;
    ::std::optional<::Test::NumPy::ByteSeq1> byteSeq;
    ::std::optional<::Test::NumPy::ShortSeq1> shortSeq;
    ::std::optional<::Test::NumPy::IntSeq1> intSeq;
    ::std::optional<::Test::NumPy::LongSeq1> longSeq;
    ::std::optional<::Test::NumPy::FloatSeq1> floatSeq;
    ::std::optional<::Test::NumPy::DoubleSeq1> doubleSeq;

protected:
    D(const D&) = default;

    ::Ice::ValuePtr _iceCloneImpl() const override;
    void _iceWriteImpl(::Ice::OutputStream*) const override;

    void _iceReadImpl(::Ice::InputStream*) override;
};

}

}

namespace Test
{

namespace NumPy
{

class Custom : public virtual ::Ice::Object
{
public:

    using ProxyType = CustomPrx;

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

    virtual BoolSeq1 opBoolSeq(BoolSeq1 v1, BoolSeq2& v2, const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    void _iceD_opBoolSeq(::Ice::IncomingRequest&, ::std::function<void(::Ice::OutgoingResponse)>);
    /// \endcond

    virtual ByteSeq1 opByteSeq(ByteSeq1 v1, ByteSeq2& v2, const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    void _iceD_opByteSeq(::Ice::IncomingRequest&, ::std::function<void(::Ice::OutgoingResponse)>);
    /// \endcond

    virtual ShortSeq1 opShortSeq(ShortSeq1 v1, ShortSeq2& v2, const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    void _iceD_opShortSeq(::Ice::IncomingRequest&, ::std::function<void(::Ice::OutgoingResponse)>);
    /// \endcond

    virtual IntSeq1 opIntSeq(IntSeq1 v1, IntSeq2& v2, const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    void _iceD_opIntSeq(::Ice::IncomingRequest&, ::std::function<void(::Ice::OutgoingResponse)>);
    /// \endcond

    virtual LongSeq1 opLongSeq(LongSeq1 v1, LongSeq2& v2, const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    void _iceD_opLongSeq(::Ice::IncomingRequest&, ::std::function<void(::Ice::OutgoingResponse)>);
    /// \endcond

    virtual FloatSeq1 opFloatSeq(FloatSeq1 v1, FloatSeq2& v2, const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    void _iceD_opFloatSeq(::Ice::IncomingRequest&, ::std::function<void(::Ice::OutgoingResponse)>);
    /// \endcond

    virtual DoubleSeq1 opDoubleSeq(DoubleSeq1 v1, DoubleSeq2& v2, const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    void _iceD_opDoubleSeq(::Ice::IncomingRequest&, ::std::function<void(::Ice::OutgoingResponse)>);
    /// \endcond

    virtual Complex128Seq opComplex128Seq(Complex128Seq v1, const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    void _iceD_opComplex128Seq(::Ice::IncomingRequest&, ::std::function<void(::Ice::OutgoingResponse)>);
    /// \endcond

    virtual BoolSeq1 opBoolMatrix(const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    void _iceD_opBoolMatrix(::Ice::IncomingRequest&, ::std::function<void(::Ice::OutgoingResponse)>);
    /// \endcond

    virtual ByteSeq1 opByteMatrix(const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    void _iceD_opByteMatrix(::Ice::IncomingRequest&, ::std::function<void(::Ice::OutgoingResponse)>);
    /// \endcond

    virtual ShortSeq1 opShortMatrix(const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    void _iceD_opShortMatrix(::Ice::IncomingRequest&, ::std::function<void(::Ice::OutgoingResponse)>);
    /// \endcond

    virtual IntSeq1 opIntMatrix(const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    void _iceD_opIntMatrix(::Ice::IncomingRequest&, ::std::function<void(::Ice::OutgoingResponse)>);
    /// \endcond

    virtual LongSeq1 opLongMatrix(const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    void _iceD_opLongMatrix(::Ice::IncomingRequest&, ::std::function<void(::Ice::OutgoingResponse)>);
    /// \endcond

    virtual FloatSeq1 opFloatMatrix(const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    void _iceD_opFloatMatrix(::Ice::IncomingRequest&, ::std::function<void(::Ice::OutgoingResponse)>);
    /// \endcond

    virtual DoubleSeq1 opDoubleMatrix(const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    void _iceD_opDoubleMatrix(::Ice::IncomingRequest&, ::std::function<void(::Ice::OutgoingResponse)>);
    /// \endcond

    virtual BoolSeq1 opBogusNumpyArrayType(const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    void _iceD_opBogusNumpyArrayType(::Ice::IncomingRequest&, ::std::function<void(::Ice::OutgoingResponse)>);
    /// \endcond

    virtual DPtr opD(DPtr d, const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    void _iceD_opD(::Ice::IncomingRequest&, ::std::function<void(::Ice::OutgoingResponse)>);
    /// \endcond

    virtual void shutdown(const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    void _iceD_shutdown(::Ice::IncomingRequest&, ::std::function<void(::Ice::OutgoingResponse)>);
    /// \endcond

    /// \cond INTERNAL
    void dispatch(::Ice::IncomingRequest&, ::std::function<void(::Ice::OutgoingResponse)>) override;
    /// \endcond
};

using CustomPtr = ::std::shared_ptr<Custom>;

}

}

/// \cond STREAM
namespace Ice
{

}
/// \endcond

#include <Ice/PopDisableWarnings.h>
#endif
