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

const ::IceInternal::DefaultUserExceptionFactoryInit<::Test::TestIntfException> iceC_Test_TestIntfException_init("::Test::TestIntfException");

const ::std::string iceC_Test_PingReply_ids[2] =
{
    "::Ice::Object",
    "::Test::PingReply"
};
const ::std::string iceC_Test_PingReply_ops[] =
{
    "ice_id",
    "ice_ids",
    "ice_isA",
    "ice_ping",
    "reply"
};
const ::std::string iceC_Test_PingReply_reply_name = "reply";

const ::std::string iceC_Test_TestIntf_ids[2] =
{
    "::Ice::Object",
    "::Test::TestIntf"
};
const ::std::string iceC_Test_TestIntf_ops[] =
{
    "close",
    "finishDispatch",
    "ice_id",
    "ice_ids",
    "ice_isA",
    "ice_ping",
    "op",
    "opAsyncDispatch",
    "opBatch",
    "opBatchCount",
    "opWithPayload",
    "opWithResult",
    "opWithResultAsyncDispatch",
    "opWithUE",
    "opWithUEAsyncDispatch",
    "pingBiDir",
    "shutdown",
    "sleep",
    "startDispatch",
    "supportsAMD",
    "supportsFunctionalTests",
    "waitForBatch"
};
const ::std::string iceC_Test_TestIntf_op_name = "op";
const ::std::string iceC_Test_TestIntf_opWithPayload_name = "opWithPayload";
const ::std::string iceC_Test_TestIntf_opWithResult_name = "opWithResult";
const ::std::string iceC_Test_TestIntf_opWithUE_name = "opWithUE";
const ::std::string iceC_Test_TestIntf_opBatch_name = "opBatch";
const ::std::string iceC_Test_TestIntf_opBatchCount_name = "opBatchCount";
const ::std::string iceC_Test_TestIntf_waitForBatch_name = "waitForBatch";
const ::std::string iceC_Test_TestIntf_close_name = "close";
const ::std::string iceC_Test_TestIntf_sleep_name = "sleep";
const ::std::string iceC_Test_TestIntf_startDispatch_name = "startDispatch";
const ::std::string iceC_Test_TestIntf_finishDispatch_name = "finishDispatch";
const ::std::string iceC_Test_TestIntf_shutdown_name = "shutdown";
const ::std::string iceC_Test_TestIntf_supportsAMD_name = "supportsAMD";
const ::std::string iceC_Test_TestIntf_supportsFunctionalTests_name = "supportsFunctionalTests";
const ::std::string iceC_Test_TestIntf_opAsyncDispatch_name = "opAsyncDispatch";
const ::std::string iceC_Test_TestIntf_opWithResultAsyncDispatch_name = "opWithResultAsyncDispatch";
const ::std::string iceC_Test_TestIntf_opWithUEAsyncDispatch_name = "opWithUEAsyncDispatch";
const ::std::string iceC_Test_TestIntf_pingBiDir_name = "pingBiDir";

const ::std::string iceC_Test_TestIntfController_ids[2] =
{
    "::Ice::Object",
    "::Test::TestIntfController"
};
const ::std::string iceC_Test_TestIntfController_ops[] =
{
    "holdAdapter",
    "ice_id",
    "ice_ids",
    "ice_isA",
    "ice_ping",
    "resumeAdapter"
};
const ::std::string iceC_Test_TestIntfController_holdAdapter_name = "holdAdapter";
const ::std::string iceC_Test_TestIntfController_resumeAdapter_name = "resumeAdapter";

const ::std::string iceC_Test_Outer_Inner_TestIntf_ids[2] =
{
    "::Ice::Object",
    "::Test::Outer::Inner::TestIntf"
};
const ::std::string iceC_Test_Outer_Inner_TestIntf_ops[] =
{
    "ice_id",
    "ice_ids",
    "ice_isA",
    "ice_ping",
    "op"
};
const ::std::string iceC_Test_Outer_Inner_TestIntf_op_name = "op";

}

Test::TestIntfException::~TestIntfException()
{
}

const ::std::string&
Test::TestIntfException::ice_staticId()
{
    static const ::std::string typeId = "::Test::TestIntfException";
    return typeId;
}

