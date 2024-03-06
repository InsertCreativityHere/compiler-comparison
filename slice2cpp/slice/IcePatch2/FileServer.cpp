//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `FileServer.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

#ifndef ICEPATCH2_API_EXPORTS
#   define ICEPATCH2_API_EXPORTS
#endif
#define ICE_BUILDING_GENERATED_CODE
#include <FileServer.h>
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

const ::IceInternal::DefaultUserExceptionFactoryInit<::IcePatch2::PartitionOutOfRangeException> iceC_IcePatch2_PartitionOutOfRangeException_init("::IcePatch2::PartitionOutOfRangeException");

const ::IceInternal::DefaultUserExceptionFactoryInit<::IcePatch2::FileAccessException> iceC_IcePatch2_FileAccessException_init("::IcePatch2::FileAccessException");

const ::IceInternal::DefaultUserExceptionFactoryInit<::IcePatch2::FileSizeRangeException> iceC_IcePatch2_FileSizeRangeException_init("::IcePatch2::FileSizeRangeException");

}

::IcePatch2::LargeFileInfoSeq
IcePatch2::FileServerPrx::getLargeFileInfoSeq(::std::int32_t iceP_partition, const ::Ice::Context& context) const
{
    return ::IceInternal::makePromiseOutgoing<LargeFileInfoSeq>(true, this, &FileServerPrx::_iceI_getLargeFileInfoSeq, iceP_partition, context).get();
}

::std::future<::IcePatch2::LargeFileInfoSeq>
IcePatch2::FileServerPrx::getLargeFileInfoSeqAsync(::std::int32_t iceP_partition, const ::Ice::Context& context) const
{
    return ::IceInternal::makePromiseOutgoing<LargeFileInfoSeq>(false, this, &FileServerPrx::_iceI_getLargeFileInfoSeq, iceP_partition, context);
}

::std::function<void()>
IcePatch2::FileServerPrx::getLargeFileInfoSeqAsync(::std::int32_t iceP_partition, ::std::function<void(::IcePatch2::LargeFileInfoSeq)> response, ::std::function<void(::std::exception_ptr)> ex, ::std::function<void(bool)> sent, const ::Ice::Context& context) const
{
    return ::IceInternal::makeLambdaOutgoing<LargeFileInfoSeq>(std::move(response), std::move(ex), std::move(sent), this, &IcePatch2::FileServerPrx::_iceI_getLargeFileInfoSeq, iceP_partition, context);
}

void
IcePatch2::FileServerPrx::_iceI_getLargeFileInfoSeq(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<LargeFileInfoSeq>>& outAsync, ::std::int32_t iceP_partition, const ::Ice::Context& context) const
{
    static constexpr ::std::string_view operationName = "getLargeFileInfoSeq";

    _checkTwowayOnly(operationName);
    outAsync->invoke(operationName, ::Ice::OperationMode::Nonmutating, ::Ice::FormatType::DefaultFormat, context,
        [&](::Ice::OutputStream* ostr)
        {
            ostr->writeAll(iceP_partition);
        },
        [](const ::Ice::UserException& ex)
        {
            try
            {
                ex.ice_throw();
            }
            catch(const PartitionOutOfRangeException&)
            {
                throw;
            }
            catch(const ::Ice::UserException&)
            {
            }
        });
}

::IcePatch2::ByteSeqSeq
IcePatch2::FileServerPrx::getChecksumSeq(const ::Ice::Context& context) const
{
    return ::IceInternal::makePromiseOutgoing<ByteSeqSeq>(true, this, &FileServerPrx::_iceI_getChecksumSeq, context).get();
}

::std::future<::IcePatch2::ByteSeqSeq>
IcePatch2::FileServerPrx::getChecksumSeqAsync(const ::Ice::Context& context) const
{
    return ::IceInternal::makePromiseOutgoing<ByteSeqSeq>(false, this, &FileServerPrx::_iceI_getChecksumSeq, context);
}

