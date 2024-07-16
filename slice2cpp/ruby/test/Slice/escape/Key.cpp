//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `Key.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

#define ICE_BUILDING_GENERATED_CODE
#include "Key.h"
#include <Ice/AsyncResponseHandler.h>
#include <Ice/FactoryTable.h>
#include <Ice/OutgoingAsync.h>

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

namespace
{
    const ::IceInternal::FactoryTableInit iceC_factoryTableInit;
    const ::IceInternal::DefaultValueFactoryInit<::BEGIN::display> iceC_BEGIN_display_init("::BEGIN::display");
    const ::IceInternal::DefaultUserExceptionFactoryInit<::BEGIN::next> iceC_BEGIN_next_init("::BEGIN::next");
    const ::IceInternal::DefaultUserExceptionFactoryInit<::BEGIN::nil> iceC_BEGIN_nil_init("::BEGIN::nil");
}

void
BEGIN::breakPrx::_cpp_case(::std::int32_t iceP_clone, ::std::int32_t iceP_def, const ::Ice::Context& context) const
{
    ::IceInternal::makePromiseOutgoing<void>(true, this, &breakPrx::_iceI_case, iceP_clone, iceP_def, context).get();
}

::std::future<void>
BEGIN::breakPrx::caseAsync(::std::int32_t iceP_clone, ::std::int32_t iceP_def, const ::Ice::Context& context) const
{
    return ::IceInternal::makePromiseOutgoing<void>(false, this, &breakPrx::_iceI_case, iceP_clone, iceP_def, context);
}

::std::function<void()>
BEGIN::breakPrx::caseAsync(::std::int32_t iceP_clone, ::std::int32_t iceP_def, ::std::function<void()> response, ::std::function<void(::std::exception_ptr)> ex, ::std::function<void(bool)> sent, const ::Ice::Context& context) const
{
    return ::IceInternal::makeLambdaOutgoing<void>(::std::move(response), ::std::move(ex), ::std::move(sent), this, &BEGIN::breakPrx::_iceI_case, iceP_clone, iceP_def, context);
}

void
BEGIN::breakPrx::_iceI_case(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>& outAsync, ::std::int32_t iceP_clone, ::std::int32_t iceP_def, const ::Ice::Context& context) const
{
    static constexpr ::std::string_view operationName = "case";

    outAsync->invoke(operationName, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        [&](::Ice::OutputStream* ostr)
        {
            ostr->writeAll(iceP_clone, iceP_def);
        },
        nullptr);
}

void
BEGIN::breakPrx::to_a(const ::Ice::Context& context) const
{
    ::IceInternal::makePromiseOutgoing<void>(true, this, &breakPrx::_iceI_to_a, context).get();
}

::std::future<void>
BEGIN::breakPrx::to_aAsync(const ::Ice::Context& context) const
{
    return ::IceInternal::makePromiseOutgoing<void>(false, this, &breakPrx::_iceI_to_a, context);
}

::std::function<void()>
BEGIN::breakPrx::to_aAsync(::std::function<void()> response, ::std::function<void(::std::exception_ptr)> ex, ::std::function<void(bool)> sent, const ::Ice::Context& context) const
{
    return ::IceInternal::makeLambdaOutgoing<void>(::std::move(response), ::std::move(ex), ::std::move(sent), this, &BEGIN::breakPrx::_iceI_to_a, context);
}

void
BEGIN::breakPrx::_iceI_to_a(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>& outAsync, const ::Ice::Context& context) const
{
    static constexpr ::std::string_view operationName = "to_a";

    outAsync->invoke(operationName, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        nullptr,
        nullptr);
}

void
BEGIN::breakPrx::instance_variable_set(const ::Ice::Context& context) const
{
    ::IceInternal::makePromiseOutgoing<void>(true, this, &breakPrx::_iceI_instance_variable_set, context).get();
}

::std::future<void>
BEGIN::breakPrx::instance_variable_setAsync(const ::Ice::Context& context) const
{
    return ::IceInternal::makePromiseOutgoing<void>(false, this, &breakPrx::_iceI_instance_variable_set, context);
}

::std::function<void()>
BEGIN::breakPrx::instance_variable_setAsync(::std::function<void()> response, ::std::function<void(::std::exception_ptr)> ex, ::std::function<void(bool)> sent, const ::Ice::Context& context) const
{
    return ::IceInternal::makeLambdaOutgoing<void>(::std::move(response), ::std::move(ex), ::std::move(sent), this, &BEGIN::breakPrx::_iceI_instance_variable_set, context);
}

