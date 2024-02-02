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

#ifndef TEST_API_EXPORTS
#   define TEST_API_EXPORTS
#endif
#define ICE_BUILDING_GENERATED_CODE
#include <Test.h>
#include <IceUtil/PushDisableWarnings.h>
#include <IceUtil/PopDisableWarnings.h>

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

const ::std::string iceC_Test_Background_ids[2] =
{
    "::Ice::Object",
    "::Test::Background"
};
const ::std::string iceC_Test_Background_ops[] =
{
    "ice_id",
    "ice_ids",
    "ice_isA",
    "ice_ping",
    "op",
    "opWithPayload",
    "shutdown"
};
const ::std::string iceC_Test_Background_op_name = "op";
const ::std::string iceC_Test_Background_opWithPayload_name = "opWithPayload";
const ::std::string iceC_Test_Background_shutdown_name = "shutdown";

const ::std::string iceC_Test_BackgroundController_ids[2] =
{
    "::Ice::Object",
    "::Test::BackgroundController"
};
const ::std::string iceC_Test_BackgroundController_ops[] =
{
    "buffered",
    "holdAdapter",
    "ice_id",
    "ice_ids",
    "ice_isA",
    "ice_ping",
    "initializeException",
    "initializeSocketOperation",
    "pauseCall",
    "readException",
    "readReady",
    "resumeAdapter",
    "resumeCall",
    "writeException",
    "writeReady"
};
const ::std::string iceC_Test_BackgroundController_pauseCall_name = "pauseCall";
const ::std::string iceC_Test_BackgroundController_resumeCall_name = "resumeCall";
const ::std::string iceC_Test_BackgroundController_holdAdapter_name = "holdAdapter";
const ::std::string iceC_Test_BackgroundController_resumeAdapter_name = "resumeAdapter";
const ::std::string iceC_Test_BackgroundController_initializeSocketOperation_name = "initializeSocketOperation";
const ::std::string iceC_Test_BackgroundController_initializeException_name = "initializeException";
const ::std::string iceC_Test_BackgroundController_readReady_name = "readReady";
const ::std::string iceC_Test_BackgroundController_readException_name = "readException";
const ::std::string iceC_Test_BackgroundController_writeReady_name = "writeReady";
const ::std::string iceC_Test_BackgroundController_writeException_name = "writeException";
const ::std::string iceC_Test_BackgroundController_buffered_name = "buffered";

}

bool
Test::Background::ice_isA(::std::string s, const ::Ice::Current&) const
{
    return ::std::binary_search(iceC_Test_Background_ids, iceC_Test_Background_ids + 2, s);
}

::std::vector<::std::string>
Test::Background::ice_ids(const ::Ice::Current&) const
{
    return ::std::vector<::std::string>(&iceC_Test_Background_ids[0], &iceC_Test_Background_ids[2]);
}

::std::string
Test::Background::ice_id(const ::Ice::Current&) const
{
    return ice_staticId();
}

const ::std::string&
Test::Background::ice_staticId()
{
    static const ::std::string typeId = "::Test::Background";
    return typeId;
}