::std::function<void()>
IcePatch2::FileServerPrx::getChecksumSeqAsync(::std::function<void(::IcePatch2::ByteSeqSeq)> response, ::std::function<void(::std::exception_ptr)> ex, ::std::function<void(bool)> sent, const ::Ice::Context& context) const
{
    return ::IceInternal::makeLambdaOutgoing<ByteSeqSeq>(std::move(response), std::move(ex), std::move(sent), this, &IcePatch2::FileServerPrx::_iceI_getChecksumSeq, context);
}

void
IcePatch2::FileServerPrx::_iceI_getChecksumSeq(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<ByteSeqSeq>>& outAsync, const ::Ice::Context& context) const
{
    static constexpr ::std::string_view operationName = "getChecksumSeq";

    _checkTwowayOnly(operationName);
    outAsync->invoke(operationName, ::Ice::OperationMode::Nonmutating, ::Ice::FormatType::DefaultFormat, context,
        nullptr,
        nullptr);
}

::Ice::ByteSeq
IcePatch2::FileServerPrx::getChecksum(const ::Ice::Context& context) const
{
    return ::IceInternal::makePromiseOutgoing<::Ice::ByteSeq>(true, this, &FileServerPrx::_iceI_getChecksum, context).get();
}

::std::future<::Ice::ByteSeq>
IcePatch2::FileServerPrx::getChecksumAsync(const ::Ice::Context& context) const
{
    return ::IceInternal::makePromiseOutgoing<::Ice::ByteSeq>(false, this, &FileServerPrx::_iceI_getChecksum, context);
}

::std::function<void()>
IcePatch2::FileServerPrx::getChecksumAsync(::std::function<void(::Ice::ByteSeq)> response, ::std::function<void(::std::exception_ptr)> ex, ::std::function<void(bool)> sent, const ::Ice::Context& context) const
{
    return ::IceInternal::makeLambdaOutgoing<::Ice::ByteSeq>(std::move(response), std::move(ex), std::move(sent), this, &IcePatch2::FileServerPrx::_iceI_getChecksum, context);
}

void
IcePatch2::FileServerPrx::_iceI_getChecksum(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<::Ice::ByteSeq>>& outAsync, const ::Ice::Context& context) const
{
    static constexpr ::std::string_view operationName = "getChecksum";

    _checkTwowayOnly(operationName);
    outAsync->invoke(operationName, ::Ice::OperationMode::Nonmutating, ::Ice::FormatType::DefaultFormat, context,
        nullptr,
        nullptr);
}

::Ice::ByteSeq
IcePatch2::FileServerPrx::getLargeFileCompressed(::std::string_view iceP_path, ::std::int64_t iceP_pos, ::std::int32_t iceP_num, const ::Ice::Context& context) const
{
    return ::IceInternal::makePromiseOutgoing<::Ice::ByteSeq>(true, this, &FileServerPrx::_iceI_getLargeFileCompressed, iceP_path, iceP_pos, iceP_num, context).get();
}

::std::future<::Ice::ByteSeq>
IcePatch2::FileServerPrx::getLargeFileCompressedAsync(::std::string_view iceP_path, ::std::int64_t iceP_pos, ::std::int32_t iceP_num, const ::Ice::Context& context) const
{
    return ::IceInternal::makePromiseOutgoing<::Ice::ByteSeq>(false, this, &FileServerPrx::_iceI_getLargeFileCompressed, iceP_path, iceP_pos, iceP_num, context);
}

::std::function<void()>
IcePatch2::FileServerPrx::getLargeFileCompressedAsync(::std::string_view iceP_path, ::std::int64_t iceP_pos, ::std::int32_t iceP_num, ::std::function<void(::std::pair<const ::std::uint8_t*, const ::std::uint8_t*>)> response, ::std::function<void(::std::exception_ptr)> ex, ::std::function<void(bool)> sent, const ::Ice::Context& context) const
{
    return ::IceInternal::makeLambdaOutgoing<::std::pair<const ::std::uint8_t*, const ::std::uint8_t*>>(std::move(response), std::move(ex), std::move(sent), this, &IcePatch2::FileServerPrx::_iceIL_getLargeFileCompressed, iceP_path, iceP_pos, iceP_num, context);
}