bool
Test::PingReply::ice_isA(::std::string s, const ::Ice::Current&) const
{
    return ::std::binary_search(iceC_Test_PingReply_ids, iceC_Test_PingReply_ids + 2, s);
}

::std::vector<::std::string>
Test::PingReply::ice_ids(const ::Ice::Current&) const
{
    return ::std::vector<::std::string>(&iceC_Test_PingReply_ids[0], &iceC_Test_PingReply_ids[2]);
}

::std::string
Test::PingReply::ice_id(const ::Ice::Current&) const
{
    return ice_staticId();
}

const ::std::string&
Test::PingReply::ice_staticId()
{
    static const ::std::string typeId = "::Test::PingReply";
    return typeId;
}

/// \cond INTERNAL
bool
Test::PingReply::_iceD_reply(::IceInternal::Incoming& inS, const ::Ice::Current& current)
{
    _iceCheckMode(::Ice::OperationMode::Normal, current.mode);
    inS.readEmptyParams();
    this->reply(current);
    inS.writeEmptyParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
Test::PingReply::_iceDispatch(::IceInternal::Incoming& in, const ::Ice::Current& current)
{
    ::std::pair<const ::std::string*, const ::std::string*> r = ::std::equal_range(iceC_Test_PingReply_ops, iceC_Test_PingReply_ops + 5, current.operation);
    if(r.first == r.second)
    {
        throw ::Ice::OperationNotExistException(__FILE__, __LINE__, current.id, current.facet, current.operation);
    }

    switch(r.first - iceC_Test_PingReply_ops)
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
            return _iceD_reply(in, current);
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
Test::TestIntf::ice_isA(::std::string s, const ::Ice::Current&) const
{
    return ::std::binary_search(iceC_Test_TestIntf_ids, iceC_Test_TestIntf_ids + 2, s);
}

::std::vector<::std::string>
Test::TestIntf::ice_ids(const ::Ice::Current&) const
{
    return ::std::vector<::std::string>(&iceC_Test_TestIntf_ids[0], &iceC_Test_TestIntf_ids[2]);
}

::std::string
Test::TestIntf::ice_id(const ::Ice::Current&) const
{
    return ice_staticId();
}

const ::std::string&
Test::TestIntf::ice_staticId()
{
    static const ::std::string typeId = "::Test::TestIntf";
    return typeId;
}

/// \cond INTERNAL
bool
Test::TestIntf::_iceD_op(::IceInternal::Incoming& inS, const ::Ice::Current& current)
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
Test::TestIntf::_iceD_opWithPayload(::IceInternal::Incoming& inS, const ::Ice::Current& current)
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
Test::TestIntf::_iceD_opWithResult(::IceInternal::Incoming& inS, const ::Ice::Current& current)
{
    _iceCheckMode(::Ice::OperationMode::Normal, current.mode);
    inS.readEmptyParams();
    int ret = this->opWithResult(current);
    auto ostr = inS.startWriteParams();
    ostr->writeAll(ret);
    inS.endWriteParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
Test::TestIntf::_iceD_opWithUE(::IceInternal::Incoming& inS, const ::Ice::Current& current)
{
    _iceCheckMode(::Ice::OperationMode::Normal, current.mode);
    inS.readEmptyParams();
    this->opWithUE(current);
    inS.writeEmptyParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
Test::TestIntf::_iceD_opBatch(::IceInternal::Incoming& inS, const ::Ice::Current& current)
{
    _iceCheckMode(::Ice::OperationMode::Normal, current.mode);
    inS.readEmptyParams();
    this->opBatch(current);
    inS.writeEmptyParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
Test::TestIntf::_iceD_opBatchCount(::IceInternal::Incoming& inS, const ::Ice::Current& current)
{
    _iceCheckMode(::Ice::OperationMode::Normal, current.mode);
    inS.readEmptyParams();
    int ret = this->opBatchCount(current);
    auto ostr = inS.startWriteParams();
    ostr->writeAll(ret);
    inS.endWriteParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
Test::TestIntf::_iceD_waitForBatch(::IceInternal::Incoming& inS, const ::Ice::Current& current)
{
    _iceCheckMode(::Ice::OperationMode::Normal, current.mode);
    auto istr = inS.startReadParams();
    int iceP_count;
    istr->readAll(iceP_count);
    inS.endReadParams();
    bool ret = this->waitForBatch(iceP_count, current);
    auto ostr = inS.startWriteParams();
    ostr->writeAll(ret);
    inS.endWriteParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
Test::TestIntf::_iceD_close(::IceInternal::Incoming& inS, const ::Ice::Current& current)
{
    _iceCheckMode(::Ice::OperationMode::Normal, current.mode);
    auto istr = inS.startReadParams();
    CloseMode iceP_mode;
    istr->readAll(iceP_mode);
    inS.endReadParams();
    this->close(iceP_mode, current);
    inS.writeEmptyParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
Test::TestIntf::_iceD_sleep(::IceInternal::Incoming& inS, const ::Ice::Current& current)
{
    _iceCheckMode(::Ice::OperationMode::Normal, current.mode);
    auto istr = inS.startReadParams();
    int iceP_ms;
    istr->readAll(iceP_ms);
    inS.endReadParams();
    this->sleep(iceP_ms, current);
    inS.writeEmptyParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
Test::TestIntf::_iceD_startDispatch(::IceInternal::Incoming& inS, const ::Ice::Current& current)
{
    _iceCheckMode(::Ice::OperationMode::Normal, current.mode);
    inS.readEmptyParams();
    auto inA = ::IceInternal::IncomingAsync::create(inS);
    this->startDispatchAsync(inA->response(), inA->exception(), current);
    return false;
}
/// \endcond

/// \cond INTERNAL
bool
Test::TestIntf::_iceD_finishDispatch(::IceInternal::Incoming& inS, const ::Ice::Current& current)
{
    _iceCheckMode(::Ice::OperationMode::Normal, current.mode);
    inS.readEmptyParams();
    this->finishDispatch(current);
    inS.writeEmptyParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
Test::TestIntf::_iceD_shutdown(::IceInternal::Incoming& inS, const ::Ice::Current& current)
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
Test::TestIntf::_iceD_supportsAMD(::IceInternal::Incoming& inS, const ::Ice::Current& current)
{
    _iceCheckMode(::Ice::OperationMode::Normal, current.mode);
    inS.readEmptyParams();
    bool ret = this->supportsAMD(current);
    auto ostr = inS.startWriteParams();
    ostr->writeAll(ret);
    inS.endWriteParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
Test::TestIntf::_iceD_supportsFunctionalTests(::IceInternal::Incoming& inS, const ::Ice::Current& current)
{
    _iceCheckMode(::Ice::OperationMode::Normal, current.mode);
    inS.readEmptyParams();
    bool ret = this->supportsFunctionalTests(current);
    auto ostr = inS.startWriteParams();
    ostr->writeAll(ret);
    inS.endWriteParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
Test::TestIntf::_iceD_opAsyncDispatch(::IceInternal::Incoming& inS, const ::Ice::Current& current)
{
    _iceCheckMode(::Ice::OperationMode::Normal, current.mode);
    inS.readEmptyParams();
    auto inA = ::IceInternal::IncomingAsync::create(inS);
    this->opAsyncDispatchAsync(inA->response(), inA->exception(), current);
    return false;
}
/// \endcond

/// \cond INTERNAL
bool
Test::TestIntf::_iceD_opWithResultAsyncDispatch(::IceInternal::Incoming& inS, const ::Ice::Current& current)
{
    _iceCheckMode(::Ice::OperationMode::Normal, current.mode);
    inS.readEmptyParams();
    auto inA = ::IceInternal::IncomingAsync::create(inS);
    auto responseCB = [inA](int ret)
    {
        auto ostr = inA->startWriteParams();
        ostr->writeAll(ret);
        inA->endWriteParams();
        inA->completed();
    };
    this->opWithResultAsyncDispatchAsync(responseCB, inA->exception(), current);
    return false;
}
/// \endcond

/// \cond INTERNAL
bool
Test::TestIntf::_iceD_opWithUEAsyncDispatch(::IceInternal::Incoming& inS, const ::Ice::Current& current)
{
    _iceCheckMode(::Ice::OperationMode::Normal, current.mode);
    inS.readEmptyParams();
    auto inA = ::IceInternal::IncomingAsync::create(inS);
    this->opWithUEAsyncDispatchAsync(inA->response(), inA->exception(), current);
    return false;
}
/// \endcond

/// \cond INTERNAL
bool
Test::TestIntf::_iceD_pingBiDir(::IceInternal::Incoming& inS, const ::Ice::Current& current)
{
    _iceCheckMode(::Ice::OperationMode::Normal, current.mode);
    auto istr = inS.startReadParams();
    ::std::shared_ptr<PingReplyPrx> iceP_reply;
    istr->readAll(iceP_reply);
    inS.endReadParams();
    this->pingBiDir(::std::move(iceP_reply), current);
    inS.writeEmptyParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
Test::TestIntf::_iceDispatch(::IceInternal::Incoming& in, const ::Ice::Current& current)
{
    ::std::pair<const ::std::string*, const ::std::string*> r = ::std::equal_range(iceC_Test_TestIntf_ops, iceC_Test_TestIntf_ops + 22, current.operation);
    if(r.first == r.second)
    {
        throw ::Ice::OperationNotExistException(__FILE__, __LINE__, current.id, current.facet, current.operation);
    }

    switch(r.first - iceC_Test_TestIntf_ops)
    {
        case 0:
        {
            return _iceD_close(in, current);
        }
        case 1:
        {
            return _iceD_finishDispatch(in, current);
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
            return _iceD_op(in, current);
        }
        case 7:
        {
            return _iceD_opAsyncDispatch(in, current);
        }
        case 8:
        {
            return _iceD_opBatch(in, current);
        }
        case 9:
        {
            return _iceD_opBatchCount(in, current);
        }
        case 10:
        {
            return _iceD_opWithPayload(in, current);
        }
        case 11:
        {
            return _iceD_opWithResult(in, current);
        }
        case 12:
        {
            return _iceD_opWithResultAsyncDispatch(in, current);
        }
        case 13:
        {
            return _iceD_opWithUE(in, current);
        }
        case 14:
        {
            return _iceD_opWithUEAsyncDispatch(in, current);
        }
        case 15:
        {
            return _iceD_pingBiDir(in, current);
        }
        case 16:
        {
            return _iceD_shutdown(in, current);
        }
        case 17:
        {
            return _iceD_sleep(in, current);
        }
        case 18:
        {
            return _iceD_startDispatch(in, current);
        }
        case 19:
        {
            return _iceD_supportsAMD(in, current);
        }
        case 20:
        {
            return _iceD_supportsFunctionalTests(in, current);
        }
        case 21:
        {
            return _iceD_waitForBatch(in, current);
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
Test::TestIntfController::ice_isA(::std::string s, const ::Ice::Current&) const
{
    return ::std::binary_search(iceC_Test_TestIntfController_ids, iceC_Test_TestIntfController_ids + 2, s);
}

::std::vector<::std::string>
Test::TestIntfController::ice_ids(const ::Ice::Current&) const
{
    return ::std::vector<::std::string>(&iceC_Test_TestIntfController_ids[0], &iceC_Test_TestIntfController_ids[2]);
}

::std::string
Test::TestIntfController::ice_id(const ::Ice::Current&) const
{
    return ice_staticId();
}

const ::std::string&
Test::TestIntfController::ice_staticId()
{
    static const ::std::string typeId = "::Test::TestIntfController";
    return typeId;
}

/// \cond INTERNAL
bool
Test::TestIntfController::_iceD_holdAdapter(::IceInternal::Incoming& inS, const ::Ice::Current& current)
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
Test::TestIntfController::_iceD_resumeAdapter(::IceInternal::Incoming& inS, const ::Ice::Current& current)
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
Test::TestIntfController::_iceDispatch(::IceInternal::Incoming& in, const ::Ice::Current& current)
{
    ::std::pair<const ::std::string*, const ::std::string*> r = ::std::equal_range(iceC_Test_TestIntfController_ops, iceC_Test_TestIntfController_ops + 6, current.operation);
    if(r.first == r.second)
    {
        throw ::Ice::OperationNotExistException(__FILE__, __LINE__, current.id, current.facet, current.operation);
    }

    switch(r.first - iceC_Test_TestIntfController_ops)
    {
        case 0:
        {
            return _iceD_holdAdapter(in, current);
        }
        case 1:
        {
            return _iceD_ice_id(in, current);
        }
        case 2:
        {
            return _iceD_ice_ids(in, current);
        }
        case 3:
        {
            return _iceD_ice_isA(in, current);
        }
        case 4:
        {
            return _iceD_ice_ping(in, current);
        }
        case 5:
        {
            return _iceD_resumeAdapter(in, current);
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
Test::Outer::Inner::TestIntf::ice_isA(::std::string s, const ::Ice::Current&) const
{
    return ::std::binary_search(iceC_Test_Outer_Inner_TestIntf_ids, iceC_Test_Outer_Inner_TestIntf_ids + 2, s);
}

::std::vector<::std::string>
Test::Outer::Inner::TestIntf::ice_ids(const ::Ice::Current&) const
{
    return ::std::vector<::std::string>(&iceC_Test_Outer_Inner_TestIntf_ids[0], &iceC_Test_Outer_Inner_TestIntf_ids[2]);
}

::std::string
Test::Outer::Inner::TestIntf::ice_id(const ::Ice::Current&) const
{
    return ice_staticId();
}

const ::std::string&
Test::Outer::Inner::TestIntf::ice_staticId()
{
    static const ::std::string typeId = "::Test::Outer::Inner::TestIntf";
    return typeId;
}

/// \cond INTERNAL
bool
Test::Outer::Inner::TestIntf::_iceD_op(::IceInternal::Incoming& inS, const ::Ice::Current& current)
{
    _iceCheckMode(::Ice::OperationMode::Normal, current.mode);
    auto istr = inS.startReadParams();
    int iceP_i;
    istr->readAll(iceP_i);
    inS.endReadParams();
    int iceP_j;
    int ret = this->op(iceP_i, iceP_j, current);
    auto ostr = inS.startWriteParams();
    ostr->writeAll(iceP_j, ret);
    inS.endWriteParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
Test::Outer::Inner::TestIntf::_iceDispatch(::IceInternal::Incoming& in, const ::Ice::Current& current)
{
    ::std::pair<const ::std::string*, const ::std::string*> r = ::std::equal_range(iceC_Test_Outer_Inner_TestIntf_ops, iceC_Test_Outer_Inner_TestIntf_ops + 5, current.operation);
    if(r.first == r.second)
    {
        throw ::Ice::OperationNotExistException(__FILE__, __LINE__, current.id, current.facet, current.operation);
    }

    switch(r.first - iceC_Test_Outer_Inner_TestIntf_ops)
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
Test::PingReplyPrx::_iceI_reply(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>& outAsync, const ::Ice::Context& context)
{
    outAsync->invoke(iceC_Test_PingReply_reply_name, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        nullptr,
        nullptr);
}
/// \endcond

/// \cond INTERNAL
::std::shared_ptr<::Ice::ObjectPrx>
Test::PingReplyPrx::_newInstance() const
{
    return ::IceInternal::createProxy<PingReplyPrx>();
}
/// \endcond

const ::std::string&
Test::PingReplyPrx::ice_staticId()
{
    return PingReply::ice_staticId();
}

/// \cond INTERNAL
void
Test::TestIntfPrx::_iceI_op(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>& outAsync, const ::Ice::Context& context)
{
    outAsync->invoke(iceC_Test_TestIntf_op_name, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        nullptr,
        nullptr);
}
/// \endcond

/// \cond INTERNAL
void
Test::TestIntfPrx::_iceI_opWithPayload(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>& outAsync, const ::Ice::ByteSeq& iceP_seq, const ::Ice::Context& context)
{
    outAsync->invoke(iceC_Test_TestIntf_opWithPayload_name, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        [&](::Ice::OutputStream* ostr)
        {
            ostr->writeAll(iceP_seq);
        },
        nullptr);
}
/// \endcond

/// \cond INTERNAL
void
Test::TestIntfPrx::_iceI_opWithResult(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<int>>& outAsync, const ::Ice::Context& context)
{
    _checkTwowayOnly(iceC_Test_TestIntf_opWithResult_name);
    outAsync->invoke(iceC_Test_TestIntf_opWithResult_name, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        nullptr,
        nullptr);
}
/// \endcond

/// \cond INTERNAL
void
Test::TestIntfPrx::_iceI_opWithUE(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>& outAsync, const ::Ice::Context& context)
{
    _checkTwowayOnly(iceC_Test_TestIntf_opWithUE_name);
    outAsync->invoke(iceC_Test_TestIntf_opWithUE_name, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        nullptr,
        [](const ::Ice::UserException& ex)
        {
            try
            {
                ex.ice_throw();
            }
            catch(const TestIntfException&)
            {
                throw;
            }
            catch(const ::Ice::UserException&)
            {
            }
        });
}
/// \endcond

/// \cond INTERNAL
void
Test::TestIntfPrx::_iceI_opBatch(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>& outAsync, const ::Ice::Context& context)
{
    outAsync->invoke(iceC_Test_TestIntf_opBatch_name, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        nullptr,
        nullptr);
}
/// \endcond

/// \cond INTERNAL
void
Test::TestIntfPrx::_iceI_opBatchCount(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<int>>& outAsync, const ::Ice::Context& context)
{
    _checkTwowayOnly(iceC_Test_TestIntf_opBatchCount_name);
    outAsync->invoke(iceC_Test_TestIntf_opBatchCount_name, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        nullptr,
        nullptr);
}
/// \endcond

/// \cond INTERNAL
void
Test::TestIntfPrx::_iceI_waitForBatch(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<bool>>& outAsync, int iceP_count, const ::Ice::Context& context)
{
    _checkTwowayOnly(iceC_Test_TestIntf_waitForBatch_name);
    outAsync->invoke(iceC_Test_TestIntf_waitForBatch_name, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        [&](::Ice::OutputStream* ostr)
        {
            ostr->writeAll(iceP_count);
        },
        nullptr);
}
/// \endcond

/// \cond INTERNAL
void
Test::TestIntfPrx::_iceI_close(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>& outAsync, CloseMode iceP_mode, const ::Ice::Context& context)
{
    outAsync->invoke(iceC_Test_TestIntf_close_name, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        [&](::Ice::OutputStream* ostr)
        {
            ostr->writeAll(iceP_mode);
        },
        nullptr);
}
/// \endcond

/// \cond INTERNAL
void
Test::TestIntfPrx::_iceI_sleep(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>& outAsync, int iceP_ms, const ::Ice::Context& context)
{
    outAsync->invoke(iceC_Test_TestIntf_sleep_name, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        [&](::Ice::OutputStream* ostr)
        {
            ostr->writeAll(iceP_ms);
        },
        nullptr);
}
/// \endcond

/// \cond INTERNAL
void
Test::TestIntfPrx::_iceI_startDispatch(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>& outAsync, const ::Ice::Context& context)
{
    outAsync->invoke(iceC_Test_TestIntf_startDispatch_name, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        nullptr,
        nullptr);
}
/// \endcond

/// \cond INTERNAL
void
Test::TestIntfPrx::_iceI_finishDispatch(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>& outAsync, const ::Ice::Context& context)
{
    outAsync->invoke(iceC_Test_TestIntf_finishDispatch_name, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        nullptr,
        nullptr);
}
/// \endcond

/// \cond INTERNAL
void
Test::TestIntfPrx::_iceI_shutdown(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>& outAsync, const ::Ice::Context& context)
{
    outAsync->invoke(iceC_Test_TestIntf_shutdown_name, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        nullptr,
        nullptr);
}
/// \endcond

/// \cond INTERNAL
void
Test::TestIntfPrx::_iceI_supportsAMD(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<bool>>& outAsync, const ::Ice::Context& context)
{
    _checkTwowayOnly(iceC_Test_TestIntf_supportsAMD_name);
    outAsync->invoke(iceC_Test_TestIntf_supportsAMD_name, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        nullptr,
        nullptr);
}
/// \endcond

/// \cond INTERNAL
void
Test::TestIntfPrx::_iceI_supportsFunctionalTests(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<bool>>& outAsync, const ::Ice::Context& context)
{
    _checkTwowayOnly(iceC_Test_TestIntf_supportsFunctionalTests_name);
    outAsync->invoke(iceC_Test_TestIntf_supportsFunctionalTests_name, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        nullptr,
        nullptr);
}
/// \endcond

/// \cond INTERNAL
void
Test::TestIntfPrx::_iceI_opAsyncDispatch(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>& outAsync, const ::Ice::Context& context)
{
    outAsync->invoke(iceC_Test_TestIntf_opAsyncDispatch_name, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        nullptr,
        nullptr);
}
/// \endcond

/// \cond INTERNAL
void
Test::TestIntfPrx::_iceI_opWithResultAsyncDispatch(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<int>>& outAsync, const ::Ice::Context& context)
{
    _checkTwowayOnly(iceC_Test_TestIntf_opWithResultAsyncDispatch_name);
    outAsync->invoke(iceC_Test_TestIntf_opWithResultAsyncDispatch_name, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        nullptr,
        nullptr);
}
/// \endcond

/// \cond INTERNAL
void
Test::TestIntfPrx::_iceI_opWithUEAsyncDispatch(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>& outAsync, const ::Ice::Context& context)
{
    _checkTwowayOnly(iceC_Test_TestIntf_opWithUEAsyncDispatch_name);
    outAsync->invoke(iceC_Test_TestIntf_opWithUEAsyncDispatch_name, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        nullptr,
        [](const ::Ice::UserException& ex)
        {
            try
            {
                ex.ice_throw();
            }
            catch(const TestIntfException&)
            {
                throw;
            }
            catch(const ::Ice::UserException&)
            {
            }
        });
}
/// \endcond

/// \cond INTERNAL
void
Test::TestIntfPrx::_iceI_pingBiDir(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>& outAsync, const ::std::shared_ptr<PingReplyPrx>& iceP_reply, const ::Ice::Context& context)
{
    outAsync->invoke(iceC_Test_TestIntf_pingBiDir_name, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        [&](::Ice::OutputStream* ostr)
        {
            ostr->writeAll(iceP_reply);
        },
        nullptr);
}
/// \endcond

/// \cond INTERNAL
::std::shared_ptr<::Ice::ObjectPrx>
Test::TestIntfPrx::_newInstance() const
{
    return ::IceInternal::createProxy<TestIntfPrx>();
}
/// \endcond

const ::std::string&
Test::TestIntfPrx::ice_staticId()
{
    return TestIntf::ice_staticId();
}

/// \cond INTERNAL
void
Test::TestIntfControllerPrx::_iceI_holdAdapter(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>& outAsync, const ::Ice::Context& context)
{
    outAsync->invoke(iceC_Test_TestIntfController_holdAdapter_name, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        nullptr,
        nullptr);
}
/// \endcond

/// \cond INTERNAL
void
Test::TestIntfControllerPrx::_iceI_resumeAdapter(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>& outAsync, const ::Ice::Context& context)
{
    outAsync->invoke(iceC_Test_TestIntfController_resumeAdapter_name, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        nullptr,
        nullptr);
}
/// \endcond

/// \cond INTERNAL
::std::shared_ptr<::Ice::ObjectPrx>
Test::TestIntfControllerPrx::_newInstance() const
{
    return ::IceInternal::createProxy<TestIntfControllerPrx>();
}
/// \endcond

const ::std::string&
Test::TestIntfControllerPrx::ice_staticId()
{
    return TestIntfController::ice_staticId();
}

/// \cond INTERNAL
void
Test::Outer::Inner::TestIntfPrx::_iceI_op(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<TestIntf::OpResult>>& outAsync, int iceP_i, const ::Ice::Context& context)
{
    _checkTwowayOnly(iceC_Test_Outer_Inner_TestIntf_op_name);
    outAsync->invoke(iceC_Test_Outer_Inner_TestIntf_op_name, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        [&](::Ice::OutputStream* ostr)
        {
            ostr->writeAll(iceP_i);
        },
        nullptr,
        [](::Ice::InputStream* istr)
        {
            TestIntf::OpResult v;
            istr->readAll(v.j, v.returnValue);
            return v;
        });
}
/// \endcond

/// \cond INTERNAL
::std::shared_ptr<::Ice::ObjectPrx>
Test::Outer::Inner::TestIntfPrx::_newInstance() const
{
    return ::IceInternal::createProxy<TestIntfPrx>();
}
/// \endcond

const ::std::string&
Test::Outer::Inner::TestIntfPrx::ice_staticId()
{
    return TestIntf::ice_staticId();
}
