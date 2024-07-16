//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `FileParser.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

#ifndef ICEGRID_API_EXPORTS
#   define ICEGRID_API_EXPORTS
#endif
#define ICE_BUILDING_GENERATED_CODE
#include "FileParser.h"
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
    const ::IceInternal::DefaultUserExceptionFactoryInit<::IceGrid::ParseException> iceC_IceGrid_ParseException_init("::IceGrid::ParseException");
}

::IceGrid::ApplicationDescriptor
IceGrid::FileParserPrx::parse(::std::string_view iceP_xmlFile, const ::std::optional<AdminPrx>& iceP_adminProxy, const ::Ice::Context& context) const
{
    return ::IceInternal::makePromiseOutgoing<ApplicationDescriptor>(true, this, &FileParserPrx::_iceI_parse, iceP_xmlFile, iceP_adminProxy, context).get();
}

::std::future<::IceGrid::ApplicationDescriptor>
IceGrid::FileParserPrx::parseAsync(::std::string_view iceP_xmlFile, const ::std::optional<AdminPrx>& iceP_adminProxy, const ::Ice::Context& context) const
{
    return ::IceInternal::makePromiseOutgoing<ApplicationDescriptor>(false, this, &FileParserPrx::_iceI_parse, iceP_xmlFile, iceP_adminProxy, context);
}

::std::function<void()>
IceGrid::FileParserPrx::parseAsync(::std::string_view iceP_xmlFile, const ::std::optional<AdminPrx>& iceP_adminProxy, ::std::function<void(::IceGrid::ApplicationDescriptor)> response, ::std::function<void(::std::exception_ptr)> ex, ::std::function<void(bool)> sent, const ::Ice::Context& context) const
{
    return ::IceInternal::makeLambdaOutgoing<ApplicationDescriptor>(::std::move(response), ::std::move(ex), ::std::move(sent), this, &IceGrid::FileParserPrx::_iceI_parse, iceP_xmlFile, iceP_adminProxy, context);
}

void
IceGrid::FileParserPrx::_iceI_parse(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<ApplicationDescriptor>>& outAsync, ::std::string_view iceP_xmlFile, const ::std::optional<AdminPrx>& iceP_adminProxy, const ::Ice::Context& context) const
{
    static constexpr ::std::string_view operationName = "parse";

    _checkTwowayOnly(operationName);
    outAsync->invoke(operationName, ::Ice::OperationMode::Idempotent, ::Ice::FormatType::DefaultFormat, context,
        [&](::Ice::OutputStream* ostr)
        {
            ostr->writeAll(iceP_xmlFile, iceP_adminProxy);
        },
        [](const ::Ice::UserException& ex)
        {
            try
            {
                ex.ice_throw();
            }
            catch(const ParseException&)
            {
                throw;
            }
            catch(const ::Ice::UserException&)
            {
            }
        },
        [](::Ice::InputStream* istr)
        {
            ApplicationDescriptor ret;
            istr->readAll(ret);
            istr->readPendingValues();
            return ret;
        });
}

const char*
IceGrid::FileParserPrx::ice_staticId() noexcept
{
    return "::IceGrid::FileParser";
}

const char*
IceGrid::ParseException::ice_staticId() noexcept
{
    return "::IceGrid::ParseException";
}

const char*
IceGrid::ParseException::ice_id() const noexcept
{
    return ice_staticId();
}

void
IceGrid::ParseException::ice_throw() const
{
    throw *this;
}

void
IceGrid::ParseException::_writeImpl(::Ice::OutputStream* ostr) const
{
    ostr->startSlice(ice_staticId(), -1, true);
    ::Ice::StreamWriter<ParseException>::write(ostr, *this);
    ostr->endSlice();
}

void
IceGrid::ParseException::_readImpl(::Ice::InputStream* istr)
{
    istr->startSlice();
    ::Ice::StreamReader<ParseException>::read(istr, *this);
    istr->endSlice();
}

::std::vector<::std::string>
IceGrid::FileParser::ice_ids(const ::Ice::Current&) const
{
    static const ::std::vector<::std::string> allTypeIds = {"::Ice::Object", "::IceGrid::FileParser"};
    return allTypeIds;
}

::std::string
IceGrid::FileParser::ice_id(const ::Ice::Current&) const
{
    return ::std::string{ice_staticId()};
}

const char*
IceGrid::FileParser::ice_staticId() noexcept
{
    return "::IceGrid::FileParser";
}

/// \cond INTERNAL
void
IceGrid::FileParser::_iceD_parse(::Ice::IncomingRequest& request, ::std::function<void(::Ice::OutgoingResponse)> sendResponse)
{
    _iceCheckMode(::Ice::OperationMode::Idempotent, request.current().mode);
    auto istr = &request.inputStream();
    istr->startEncapsulation();
    ::std::string iceP_xmlFile;
    ::std::optional<AdminPrx> iceP_adminProxy;
    istr->readAll(iceP_xmlFile, iceP_adminProxy);
    istr->endEncapsulation();
    ApplicationDescriptor ret = this->parse(::std::move(iceP_xmlFile), ::std::move(iceP_adminProxy), request.current());
    sendResponse(::Ice::makeOutgoingResponse([&](::Ice::OutputStream* ostr)
        {
            ostr->writeAll(ret);
            ostr->writePendingValues();
        },
        request.current()));
}
/// \endcond

/// \cond INTERNAL
void
IceGrid::FileParser::dispatch(::Ice::IncomingRequest& request, ::std::function<void(::Ice::OutgoingResponse)> sendResponse)
{
    static constexpr ::std::string_view allOperations[] = {"ice_id", "ice_ids", "ice_isA", "ice_ping", "parse"};

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
            _iceD_ice_id(request, ::std::move(sendResponse));
            break;
        }
        case 1:
        {
            _iceD_ice_ids(request, ::std::move(sendResponse));
            break;
        }
        case 2:
        {
            _iceD_ice_isA(request, ::std::move(sendResponse));
            break;
        }
        case 3:
        {
            _iceD_ice_ping(request, ::std::move(sendResponse));
            break;
        }
        case 4:
        {
            _iceD_parse(request, ::std::move(sendResponse));
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