void
IcePatch2::FileServerPrx::_iceI_getLargeFileCompressed(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<::Ice::ByteSeq>>& outAsync, ::std::string_view iceP_path, ::std::int64_t iceP_pos, ::std::int32_t iceP_num, const ::Ice::Context& context) const
{
    static constexpr ::std::string_view operationName = "getLargeFileCompressed";

    _checkTwowayOnly(operationName);
    outAsync->invoke(operationName, ::Ice::OperationMode::Nonmutating, ::Ice::FormatType::DefaultFormat, context,
        [&](::Ice::OutputStream* ostr)
        {
            ostr->writeAll(iceP_path, iceP_pos, iceP_num);
        },
        [](const ::Ice::UserException& ex)
        {
            try
            {
                ex.ice_throw();
            }
            catch(const FileAccessException&)
            {
                throw;
            }
            catch(const ::Ice::UserException&)
            {
            }
        });
}

void
IcePatch2::FileServerPrx::_iceIL_getLargeFileCompressed(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<::std::pair<const ::std::uint8_t*, const ::std::uint8_t*>>>& outAsync, ::std::string_view iceP_path, ::std::int64_t iceP_pos, ::std::int32_t iceP_num, const ::Ice::Context& context) const
{
    static constexpr ::std::string_view operationName = "getLargeFileCompressed";

    _checkTwowayOnly(operationName);
    outAsync->invoke(operationName, ::Ice::OperationMode::Nonmutating, ::Ice::FormatType::DefaultFormat, context,
        [&](::Ice::OutputStream* ostr)
        {
            ostr->writeAll(iceP_path, iceP_pos, iceP_num);
        },
        [](const ::Ice::UserException& ex)
        {
            try
            {
                ex.ice_throw();
            }
            catch(const FileAccessException&)
            {
                throw;
            }
            catch(const ::Ice::UserException&)
            {
            }
        });
}

::std::string_view
IcePatch2::FileServerPrx::ice_staticId()
{
    static constexpr ::std::string_view typeId = "::IcePatch2::FileServer";
    return typeId;
}

IcePatch2::PartitionOutOfRangeException::~PartitionOutOfRangeException()
{
}

::std::string_view
IcePatch2::PartitionOutOfRangeException::ice_staticId()
{
    static constexpr ::std::string_view typeId = "::IcePatch2::PartitionOutOfRangeException";
    return typeId;
}

IcePatch2::FileAccessException::~FileAccessException()
{
}

::std::string_view
IcePatch2::FileAccessException::ice_staticId()
{
    static constexpr ::std::string_view typeId = "::IcePatch2::FileAccessException";
    return typeId;
}

IcePatch2::FileSizeRangeException::~FileSizeRangeException()
{
}

::std::string_view
IcePatch2::FileSizeRangeException::ice_staticId()
{
    static constexpr ::std::string_view typeId = "::IcePatch2::FileSizeRangeException";
    return typeId;
}

::std::vector<::std::string>
IcePatch2::FileServer::ice_ids(const ::Ice::Current&) const
{
    static const ::std::vector<::std::string> allTypeIds = { "::Ice::Object", "::IcePatch2::FileServer" };
    return allTypeIds;
}

::std::string
IcePatch2::FileServer::ice_id(const ::Ice::Current&) const
{
    return ::std::string{ice_staticId()};
}

::std::string_view
IcePatch2::FileServer::ice_staticId()
{
    static constexpr ::std::string_view typeId = "::IcePatch2::FileServer";
    return typeId;
}