void
BEGIN::breakPrx::_iceI_instance_variable_set(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>& outAsync, const ::Ice::Context& context) const
{
    static constexpr ::std::string_view operationName = "instance_variable_set";

    outAsync->invoke(operationName, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        nullptr,
        nullptr);
}

void
BEGIN::breakPrx::instance_variables(const ::Ice::Context& context) const
{
    ::IceInternal::makePromiseOutgoing<void>(true, this, &breakPrx::_iceI_instance_variables, context).get();
}

::std::future<void>
BEGIN::breakPrx::instance_variablesAsync(const ::Ice::Context& context) const
{
    return ::IceInternal::makePromiseOutgoing<void>(false, this, &breakPrx::_iceI_instance_variables, context);
}

::std::function<void()>
BEGIN::breakPrx::instance_variablesAsync(::std::function<void()> response, ::std::function<void(::std::exception_ptr)> ex, ::std::function<void(bool)> sent, const ::Ice::Context& context) const
{
    return ::IceInternal::makeLambdaOutgoing<void>(::std::move(response), ::std::move(ex), ::std::move(sent), this, &BEGIN::breakPrx::_iceI_instance_variables, context);
}

void
BEGIN::breakPrx::_iceI_instance_variables(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>& outAsync, const ::Ice::Context& context) const
{
    static constexpr ::std::string_view operationName = "instance_variables";

    outAsync->invoke(operationName, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        nullptr,
        nullptr);
}

const char*
BEGIN::breakPrx::ice_staticId() noexcept
{
    return "::BEGIN::break";
}

const char*
BEGIN::elsifPrx::ice_staticId() noexcept
{
    return "::BEGIN::elsif";
}

::BEGIN::END
BEGIN::extendPrx::_cpp_for(const displayPtr& iceP_freeze, const ::std::optional<elsifPrx>& iceP_hash, const ::std::optional<breakPrx>& iceP_if, const displayPtr& iceP_inspect, const ::std::optional<elsifPrx>& iceP_method, ::std::int32_t iceP_methods, const ::Ice::Context& context) const
{
    return ::IceInternal::makePromiseOutgoing<END>(true, this, &extendPrx::_iceI_for, iceP_freeze, iceP_hash, iceP_if, iceP_inspect, iceP_method, iceP_methods, context).get();
}

::std::future<::BEGIN::END>
BEGIN::extendPrx::forAsync(const displayPtr& iceP_freeze, const ::std::optional<elsifPrx>& iceP_hash, const ::std::optional<breakPrx>& iceP_if, const displayPtr& iceP_inspect, const ::std::optional<elsifPrx>& iceP_method, ::std::int32_t iceP_methods, const ::Ice::Context& context) const
{
    return ::IceInternal::makePromiseOutgoing<END>(false, this, &extendPrx::_iceI_for, iceP_freeze, iceP_hash, iceP_if, iceP_inspect, iceP_method, iceP_methods, context);
}

::std::function<void()>
BEGIN::extendPrx::forAsync(const displayPtr& iceP_freeze, const ::std::optional<elsifPrx>& iceP_hash, const ::std::optional<breakPrx>& iceP_if, const displayPtr& iceP_inspect, const ::std::optional<elsifPrx>& iceP_method, ::std::int32_t iceP_methods, ::std::function<void(::BEGIN::END)> response, ::std::function<void(::std::exception_ptr)> ex, ::std::function<void(bool)> sent, const ::Ice::Context& context) const
{
    return ::IceInternal::makeLambdaOutgoing<END>(::std::move(response), ::std::move(ex), ::std::move(sent), this, &BEGIN::extendPrx::_iceI_for, iceP_freeze, iceP_hash, iceP_if, iceP_inspect, iceP_method, iceP_methods, context);
}

void
BEGIN::extendPrx::_iceI_for(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<END>>& outAsync, const displayPtr& iceP_freeze, const ::std::optional<elsifPrx>& iceP_hash, const ::std::optional<breakPrx>& iceP_if, const displayPtr& iceP_inspect, const ::std::optional<elsifPrx>& iceP_method, ::std::int32_t iceP_methods, const ::Ice::Context& context) const
{
    static constexpr ::std::string_view operationName = "for";

    _checkTwowayOnly(operationName);
    outAsync->invoke(operationName, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        [&](::Ice::OutputStream* ostr)
        {
            ostr->writeAll(iceP_freeze, iceP_hash, iceP_if, iceP_inspect, iceP_method, iceP_methods);
            ostr->writePendingValues();
        },
        [](const ::Ice::UserException& ex)
        {
            try
            {
                ex.ice_throw();
            }
            catch(const nil&)
            {
                throw;
            }
            catch(const ::Ice::UserException&)
            {
            }
        });
}

