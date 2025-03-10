// Copyright (c) ZeroC, Inc.
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file 'Key.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>

#define ICE_BUILDING_GENERATED_CODE
#include "Key.h"
#include <Ice/AsyncResponseHandler.h>
#include <Ice/FactoryTable.h>
#include <Ice/OutgoingAsync.h>
#include <algorithm>
#include <array>

#if defined(_MSC_VER)
#   pragma warning(disable : 4458) // declaration of ... hides class member
#   pragma warning(disable : 4996) // ... was declared deprecated
#elif defined(__clang__)
#   pragma clang diagnostic ignored "-Wshadow"
#   pragma clang diagnostic ignored "-Wdeprecated-declarations"
#elif defined(__GNUC__)
#   pragma GCC diagnostic ignored "-Wshadow"
#   pragma GCC diagnostic ignored "-Wdeprecated-declarations"
#endif

#ifndef ICE_IGNORE_VERSION
#   if ICE_INT_VERSION  != 30850
#       error Ice version mismatch: an exact match is required for beta generated code
#   endif
#endif

std::ostream&
and::operator<<(std::ostream& os, continue value)
{
    switch (value)
    {
        case continue::let:
            return os << "let";
        case continue::var:
            return os << "var";
        default:
            return os << static_cast<std::int32_t>(value);
    }
}

namespace
{
    const IceInternal::FactoryTableInit iceC_factoryTableInit;
    const IceInternal::DefaultValueFactoryInit<::and::switch> iceC_and_switch_init("::and::switch");
    const IceInternal::DefaultUserExceptionFactoryInit<::and::return> iceC_and_return_init("::and::return");
    const IceInternal::DefaultUserExceptionFactoryInit<::and::as> iceC_and_as_init("::and::as");
}

void
and::breakPrx::case(std::int32_t iceP_catch, std::int32_t& iceP_try, const Ice::Context& context) const
{
    iceP_try = IceInternal::makePromiseOutgoing<std::int32_t>(true, this, &breakPrx::_iceI_case, iceP_catch, context).get();
}

std::future<std::int32_t>
and::breakPrx::caseAsync(std::int32_t iceP_catch, const Ice::Context& context) const
{
    return IceInternal::makePromiseOutgoing<std::int32_t>(false, this, &breakPrx::_iceI_case, iceP_catch, context);
}

std::function<void()>
and::breakPrx::caseAsync(std::int32_t iceP_catch, std::function<void(std::int32_t)> response, std::function<void(std::exception_ptr)> exception, std::function<void(bool)> sent, const Ice::Context& context) const
{
    return IceInternal::makeLambdaOutgoing<std::int32_t>(std::move(response), std::move(exception), std::move(sent), this, &and::breakPrx::_iceI_case, iceP_catch, context);
}

void
and::breakPrx::_iceI_case(const std::shared_ptr<IceInternal::OutgoingAsyncT<std::int32_t>>& outAsync, std::int32_t iceP_catch, const Ice::Context& context) const
{
    static constexpr std::string_view operationName = "case";

    _checkTwowayOnly(operationName);
    outAsync->invoke(operationName, Ice::OperationMode::Normal, std::nullopt, context,
        [&](Ice::OutputStream* ostr)
        {
            ostr->writeAll(iceP_catch);
        },
        nullptr);
}

and::breakPrx::~breakPrx() = default;

const char*
and::breakPrx::ice_staticId() noexcept
{
    return "::and::break";
}

void
and::funcPrx::public(const Ice::Context& context) const
{
    IceInternal::makePromiseOutgoing<void>(true, this, &funcPrx::_iceI_public, context).get();
}

std::future<void>
and::funcPrx::publicAsync(const Ice::Context& context) const
{
    return IceInternal::makePromiseOutgoing<void>(false, this, &funcPrx::_iceI_public, context);
}

std::function<void()>
and::funcPrx::publicAsync(std::function<void()> response, std::function<void(std::exception_ptr)> exception, std::function<void(bool)> sent, const Ice::Context& context) const
{
    return IceInternal::makeLambdaOutgoing<void>(std::move(response), std::move(exception), std::move(sent), this, &and::funcPrx::_iceI_public, context);
}

void
and::funcPrx::_iceI_public(const std::shared_ptr<IceInternal::OutgoingAsyncT<void>>& outAsync, const Ice::Context& context) const
{
    static constexpr std::string_view operationName = "public";

    outAsync->invoke(operationName, Ice::OperationMode::Normal, std::nullopt, context,
        nullptr,
        nullptr);
}

and::funcPrx::~funcPrx() = default;