/// \cond INTERNAL
bool
Test::Background::_iceD_op(::IceInternal::Incoming& inS, const ::Ice::Current& current)
{
    _iceCheckMode(::Ice::OperationMode::Normal, current.mode);
    inS.readEmptyParams();
    this->op(current);
    inS.writeEmptyParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
Test::Background::_iceD_opWithPayload(::IceInternal::Incoming& inS, const ::Ice::Current& current)
{
    _iceCheckMode(::Ice::OperationMode::Normal, current.mode);
    auto istr = inS.startReadParams();
    ::Ice::ByteSeq iceP_seq;
    istr->readAll(iceP_seq);
    inS.endReadParams();
    this->opWithPayload(::std::move(iceP_seq), current);
    inS.writeEmptyParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
Test::Background::_iceD_shutdown(::IceInternal::Incoming& inS, const ::Ice::Current& current)
{
    _iceCheckMode(::Ice::OperationMode::Normal, current.mode);
    inS.readEmptyParams();
    this->shutdown(current);
    inS.writeEmptyParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
Test::Background::_iceDispatch(::IceInternal::Incoming& in, const ::Ice::Current& current)
{
    ::std::pair<const ::std::string*, const ::std::string*> r = ::std::equal_range(iceC_Test_Background_ops, iceC_Test_Background_ops + 7, current.operation);
    if(r.first == r.second)
    {
        throw ::Ice::OperationNotExistException(__FILE__, __LINE__, current.id, current.facet, current.operation);
    }

    switch(r.first - iceC_Test_Background_ops)
    {
        case 0:
        {
            return _iceD_ice_id(in, current);
        }
        case 1:
        {
            return _iceD_ice_ids(in, current);
        }
        case 2:
        {
            return _iceD_ice_isA(in, current);
        }
        case 3:
        {
            return _iceD_ice_ping(in, current);
        }
        case 4:
        {
            return _iceD_op(in, current);
        }
        case 5:
        {
            return _iceD_opWithPayload(in, current);
        }
        case 6:
        {
            return _iceD_shutdown(in, current);
        }
        default:
        {
            assert(false);
            throw ::Ice::OperationNotExistException(__FILE__, __LINE__, current.id, current.facet, current.operation);
        }
    }
}
/// \endcond

bool
Test::BackgroundController::ice_isA(::std::string s, const ::Ice::Current&) const
{
    return ::std::binary_search(iceC_Test_BackgroundController_ids, iceC_Test_BackgroundController_ids + 2, s);
}

::std::vector<::std::string>
Test::BackgroundController::ice_ids(const ::Ice::Current&) const
{
    return ::std::vector<::std::string>(&iceC_Test_BackgroundController_ids[0], &iceC_Test_BackgroundController_ids[2]);
}

::std::string
Test::BackgroundController::ice_id(const ::Ice::Current&) const
{
    return ice_staticId();
}

const ::std::string&
Test::BackgroundController::ice_staticId()
{
    static const ::std::string typeId = "::Test::BackgroundController";
    return typeId;
}

/// \cond INTERNAL
bool
Test::BackgroundController::_iceD_pauseCall(::IceInternal::Incoming& inS, const ::Ice::Current& current)
{
    _iceCheckMode(::Ice::OperationMode::Normal, current.mode);
    auto istr = inS.startReadParams();
    ::std::string iceP_call;
    istr->readAll(iceP_call);
    inS.endReadParams();
    this->pauseCall(::std::move(iceP_call), current);
    inS.writeEmptyParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
Test::BackgroundController::_iceD_resumeCall(::IceInternal::Incoming& inS, const ::Ice::Current& current)
{
    _iceCheckMode(::Ice::OperationMode::Normal, current.mode);
    auto istr = inS.startReadParams();
    ::std::string iceP_call;
    istr->readAll(iceP_call);
    inS.endReadParams();
    this->resumeCall(::std::move(iceP_call), current);
    inS.writeEmptyParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
Test::BackgroundController::_iceD_holdAdapter(::IceInternal::Incoming& inS, const ::Ice::Current& current)
{
    _iceCheckMode(::Ice::OperationMode::Normal, current.mode);
    inS.readEmptyParams();
    this->holdAdapter(current);
    inS.writeEmptyParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
Test::BackgroundController::_iceD_resumeAdapter(::IceInternal::Incoming& inS, const ::Ice::Current& current)
{
    _iceCheckMode(::Ice::OperationMode::Normal, current.mode);
    inS.readEmptyParams();
    this->resumeAdapter(current);
    inS.writeEmptyParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
Test::BackgroundController::_iceD_initializeSocketOperation(::IceInternal::Incoming& inS, const ::Ice::Current& current)
{
    _iceCheckMode(::Ice::OperationMode::Normal, current.mode);
    auto istr = inS.startReadParams();
    int iceP_status;
    istr->readAll(iceP_status);
    inS.endReadParams();
    this->initializeSocketOperation(iceP_status, current);
    inS.writeEmptyParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
Test::BackgroundController::_iceD_initializeException(::IceInternal::Incoming& inS, const ::Ice::Current& current)
{
    _iceCheckMode(::Ice::OperationMode::Normal, current.mode);
    auto istr = inS.startReadParams();
    bool iceP_enable;
    istr->readAll(iceP_enable);
    inS.endReadParams();
    this->initializeException(iceP_enable, current);
    inS.writeEmptyParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
Test::BackgroundController::_iceD_readReady(::IceInternal::Incoming& inS, const ::Ice::Current& current)
{
    _iceCheckMode(::Ice::OperationMode::Normal, current.mode);
    auto istr = inS.startReadParams();
    bool iceP_enable;
    istr->readAll(iceP_enable);
    inS.endReadParams();
    this->readReady(iceP_enable, current);
    inS.writeEmptyParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
Test::BackgroundController::_iceD_readException(::IceInternal::Incoming& inS, const ::Ice::Current& current)
{
    _iceCheckMode(::Ice::OperationMode::Normal, current.mode);
    auto istr = inS.startReadParams();
    bool iceP_enable;
    istr->readAll(iceP_enable);
    inS.endReadParams();
    this->readException(iceP_enable, current);
    inS.writeEmptyParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
Test::BackgroundController::_iceD_writeReady(::IceInternal::Incoming& inS, const ::Ice::Current& current)
{
    _iceCheckMode(::Ice::OperationMode::Normal, current.mode);
    auto istr = inS.startReadParams();
    bool iceP_enable;
    istr->readAll(iceP_enable);
    inS.endReadParams();
    this->writeReady(iceP_enable, current);
    inS.writeEmptyParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
Test::BackgroundController::_iceD_writeException(::IceInternal::Incoming& inS, const ::Ice::Current& current)
{
    _iceCheckMode(::Ice::OperationMode::Normal, current.mode);
    auto istr = inS.startReadParams();
    bool iceP_enable;
    istr->readAll(iceP_enable);
    inS.endReadParams();
    this->writeException(iceP_enable, current);
    inS.writeEmptyParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
Test::BackgroundController::_iceD_buffered(::IceInternal::Incoming& inS, const ::Ice::Current& current)
{
    _iceCheckMode(::Ice::OperationMode::Normal, current.mode);
    auto istr = inS.startReadParams();
    bool iceP_enable;
    istr->readAll(iceP_enable);
    inS.endReadParams();
    this->buffered(iceP_enable, current);
    inS.writeEmptyParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
Test::BackgroundController::_iceDispatch(::IceInternal::Incoming& in, const ::Ice::Current& current)
{
    ::std::pair<const ::std::string*, const ::std::string*> r = ::std::equal_range(iceC_Test_BackgroundController_ops, iceC_Test_BackgroundController_ops + 15, current.operation);
    if(r.first == r.second)
    {
        throw ::Ice::OperationNotExistException(__FILE__, __LINE__, current.id, current.facet, current.operation);
    }

    switch(r.first - iceC_Test_BackgroundController_ops)
    {
        case 0:
        {
            return _iceD_buffered(in, current);
        }
        case 1:
        {
            return _iceD_holdAdapter(in, current);
        }
        case 2:
        {
            return _iceD_ice_id(in, current);
        }
        case 3:
        {
            return _iceD_ice_ids(in, current);
        }
        case 4:
        {
            return _iceD_ice_isA(in, current);
        }
        case 5:
        {
            return _iceD_ice_ping(in, current);
        }
        case 6:
        {
            return _iceD_initializeException(in, current);
        }
        case 7:
        {
            return _iceD_initializeSocketOperation(in, current);
        }
        case 8:
        {
            return _iceD_pauseCall(in, current);
        }
        case 9:
        {
            return _iceD_readException(in, current);
        }
        case 10:
        {
            return _iceD_readReady(in, current);
        }
        case 11:
        {
            return _iceD_resumeAdapter(in, current);
        }
        case 12:
        {
            return _iceD_resumeCall(in, current);
        }
        case 13:
        {
            return _iceD_writeException(in, current);
        }
        case 14:
        {
            return _iceD_writeReady(in, current);
        }
        default:
        {
            assert(false);
            throw ::Ice::OperationNotExistException(__FILE__, __LINE__, current.id, current.facet, current.operation);
        }
    }
}
/// \endcond

/// \cond INTERNAL
void
Test::BackgroundPrx::_iceI_op(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>& outAsync, const ::Ice::Context& context)
{
    outAsync->invoke(iceC_Test_Background_op_name, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        nullptr,
        nullptr);
}
/// \endcond

/// \cond INTERNAL
void
Test::BackgroundPrx::_iceI_opWithPayload(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>& outAsync, const ::Ice::ByteSeq& iceP_seq, const ::Ice::Context& context)
{
    outAsync->invoke(iceC_Test_Background_opWithPayload_name, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        [&](::Ice::OutputStream* ostr)
        {
            ostr->writeAll(iceP_seq);
        },
        nullptr);
}
/// \endcond

/// \cond INTERNAL
void
Test::BackgroundPrx::_iceI_shutdown(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>& outAsync, const ::Ice::Context& context)
{
    outAsync->invoke(iceC_Test_Background_shutdown_name, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        nullptr,
        nullptr);
}
/// \endcond

/// \cond INTERNAL
::std::shared_ptr<::Ice::ObjectPrx>
Test::BackgroundPrx::_newInstance() const
{
    return ::IceInternal::createProxy<BackgroundPrx>();
}
/// \endcond

const ::std::string&
Test::BackgroundPrx::ice_staticId()
{
    return Background::ice_staticId();
}

/// \cond INTERNAL
void
Test::BackgroundControllerPrx::_iceI_pauseCall(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>& outAsync, const ::std::string& iceP_call, const ::Ice::Context& context)
{
    outAsync->invoke(iceC_Test_BackgroundController_pauseCall_name, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        [&](::Ice::OutputStream* ostr)
        {
            ostr->writeAll(iceP_call);
        },
        nullptr);
}
/// \endcond

/// \cond INTERNAL
void
Test::BackgroundControllerPrx::_iceI_resumeCall(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>& outAsync, const ::std::string& iceP_call, const ::Ice::Context& context)
{
    outAsync->invoke(iceC_Test_BackgroundController_resumeCall_name, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        [&](::Ice::OutputStream* ostr)
        {
            ostr->writeAll(iceP_call);
        },
        nullptr);
}
/// \endcond

/// \cond INTERNAL
void
Test::BackgroundControllerPrx::_iceI_holdAdapter(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>& outAsync, const ::Ice::Context& context)
{
    outAsync->invoke(iceC_Test_BackgroundController_holdAdapter_name, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        nullptr,
        nullptr);
}
/// \endcond

/// \cond INTERNAL
void
Test::BackgroundControllerPrx::_iceI_resumeAdapter(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>& outAsync, const ::Ice::Context& context)
{
    outAsync->invoke(iceC_Test_BackgroundController_resumeAdapter_name, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        nullptr,
        nullptr);
}
/// \endcond

/// \cond INTERNAL
void
Test::BackgroundControllerPrx::_iceI_initializeSocketOperation(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>& outAsync, int iceP_status, const ::Ice::Context& context)
{
    outAsync->invoke(iceC_Test_BackgroundController_initializeSocketOperation_name, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        [&](::Ice::OutputStream* ostr)
        {
            ostr->writeAll(iceP_status);
        },
        nullptr);
}
/// \endcond

/// \cond INTERNAL
void
Test::BackgroundControllerPrx::_iceI_initializeException(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>& outAsync, bool iceP_enable, const ::Ice::Context& context)
{
    outAsync->invoke(iceC_Test_BackgroundController_initializeException_name, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        [&](::Ice::OutputStream* ostr)
        {
            ostr->writeAll(iceP_enable);
        },
        nullptr);
}
/// \endcond

/// \cond INTERNAL
void
Test::BackgroundControllerPrx::_iceI_readReady(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>& outAsync, bool iceP_enable, const ::Ice::Context& context)
{
    outAsync->invoke(iceC_Test_BackgroundController_readReady_name, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        [&](::Ice::OutputStream* ostr)
        {
            ostr->writeAll(iceP_enable);
        },
        nullptr);
}
/// \endcond

/// \cond INTERNAL
void
Test::BackgroundControllerPrx::_iceI_readException(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>& outAsync, bool iceP_enable, const ::Ice::Context& context)
{
    outAsync->invoke(iceC_Test_BackgroundController_readException_name, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        [&](::Ice::OutputStream* ostr)
        {
            ostr->writeAll(iceP_enable);
        },
        nullptr);
}
/// \endcond

/// \cond INTERNAL
void
Test::BackgroundControllerPrx::_iceI_writeReady(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>& outAsync, bool iceP_enable, const ::Ice::Context& context)
{
    outAsync->invoke(iceC_Test_BackgroundController_writeReady_name, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        [&](::Ice::OutputStream* ostr)
        {
            ostr->writeAll(iceP_enable);
        },
        nullptr);
}
/// \endcond

/// \cond INTERNAL
void
Test::BackgroundControllerPrx::_iceI_writeException(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>& outAsync, bool iceP_enable, const ::Ice::Context& context)
{
    outAsync->invoke(iceC_Test_BackgroundController_writeException_name, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        [&](::Ice::OutputStream* ostr)
        {
            ostr->writeAll(iceP_enable);
        },
        nullptr);
}
/// \endcond

/// \cond INTERNAL
void
Test::BackgroundControllerPrx::_iceI_buffered(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>& outAsync, bool iceP_enable, const ::Ice::Context& context)
{
    outAsync->invoke(iceC_Test_BackgroundController_buffered_name, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        [&](::Ice::OutputStream* ostr)
        {
            ostr->writeAll(iceP_enable);
        },
        nullptr);
}
/// \endcond

/// \cond INTERNAL
::std::shared_ptr<::Ice::ObjectPrx>
Test::BackgroundControllerPrx::_newInstance() const
{
    return ::IceInternal::createProxy<BackgroundControllerPrx>();
}
/// \endcond

const ::std::string&
Test::BackgroundControllerPrx::ice_staticId()
{
    return BackgroundController::ice_staticId();
}
