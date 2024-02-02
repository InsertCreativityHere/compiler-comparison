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

class TestIntf;
class TestIntfPrx;

}

namespace Test
{

constexpr ::Ice::Byte ByteConst1 = 10;

constexpr short ShortConst1 = 20;

constexpr int IntConst1 = 30;

constexpr long long int LongConst1 = 40LL;

constexpr ::Ice::Byte ByteConst2 = 126;

constexpr short ShortConst2 = 32766;

constexpr int IntConst2 = 2147483647;

constexpr long long int LongConst2 = 2147483646LL;

enum class ByteEnum : unsigned char
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

using ByteEnumSeq = ::std::vector<ByteEnum>;

enum class ShortEnum
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

using ShortEnumSeq = ::std::vector<ShortEnum>;

enum class IntEnum
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

using IntEnumSeq = ::std::vector<IntEnum>;

enum class SimpleEnum : unsigned char
{
    red,
    green,
    blue
};

using SimpleEnumSeq = ::std::vector<SimpleEnum>;

}

namespace Test
{

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

    /**
     * Encapsulates the results of a call to opByte.
     */
    struct OpByteResult
    {
        ByteEnum returnValue;
        ByteEnum b2;
    };

    virtual ByteEnum opByte(ByteEnum b1, ByteEnum& b2, const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    bool _iceD_opByte(::IceInternal::Incoming&, const ::Ice::Current&);
    /// \endcond

    /**
     * Encapsulates the results of a call to opShort.
     */
    struct OpShortResult
    {
        ShortEnum returnValue;
        ShortEnum s2;
    };

    virtual ShortEnum opShort(ShortEnum s1, ShortEnum& s2, const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    bool _iceD_opShort(::IceInternal::Incoming&, const ::Ice::Current&);
    /// \endcond

    /**
     * Encapsulates the results of a call to opInt.
     */
    struct OpIntResult
    {
        IntEnum returnValue;
        IntEnum i2;
    };

    virtual IntEnum opInt(IntEnum i1, IntEnum& i2, const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    bool _iceD_opInt(::IceInternal::Incoming&, const ::Ice::Current&);
    /// \endcond

    /**
     * Encapsulates the results of a call to opSimple.
     */
    struct OpSimpleResult
    {
        SimpleEnum returnValue;
        SimpleEnum s2;
    };

    virtual SimpleEnum opSimple(SimpleEnum s1, SimpleEnum& s2, const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    bool _iceD_opSimple(::IceInternal::Incoming&, const ::Ice::Current&);
    /// \endcond

    /**
     * Encapsulates the results of a call to opByteSeq.
     */
    struct OpByteSeqResult
    {
        ByteEnumSeq returnValue;
        ByteEnumSeq b2;
    };

    virtual ByteEnumSeq opByteSeq(ByteEnumSeq b1, ByteEnumSeq& b2, const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    bool _iceD_opByteSeq(::IceInternal::Incoming&, const ::Ice::Current&);
    /// \endcond

    /**
     * Encapsulates the results of a call to opShortSeq.
     */
    struct OpShortSeqResult
    {
        ShortEnumSeq returnValue;
        ShortEnumSeq s2;
    };

    virtual ShortEnumSeq opShortSeq(ShortEnumSeq s1, ShortEnumSeq& s2, const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    bool _iceD_opShortSeq(::IceInternal::Incoming&, const ::Ice::Current&);
    /// \endcond

    /**
     * Encapsulates the results of a call to opIntSeq.
     */
    struct OpIntSeqResult
    {
        IntEnumSeq returnValue;
        IntEnumSeq i2;
    };

    virtual IntEnumSeq opIntSeq(IntEnumSeq i1, IntEnumSeq& i2, const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    bool _iceD_opIntSeq(::IceInternal::Incoming&, const ::Ice::Current&);
    /// \endcond

    /**
     * Encapsulates the results of a call to opSimpleSeq.
     */
    struct OpSimpleSeqResult
    {
        SimpleEnumSeq returnValue;
        SimpleEnumSeq s2;
    };

    virtual SimpleEnumSeq opSimpleSeq(SimpleEnumSeq s1, SimpleEnumSeq& s2, const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    bool _iceD_opSimpleSeq(::IceInternal::Incoming&, const ::Ice::Current&);
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

namespace Test
{

class TestIntfPrx : public virtual ::Ice::Proxy<TestIntfPrx, ::Ice::ObjectPrx>
{
public:

    ByteEnum opByte(ByteEnum b1, ByteEnum& b2, const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        auto _result = _makePromiseOutgoing<TestIntf::OpByteResult>(true, this, &TestIntfPrx::_iceI_opByte, b1, context).get();
        b2 = _result.b2;
        return _result.returnValue;
    }

    template<template<typename> class P = ::std::promise>
    auto opByteAsync(ByteEnum b1, const ::Ice::Context& context = ::Ice::noExplicitContext)
        -> decltype(::std::declval<P<TestIntf::OpByteResult>>().get_future())
    {
        return _makePromiseOutgoing<TestIntf::OpByteResult, P>(false, this, &TestIntfPrx::_iceI_opByte, b1, context);
    }

    ::std::function<void()>
    opByteAsync(ByteEnum b1,
                ::std::function<void(::Test::ByteEnum, ::Test::ByteEnum)> response,
                ::std::function<void(::std::exception_ptr)> ex = nullptr,
                ::std::function<void(bool)> sent = nullptr,
                const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        auto _responseCb = [response](TestIntf::OpByteResult&& _result)
        {
            response(_result.returnValue, _result.b2);
        };
        return _makeLambdaOutgoing<TestIntf::OpByteResult>(std::move(_responseCb), std::move(ex), std::move(sent), this, &Test::TestIntfPrx::_iceI_opByte, b1, context);
    }

    /// \cond INTERNAL
    void _iceI_opByte(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<TestIntf::OpByteResult>>&, ByteEnum, const ::Ice::Context&);
    /// \endcond

    ShortEnum opShort(ShortEnum s1, ShortEnum& s2, const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        auto _result = _makePromiseOutgoing<TestIntf::OpShortResult>(true, this, &TestIntfPrx::_iceI_opShort, s1, context).get();
        s2 = _result.s2;
        return _result.returnValue;
    }

    template<template<typename> class P = ::std::promise>
    auto opShortAsync(ShortEnum s1, const ::Ice::Context& context = ::Ice::noExplicitContext)
        -> decltype(::std::declval<P<TestIntf::OpShortResult>>().get_future())
    {
        return _makePromiseOutgoing<TestIntf::OpShortResult, P>(false, this, &TestIntfPrx::_iceI_opShort, s1, context);
    }

    ::std::function<void()>
    opShortAsync(ShortEnum s1,
                 ::std::function<void(::Test::ShortEnum, ::Test::ShortEnum)> response,
                 ::std::function<void(::std::exception_ptr)> ex = nullptr,
                 ::std::function<void(bool)> sent = nullptr,
                 const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        auto _responseCb = [response](TestIntf::OpShortResult&& _result)
        {
            response(_result.returnValue, _result.s2);
        };
        return _makeLambdaOutgoing<TestIntf::OpShortResult>(std::move(_responseCb), std::move(ex), std::move(sent), this, &Test::TestIntfPrx::_iceI_opShort, s1, context);
    }

    /// \cond INTERNAL
    void _iceI_opShort(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<TestIntf::OpShortResult>>&, ShortEnum, const ::Ice::Context&);
    /// \endcond

    IntEnum opInt(IntEnum i1, IntEnum& i2, const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        auto _result = _makePromiseOutgoing<TestIntf::OpIntResult>(true, this, &TestIntfPrx::_iceI_opInt, i1, context).get();
        i2 = _result.i2;
        return _result.returnValue;
    }

    template<template<typename> class P = ::std::promise>
    auto opIntAsync(IntEnum i1, const ::Ice::Context& context = ::Ice::noExplicitContext)
        -> decltype(::std::declval<P<TestIntf::OpIntResult>>().get_future())
    {
        return _makePromiseOutgoing<TestIntf::OpIntResult, P>(false, this, &TestIntfPrx::_iceI_opInt, i1, context);
    }

    ::std::function<void()>
    opIntAsync(IntEnum i1,
               ::std::function<void(::Test::IntEnum, ::Test::IntEnum)> response,
               ::std::function<void(::std::exception_ptr)> ex = nullptr,
               ::std::function<void(bool)> sent = nullptr,
               const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        auto _responseCb = [response](TestIntf::OpIntResult&& _result)
        {
            response(_result.returnValue, _result.i2);
        };
        return _makeLambdaOutgoing<TestIntf::OpIntResult>(std::move(_responseCb), std::move(ex), std::move(sent), this, &Test::TestIntfPrx::_iceI_opInt, i1, context);
    }

    /// \cond INTERNAL
    void _iceI_opInt(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<TestIntf::OpIntResult>>&, IntEnum, const ::Ice::Context&);
    /// \endcond

    SimpleEnum opSimple(SimpleEnum s1, SimpleEnum& s2, const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        auto _result = _makePromiseOutgoing<TestIntf::OpSimpleResult>(true, this, &TestIntfPrx::_iceI_opSimple, s1, context).get();
        s2 = _result.s2;
        return _result.returnValue;
    }

    template<template<typename> class P = ::std::promise>
    auto opSimpleAsync(SimpleEnum s1, const ::Ice::Context& context = ::Ice::noExplicitContext)
        -> decltype(::std::declval<P<TestIntf::OpSimpleResult>>().get_future())
    {
        return _makePromiseOutgoing<TestIntf::OpSimpleResult, P>(false, this, &TestIntfPrx::_iceI_opSimple, s1, context);
    }

    ::std::function<void()>
    opSimpleAsync(SimpleEnum s1,
                  ::std::function<void(::Test::SimpleEnum, ::Test::SimpleEnum)> response,
                  ::std::function<void(::std::exception_ptr)> ex = nullptr,
                  ::std::function<void(bool)> sent = nullptr,
                  const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        auto _responseCb = [response](TestIntf::OpSimpleResult&& _result)
        {
            response(_result.returnValue, _result.s2);
        };
        return _makeLambdaOutgoing<TestIntf::OpSimpleResult>(std::move(_responseCb), std::move(ex), std::move(sent), this, &Test::TestIntfPrx::_iceI_opSimple, s1, context);
    }

    /// \cond INTERNAL
    void _iceI_opSimple(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<TestIntf::OpSimpleResult>>&, SimpleEnum, const ::Ice::Context&);
    /// \endcond

    ByteEnumSeq opByteSeq(const ByteEnumSeq& b1, ByteEnumSeq& b2, const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        auto _result = _makePromiseOutgoing<TestIntf::OpByteSeqResult>(true, this, &TestIntfPrx::_iceI_opByteSeq, b1, context).get();
        b2 = ::std::move(_result.b2);
        return ::std::move(_result.returnValue);
    }

    template<template<typename> class P = ::std::promise>
    auto opByteSeqAsync(const ByteEnumSeq& b1, const ::Ice::Context& context = ::Ice::noExplicitContext)
        -> decltype(::std::declval<P<TestIntf::OpByteSeqResult>>().get_future())
    {
        return _makePromiseOutgoing<TestIntf::OpByteSeqResult, P>(false, this, &TestIntfPrx::_iceI_opByteSeq, b1, context);
    }

    ::std::function<void()>
    opByteSeqAsync(const ByteEnumSeq& b1,
                   ::std::function<void(::Test::ByteEnumSeq, ::Test::ByteEnumSeq)> response,
                   ::std::function<void(::std::exception_ptr)> ex = nullptr,
                   ::std::function<void(bool)> sent = nullptr,
                   const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        auto _responseCb = [response](TestIntf::OpByteSeqResult&& _result)
        {
            response(::std::move(_result.returnValue), ::std::move(_result.b2));
        };
        return _makeLambdaOutgoing<TestIntf::OpByteSeqResult>(std::move(_responseCb), std::move(ex), std::move(sent), this, &Test::TestIntfPrx::_iceI_opByteSeq, b1, context);
    }

    /// \cond INTERNAL
    void _iceI_opByteSeq(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<TestIntf::OpByteSeqResult>>&, const ByteEnumSeq&, const ::Ice::Context&);
    /// \endcond

    ShortEnumSeq opShortSeq(const ShortEnumSeq& s1, ShortEnumSeq& s2, const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        auto _result = _makePromiseOutgoing<TestIntf::OpShortSeqResult>(true, this, &TestIntfPrx::_iceI_opShortSeq, s1, context).get();
        s2 = ::std::move(_result.s2);
        return ::std::move(_result.returnValue);
    }

    template<template<typename> class P = ::std::promise>
    auto opShortSeqAsync(const ShortEnumSeq& s1, const ::Ice::Context& context = ::Ice::noExplicitContext)
        -> decltype(::std::declval<P<TestIntf::OpShortSeqResult>>().get_future())
    {
        return _makePromiseOutgoing<TestIntf::OpShortSeqResult, P>(false, this, &TestIntfPrx::_iceI_opShortSeq, s1, context);
    }

    ::std::function<void()>
    opShortSeqAsync(const ShortEnumSeq& s1,
                    ::std::function<void(::Test::ShortEnumSeq, ::Test::ShortEnumSeq)> response,
                    ::std::function<void(::std::exception_ptr)> ex = nullptr,
                    ::std::function<void(bool)> sent = nullptr,
                    const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        auto _responseCb = [response](TestIntf::OpShortSeqResult&& _result)
        {
            response(::std::move(_result.returnValue), ::std::move(_result.s2));
        };
        return _makeLambdaOutgoing<TestIntf::OpShortSeqResult>(std::move(_responseCb), std::move(ex), std::move(sent), this, &Test::TestIntfPrx::_iceI_opShortSeq, s1, context);
    }

    /// \cond INTERNAL
    void _iceI_opShortSeq(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<TestIntf::OpShortSeqResult>>&, const ShortEnumSeq&, const ::Ice::Context&);
    /// \endcond

    IntEnumSeq opIntSeq(const IntEnumSeq& i1, IntEnumSeq& i2, const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        auto _result = _makePromiseOutgoing<TestIntf::OpIntSeqResult>(true, this, &TestIntfPrx::_iceI_opIntSeq, i1, context).get();
        i2 = ::std::move(_result.i2);
        return ::std::move(_result.returnValue);
    }

    template<template<typename> class P = ::std::promise>
    auto opIntSeqAsync(const IntEnumSeq& i1, const ::Ice::Context& context = ::Ice::noExplicitContext)
        -> decltype(::std::declval<P<TestIntf::OpIntSeqResult>>().get_future())
    {
        return _makePromiseOutgoing<TestIntf::OpIntSeqResult, P>(false, this, &TestIntfPrx::_iceI_opIntSeq, i1, context);
    }

    ::std::function<void()>
    opIntSeqAsync(const IntEnumSeq& i1,
                  ::std::function<void(::Test::IntEnumSeq, ::Test::IntEnumSeq)> response,
                  ::std::function<void(::std::exception_ptr)> ex = nullptr,
                  ::std::function<void(bool)> sent = nullptr,
                  const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        auto _responseCb = [response](TestIntf::OpIntSeqResult&& _result)
        {
            response(::std::move(_result.returnValue), ::std::move(_result.i2));
        };
        return _makeLambdaOutgoing<TestIntf::OpIntSeqResult>(std::move(_responseCb), std::move(ex), std::move(sent), this, &Test::TestIntfPrx::_iceI_opIntSeq, i1, context);
    }

    /// \cond INTERNAL
    void _iceI_opIntSeq(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<TestIntf::OpIntSeqResult>>&, const IntEnumSeq&, const ::Ice::Context&);
    /// \endcond

    SimpleEnumSeq opSimpleSeq(const SimpleEnumSeq& s1, SimpleEnumSeq& s2, const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        auto _result = _makePromiseOutgoing<TestIntf::OpSimpleSeqResult>(true, this, &TestIntfPrx::_iceI_opSimpleSeq, s1, context).get();
        s2 = ::std::move(_result.s2);
        return ::std::move(_result.returnValue);
    }

    template<template<typename> class P = ::std::promise>
    auto opSimpleSeqAsync(const SimpleEnumSeq& s1, const ::Ice::Context& context = ::Ice::noExplicitContext)
        -> decltype(::std::declval<P<TestIntf::OpSimpleSeqResult>>().get_future())
    {
        return _makePromiseOutgoing<TestIntf::OpSimpleSeqResult, P>(false, this, &TestIntfPrx::_iceI_opSimpleSeq, s1, context);
    }

    ::std::function<void()>
    opSimpleSeqAsync(const SimpleEnumSeq& s1,
                     ::std::function<void(::Test::SimpleEnumSeq, ::Test::SimpleEnumSeq)> response,
                     ::std::function<void(::std::exception_ptr)> ex = nullptr,
                     ::std::function<void(bool)> sent = nullptr,
                     const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        auto _responseCb = [response](TestIntf::OpSimpleSeqResult&& _result)
        {
            response(::std::move(_result.returnValue), ::std::move(_result.s2));
        };
        return _makeLambdaOutgoing<TestIntf::OpSimpleSeqResult>(std::move(_responseCb), std::move(ex), std::move(sent), this, &Test::TestIntfPrx::_iceI_opSimpleSeq, s1, context);
    }

    /// \cond INTERNAL
    void _iceI_opSimpleSeq(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<TestIntf::OpSimpleSeqResult>>&, const SimpleEnumSeq&, const ::Ice::Context&);
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

}

/// \cond STREAM
namespace Ice
{

template<>
struct StreamableTraits< ::Test::ByteEnum>
{
    static const StreamHelperCategory helper = StreamHelperCategoryEnum;
    static const int minValue = 0;
    static const int maxValue = 126;
    static const int minWireSize = 1;
    static const bool fixedLength = false;
};

template<>
struct StreamableTraits< ::Test::ShortEnum>
{
    static const StreamHelperCategory helper = StreamHelperCategoryEnum;
    static const int minValue = 3;
    static const int maxValue = 32766;
    static const int minWireSize = 1;
    static const bool fixedLength = false;
};

template<>
struct StreamableTraits< ::Test::IntEnum>
{
    static const StreamHelperCategory helper = StreamHelperCategoryEnum;
    static const int minValue = 0;
    static const int maxValue = 2147483647;
    static const int minWireSize = 1;
    static const bool fixedLength = false;
};

template<>
struct StreamableTraits< ::Test::SimpleEnum>
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

using TestIntfPtr = ::std::shared_ptr<TestIntf>;
using TestIntfPrxPtr = ::std::shared_ptr<TestIntfPrx>;

}
/// \endcond

#include <IceUtil/PopDisableWarnings.h>
#endif