const char*
and::funcPrx::ice_staticId() noexcept
{
    return "::and::func";
}

and::doPrx::~doPrx() = default;

const char*
and::doPrx::ice_staticId() noexcept
{
    return "::and::do";
}

::and::guard
and::friendPrx::goto(continue iceP_if, const guard& iceP_d, const defer& iceP_inline, const switchPtr& iceP_private, const std::optional<doPrx>& iceP_mutable, const std::optional<breakPrx>& iceP_namespace, const std::optional<funcPrx>& iceP_new, const switchPtr& iceP_not, const std::optional<doPrx>& iceP_operator, std::int32_t iceP_or, std::int32_t iceP_protected, std::int32_t iceP_public, std::int32_t iceP_register, const Ice::Context& context) const
{
    return IceInternal::makePromiseOutgoing<guard>(true, this, &friendPrx::_iceI_goto, iceP_if, iceP_d, iceP_inline, iceP_private, iceP_mutable, iceP_namespace, iceP_new, iceP_not, iceP_operator, iceP_or, iceP_protected, iceP_public, iceP_register, context).get();
}

std::future<::and::guard>
and::friendPrx::gotoAsync(continue iceP_if, const guard& iceP_d, const defer& iceP_inline, const switchPtr& iceP_private, const std::optional<doPrx>& iceP_mutable, const std::optional<breakPrx>& iceP_namespace, const std::optional<funcPrx>& iceP_new, const switchPtr& iceP_not, const std::optional<doPrx>& iceP_operator, std::int32_t iceP_or, std::int32_t iceP_protected, std::int32_t iceP_public, std::int32_t iceP_register, const Ice::Context& context) const
{
    return IceInternal::makePromiseOutgoing<guard>(false, this, &friendPrx::_iceI_goto, iceP_if, iceP_d, iceP_inline, iceP_private, iceP_mutable, iceP_namespace, iceP_new, iceP_not, iceP_operator, iceP_or, iceP_protected, iceP_public, iceP_register, context);
}

std::function<void()>
and::friendPrx::gotoAsync(continue iceP_if, const guard& iceP_d, const defer& iceP_inline, const switchPtr& iceP_private, const std::optional<doPrx>& iceP_mutable, const std::optional<breakPrx>& iceP_namespace, const std::optional<funcPrx>& iceP_new, const switchPtr& iceP_not, const std::optional<doPrx>& iceP_operator, std::int32_t iceP_or, std::int32_t iceP_protected, std::int32_t iceP_public, std::int32_t iceP_register, std::function<void(::and::guard)> response, std::function<void(std::exception_ptr)> exception, std::function<void(bool)> sent, const Ice::Context& context) const
{
    return IceInternal::makeLambdaOutgoing<guard>(std::move(response), std::move(exception), std::move(sent), this, &and::friendPrx::_iceI_goto, iceP_if, iceP_d, iceP_inline, iceP_private, iceP_mutable, iceP_namespace, iceP_new, iceP_not, iceP_operator, iceP_or, iceP_protected, iceP_public, iceP_register, context);
}

void
and::friendPrx::_iceI_goto(const std::shared_ptr<IceInternal::OutgoingAsyncT<guard>>& outAsync, continue iceP_if, const guard& iceP_d, const defer& iceP_inline, const switchPtr& iceP_private, const std::optional<doPrx>& iceP_mutable, const std::optional<breakPrx>& iceP_namespace, const std::optional<funcPrx>& iceP_new, const switchPtr& iceP_not, const std::optional<doPrx>& iceP_operator, std::int32_t iceP_or, std::int32_t iceP_protected, std::int32_t iceP_public, std::int32_t iceP_register, const Ice::Context& context) const
{
    static constexpr std::string_view operationName = "goto";

    _checkTwowayOnly(operationName);
    outAsync->invoke(operationName, Ice::OperationMode::Normal, std::nullopt, context,
        [&](Ice::OutputStream* ostr)
        {
            ostr->writeAll(iceP_if, iceP_d, iceP_inline, iceP_private, iceP_mutable, iceP_namespace, iceP_new, iceP_not, iceP_operator, iceP_or, iceP_protected, iceP_public, iceP_register);
            ostr->writePendingValues();
        },
        [](const Ice::UserException& ex)
        {
            try
            {
                ex.ice_throw();
            }
            catch (const as&)
            {
                throw;
            }
            catch (const return&)
            {
                throw;
            }
            catch (const Ice::UserException&)
            {
            }
        });
}

and::friendPrx::~friendPrx() = default;

const char*
and::friendPrx::ice_staticId() noexcept
{
    return "::and::friend";
}