/// \cond INTERNAL
bool
IcePatch2::FileServer::_iceD_getLargeFileInfoSeq(::IceInternal::Incoming& incoming) const
{
    _iceCheckMode(::Ice::OperationMode::Idempotent, incoming.current().mode);
    auto istr = incoming.startReadParams();
    ::std::int32_t iceP_partition;
    istr->readAll(iceP_partition);
    incoming.endReadParams();
    LargeFileInfoSeq ret = this->getLargeFileInfoSeq(iceP_partition, incoming.current());
    auto ostr = incoming.startWriteParams();
    ostr->writeAll(ret);
    incoming.endWriteParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
IcePatch2::FileServer::_iceD_getChecksumSeq(::IceInternal::Incoming& incoming) const
{
    _iceCheckMode(::Ice::OperationMode::Idempotent, incoming.current().mode);
    incoming.readEmptyParams();
    ByteSeqSeq ret = this->getChecksumSeq(incoming.current());
    auto ostr = incoming.startWriteParams();
    ostr->writeAll(ret);
    incoming.endWriteParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
IcePatch2::FileServer::_iceD_getChecksum(::IceInternal::Incoming& incoming) const
{
    _iceCheckMode(::Ice::OperationMode::Idempotent, incoming.current().mode);
    incoming.readEmptyParams();
    ::Ice::ByteSeq ret = this->getChecksum(incoming.current());
    auto ostr = incoming.startWriteParams();
    ostr->writeAll(ret);
    incoming.endWriteParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
IcePatch2::FileServer::_iceD_getLargeFileCompressed(::IceInternal::Incoming& incoming) const
{
    _iceCheckMode(::Ice::OperationMode::Idempotent, incoming.current().mode);
    auto istr = incoming.startReadParams();
    ::std::string iceP_path;
    ::std::int64_t iceP_pos;
    ::std::int32_t iceP_num;
    istr->readAll(iceP_path, iceP_pos, iceP_num);
    incoming.endReadParams();
    auto incomingPtr = ::std::make_shared<::IceInternal::Incoming>(::std::move(incoming));
    auto responseCB = [incomingPtr](const ::std::pair<const ::std::uint8_t*, const ::std::uint8_t*>& ret)
    {
        auto ostr = incomingPtr->startWriteParams();
        ostr->writeAll(ret);
        incomingPtr->endWriteParams();
        incomingPtr->completed();
    };
    try
    {
        this->getLargeFileCompressedAsync(::std::move(iceP_path), iceP_pos, iceP_num, responseCB, [incomingPtr](std::exception_ptr ex) { incomingPtr->completed(ex); }, incomingPtr->current());
    }
    catch (...)
    {
        incomingPtr->failed(::std::current_exception());
    }
    return false;
}
/// \endcond

/// \cond INTERNAL
bool
IcePatch2::FileServer::_iceDispatch(::IceInternal::Incoming& incoming)
{
    static constexpr ::std::string_view allOperations[] = { "getChecksum", "getChecksumSeq", "getLargeFileCompressed", "getLargeFileInfoSeq", "ice_id", "ice_ids", "ice_isA", "ice_ping" };

    const ::Ice::Current& current = incoming.current();
    ::std::pair<const ::std::string_view*, const ::std::string_view*> r = ::std::equal_range(allOperations, allOperations + 8, current.operation);
    if(r.first == r.second)
    {
        throw ::Ice::OperationNotExistException(__FILE__, __LINE__, current.id, current.facet, current.operation);
    }

    switch(r.first - allOperations)
    {
        case 0:
        {
            return _iceD_getChecksum(incoming);
        }
        case 1:
        {
            return _iceD_getChecksumSeq(incoming);
        }
        case 2:
        {
            return _iceD_getLargeFileCompressed(incoming);
        }
        case 3:
        {
            return _iceD_getLargeFileInfoSeq(incoming);
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
        default:
        {
            assert(false);
            throw ::Ice::OperationNotExistException(__FILE__, __LINE__, current.id, current.facet, current.operation);
        }
    }
}
/// \endcond
