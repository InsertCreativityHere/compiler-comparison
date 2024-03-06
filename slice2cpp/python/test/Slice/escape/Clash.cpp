//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `Clash.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

#define ICE_BUILDING_GENERATED_CODE
#include <Clash.h>
#include <Ice/OutgoingAsync.h>
#include <Ice/Incoming.h>

#if defined(_MSC_VER)
#   pragma warning(disable:4458) // declaration of ... hides class member
#elif defined(__clang__)
#   pragma clang diagnostic ignored "-Wshadow"
#elif defined(__GNUC__)
#   pragma GCC diagnostic ignored "-Wshadow"
#endif

#ifndef ICE_IGNORE_VERSION
#   if ICE_INT_VERSION  != 30850
#       error Ice version mismatch: an exact match is required for beta generated code
#   endif
#endif

namespace
{

const ::IceInternal::DefaultValueFactoryInit<::Clash::Cls> iceC_Clash_Cls_init("::Clash::Cls");

const ::IceInternal::DefaultUserExceptionFactoryInit<::Clash::Ex> iceC_Clash_Ex_init("::Clash::Ex");

}

void
Clash::IntfPrx::context(const ::Ice::Context& context) const
{
    ::IceInternal::makePromiseOutgoing<void>(true, this, &IntfPrx::_iceI_context, context).get();
}

::std::future<void>
Clash::IntfPrx::contextAsync(const ::Ice::Context& context) const
{
    return ::IceInternal::makePromiseOutgoing<void>(false, this, &IntfPrx::_iceI_context, context);
}

::std::function<void()>
Clash::IntfPrx::contextAsync(::std::function<void()> response, ::std::function<void(::std::exception_ptr)> ex, ::std::function<void(bool)> sent, const ::Ice::Context& context) const
{
    return ::IceInternal::makeLambdaOutgoing<void>(std::move(response), std::move(ex), std::move(sent), this, &Clash::IntfPrx::_iceI_context, context);
}

void
Clash::IntfPrx::_iceI_context(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>& outAsync, const ::Ice::Context& context) const
{
    static constexpr ::std::string_view operationName = "context";

    outAsync->invoke(operationName, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        nullptr,
        nullptr);
}

void
Clash::IntfPrx::current(const ::Ice::Context& context) const
{
    ::IceInternal::makePromiseOutgoing<void>(true, this, &IntfPrx::_iceI_current, context).get();
}

::std::future<void>
Clash::IntfPrx::currentAsync(const ::Ice::Context& context) const
{
    return ::IceInternal::makePromiseOutgoing<void>(false, this, &IntfPrx::_iceI_current, context);
}

::std::function<void()>
Clash::IntfPrx::currentAsync(::std::function<void()> response, ::std::function<void(::std::exception_ptr)> ex, ::std::function<void(bool)> sent, const ::Ice::Context& context) const
{
    return ::IceInternal::makeLambdaOutgoing<void>(std::move(response), std::move(ex), std::move(sent), this, &Clash::IntfPrx::_iceI_current, context);
}

void
Clash::IntfPrx::_iceI_current(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>& outAsync, const ::Ice::Context& context) const
{
    static constexpr ::std::string_view operationName = "current";

    outAsync->invoke(operationName, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        nullptr,
        nullptr);
}

void
Clash::IntfPrx::response(const ::Ice::Context& context) const
{
    ::IceInternal::makePromiseOutgoing<void>(true, this, &IntfPrx::_iceI_response, context).get();
}

::std::future<void>
Clash::IntfPrx::responseAsync(const ::Ice::Context& context) const
{
    return ::IceInternal::makePromiseOutgoing<void>(false, this, &IntfPrx::_iceI_response, context);
}

::std::function<void()>
Clash::IntfPrx::responseAsync(::std::function<void()> response, ::std::function<void(::std::exception_ptr)> ex, ::std::function<void(bool)> sent, const ::Ice::Context& context) const
{
    return ::IceInternal::makeLambdaOutgoing<void>(std::move(response), std::move(ex), std::move(sent), this, &Clash::IntfPrx::_iceI_response, context);
}