void
and::guard::ice_printFields(std::ostream& os) const
{
    Ice::print(os << "default = ", this->default);
}

std::ostream&
and::operator<<(std::ostream& os, const ::and::guard& value)
{
    os << "and::guard{";
    value.ice_printFields(os);
    os << '}';
    return os;
}

void
and::defer::ice_printFields(std::ostream& os) const
{
    Ice::print(os << "else = ", this->else);
}

std::ostream&
and::operator<<(std::ostream& os, const ::and::defer& value)
{
    os << "and::defer{";
    value.ice_printFields(os);
    os << '}';
    return os;
}

const char*
and::switch::ice_staticId() noexcept
{
    return "::and::switch";
}

const char*
and::switch::ice_id() const noexcept
{
    return ice_staticId();
}

void
and::switch::ice_printFields(std::ostream& os) const
{
    Ice::print(os << "if = ", this->if);
    Ice::print(os << ", export = ", this->export);
    Ice::print(os << ", volatile = ", this->volatile);
}

Ice::ValuePtr
and::switch::_iceCloneImpl() const
{
    return CloneEnabler<switch>::clone(*this);
}

void
and::switch::_iceWriteImpl(Ice::OutputStream* ostr) const
{
    ostr->startSlice(ice_staticId(), -1, true);
    ostr->writeAll(this->if, this->export, this->volatile);
    ostr->endSlice();
}

void
and::switch::_iceReadImpl(Ice::InputStream* istr)
{
    istr->startSlice();
    istr->readAll(this->if, this->export, this->volatile);
    istr->endSlice();
}

void
and::return::ice_printFields(std::ostream& os) const
{
    Ice::print(os << "Int32 = ", this->Int32);
}

const char*
and::return::ice_staticId() noexcept
{
    return "::and::return";
}

const char*
and::return::ice_id() const noexcept
{
    return ice_staticId();
}

void
and::return::ice_throw() const
{
    throw *this;
}

void
and::return::_writeImpl(Ice::OutputStream* ostr) const
{
    ostr->startSlice(ice_staticId(), -1, true);
    ostr->writeAll(this->Int32);
    ostr->endSlice();
}

void
and::return::_readImpl(Ice::InputStream* istr)
{
    istr->startSlice();
    istr->readAll(this->Int32);
    istr->endSlice();
}

void
and::as::ice_printFields(std::ostream& os) const
{
    return::ice_printFields(os);
    Ice::print(os << ", static = ", this->static);
    Ice::print(os << ", switch = ", this->switch);
}

const char*
and::as::ice_staticId() noexcept
{
    return "::and::as";
}

const char*
and::as::ice_id() const noexcept
{
    return ice_staticId();
}

void
and::as::ice_throw() const
{
    throw *this;
}

void
and::as::_writeImpl(Ice::OutputStream* ostr) const
{
    ostr->startSlice(ice_staticId(), -1, false);
    ostr->writeAll(this->static, this->switch);
    ostr->endSlice();
    return::_writeImpl(ostr);
}

void
and::as::_readImpl(Ice::InputStream* istr)
{
    istr->startSlice();
    istr->readAll(this->static, this->switch);
    istr->endSlice();
    return::_readImpl(istr);
}

std::vector<std::string>
and::break::ice_ids(const Ice::Current&) const
{
    static const std::vector<std::string> allTypeIds = {"::Ice::Object", "::and::break"};
    return allTypeIds;
}

std::string
and::break::ice_id(const Ice::Current&) const
{
    return std::string{ice_staticId()};
}

const char*
and::break::ice_staticId() noexcept
{
    return "::and::break";
}

/// \cond INTERNAL
void
and::break::_iceD_case(
    Ice::IncomingRequest& request,
    std::function<void(Ice::OutgoingResponse)> sendResponse)
{
    _iceCheckMode(Ice::OperationMode::Normal, request.current().mode);
    auto istr = &request.inputStream();
    istr->startEncapsulation();
    std::int32_t iceP_catch;
    istr->readAll(iceP_catch);
    istr->endEncapsulation();
    auto responseHandler = std::make_shared<IceInternal::AsyncResponseHandler>(std::move(sendResponse), request.current());
    auto responseCb = [responseHandler](std::int32_t iceP_try)
    {
        responseHandler->sendResponse(
            [&](Ice::OutputStream* ostr)
            {
                ostr->writeAll(iceP_try);
            });
    };
    try
    {
        this->caseAsync(iceP_catch, std::move(responseCb), [responseHandler](std::exception_ptr ex) { responseHandler->sendException(ex); }, responseHandler->current());
    }
    catch (...)
    {
        responseHandler->sendException(std::current_exception());
    }
}
/// \endcond

