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

#ifndef LIBRARY_TEST_API_EXPORTS
#   define LIBRARY_TEST_API_EXPORTS
#endif
#define ICE_BUILDING_GENERATED_CODE
#include "Test.h"
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

namespace
{
    const IceInternal::FactoryTableInit iceC_factoryTableInit;
    const IceInternal::DefaultUserExceptionFactoryInit<::Test::UserError> iceC_Test_UserError_init("::Test::UserError");
}

void
Test::MyInterfacePrx::op(bool iceP_throwIt, const Ice::Context& context) const
{
    IceInternal::makePromiseOutgoing<void>(true, this, &MyInterfacePrx::_iceI_op, iceP_throwIt, context).get();
}

std::future<void>
Test::MyInterfacePrx::opAsync(bool iceP_throwIt, const Ice::Context& context) const
{
    return IceInternal::makePromiseOutgoing<void>(false, this, &MyInterfacePrx::_iceI_op, iceP_throwIt, context);
}

std::function<void()>
Test::MyInterfacePrx::opAsync(bool iceP_throwIt, std::function<void()> response, std::function<void(std::exception_ptr)> exception, std::function<void(bool)> sent, const Ice::Context& context) const
{
    return IceInternal::makeLambdaOutgoing<void>(std::move(response), std::move(exception), std::move(sent), this, &Test::MyInterfacePrx::_iceI_op, iceP_throwIt, context);
}

void
Test::MyInterfacePrx::_iceI_op(const std::shared_ptr<IceInternal::OutgoingAsyncT<void>>& outAsync, bool iceP_throwIt, const Ice::Context& context) const
{
    static constexpr std::string_view operationName = "op";

    _checkTwowayOnly(operationName);
    outAsync->invoke(operationName, Ice::OperationMode::Normal, std::nullopt, context,
        [&](Ice::OutputStream* ostr)
        {
            ostr->writeAll(iceP_throwIt);
        },
        [](const Ice::UserException& ex)
        {
            try
            {
                ex.ice_throw();
            }
            catch (const UserError&)
            {
                throw;
            }
            catch (const Ice::UserException&)
            {
            }
        });
}

Test::MyInterfacePrx::~MyInterfacePrx() = default;

const char*
Test::MyInterfacePrx::ice_staticId() noexcept
{
    return "::Test::MyInterface";
}

void
Test::UserError::ice_printFields(std::ostream& os) const
{
    Ice::print(os << "message = ", this->message);
}

const char*
Test::UserError::ice_staticId() noexcept
{
    return "::Test::UserError";
}

const char*
Test::UserError::ice_id() const noexcept
{
    return ice_staticId();
}

void
Test::UserError::ice_throw() const
{
    throw *this;
}

void
Test::UserError::_writeImpl(Ice::OutputStream* ostr) const
{
    ostr->startSlice(ice_staticId(), -1, true);
    ostr->writeAll(this->message);
    ostr->endSlice();
}

void
Test::UserError::_readImpl(Ice::InputStream* istr)
{
    istr->startSlice();
    istr->readAll(this->message);
    istr->endSlice();
}

std::vector<std::string>
Test::MyInterface::ice_ids(const Ice::Current&) const
{
    static const std::vector<std::string> allTypeIds = {"::Ice::Object", "::Test::MyInterface"};
    return allTypeIds;
}

std::string
Test::MyInterface::ice_id(const Ice::Current&) const
{
    return std::string{ice_staticId()};
}

const char*
Test::MyInterface::ice_staticId() noexcept
{
    return "::Test::MyInterface";
}

/// \cond INTERNAL
void
Test::MyInterface::_iceD_op(
    Ice::IncomingRequest& request,
    std::function<void(Ice::OutgoingResponse)> sendResponse) // NOLINT(performance-unnecessary-value-param)
{
    _iceCheckMode(Ice::OperationMode::Normal, request.current().mode);
    auto istr = &request.inputStream();
    istr->startEncapsulation();
    bool iceP_throwIt;
    istr->readAll(iceP_throwIt);
    istr->endEncapsulation();
    this->op(iceP_throwIt, request.current());
    sendResponse(Ice::makeEmptyOutgoingResponse(request.current()));
}
/// \endcond

void
Test::MyInterface::dispatch(Ice::IncomingRequest& request, std::function<void(Ice::OutgoingResponse)> sendResponse)
{
    static constexpr std::array<std::string_view, 5> allOperations{"ice_id", "ice_ids", "ice_isA", "ice_ping", "op"};

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
            _iceD_op(request, std::move(sendResponse));
            break;
        }
        default:
        {
            assert(false);
            sendResponse(Ice::makeOutgoingResponse(std::make_exception_ptr(Ice::OperationNotExistException{__FILE__, __LINE__}), current));
        }
    }
}