void
Clash::IntfPrx::_iceI_response(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>& outAsync, const ::Ice::Context& context) const
{
    static constexpr ::std::string_view operationName = "response";

    outAsync->invoke(operationName, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        nullptr,
        nullptr);
}

void
Clash::IntfPrx::upCast(const ::Ice::Context& context) const
{
    ::IceInternal::makePromiseOutgoing<void>(true, this, &IntfPrx::_iceI_upCast, context).get();
}

::std::future<void>
Clash::IntfPrx::upCastAsync(const ::Ice::Context& context) const
{
    return ::IceInternal::makePromiseOutgoing<void>(false, this, &IntfPrx::_iceI_upCast, context);
}

::std::function<void()>
Clash::IntfPrx::upCastAsync(::std::function<void()> response, ::std::function<void(::std::exception_ptr)> ex, ::std::function<void(bool)> sent, const ::Ice::Context& context) const
{
    return ::IceInternal::makeLambdaOutgoing<void>(std::move(response), std::move(ex), std::move(sent), this, &Clash::IntfPrx::_iceI_upCast, context);
}

void
Clash::IntfPrx::_iceI_upCast(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>& outAsync, const ::Ice::Context& context) const
{
    static constexpr ::std::string_view operationName = "upCast";

    outAsync->invoke(operationName, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        nullptr,
        nullptr);
}

void
Clash::IntfPrx::typeId(const ::Ice::Context& context) const
{
    ::IceInternal::makePromiseOutgoing<void>(true, this, &IntfPrx::_iceI_typeId, context).get();
}

::std::future<void>
Clash::IntfPrx::typeIdAsync(const ::Ice::Context& context) const
{
    return ::IceInternal::makePromiseOutgoing<void>(false, this, &IntfPrx::_iceI_typeId, context);
}

::std::function<void()>
Clash::IntfPrx::typeIdAsync(::std::function<void()> response, ::std::function<void(::std::exception_ptr)> ex, ::std::function<void(bool)> sent, const ::Ice::Context& context) const
{
    return ::IceInternal::makeLambdaOutgoing<void>(std::move(response), std::move(ex), std::move(sent), this, &Clash::IntfPrx::_iceI_typeId, context);
}

void
Clash::IntfPrx::_iceI_typeId(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>& outAsync, const ::Ice::Context& context) const
{
    static constexpr ::std::string_view operationName = "typeId";

    outAsync->invoke(operationName, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        nullptr,
        nullptr);
}

void
Clash::IntfPrx::del(const ::Ice::Context& context) const
{
    ::IceInternal::makePromiseOutgoing<void>(true, this, &IntfPrx::_iceI_del, context).get();
}

::std::future<void>
Clash::IntfPrx::delAsync(const ::Ice::Context& context) const
{
    return ::IceInternal::makePromiseOutgoing<void>(false, this, &IntfPrx::_iceI_del, context);
}

::std::function<void()>
Clash::IntfPrx::delAsync(::std::function<void()> response, ::std::function<void(::std::exception_ptr)> ex, ::std::function<void(bool)> sent, const ::Ice::Context& context) const
{
    return ::IceInternal::makeLambdaOutgoing<void>(std::move(response), std::move(ex), std::move(sent), this, &Clash::IntfPrx::_iceI_del, context);
}

void
Clash::IntfPrx::_iceI_del(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>& outAsync, const ::Ice::Context& context) const
{
    static constexpr ::std::string_view operationName = "del";

    outAsync->invoke(operationName, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        nullptr,
        nullptr);
}

void
Clash::IntfPrx::cookie(const ::Ice::Context& context) const
{
    ::IceInternal::makePromiseOutgoing<void>(true, this, &IntfPrx::_iceI_cookie, context).get();
}

::std::future<void>
Clash::IntfPrx::cookieAsync(const ::Ice::Context& context) const
{
    return ::IceInternal::makePromiseOutgoing<void>(false, this, &IntfPrx::_iceI_cookie, context);
}