void
and::break::dispatch(Ice::IncomingRequest& request, std::function<void(Ice::OutgoingResponse)> sendResponse)
{
    static constexpr std::array<std::string_view, 5> allOperations{"case", "ice_id", "ice_ids", "ice_isA", "ice_ping"};

    const Ice::Current& current = request.current();
    auto r = std::equal_range(allOperations.begin(), allOperations.end(), current.operation); // NOLINT(modernize-use-ranges)
    if (r.first == r.second)
    {
        sendResponse(Ice::makeOutgoingResponse(std::make_exception_ptr(Ice::OperationNotExistException{__FILE__, __LINE__}), current));
        return;
    }

    switch (r.first - allOperations.begin())
    {
        case 0:
        {
            _iceD_case(request, std::move(sendResponse));
            break;
        }
        case 1:
        {
            _iceD_ice_id(request, std::move(sendResponse));
            break;
        }
        case 2:
        {
            _iceD_ice_ids(request, std::move(sendResponse));
            break;
        }
        case 3:
        {
            _iceD_ice_isA(request, std::move(sendResponse));
            break;
        }
        case 4:
        {
            _iceD_ice_ping(request, std::move(sendResponse));
            break;
        }
        default:
        {
            assert(false);
            sendResponse(Ice::makeOutgoingResponse(std::make_exception_ptr(Ice::OperationNotExistException{__FILE__, __LINE__}), current));
        }
    }
}

std::vector<std::string>
and::func::ice_ids(const Ice::Current&) const
{
    static const std::vector<std::string> allTypeIds = {"::Ice::Object", "::and::func"};
    return allTypeIds;
}

std::string
and::func::ice_id(const Ice::Current&) const
{
    return std::string{ice_staticId()};
}

const char*
and::func::ice_staticId() noexcept
{
    return "::and::func";
}

/// \cond INTERNAL
void
and::func::_iceD_public(
    Ice::IncomingRequest& request,
    std::function<void(Ice::OutgoingResponse)> sendResponse) // NOLINT(performance-unnecessary-value-param)
{
    _iceCheckMode(Ice::OperationMode::Normal, request.current().mode);
    request.inputStream().skipEmptyEncapsulation();
    this->public(request.current());
    sendResponse(Ice::makeEmptyOutgoingResponse(request.current()));
}
/// \endcond

void
and::func::dispatch(Ice::IncomingRequest& request, std::function<void(Ice::OutgoingResponse)> sendResponse)
{
    static constexpr std::array<std::string_view, 5> allOperations{"ice_id", "ice_ids", "ice_isA", "ice_ping", "public"};

    const Ice::Current& current = request.current();
    auto r = std::equal_range(allOperations.begin(), allOperations.end(), current.operation); // NOLINT(modernize-use-ranges)
    if (r.first == r.second)
    {
        sendResponse(Ice::makeOutgoingResponse(std::make_exception_ptr(Ice::OperationNotExistException{__FILE__, __LINE__}), current));
        return;
    }

    switch (r.first - allOperations.begin())
    {
        case 0:
        {
            _iceD_ice_id(request, std::move(sendResponse));
            break;
        }
        case 1:
        {
            _iceD_ice_ids(request, std::move(sendResponse));
            break;
        }
        case 2:
        {
            _iceD_ice_isA(request, std::move(sendResponse));
            break;
        }
        case 3:
        {
            _iceD_ice_ping(request, std::move(sendResponse));
            break;
        }
        case 4:
        {
            _iceD_public(request, std::move(sendResponse));
            break;
        }
        default:
        {
            assert(false);
            sendResponse(Ice::makeOutgoingResponse(std::make_exception_ptr(Ice::OperationNotExistException{__FILE__, __LINE__}), current));
        }
    }
}

std::vector<std::string>
and::do::ice_ids(const Ice::Current&) const
{
    static const std::vector<std::string> allTypeIds = {"::Ice::Object", "::and::break", "::and::do", "::and::func"};
    return allTypeIds;
}

std::string
and::do::ice_id(const Ice::Current&) const
{
    return std::string{ice_staticId()};
}

const char*
and::do::ice_staticId() noexcept
{
    return "::and::do";
}