const char*
BEGIN::extendPrx::ice_staticId() noexcept
{
    return "::BEGIN::extend";
}

const char*
BEGIN::display::ice_staticId() noexcept
{
    return "::BEGIN::display";
}

const char*
BEGIN::display::ice_id() const noexcept
{
    return ice_staticId();
}

::Ice::ValuePtr
BEGIN::display::_iceCloneImpl() const
{
    return CloneEnabler<display>::clone(*this);
}

void
BEGIN::display::_iceWriteImpl(::Ice::OutputStream* ostr) const
{
    ostr->startSlice(ice_staticId(), -1, true);
    ::Ice::StreamWriter<display>::write(ostr, *this);
    ostr->endSlice();
}

void
BEGIN::display::_iceReadImpl(::Ice::InputStream* istr)
{
    istr->startSlice();
    ::Ice::StreamReader<display>::read(istr, *this);
    istr->endSlice();
}

const char*
BEGIN::next::ice_staticId() noexcept
{
    return "::BEGIN::next";
}

const char*
BEGIN::next::ice_id() const noexcept
{
    return ice_staticId();
}

void
BEGIN::next::ice_throw() const
{
    throw *this;
}

void
BEGIN::next::_writeImpl(::Ice::OutputStream* ostr) const
{
    ostr->startSlice(ice_staticId(), -1, true);
    ::Ice::StreamWriter<next>::write(ostr, *this);
    ostr->endSlice();
}

void
BEGIN::next::_readImpl(::Ice::InputStream* istr)
{
    istr->startSlice();
    ::Ice::StreamReader<next>::read(istr, *this);
    istr->endSlice();
}

const char*
BEGIN::nil::ice_staticId() noexcept
{
    return "::BEGIN::nil";
}

const char*
BEGIN::nil::ice_id() const noexcept
{
    return ice_staticId();
}

void
BEGIN::nil::ice_throw() const
{
    throw *this;
}

void
BEGIN::nil::_writeImpl(::Ice::OutputStream* ostr) const
{
    ostr->startSlice(ice_staticId(), -1, false);
    ::Ice::StreamWriter<nil>::write(ostr, *this);
    ostr->endSlice();
    next::_writeImpl(ostr);
}

void
BEGIN::nil::_readImpl(::Ice::InputStream* istr)
{
    istr->startSlice();
    ::Ice::StreamReader<nil>::read(istr, *this);
    istr->endSlice();
    next::_readImpl(istr);
}

::std::vector<::std::string>
BEGIN::_cpp_break::ice_ids(const ::Ice::Current&) const
{
    static const ::std::vector<::std::string> allTypeIds = {"::BEGIN::break", "::Ice::Object"};
    return allTypeIds;
}

::std::string
BEGIN::_cpp_break::ice_id(const ::Ice::Current&) const
{
    return ::std::string{ice_staticId()};
}

const char*
BEGIN::_cpp_break::ice_staticId() noexcept
{
    return "::BEGIN::break";
}

/// \cond INTERNAL
void
BEGIN::_cpp_break::_iceD_case(::Ice::IncomingRequest& request, ::std::function<void(::Ice::OutgoingResponse)> sendResponse)
{
    _iceCheckMode(::Ice::OperationMode::Normal, request.current().mode);
    auto istr = &request.inputStream();
    istr->startEncapsulation();
    ::std::int32_t iceP_clone;
    ::std::int32_t iceP_def;
    istr->readAll(iceP_clone, iceP_def);
    istr->endEncapsulation();
    this->_cpp_case(iceP_clone, iceP_def, request.current());
    sendResponse(::Ice::makeEmptyOutgoingResponse(request.current()));
}
/// \endcond

/// \cond INTERNAL
void
BEGIN::_cpp_break::_iceD_to_a(::Ice::IncomingRequest& request, ::std::function<void(::Ice::OutgoingResponse)> sendResponse)
{
    _iceCheckMode(::Ice::OperationMode::Normal, request.current().mode);
    request.inputStream().skipEmptyEncapsulation();
    this->to_a(request.current());
    sendResponse(::Ice::makeEmptyOutgoingResponse(request.current()));
}
/// \endcond