::std::function<void()>
Clash::IntfPrx::cookieAsync(::std::function<void()> response, ::std::function<void(::std::exception_ptr)> ex, ::std::function<void(bool)> sent, const ::Ice::Context& context) const
{
    return ::IceInternal::makeLambdaOutgoing<void>(std::move(response), std::move(ex), std::move(sent), this, &Clash::IntfPrx::_iceI_cookie, context);
}

void
Clash::IntfPrx::_iceI_cookie(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>& outAsync, const ::Ice::Context& context) const
{
    static constexpr ::std::string_view operationName = "cookie";

    outAsync->invoke(operationName, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        nullptr,
        nullptr);
}

void
Clash::IntfPrx::sync(const ::Ice::Context& context) const
{
    ::IceInternal::makePromiseOutgoing<void>(true, this, &IntfPrx::_iceI_sync, context).get();
}

::std::future<void>
Clash::IntfPrx::syncAsync(const ::Ice::Context& context) const
{
    return ::IceInternal::makePromiseOutgoing<void>(false, this, &IntfPrx::_iceI_sync, context);
}

::std::function<void()>
Clash::IntfPrx::syncAsync(::std::function<void()> response, ::std::function<void(::std::exception_ptr)> ex, ::std::function<void(bool)> sent, const ::Ice::Context& context) const
{
    return ::IceInternal::makeLambdaOutgoing<void>(std::move(response), std::move(ex), std::move(sent), this, &Clash::IntfPrx::_iceI_sync, context);
}

void
Clash::IntfPrx::_iceI_sync(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>& outAsync, const ::Ice::Context& context) const
{
    static constexpr ::std::string_view operationName = "sync";

    outAsync->invoke(operationName, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        nullptr,
        nullptr);
}

void
Clash::IntfPrx::inS(const ::Ice::Context& context) const
{
    ::IceInternal::makePromiseOutgoing<void>(true, this, &IntfPrx::_iceI_inS, context).get();
}

::std::future<void>
Clash::IntfPrx::inSAsync(const ::Ice::Context& context) const
{
    return ::IceInternal::makePromiseOutgoing<void>(false, this, &IntfPrx::_iceI_inS, context);
}

::std::function<void()>
Clash::IntfPrx::inSAsync(::std::function<void()> response, ::std::function<void(::std::exception_ptr)> ex, ::std::function<void(bool)> sent, const ::Ice::Context& context) const
{
    return ::IceInternal::makeLambdaOutgoing<void>(std::move(response), std::move(ex), std::move(sent), this, &Clash::IntfPrx::_iceI_inS, context);
}

void
Clash::IntfPrx::_iceI_inS(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>& outAsync, const ::Ice::Context& context) const
{
    static constexpr ::std::string_view operationName = "inS";

    outAsync->invoke(operationName, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        nullptr,
        nullptr);
}

void
Clash::IntfPrx::istr(const ::Ice::Context& context) const
{
    ::IceInternal::makePromiseOutgoing<void>(true, this, &IntfPrx::_iceI_istr, context).get();
}

::std::future<void>
Clash::IntfPrx::istrAsync(const ::Ice::Context& context) const
{
    return ::IceInternal::makePromiseOutgoing<void>(false, this, &IntfPrx::_iceI_istr, context);
}

::std::function<void()>
Clash::IntfPrx::istrAsync(::std::function<void()> response, ::std::function<void(::std::exception_ptr)> ex, ::std::function<void(bool)> sent, const ::Ice::Context& context) const
{
    return ::IceInternal::makeLambdaOutgoing<void>(std::move(response), std::move(ex), std::move(sent), this, &Clash::IntfPrx::_iceI_istr, context);
}

void
Clash::IntfPrx::_iceI_istr(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>& outAsync, const ::Ice::Context& context) const
{
    static constexpr ::std::string_view operationName = "istr";

    outAsync->invoke(operationName, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        nullptr,
        nullptr);
}

