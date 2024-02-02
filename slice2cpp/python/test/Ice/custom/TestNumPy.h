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

#ifndef __TestNumPy_h__
#define __TestNumPy_h__

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


namespace NumPy
{

class D;
class Custom;
class CustomPrx;

}

}

namespace Test
{

namespace NumPy
{

using BoolSeq1 = ::std::vector<bool>;

using BoolSeq2 = ::std::vector<bool>;

using ByteSeq1 = ::std::vector<::Ice::Byte>;

using ByteSeq2 = ::std::vector<::Ice::Byte>;

using ShortSeq1 = ::std::vector<short>;

using ShortSeq2 = ::std::vector<short>;

using IntSeq1 = ::std::vector<int>;

using IntSeq2 = ::std::vector<int>;

using LongSeq1 = ::std::vector<long long int>;

using LongSeq2 = ::std::vector<long long int>;

using FloatSeq1 = ::std::vector<float>;

using FloatSeq2 = ::std::vector<float>;

using DoubleSeq1 = ::std::vector<double>;

using DoubleSeq2 = ::std::vector<double>;

using Complex128Seq = ::std::vector<::Ice::Byte>;

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

    /**
     * Encapsulates the results of a call to opBoolSeq.
     */
    struct OpBoolSeqResult
    {
        BoolSeq1 returnValue;
        BoolSeq2 v2;
    };