void
and::do::dispatch(Ice::IncomingRequest& request, std::function<void(Ice::OutgoingResponse)> sendResponse)
{
    static constexpr std::array<std::string_view, 6> allOperations{"case", "ice_id", "ice_ids", "ice_isA", "ice_ping", "public"};

    const Ice::Current& current = request.current();
    auto r = std::equal_range(allOperations.begin(), allOperations.end(), current.operation); // NOLINT(modernize-use-ranges)
    if (r.first == r.second)
    {
        sendResponse(Ice::makeOutgoingResponse(std::make_exception_ptr(Ice::OperationNotExistException{__FILE__, __LINE__}), current));
        return;
    }

    switch (r.first - allOperations.begin())
    {
        case 0:
        {
            _iceD_case(request, std::move(sendResponse));
            break;
        }
        case 1:
        {
            _iceD_ice_id(request, std::move(sendResponse));
            break;
        }
        case 2:
        {
            _iceD_ice_ids(request, std::move(sendResponse));
            break;
        }
        case 3:
        {
            _iceD_ice_isA(request, std::move(sendResponse));
            break;
        }
        case 4:
        {
            _iceD_ice_ping(request, std::move(sendResponse));
            break;
        }
        case 5:
        {
            _iceD_public(request, std::move(sendResponse));
            break;
        }
        default:
        {
            assert(false);
            sendResponse(Ice::makeOutgoingResponse(std::make_exception_ptr(Ice::OperationNotExistException{__FILE__, __LINE__}), current));
        }
    }
}

std::vector<std::string>
and::friend::ice_ids(const Ice::Current&) const
{
    static const std::vector<std::string> allTypeIds = {"::Ice::Object", "::and::friend"};
    return allTypeIds;
}

std::string
and::friend::ice_id(const Ice::Current&) const
{
    return std::string{ice_staticId()};
}

const char*
and::friend::ice_staticId() noexcept
{
    return "::and::friend";
}

/// \cond INTERNAL
void
and::friend::_iceD_goto(
    Ice::IncomingRequest& request,
    std::function<void(Ice::OutgoingResponse)> sendResponse) // NOLINT(performance-unnecessary-value-param)
{
    _iceCheckMode(Ice::OperationMode::Normal, request.current().mode);
    auto istr = &request.inputStream();
    istr->startEncapsulation();
    continue iceP_if;
    guard iceP_d;
    defer iceP_inline;
    switchPtr iceP_private;
    std::optional<doPrx> iceP_mutable;
    std::optional<breakPrx> iceP_namespace;
    std::optional<funcPrx> iceP_new;
    switchPtr iceP_not;
    std::optional<doPrx> iceP_operator;
    std::int32_t iceP_or;
    std::int32_t iceP_protected;
    std::int32_t iceP_public;
    std::int32_t iceP_register;
    istr->readAll(iceP_if, iceP_d, iceP_inline, iceP_private, iceP_mutable, iceP_namespace, iceP_new, iceP_not, iceP_operator, iceP_or, iceP_protected, iceP_public, iceP_register);
    istr->readPendingValues();
    istr->endEncapsulation();
    const guard ret = this->goto(iceP_if, iceP_d, std::move(iceP_inline), std::move(iceP_private), std::move(iceP_mutable), std::move(iceP_namespace), std::move(iceP_new), std::move(iceP_not), std::move(iceP_operator), iceP_or, iceP_protected, iceP_public, iceP_register, request.current());
    sendResponse(Ice::makeOutgoingResponse([&](Ice::OutputStream* ostr)
        {
            ostr->writeAll(ret);
        },
        request.current()));
}
/// \endcond

void
and::friend::dispatch(Ice::IncomingRequest& request, std::function<void(Ice::OutgoingResponse)> sendResponse)
{
    static constexpr std::array<std::string_view, 5> allOperations{"goto", "ice_id", "ice_ids", "ice_isA", "ice_ping"};

    const Ice::Current& current = request.current();
    auto r = std::equal_range(allOperations.begin(), allOperations.end(), current.operation); // NOLINT(modernize-use-ranges)
    if (r.first == r.second)
    {
        sendResponse(Ice::makeOutgoingResponse(std::make_exception_ptr(Ice::OperationNotExistException{__FILE__, __LINE__}), current));
        return;
    }

    switch (r.first - allOperations.begin())
    {
        case 0:
        {
            _iceD_goto(request, std::move(sendResponse));
            break;
        }
        case 1:
        {
            _iceD_ice_id(request, std::move(sendResponse));
            break;
        }
        case 2:
        {
            _iceD_ice_ids(request, std::move(sendResponse));
            break;
        }
        case 3:
        {
            _iceD_ice_isA(request, std::move(sendResponse));
            break;
        }
        case 4:
        {
            _iceD_ice_ping(request, std::move(sendResponse));
            break;
        }
        default:
        {
            assert(false);
            sendResponse(Ice::makeOutgoingResponse(std::make_exception_ptr(Ice::OperationNotExistException{__FILE__, __LINE__}), current));
        }
    }
}