void
Clash::IntfPrx::op(::std::string_view iceP_context, ::std::string_view iceP_current, ::std::string_view iceP_response, ::std::string_view iceP_ex, ::std::string_view iceP_sent, ::std::string_view iceP_cookie, ::std::string_view iceP_sync, ::std::string_view iceP_result, ::std::string_view iceP_istr, ::std::string_view iceP_ostr, ::std::optional<::std::string_view> iceP_proxy, const ::Ice::Context& context) const
{
    ::IceInternal::makePromiseOutgoing<void>(true, this, &IntfPrx::_iceI_op, iceP_context, iceP_current, iceP_response, iceP_ex, iceP_sent, iceP_cookie, iceP_sync, iceP_result, iceP_istr, iceP_ostr, iceP_proxy, context).get();
}

::std::future<void>
Clash::IntfPrx::opAsync(::std::string_view iceP_context, ::std::string_view iceP_current, ::std::string_view iceP_response, ::std::string_view iceP_ex, ::std::string_view iceP_sent, ::std::string_view iceP_cookie, ::std::string_view iceP_sync, ::std::string_view iceP_result, ::std::string_view iceP_istr, ::std::string_view iceP_ostr, ::std::optional<::std::string_view> iceP_proxy, const ::Ice::Context& context) const
{
    return ::IceInternal::makePromiseOutgoing<void>(false, this, &IntfPrx::_iceI_op, iceP_context, iceP_current, iceP_response, iceP_ex, iceP_sent, iceP_cookie, iceP_sync, iceP_result, iceP_istr, iceP_ostr, iceP_proxy, context);
}

::std::function<void()>
Clash::IntfPrx::opAsync(::std::string_view iceP_context, ::std::string_view iceP_current, ::std::string_view iceP_response, ::std::string_view iceP_ex, ::std::string_view iceP_sent, ::std::string_view iceP_cookie, ::std::string_view iceP_sync, ::std::string_view iceP_result, ::std::string_view iceP_istr, ::std::string_view iceP_ostr, ::std::optional<::std::string_view> iceP_proxy, ::std::function<void()> response, ::std::function<void(::std::exception_ptr)> ex, ::std::function<void(bool)> sent, const ::Ice::Context& context) const
{
    return ::IceInternal::makeLambdaOutgoing<void>(std::move(response), std::move(ex), std::move(sent), this, &Clash::IntfPrx::_iceI_op, iceP_context, iceP_current, iceP_response, iceP_ex, iceP_sent, iceP_cookie, iceP_sync, iceP_result, iceP_istr, iceP_ostr, iceP_proxy, context);
}

void
Clash::IntfPrx::_iceI_op(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>& outAsync, ::std::string_view iceP_context, ::std::string_view iceP_current, ::std::string_view iceP_response, ::std::string_view iceP_ex, ::std::string_view iceP_sent, ::std::string_view iceP_cookie, ::std::string_view iceP_sync, ::std::string_view iceP_result, ::std::string_view iceP_istr, ::std::string_view iceP_ostr, ::std::optional<::std::string_view> iceP_proxy, const ::Ice::Context& context) const
{
    static constexpr ::std::string_view operationName = "op";

    outAsync->invoke(operationName, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        [&](::Ice::OutputStream* ostr)
        {
            ostr->writeAll(iceP_context, iceP_current, iceP_response, iceP_ex, iceP_sent, iceP_cookie, iceP_sync, iceP_result, iceP_istr, iceP_ostr);
            ostr->writeAll({1}, iceP_proxy);
        },
        nullptr);
}