/// \cond INTERNAL
void
BEGIN::_cpp_break::_iceD_instance_variable_set(::Ice::IncomingRequest& request, ::std::function<void(::Ice::OutgoingResponse)> sendResponse)
{
    _iceCheckMode(::Ice::OperationMode::Normal, request.current().mode);
    request.inputStream().skipEmptyEncapsulation();
    this->instance_variable_set(request.current());
    sendResponse(::Ice::makeEmptyOutgoingResponse(request.current()));
}
/// \endcond

/// \cond INTERNAL
void
BEGIN::_cpp_break::_iceD_instance_variables(::Ice::IncomingRequest& request, ::std::function<void(::Ice::OutgoingResponse)> sendResponse)
{
    _iceCheckMode(::Ice::OperationMode::Normal, request.current().mode);
    request.inputStream().skipEmptyEncapsulation();
    this->instance_variables(request.current());
    sendResponse(::Ice::makeEmptyOutgoingResponse(request.current()));
}
/// \endcond

/// \cond INTERNAL
void
BEGIN::_cpp_break::dispatch(::Ice::IncomingRequest& request, ::std::function<void(::Ice::OutgoingResponse)> sendResponse)
{
    static constexpr ::std::string_view allOperations[] = {"case", "ice_id", "ice_ids", "ice_isA", "ice_ping", "instance_variable_set", "instance_variables", "to_a"};

    const ::Ice::Current& current = request.current();
    ::std::pair<const ::std::string_view*, const ::std::string_view*> r = ::std::equal_range(allOperations, allOperations + 8, current.operation);
    if(r.first == r.second)
    {
        sendResponse(::Ice::makeOutgoingResponse(::std::make_exception_ptr(::Ice::OperationNotExistException(__FILE__, __LINE__)), current));
        return;
    }

    switch(r.first - allOperations)
    {
        case 0:
        {
            _iceD_case(request, ::std::move(sendResponse));
            break;
        }
        case 1:
        {
            _iceD_ice_id(request, ::std::move(sendResponse));
            break;
        }
        case 2:
        {
            _iceD_ice_ids(request, ::std::move(sendResponse));
            break;
        }
        case 3:
        {
            _iceD_ice_isA(request, ::std::move(sendResponse));
            break;
        }
        case 4:
        {
            _iceD_ice_ping(request, ::std::move(sendResponse));
            break;
        }
        case 5:
        {
            _iceD_instance_variable_set(request, ::std::move(sendResponse));
            break;
        }
        case 6:
        {
            _iceD_instance_variables(request, ::std::move(sendResponse));
            break;
        }
        case 7:
        {
            _iceD_to_a(request, ::std::move(sendResponse));
            break;
        }
        default:
        {
            assert(false);
            sendResponse(::Ice::makeOutgoingResponse(::std::make_exception_ptr(::Ice::OperationNotExistException(__FILE__, __LINE__)), current));
        }
    }
}
/// \endcond

::std::vector<::std::string>
BEGIN::elsif::ice_ids(const ::Ice::Current&) const
{
    static const ::std::vector<::std::string> allTypeIds = {"::BEGIN::break", "::BEGIN::elsif", "::Ice::Object"};
    return allTypeIds;
}

::std::string
BEGIN::elsif::ice_id(const ::Ice::Current&) const
{
    return ::std::string{ice_staticId()};
}

const char*
BEGIN::elsif::ice_staticId() noexcept
{
    return "::BEGIN::elsif";
}