    virtual BoolSeq1 opBoolSeq(BoolSeq1 v1, BoolSeq2& v2, const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    bool _iceD_opBoolSeq(::IceInternal::Incoming&, const ::Ice::Current&);
    /// \endcond

    /**
     * Encapsulates the results of a call to opByteSeq.
     */
    struct OpByteSeqResult
    {
        ByteSeq1 returnValue;
        ByteSeq2 v2;
    };

    virtual ByteSeq1 opByteSeq(ByteSeq1 v1, ByteSeq2& v2, const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    bool _iceD_opByteSeq(::IceInternal::Incoming&, const ::Ice::Current&);
    /// \endcond

    /**
     * Encapsulates the results of a call to opShortSeq.
     */
    struct OpShortSeqResult
    {
        ShortSeq1 returnValue;
        ShortSeq2 v2;
    };

    virtual ShortSeq1 opShortSeq(ShortSeq1 v1, ShortSeq2& v2, const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    bool _iceD_opShortSeq(::IceInternal::Incoming&, const ::Ice::Current&);
    /// \endcond

    /**
     * Encapsulates the results of a call to opIntSeq.
     */
    struct OpIntSeqResult
    {
        IntSeq1 returnValue;
        IntSeq2 v2;
    };

    virtual IntSeq1 opIntSeq(IntSeq1 v1, IntSeq2& v2, const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    bool _iceD_opIntSeq(::IceInternal::Incoming&, const ::Ice::Current&);
    /// \endcond

    /**
     * Encapsulates the results of a call to opLongSeq.
     */
    struct OpLongSeqResult
    {
        LongSeq1 returnValue;
        LongSeq2 v2;
    };

    virtual LongSeq1 opLongSeq(LongSeq1 v1, LongSeq2& v2, const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    bool _iceD_opLongSeq(::IceInternal::Incoming&, const ::Ice::Current&);
    /// \endcond

    /**
     * Encapsulates the results of a call to opFloatSeq.
     */
    struct OpFloatSeqResult
    {
        FloatSeq1 returnValue;
        FloatSeq2 v2;
    };

    virtual FloatSeq1 opFloatSeq(FloatSeq1 v1, FloatSeq2& v2, const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    bool _iceD_opFloatSeq(::IceInternal::Incoming&, const ::Ice::Current&);
    /// \endcond

    /**
     * Encapsulates the results of a call to opDoubleSeq.
     */
    struct OpDoubleSeqResult
    {
        DoubleSeq1 returnValue;
        DoubleSeq2 v2;
    };

    virtual DoubleSeq1 opDoubleSeq(DoubleSeq1 v1, DoubleSeq2& v2, const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    bool _iceD_opDoubleSeq(::IceInternal::Incoming&, const ::Ice::Current&);
    /// \endcond

    virtual Complex128Seq opComplex128Seq(Complex128Seq v1, const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    bool _iceD_opComplex128Seq(::IceInternal::Incoming&, const ::Ice::Current&);
    /// \endcond

    virtual BoolSeq1 opBoolMatrix(const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    bool _iceD_opBoolMatrix(::IceInternal::Incoming&, const ::Ice::Current&);
    /// \endcond

    virtual ByteSeq1 opByteMatrix(const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    bool _iceD_opByteMatrix(::IceInternal::Incoming&, const ::Ice::Current&);
    /// \endcond

    virtual ShortSeq1 opShortMatrix(const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    bool _iceD_opShortMatrix(::IceInternal::Incoming&, const ::Ice::Current&);
    /// \endcond

    virtual IntSeq1 opIntMatrix(const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    bool _iceD_opIntMatrix(::IceInternal::Incoming&, const ::Ice::Current&);
    /// \endcond

    virtual LongSeq1 opLongMatrix(const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    bool _iceD_opLongMatrix(::IceInternal::Incoming&, const ::Ice::Current&);
    /// \endcond

    virtual FloatSeq1 opFloatMatrix(const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    bool _iceD_opFloatMatrix(::IceInternal::Incoming&, const ::Ice::Current&);
    /// \endcond

    virtual DoubleSeq1 opDoubleMatrix(const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    bool _iceD_opDoubleMatrix(::IceInternal::Incoming&, const ::Ice::Current&);
    /// \endcond

    virtual BoolSeq1 opBogusNumpyArrayType(const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    bool _iceD_opBogusNumpyArrayType(::IceInternal::Incoming&, const ::Ice::Current&);
    /// \endcond

    virtual ::std::shared_ptr<D> opD(::std::shared_ptr<D> d, const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    bool _iceD_opD(::IceInternal::Incoming&, const ::Ice::Current&);
    /// \endcond

    virtual void shutdown(const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    bool _iceD_shutdown(::IceInternal::Incoming&, const ::Ice::Current&);
    /// \endcond

    /// \cond INTERNAL
    virtual bool _iceDispatch(::IceInternal::Incoming&, const ::Ice::Current&) override;
    /// \endcond
};

}

}

namespace Test
{

namespace NumPy
{

class D : public ::Ice::ValueHelper<D, ::Ice::Value>
{
public:

    virtual ~D();

    D() = default;

    D(const D&) = default;
    D(D&&) = default;
    D& operator=(const D&) = default;
    D& operator=(D&&) = default;

    /**
     * One-shot constructor to initialize all data members.
     */
    D(const std::optional<::Test::NumPy::BoolSeq1>& boolSeq, const std::optional<::Test::NumPy::ByteSeq1>& byteSeq, const std::optional<::Test::NumPy::ShortSeq1>& shortSeq, const std::optional<::Test::NumPy::IntSeq1>& intSeq, const std::optional<::Test::NumPy::LongSeq1>& longSeq, const std::optional<::Test::NumPy::FloatSeq1>& floatSeq, const std::optional<::Test::NumPy::DoubleSeq1>& doubleSeq) :
        boolSeq(boolSeq),
        byteSeq(byteSeq),
        shortSeq(shortSeq),
        intSeq(intSeq),
        longSeq(longSeq),
        floatSeq(floatSeq),
        doubleSeq(doubleSeq)
    {
    }

    /**
     * Obtains a tuple containing all of the value's data members.
     * @return The data members in a tuple.
     */
    std::tuple<const std::optional<::Test::NumPy::BoolSeq1>&, const std::optional<::Test::NumPy::ByteSeq1>&, const std::optional<::Test::NumPy::ShortSeq1>&, const std::optional<::Test::NumPy::IntSeq1>&, const std::optional<::Test::NumPy::LongSeq1>&, const std::optional<::Test::NumPy::FloatSeq1>&, const std::optional<::Test::NumPy::DoubleSeq1>&> ice_tuple() const
    {
        return std::tie(boolSeq, byteSeq, shortSeq, intSeq, longSeq, floatSeq, doubleSeq);
    }

    /**
     * Obtains the Slice type ID of this value.
     * @return The fully-scoped type ID.
     */
    static const ::std::string& ice_staticId();

    std::optional<::Test::NumPy::BoolSeq1> boolSeq;
    std::optional<::Test::NumPy::ByteSeq1> byteSeq;
    std::optional<::Test::NumPy::ShortSeq1> shortSeq;
    std::optional<::Test::NumPy::IntSeq1> intSeq;
    std::optional<::Test::NumPy::LongSeq1> longSeq;
    std::optional<::Test::NumPy::FloatSeq1> floatSeq;
    std::optional<::Test::NumPy::DoubleSeq1> doubleSeq;
};

/// \cond INTERNAL
static D _iceS_D_init;
/// \endcond

}

}

namespace Test
{

namespace NumPy
{

class CustomPrx : public virtual ::Ice::Proxy<CustomPrx, ::Ice::ObjectPrx>
{
public:

    BoolSeq1 opBoolSeq(const BoolSeq1& v1, BoolSeq2& v2, const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        auto _result = _makePromiseOutgoing<Custom::OpBoolSeqResult>(true, this, &CustomPrx::_iceI_opBoolSeq, v1, context).get();
        v2 = ::std::move(_result.v2);
        return ::std::move(_result.returnValue);
    }

    template<template<typename> class P = ::std::promise>
    auto opBoolSeqAsync(const BoolSeq1& v1, const ::Ice::Context& context = ::Ice::noExplicitContext)
        -> decltype(::std::declval<P<Custom::OpBoolSeqResult>>().get_future())
    {
        return _makePromiseOutgoing<Custom::OpBoolSeqResult, P>(false, this, &CustomPrx::_iceI_opBoolSeq, v1, context);
    }

    ::std::function<void()>
    opBoolSeqAsync(const BoolSeq1& v1,
                   ::std::function<void(::Test::NumPy::BoolSeq1, ::Test::NumPy::BoolSeq2)> response,
                   ::std::function<void(::std::exception_ptr)> ex = nullptr,
                   ::std::function<void(bool)> sent = nullptr,
                   const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        auto _responseCb = [response](Custom::OpBoolSeqResult&& _result)
        {
            response(::std::move(_result.returnValue), ::std::move(_result.v2));
        };
        return _makeLambdaOutgoing<Custom::OpBoolSeqResult>(std::move(_responseCb), std::move(ex), std::move(sent), this, &Test::NumPy::CustomPrx::_iceI_opBoolSeq, v1, context);
    }

    /// \cond INTERNAL
    void _iceI_opBoolSeq(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<Custom::OpBoolSeqResult>>&, const BoolSeq1&, const ::Ice::Context&);
    /// \endcond

    ByteSeq1 opByteSeq(const ByteSeq1& v1, ByteSeq2& v2, const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        auto _result = _makePromiseOutgoing<Custom::OpByteSeqResult>(true, this, &CustomPrx::_iceI_opByteSeq, v1, context).get();
        v2 = ::std::move(_result.v2);
        return ::std::move(_result.returnValue);
    }

    template<template<typename> class P = ::std::promise>
    auto opByteSeqAsync(const ByteSeq1& v1, const ::Ice::Context& context = ::Ice::noExplicitContext)
        -> decltype(::std::declval<P<Custom::OpByteSeqResult>>().get_future())
    {
        return _makePromiseOutgoing<Custom::OpByteSeqResult, P>(false, this, &CustomPrx::_iceI_opByteSeq, v1, context);
    }

    ::std::function<void()>
    opByteSeqAsync(const ByteSeq1& v1,
                   ::std::function<void(::Test::NumPy::ByteSeq1, ::Test::NumPy::ByteSeq2)> response,
                   ::std::function<void(::std::exception_ptr)> ex = nullptr,
                   ::std::function<void(bool)> sent = nullptr,
                   const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        auto _responseCb = [response](Custom::OpByteSeqResult&& _result)
        {
            response(::std::move(_result.returnValue), ::std::move(_result.v2));
        };
        return _makeLambdaOutgoing<Custom::OpByteSeqResult>(std::move(_responseCb), std::move(ex), std::move(sent), this, &Test::NumPy::CustomPrx::_iceI_opByteSeq, v1, context);
    }

    /// \cond INTERNAL
    void _iceI_opByteSeq(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<Custom::OpByteSeqResult>>&, const ByteSeq1&, const ::Ice::Context&);
    /// \endcond

    ShortSeq1 opShortSeq(const ShortSeq1& v1, ShortSeq2& v2, const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        auto _result = _makePromiseOutgoing<Custom::OpShortSeqResult>(true, this, &CustomPrx::_iceI_opShortSeq, v1, context).get();
        v2 = ::std::move(_result.v2);
        return ::std::move(_result.returnValue);
    }

    template<template<typename> class P = ::std::promise>
    auto opShortSeqAsync(const ShortSeq1& v1, const ::Ice::Context& context = ::Ice::noExplicitContext)
        -> decltype(::std::declval<P<Custom::OpShortSeqResult>>().get_future())
    {
        return _makePromiseOutgoing<Custom::OpShortSeqResult, P>(false, this, &CustomPrx::_iceI_opShortSeq, v1, context);
    }

    ::std::function<void()>
    opShortSeqAsync(const ShortSeq1& v1,
                    ::std::function<void(::Test::NumPy::ShortSeq1, ::Test::NumPy::ShortSeq2)> response,
                    ::std::function<void(::std::exception_ptr)> ex = nullptr,
                    ::std::function<void(bool)> sent = nullptr,
                    const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        auto _responseCb = [response](Custom::OpShortSeqResult&& _result)
        {
            response(::std::move(_result.returnValue), ::std::move(_result.v2));
        };
        return _makeLambdaOutgoing<Custom::OpShortSeqResult>(std::move(_responseCb), std::move(ex), std::move(sent), this, &Test::NumPy::CustomPrx::_iceI_opShortSeq, v1, context);
    }

    /// \cond INTERNAL
    void _iceI_opShortSeq(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<Custom::OpShortSeqResult>>&, const ShortSeq1&, const ::Ice::Context&);
    /// \endcond

    IntSeq1 opIntSeq(const IntSeq1& v1, IntSeq2& v2, const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        auto _result = _makePromiseOutgoing<Custom::OpIntSeqResult>(true, this, &CustomPrx::_iceI_opIntSeq, v1, context).get();
        v2 = ::std::move(_result.v2);
        return ::std::move(_result.returnValue);
    }

    template<template<typename> class P = ::std::promise>
    auto opIntSeqAsync(const IntSeq1& v1, const ::Ice::Context& context = ::Ice::noExplicitContext)
        -> decltype(::std::declval<P<Custom::OpIntSeqResult>>().get_future())
    {
        return _makePromiseOutgoing<Custom::OpIntSeqResult, P>(false, this, &CustomPrx::_iceI_opIntSeq, v1, context);
    }

    ::std::function<void()>
    opIntSeqAsync(const IntSeq1& v1,
                  ::std::function<void(::Test::NumPy::IntSeq1, ::Test::NumPy::IntSeq2)> response,
                  ::std::function<void(::std::exception_ptr)> ex = nullptr,
                  ::std::function<void(bool)> sent = nullptr,
                  const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        auto _responseCb = [response](Custom::OpIntSeqResult&& _result)
        {
            response(::std::move(_result.returnValue), ::std::move(_result.v2));
        };
        return _makeLambdaOutgoing<Custom::OpIntSeqResult>(std::move(_responseCb), std::move(ex), std::move(sent), this, &Test::NumPy::CustomPrx::_iceI_opIntSeq, v1, context);
    }

    /// \cond INTERNAL
    void _iceI_opIntSeq(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<Custom::OpIntSeqResult>>&, const IntSeq1&, const ::Ice::Context&);
    /// \endcond

    LongSeq1 opLongSeq(const LongSeq1& v1, LongSeq2& v2, const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        auto _result = _makePromiseOutgoing<Custom::OpLongSeqResult>(true, this, &CustomPrx::_iceI_opLongSeq, v1, context).get();
        v2 = ::std::move(_result.v2);
        return ::std::move(_result.returnValue);
    }

    template<template<typename> class P = ::std::promise>
    auto opLongSeqAsync(const LongSeq1& v1, const ::Ice::Context& context = ::Ice::noExplicitContext)
        -> decltype(::std::declval<P<Custom::OpLongSeqResult>>().get_future())
    {
        return _makePromiseOutgoing<Custom::OpLongSeqResult, P>(false, this, &CustomPrx::_iceI_opLongSeq, v1, context);
    }

    ::std::function<void()>
    opLongSeqAsync(const LongSeq1& v1,
                   ::std::function<void(::Test::NumPy::LongSeq1, ::Test::NumPy::LongSeq2)> response,
                   ::std::function<void(::std::exception_ptr)> ex = nullptr,
                   ::std::function<void(bool)> sent = nullptr,
                   const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        auto _responseCb = [response](Custom::OpLongSeqResult&& _result)
        {
            response(::std::move(_result.returnValue), ::std::move(_result.v2));
        };
        return _makeLambdaOutgoing<Custom::OpLongSeqResult>(std::move(_responseCb), std::move(ex), std::move(sent), this, &Test::NumPy::CustomPrx::_iceI_opLongSeq, v1, context);
    }

    /// \cond INTERNAL
    void _iceI_opLongSeq(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<Custom::OpLongSeqResult>>&, const LongSeq1&, const ::Ice::Context&);
    /// \endcond

    FloatSeq1 opFloatSeq(const FloatSeq1& v1, FloatSeq2& v2, const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        auto _result = _makePromiseOutgoing<Custom::OpFloatSeqResult>(true, this, &CustomPrx::_iceI_opFloatSeq, v1, context).get();
        v2 = ::std::move(_result.v2);
        return ::std::move(_result.returnValue);
    }

    template<template<typename> class P = ::std::promise>
    auto opFloatSeqAsync(const FloatSeq1& v1, const ::Ice::Context& context = ::Ice::noExplicitContext)
        -> decltype(::std::declval<P<Custom::OpFloatSeqResult>>().get_future())
    {
        return _makePromiseOutgoing<Custom::OpFloatSeqResult, P>(false, this, &CustomPrx::_iceI_opFloatSeq, v1, context);
    }

    ::std::function<void()>
    opFloatSeqAsync(const FloatSeq1& v1,
                    ::std::function<void(::Test::NumPy::FloatSeq1, ::Test::NumPy::FloatSeq2)> response,
                    ::std::function<void(::std::exception_ptr)> ex = nullptr,
                    ::std::function<void(bool)> sent = nullptr,
                    const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        auto _responseCb = [response](Custom::OpFloatSeqResult&& _result)
        {
            response(::std::move(_result.returnValue), ::std::move(_result.v2));
        };
        return _makeLambdaOutgoing<Custom::OpFloatSeqResult>(std::move(_responseCb), std::move(ex), std::move(sent), this, &Test::NumPy::CustomPrx::_iceI_opFloatSeq, v1, context);
    }

    /// \cond INTERNAL
    void _iceI_opFloatSeq(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<Custom::OpFloatSeqResult>>&, const FloatSeq1&, const ::Ice::Context&);
    /// \endcond

    DoubleSeq1 opDoubleSeq(const DoubleSeq1& v1, DoubleSeq2& v2, const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        auto _result = _makePromiseOutgoing<Custom::OpDoubleSeqResult>(true, this, &CustomPrx::_iceI_opDoubleSeq, v1, context).get();
        v2 = ::std::move(_result.v2);
        return ::std::move(_result.returnValue);
    }

    template<template<typename> class P = ::std::promise>
    auto opDoubleSeqAsync(const DoubleSeq1& v1, const ::Ice::Context& context = ::Ice::noExplicitContext)
        -> decltype(::std::declval<P<Custom::OpDoubleSeqResult>>().get_future())
    {
        return _makePromiseOutgoing<Custom::OpDoubleSeqResult, P>(false, this, &CustomPrx::_iceI_opDoubleSeq, v1, context);
    }

    ::std::function<void()>
    opDoubleSeqAsync(const DoubleSeq1& v1,
                     ::std::function<void(::Test::NumPy::DoubleSeq1, ::Test::NumPy::DoubleSeq2)> response,
                     ::std::function<void(::std::exception_ptr)> ex = nullptr,
                     ::std::function<void(bool)> sent = nullptr,
                     const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        auto _responseCb = [response](Custom::OpDoubleSeqResult&& _result)
        {
            response(::std::move(_result.returnValue), ::std::move(_result.v2));
        };
        return _makeLambdaOutgoing<Custom::OpDoubleSeqResult>(std::move(_responseCb), std::move(ex), std::move(sent), this, &Test::NumPy::CustomPrx::_iceI_opDoubleSeq, v1, context);
    }

    /// \cond INTERNAL
    void _iceI_opDoubleSeq(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<Custom::OpDoubleSeqResult>>&, const DoubleSeq1&, const ::Ice::Context&);
    /// \endcond

    Complex128Seq opComplex128Seq(const Complex128Seq& v1, const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        return _makePromiseOutgoing<::Test::NumPy::Complex128Seq>(true, this, &CustomPrx::_iceI_opComplex128Seq, v1, context).get();
    }

    template<template<typename> class P = ::std::promise>
    auto opComplex128SeqAsync(const Complex128Seq& v1, const ::Ice::Context& context = ::Ice::noExplicitContext)
        -> decltype(::std::declval<P<::Test::NumPy::Complex128Seq>>().get_future())
    {
        return _makePromiseOutgoing<::Test::NumPy::Complex128Seq, P>(false, this, &CustomPrx::_iceI_opComplex128Seq, v1, context);
    }

    ::std::function<void()>
    opComplex128SeqAsync(const Complex128Seq& v1,
                         ::std::function<void(::Test::NumPy::Complex128Seq)> response,
                         ::std::function<void(::std::exception_ptr)> ex = nullptr,
                         ::std::function<void(bool)> sent = nullptr,
                         const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        return _makeLambdaOutgoing<::Test::NumPy::Complex128Seq>(std::move(response), std::move(ex), std::move(sent), this, &Test::NumPy::CustomPrx::_iceI_opComplex128Seq, v1, context);
    }

    /// \cond INTERNAL
    void _iceI_opComplex128Seq(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<::Test::NumPy::Complex128Seq>>&, const Complex128Seq&, const ::Ice::Context&);
    /// \endcond

    BoolSeq1 opBoolMatrix(const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        return _makePromiseOutgoing<::Test::NumPy::BoolSeq1>(true, this, &CustomPrx::_iceI_opBoolMatrix, context).get();
    }

    template<template<typename> class P = ::std::promise>
    auto opBoolMatrixAsync(const ::Ice::Context& context = ::Ice::noExplicitContext)
        -> decltype(::std::declval<P<::Test::NumPy::BoolSeq1>>().get_future())
    {
        return _makePromiseOutgoing<::Test::NumPy::BoolSeq1, P>(false, this, &CustomPrx::_iceI_opBoolMatrix, context);
    }

    ::std::function<void()>
    opBoolMatrixAsync(::std::function<void(::Test::NumPy::BoolSeq1)> response,
                      ::std::function<void(::std::exception_ptr)> ex = nullptr,
                      ::std::function<void(bool)> sent = nullptr,
                      const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        return _makeLambdaOutgoing<::Test::NumPy::BoolSeq1>(std::move(response), std::move(ex), std::move(sent), this, &Test::NumPy::CustomPrx::_iceI_opBoolMatrix, context);
    }

    /// \cond INTERNAL
    void _iceI_opBoolMatrix(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<::Test::NumPy::BoolSeq1>>&, const ::Ice::Context&);
    /// \endcond

    ByteSeq1 opByteMatrix(const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        return _makePromiseOutgoing<::Test::NumPy::ByteSeq1>(true, this, &CustomPrx::_iceI_opByteMatrix, context).get();
    }

    template<template<typename> class P = ::std::promise>
    auto opByteMatrixAsync(const ::Ice::Context& context = ::Ice::noExplicitContext)
        -> decltype(::std::declval<P<::Test::NumPy::ByteSeq1>>().get_future())
    {
        return _makePromiseOutgoing<::Test::NumPy::ByteSeq1, P>(false, this, &CustomPrx::_iceI_opByteMatrix, context);
    }

    ::std::function<void()>
    opByteMatrixAsync(::std::function<void(::Test::NumPy::ByteSeq1)> response,
                      ::std::function<void(::std::exception_ptr)> ex = nullptr,
                      ::std::function<void(bool)> sent = nullptr,
                      const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        return _makeLambdaOutgoing<::Test::NumPy::ByteSeq1>(std::move(response), std::move(ex), std::move(sent), this, &Test::NumPy::CustomPrx::_iceI_opByteMatrix, context);
    }

    /// \cond INTERNAL
    void _iceI_opByteMatrix(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<::Test::NumPy::ByteSeq1>>&, const ::Ice::Context&);
    /// \endcond

    ShortSeq1 opShortMatrix(const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        return _makePromiseOutgoing<::Test::NumPy::ShortSeq1>(true, this, &CustomPrx::_iceI_opShortMatrix, context).get();
    }

    template<template<typename> class P = ::std::promise>
    auto opShortMatrixAsync(const ::Ice::Context& context = ::Ice::noExplicitContext)
        -> decltype(::std::declval<P<::Test::NumPy::ShortSeq1>>().get_future())
    {
        return _makePromiseOutgoing<::Test::NumPy::ShortSeq1, P>(false, this, &CustomPrx::_iceI_opShortMatrix, context);
    }

    ::std::function<void()>
    opShortMatrixAsync(::std::function<void(::Test::NumPy::ShortSeq1)> response,
                       ::std::function<void(::std::exception_ptr)> ex = nullptr,
                       ::std::function<void(bool)> sent = nullptr,
                       const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        return _makeLambdaOutgoing<::Test::NumPy::ShortSeq1>(std::move(response), std::move(ex), std::move(sent), this, &Test::NumPy::CustomPrx::_iceI_opShortMatrix, context);
    }

    /// \cond INTERNAL
    void _iceI_opShortMatrix(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<::Test::NumPy::ShortSeq1>>&, const ::Ice::Context&);
    /// \endcond

    IntSeq1 opIntMatrix(const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        return _makePromiseOutgoing<::Test::NumPy::IntSeq1>(true, this, &CustomPrx::_iceI_opIntMatrix, context).get();
    }

    template<template<typename> class P = ::std::promise>
    auto opIntMatrixAsync(const ::Ice::Context& context = ::Ice::noExplicitContext)
        -> decltype(::std::declval<P<::Test::NumPy::IntSeq1>>().get_future())
    {
        return _makePromiseOutgoing<::Test::NumPy::IntSeq1, P>(false, this, &CustomPrx::_iceI_opIntMatrix, context);
    }

    ::std::function<void()>
    opIntMatrixAsync(::std::function<void(::Test::NumPy::IntSeq1)> response,
                     ::std::function<void(::std::exception_ptr)> ex = nullptr,
                     ::std::function<void(bool)> sent = nullptr,
                     const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        return _makeLambdaOutgoing<::Test::NumPy::IntSeq1>(std::move(response), std::move(ex), std::move(sent), this, &Test::NumPy::CustomPrx::_iceI_opIntMatrix, context);
    }

    /// \cond INTERNAL
    void _iceI_opIntMatrix(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<::Test::NumPy::IntSeq1>>&, const ::Ice::Context&);
    /// \endcond

    LongSeq1 opLongMatrix(const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        return _makePromiseOutgoing<::Test::NumPy::LongSeq1>(true, this, &CustomPrx::_iceI_opLongMatrix, context).get();
    }

    template<template<typename> class P = ::std::promise>
    auto opLongMatrixAsync(const ::Ice::Context& context = ::Ice::noExplicitContext)
        -> decltype(::std::declval<P<::Test::NumPy::LongSeq1>>().get_future())
    {
        return _makePromiseOutgoing<::Test::NumPy::LongSeq1, P>(false, this, &CustomPrx::_iceI_opLongMatrix, context);
    }

    ::std::function<void()>
    opLongMatrixAsync(::std::function<void(::Test::NumPy::LongSeq1)> response,
                      ::std::function<void(::std::exception_ptr)> ex = nullptr,
                      ::std::function<void(bool)> sent = nullptr,
                      const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        return _makeLambdaOutgoing<::Test::NumPy::LongSeq1>(std::move(response), std::move(ex), std::move(sent), this, &Test::NumPy::CustomPrx::_iceI_opLongMatrix, context);
    }

    /// \cond INTERNAL
    void _iceI_opLongMatrix(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<::Test::NumPy::LongSeq1>>&, const ::Ice::Context&);
    /// \endcond

    FloatSeq1 opFloatMatrix(const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        return _makePromiseOutgoing<::Test::NumPy::FloatSeq1>(true, this, &CustomPrx::_iceI_opFloatMatrix, context).get();
    }

    template<template<typename> class P = ::std::promise>
    auto opFloatMatrixAsync(const ::Ice::Context& context = ::Ice::noExplicitContext)
        -> decltype(::std::declval<P<::Test::NumPy::FloatSeq1>>().get_future())
    {
        return _makePromiseOutgoing<::Test::NumPy::FloatSeq1, P>(false, this, &CustomPrx::_iceI_opFloatMatrix, context);
    }

    ::std::function<void()>
    opFloatMatrixAsync(::std::function<void(::Test::NumPy::FloatSeq1)> response,
                       ::std::function<void(::std::exception_ptr)> ex = nullptr,
                       ::std::function<void(bool)> sent = nullptr,
                       const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        return _makeLambdaOutgoing<::Test::NumPy::FloatSeq1>(std::move(response), std::move(ex), std::move(sent), this, &Test::NumPy::CustomPrx::_iceI_opFloatMatrix, context);
    }

    /// \cond INTERNAL
    void _iceI_opFloatMatrix(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<::Test::NumPy::FloatSeq1>>&, const ::Ice::Context&);
    /// \endcond

    DoubleSeq1 opDoubleMatrix(const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        return _makePromiseOutgoing<::Test::NumPy::DoubleSeq1>(true, this, &CustomPrx::_iceI_opDoubleMatrix, context).get();
    }

    template<template<typename> class P = ::std::promise>
    auto opDoubleMatrixAsync(const ::Ice::Context& context = ::Ice::noExplicitContext)
        -> decltype(::std::declval<P<::Test::NumPy::DoubleSeq1>>().get_future())
    {
        return _makePromiseOutgoing<::Test::NumPy::DoubleSeq1, P>(false, this, &CustomPrx::_iceI_opDoubleMatrix, context);
    }

    ::std::function<void()>
    opDoubleMatrixAsync(::std::function<void(::Test::NumPy::DoubleSeq1)> response,
                        ::std::function<void(::std::exception_ptr)> ex = nullptr,
                        ::std::function<void(bool)> sent = nullptr,
                        const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        return _makeLambdaOutgoing<::Test::NumPy::DoubleSeq1>(std::move(response), std::move(ex), std::move(sent), this, &Test::NumPy::CustomPrx::_iceI_opDoubleMatrix, context);
    }

    /// \cond INTERNAL
    void _iceI_opDoubleMatrix(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<::Test::NumPy::DoubleSeq1>>&, const ::Ice::Context&);
    /// \endcond

    BoolSeq1 opBogusNumpyArrayType(const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        return _makePromiseOutgoing<::Test::NumPy::BoolSeq1>(true, this, &CustomPrx::_iceI_opBogusNumpyArrayType, context).get();
    }

    template<template<typename> class P = ::std::promise>
    auto opBogusNumpyArrayTypeAsync(const ::Ice::Context& context = ::Ice::noExplicitContext)
        -> decltype(::std::declval<P<::Test::NumPy::BoolSeq1>>().get_future())
    {
        return _makePromiseOutgoing<::Test::NumPy::BoolSeq1, P>(false, this, &CustomPrx::_iceI_opBogusNumpyArrayType, context);
    }

    ::std::function<void()>
    opBogusNumpyArrayTypeAsync(::std::function<void(::Test::NumPy::BoolSeq1)> response,
                               ::std::function<void(::std::exception_ptr)> ex = nullptr,
                               ::std::function<void(bool)> sent = nullptr,
                               const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        return _makeLambdaOutgoing<::Test::NumPy::BoolSeq1>(std::move(response), std::move(ex), std::move(sent), this, &Test::NumPy::CustomPrx::_iceI_opBogusNumpyArrayType, context);
    }

    /// \cond INTERNAL
    void _iceI_opBogusNumpyArrayType(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<::Test::NumPy::BoolSeq1>>&, const ::Ice::Context&);
    /// \endcond

    ::std::shared_ptr<D> opD(const ::std::shared_ptr<D>& d, const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        return _makePromiseOutgoing<::std::shared_ptr<::Test::NumPy::D>>(true, this, &CustomPrx::_iceI_opD, d, context).get();
    }

    template<template<typename> class P = ::std::promise>
    auto opDAsync(const ::std::shared_ptr<D>& d, const ::Ice::Context& context = ::Ice::noExplicitContext)
        -> decltype(::std::declval<P<::std::shared_ptr<::Test::NumPy::D>>>().get_future())
    {
        return _makePromiseOutgoing<::std::shared_ptr<::Test::NumPy::D>, P>(false, this, &CustomPrx::_iceI_opD, d, context);
    }

    ::std::function<void()>
    opDAsync(const ::std::shared_ptr<D>& d,
             ::std::function<void(::std::shared_ptr<::Test::NumPy::D>)> response,
             ::std::function<void(::std::exception_ptr)> ex = nullptr,
             ::std::function<void(bool)> sent = nullptr,
             const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        return _makeLambdaOutgoing<::std::shared_ptr<::Test::NumPy::D>>(std::move(response), std::move(ex), std::move(sent), this, &Test::NumPy::CustomPrx::_iceI_opD, d, context);
    }

    /// \cond INTERNAL
    void _iceI_opD(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<::std::shared_ptr<::Test::NumPy::D>>>&, const ::std::shared_ptr<D>&, const ::Ice::Context&);
    /// \endcond

    void shutdown(const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        _makePromiseOutgoing<void>(true, this, &CustomPrx::_iceI_shutdown, context).get();
    }

    template<template<typename> class P = ::std::promise>
    auto shutdownAsync(const ::Ice::Context& context = ::Ice::noExplicitContext)
        -> decltype(::std::declval<P<void>>().get_future())
    {
        return _makePromiseOutgoing<void, P>(false, this, &CustomPrx::_iceI_shutdown, context);
    }

    ::std::function<void()>
    shutdownAsync(::std::function<void()> response,
                  ::std::function<void(::std::exception_ptr)> ex = nullptr,
                  ::std::function<void(bool)> sent = nullptr,
                  const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        return _makeLambdaOutgoing<void>(std::move(response), std::move(ex), std::move(sent), this, &Test::NumPy::CustomPrx::_iceI_shutdown, context);
    }

    /// \cond INTERNAL
    void _iceI_shutdown(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>&, const ::Ice::Context&);
    /// \endcond

    /**
     * Obtains the Slice type ID of this interface.
     * @return The fully-scoped type ID.
     */
    static const ::std::string& ice_staticId();

protected:

    /// \cond INTERNAL
    CustomPrx() = default;
    friend ::std::shared_ptr<CustomPrx> IceInternal::createProxy<CustomPrx>();

    virtual ::std::shared_ptr<::Ice::ObjectPrx> _newInstance() const override;
    /// \endcond
};

}

}

/// \cond STREAM
namespace Ice
{

template<typename S>
struct StreamWriter<::Test::NumPy::D, S>
{
    static void write(S* ostr, const ::Test::NumPy::D& v)
    {
        ostr->writeAll({1, 2, 3, 4, 5, 6, 7}, v.boolSeq, v.byteSeq, v.shortSeq, v.intSeq, v.longSeq, v.floatSeq, v.doubleSeq);
    }
};

template<typename S>
struct StreamReader<::Test::NumPy::D, S>
{
    static void read(S* istr, ::Test::NumPy::D& v)
    {
        istr->readAll({1, 2, 3, 4, 5, 6, 7}, v.boolSeq, v.byteSeq, v.shortSeq, v.intSeq, v.longSeq, v.floatSeq, v.doubleSeq);
    }
};

}
/// \endcond

/// \cond INTERNAL
namespace Test
{

/// \cond INTERNAL
namespace NumPy
{

using DPtr = ::std::shared_ptr<D>;

using CustomPtr = ::std::shared_ptr<Custom>;
using CustomPrxPtr = ::std::shared_ptr<CustomPrx>;

}
/// \endcond

}
/// \endcond

#include <IceUtil/PopDisableWarnings.h>
#endif