void
Clash::IntfPrx::opOut(::std::string& iceP_context, ::std::string& iceP_current, ::std::string& iceP_response, ::std::string& iceP_ex, ::std::string& iceP_sent, ::std::string& iceP_cookie, ::std::string& iceP_sync, ::std::string& iceP_result, ::std::string& iceP_istr, ::std::string& iceP_ostr, ::std::optional<::std::string>& iceP_proxy, const ::Ice::Context& context) const
{
    auto result = ::IceInternal::makePromiseOutgoing<::std::tuple<::std::string, ::std::string, ::std::string, ::std::string, ::std::string, ::std::string, ::std::string, ::std::string, ::std::string, ::std::string, ::std::optional<::std::string>>>(true, this, &IntfPrx::_iceI_opOut, context).get();
    iceP_context = ::std::move(::std::get<0>(result));
    iceP_current = ::std::move(::std::get<1>(result));
    iceP_response = ::std::move(::std::get<2>(result));
    iceP_ex = ::std::move(::std::get<3>(result));
    iceP_sent = ::std::move(::std::get<4>(result));
    iceP_cookie = ::std::move(::std::get<5>(result));
    iceP_sync = ::std::move(::std::get<6>(result));
    iceP_result = ::std::move(::std::get<7>(result));
    iceP_istr = ::std::move(::std::get<8>(result));
    iceP_ostr = ::std::move(::std::get<9>(result));
    iceP_proxy = ::std::move(::std::get<10>(result));
}

::std::future<::std::tuple<::std::string, ::std::string, ::std::string, ::std::string, ::std::string, ::std::string, ::std::string, ::std::string, ::std::string, ::std::string, ::std::optional<::std::string>>>
Clash::IntfPrx::opOutAsync(const ::Ice::Context& context) const
{
    return ::IceInternal::makePromiseOutgoing<::std::tuple<::std::string, ::std::string, ::std::string, ::std::string, ::std::string, ::std::string, ::std::string, ::std::string, ::std::string, ::std::string, ::std::optional<::std::string>>>(false, this, &IntfPrx::_iceI_opOut, context);
}

::std::function<void()>
Clash::IntfPrx::opOutAsync(::std::function<void(::std::string, ::std::string, ::std::string, ::std::string, ::std::string, ::std::string, ::std::string, ::std::string, ::std::string, ::std::string, ::std::optional<::std::string>)> response, ::std::function<void(::std::exception_ptr)> ex, ::std::function<void(bool)> sent, const ::Ice::Context& context) const
{
    auto responseCb = [response = ::std::move(response)](::std::tuple<::std::string, ::std::string, ::std::string, ::std::string, ::std::string, ::std::string, ::std::string, ::std::string, ::std::string, ::std::string, ::std::optional<::std::string>>&& result)
    {
        ::std::apply(::std::move(response), ::std::move(result));
    };
    return ::IceInternal::makeLambdaOutgoing<::std::tuple<::std::string, ::std::string, ::std::string, ::std::string, ::std::string, ::std::string, ::std::string, ::std::string, ::std::string, ::std::string, ::std::optional<::std::string>>>(std::move(responseCb), std::move(ex), std::move(sent), this, &Clash::IntfPrx::_iceI_opOut, context);
}

void
Clash::IntfPrx::_iceI_opOut(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<::std::tuple<::std::string, ::std::string, ::std::string, ::std::string, ::std::string, ::std::string, ::std::string, ::std::string, ::std::string, ::std::string, ::std::optional<::std::string>>>>& outAsync, const ::Ice::Context& context) const
{
    static constexpr ::std::string_view operationName = "opOut";

    _checkTwowayOnly(operationName);
    outAsync->invoke(operationName, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        nullptr,
        nullptr,
        [](::Ice::InputStream* istr)
        {
            ::std::tuple<::std::string, ::std::string, ::std::string, ::std::string, ::std::string, ::std::string, ::std::string, ::std::string, ::std::string, ::std::string, ::std::optional<::std::string>> v;
            istr->readAll(::std::get<0>(v), ::std::get<1>(v), ::std::get<2>(v), ::std::get<3>(v), ::std::get<4>(v), ::std::get<5>(v), ::std::get<6>(v), ::std::get<7>(v), ::std::get<8>(v), ::std::get<9>(v));
            istr->readAll({1}, ::std::get<10>(v));
            return v;
        });
}

::std::string_view
Clash::IntfPrx::ice_staticId()
{
    static constexpr ::std::string_view typeId = "::Clash::Intf";
    return typeId;
}

Clash::Cls::~Cls()
{
}

::std::string_view
Clash::Cls::ice_staticId()
{
    static constexpr ::std::string_view typeId = "::Clash::Cls";
    return typeId;
}