/// \cond INTERNAL
void
BEGIN::elsif::dispatch(::Ice::IncomingRequest& request, ::std::function<void(::Ice::OutgoingResponse)> sendResponse)
{
    static constexpr ::std::string_view allOperations[] = {"case", "ice_id", "ice_ids", "ice_isA", "ice_ping", "instance_variable_set", "instance_variables", "to_a"};

    const ::Ice::Current& current = request.current();
    ::std::pair<const ::std::string_view*, const ::std::string_view*> r = ::std::equal_range(allOperations, allOperations + 8, current.operation);
    if(r.first == r.second)
    {
        sendResponse(::Ice::makeOutgoingResponse(::std::make_exception_ptr(::Ice::OperationNotExistException(__FILE__, __LINE__)), current));
        return;
    }

    switch(r.first - allOperations)
    {
        case 0:
        {
            _iceD_case(request, ::std::move(sendResponse));
            break;
        }
        case 1:
        {
            _iceD_ice_id(request, ::std::move(sendResponse));
            break;
        }
        case 2:
        {
            _iceD_ice_ids(request, ::std::move(sendResponse));
            break;
        }
        case 3:
        {
            _iceD_ice_isA(request, ::std::move(sendResponse));
            break;
        }
        case 4:
        {
            _iceD_ice_ping(request, ::std::move(sendResponse));
            break;
        }
        case 5:
        {
            _iceD_instance_variable_set(request, ::std::move(sendResponse));
            break;
        }
        case 6:
        {
            _iceD_instance_variables(request, ::std::move(sendResponse));
            break;
        }
        case 7:
        {
            _iceD_to_a(request, ::std::move(sendResponse));
            break;
        }
        default:
        {
            assert(false);
            sendResponse(::Ice::makeOutgoingResponse(::std::make_exception_ptr(::Ice::OperationNotExistException(__FILE__, __LINE__)), current));
        }
    }
}
/// \endcond

::std::vector<::std::string>
BEGIN::extend::ice_ids(const ::Ice::Current&) const
{
    static const ::std::vector<::std::string> allTypeIds = {"::BEGIN::extend", "::Ice::Object"};
    return allTypeIds;
}

::std::string
BEGIN::extend::ice_id(const ::Ice::Current&) const
{
    return ::std::string{ice_staticId()};
}

const char*
BEGIN::extend::ice_staticId() noexcept
{
    return "::BEGIN::extend";
}

/// \cond INTERNAL
void
BEGIN::extend::_iceD_for(::Ice::IncomingRequest& request, ::std::function<void(::Ice::OutgoingResponse)> sendResponse)
{
    _iceCheckMode(::Ice::OperationMode::Normal, request.current().mode);
    auto istr = &request.inputStream();
    istr->startEncapsulation();
    displayPtr iceP_freeze;
    ::std::optional<elsifPrx> iceP_hash;
    ::std::optional<breakPrx> iceP_if;
    displayPtr iceP_inspect;
    ::std::optional<elsifPrx> iceP_method;
    ::std::int32_t iceP_methods;
    istr->readAll(iceP_freeze, iceP_hash, iceP_if, iceP_inspect, iceP_method, iceP_methods);
    istr->readPendingValues();
    istr->endEncapsulation();
    END ret = this->_cpp_for(::std::move(iceP_freeze), ::std::move(iceP_hash), ::std::move(iceP_if), ::std::move(iceP_inspect), ::std::move(iceP_method), iceP_methods, request.current());
    sendResponse(::Ice::makeOutgoingResponse([&](::Ice::OutputStream* ostr)
        {
            ostr->writeAll(ret);
        },
        request.current()));
}
/// \endcond

/// \cond INTERNAL
void
BEGIN::extend::dispatch(::Ice::IncomingRequest& request, ::std::function<void(::Ice::OutgoingResponse)> sendResponse)
{
    static constexpr ::std::string_view allOperations[] = {"for", "ice_id", "ice_ids", "ice_isA", "ice_ping"};

    const ::Ice::Current& current = request.current();
    ::std::pair<const ::std::string_view*, const ::std::string_view*> r = ::std::equal_range(allOperations, allOperations + 5, current.operation);
    if(r.first == r.second)
    {
        sendResponse(::Ice::makeOutgoingResponse(::std::make_exception_ptr(::Ice::OperationNotExistException(__FILE__, __LINE__)), current));
        return;
    }

    switch(r.first - allOperations)
    {
        case 0:
        {
            _iceD_for(request, ::std::move(sendResponse));
            break;
        }
        case 1:
        {
            _iceD_ice_id(request, ::std::move(sendResponse));
            break;
        }
        case 2:
        {
            _iceD_ice_ids(request, ::std::move(sendResponse));
            break;
        }
        case 3:
        {
            _iceD_ice_isA(request, ::std::move(sendResponse));
            break;
        }
        case 4:
        {
            _iceD_ice_ping(request, ::std::move(sendResponse));
            break;
        }
        default:
        {
            assert(false);
            sendResponse(::Ice::makeOutgoingResponse(::std::make_exception_ptr(::Ice::OperationNotExistException(__FILE__, __LINE__)), current));
        }
    }
}
/// \endcond