Clash::Ex::~Ex()
{
}

::std::string_view
Clash::Ex::ice_staticId()
{
    static constexpr ::std::string_view typeId = "::Clash::Ex";
    return typeId;
}

::std::vector<::std::string>
Clash::Intf::ice_ids(const ::Ice::Current&) const
{
    static const ::std::vector<::std::string> allTypeIds = { "::Clash::Intf", "::Ice::Object" };
    return allTypeIds;
}

::std::string
Clash::Intf::ice_id(const ::Ice::Current&) const
{
    return ::std::string{ice_staticId()};
}

::std::string_view
Clash::Intf::ice_staticId()
{
    static constexpr ::std::string_view typeId = "::Clash::Intf";
    return typeId;
}

/// \cond INTERNAL
bool
Clash::Intf::_iceD_context(::IceInternal::Incoming& incoming)
{
    _iceCheckMode(::Ice::OperationMode::Normal, incoming.current().mode);
    incoming.readEmptyParams();
    this->context(incoming.current());
    incoming.writeEmptyParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
Clash::Intf::_iceD_current(::IceInternal::Incoming& incoming)
{
    _iceCheckMode(::Ice::OperationMode::Normal, incoming.current().mode);
    incoming.readEmptyParams();
    this->current(incoming.current());
    incoming.writeEmptyParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
Clash::Intf::_iceD_response(::IceInternal::Incoming& incoming)
{
    _iceCheckMode(::Ice::OperationMode::Normal, incoming.current().mode);
    incoming.readEmptyParams();
    this->response(incoming.current());
    incoming.writeEmptyParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
Clash::Intf::_iceD_upCast(::IceInternal::Incoming& incoming)
{
    _iceCheckMode(::Ice::OperationMode::Normal, incoming.current().mode);
    incoming.readEmptyParams();
    this->upCast(incoming.current());
    incoming.writeEmptyParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
Clash::Intf::_iceD_typeId(::IceInternal::Incoming& incoming)
{
    _iceCheckMode(::Ice::OperationMode::Normal, incoming.current().mode);
    incoming.readEmptyParams();
    this->typeId(incoming.current());
    incoming.writeEmptyParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
Clash::Intf::_iceD_del(::IceInternal::Incoming& incoming)
{
    _iceCheckMode(::Ice::OperationMode::Normal, incoming.current().mode);
    incoming.readEmptyParams();
    this->del(incoming.current());
    incoming.writeEmptyParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
Clash::Intf::_iceD_cookie(::IceInternal::Incoming& incoming)
{
    _iceCheckMode(::Ice::OperationMode::Normal, incoming.current().mode);
    incoming.readEmptyParams();
    this->cookie(incoming.current());
    incoming.writeEmptyParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
Clash::Intf::_iceD_sync(::IceInternal::Incoming& incoming)
{
    _iceCheckMode(::Ice::OperationMode::Normal, incoming.current().mode);
    incoming.readEmptyParams();
    this->sync(incoming.current());
    incoming.writeEmptyParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
Clash::Intf::_iceD_inS(::IceInternal::Incoming& incoming)
{
    _iceCheckMode(::Ice::OperationMode::Normal, incoming.current().mode);
    incoming.readEmptyParams();
    this->inS(incoming.current());
    incoming.writeEmptyParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
Clash::Intf::_iceD_istr(::IceInternal::Incoming& incoming)
{
    _iceCheckMode(::Ice::OperationMode::Normal, incoming.current().mode);
    incoming.readEmptyParams();
    this->istr(incoming.current());
    incoming.writeEmptyParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
Clash::Intf::_iceD_op(::IceInternal::Incoming& incoming)
{
    _iceCheckMode(::Ice::OperationMode::Normal, incoming.current().mode);
    auto istr = incoming.startReadParams();
    ::std::string iceP_context;
    ::std::string iceP_current;
    ::std::string iceP_response;
    ::std::string iceP_ex;
    ::std::string iceP_sent;
    ::std::string iceP_cookie;
    ::std::string iceP_sync;
    ::std::string iceP_result;
    ::std::string iceP_istr;
    ::std::string iceP_ostr;
    ::std::optional<::std::string> iceP_proxy;
    istr->readAll(iceP_context, iceP_current, iceP_response, iceP_ex, iceP_sent, iceP_cookie, iceP_sync, iceP_result, iceP_istr, iceP_ostr);
    istr->readAll({1}, iceP_proxy);
    incoming.endReadParams();
    this->op(::std::move(iceP_context), ::std::move(iceP_current), ::std::move(iceP_response), ::std::move(iceP_ex), ::std::move(iceP_sent), ::std::move(iceP_cookie), ::std::move(iceP_sync), ::std::move(iceP_result), ::std::move(iceP_istr), ::std::move(iceP_ostr), ::std::move(iceP_proxy), incoming.current());
    incoming.writeEmptyParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
Clash::Intf::_iceD_opOut(::IceInternal::Incoming& incoming)
{
    _iceCheckMode(::Ice::OperationMode::Normal, incoming.current().mode);
    incoming.readEmptyParams();
    ::std::string iceP_context;
    ::std::string iceP_current;
    ::std::string iceP_response;
    ::std::string iceP_ex;
    ::std::string iceP_sent;
    ::std::string iceP_cookie;
    ::std::string iceP_sync;
    ::std::string iceP_result;
    ::std::string iceP_istr;
    ::std::string iceP_ostr;
    ::std::optional<::std::string> iceP_proxy;
    this->opOut(iceP_context, iceP_current, iceP_response, iceP_ex, iceP_sent, iceP_cookie, iceP_sync, iceP_result, iceP_istr, iceP_ostr, iceP_proxy, incoming.current());
    auto ostr = incoming.startWriteParams();
    ostr->writeAll(iceP_context, iceP_current, iceP_response, iceP_ex, iceP_sent, iceP_cookie, iceP_sync, iceP_result, iceP_istr, iceP_ostr);
    ostr->writeAll({1}, iceP_proxy);
    incoming.endWriteParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
Clash::Intf::_iceDispatch(::IceInternal::Incoming& incoming)
{
    static constexpr ::std::string_view allOperations[] = { "context", "cookie", "current", "del", "ice_id", "ice_ids", "ice_isA", "ice_ping", "inS", "istr", "op", "opOut", "response", "sync", "typeId", "upCast" };

    const ::Ice::Current& current = incoming.current();
    ::std::pair<const ::std::string_view*, const ::std::string_view*> r = ::std::equal_range(allOperations, allOperations + 16, current.operation);
    if(r.first == r.second)
    {
        throw ::Ice::OperationNotExistException(__FILE__, __LINE__, current.id, current.facet, current.operation);
    }

    switch(r.first - allOperations)
    {
        case 0:
        {
            return _iceD_context(incoming);
        }
        case 1:
        {
            return _iceD_cookie(incoming);
        }
        case 2:
        {
            return _iceD_current(incoming);
        }
        case 3:
        {
            return _iceD_del(incoming);
        }
        case 4:
        {
            return _iceD_ice_id(incoming);
        }
        case 5:
        {
            return _iceD_ice_ids(incoming);
        }
        case 6:
        {
            return _iceD_ice_isA(incoming);
        }
        case 7:
        {
            return _iceD_ice_ping(incoming);
        }
        case 8:
        {
            return _iceD_inS(incoming);
        }
        case 9:
        {
            return _iceD_istr(incoming);
        }
        case 10:
        {
            return _iceD_op(incoming);
        }
        case 11:
        {
            return _iceD_opOut(incoming);
        }
        case 12:
        {
            return _iceD_response(incoming);
        }
        case 13:
        {
            return _iceD_sync(incoming);
        }
        case 14:
        {
            return _iceD_typeId(incoming);
        }
        case 15:
        {
            return _iceD_upCast(incoming);
        }
        default:
        {
            assert(false);
            throw ::Ice::OperationNotExistException(__FILE__, __LINE__, current.id, current.facet, current.operation);
        }
    }
}
/// \endcond
