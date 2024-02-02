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

const ::std::string iceC_Test_TestIntf_ids[2] =
{
    "::Ice::Object",
    "::Test::TestIntf"
};
const ::std::string iceC_Test_TestIntf_ops[] =
{
    "ice_id",
    "ice_ids",
    "ice_isA",
    "ice_ping",
    "interruptSleep",
    "sleep",
    "sleepAndHold",
    "startHeartbeatCount",
    "waitForHeartbeatCount"
};
const ::std::string iceC_Test_TestIntf_sleep_name = "sleep";
const ::std::string iceC_Test_TestIntf_sleepAndHold_name = "sleepAndHold";
const ::std::string iceC_Test_TestIntf_interruptSleep_name = "interruptSleep";
const ::std::string iceC_Test_TestIntf_startHeartbeatCount_name = "startHeartbeatCount";
const ::std::string iceC_Test_TestIntf_waitForHeartbeatCount_name = "waitForHeartbeatCount";

const ::std::string iceC_Test_RemoteObjectAdapter_ids[2] =
{
    "::Ice::Object",
    "::Test::RemoteObjectAdapter"
};
const ::std::string iceC_Test_RemoteObjectAdapter_ops[] =
{
    "activate",
    "deactivate",
    "getTestIntf",
    "hold",
    "ice_id",
    "ice_ids",
    "ice_isA",
    "ice_ping"
};
const ::std::string iceC_Test_RemoteObjectAdapter_getTestIntf_name = "getTestIntf";
const ::std::string iceC_Test_RemoteObjectAdapter_activate_name = "activate";
const ::std::string iceC_Test_RemoteObjectAdapter_hold_name = "hold";
const ::std::string iceC_Test_RemoteObjectAdapter_deactivate_name = "deactivate";

const ::std::string iceC_Test_RemoteCommunicator_ids[2] =
{
    "::Ice::Object",
    "::Test::RemoteCommunicator"
};
const ::std::string iceC_Test_RemoteCommunicator_ops[] =
{
    "createObjectAdapter",
    "ice_id",
    "ice_ids",
    "ice_isA",
    "ice_ping",
    "shutdown"
};
const ::std::string iceC_Test_RemoteCommunicator_createObjectAdapter_name = "createObjectAdapter";
const ::std::string iceC_Test_RemoteCommunicator_shutdown_name = "shutdown";

}

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
Test::TestIntf::_iceD_sleep(::IceInternal::Incoming& inS, const ::Ice::Current& current)
{
    _iceCheckMode(::Ice::OperationMode::Normal, current.mode);
    auto istr = inS.startReadParams();
    int iceP_seconds;
    istr->readAll(iceP_seconds);
    inS.endReadParams();
    this->sleep(iceP_seconds, current);
    inS.writeEmptyParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
Test::TestIntf::_iceD_sleepAndHold(::IceInternal::Incoming& inS, const ::Ice::Current& current)
{
    _iceCheckMode(::Ice::OperationMode::Normal, current.mode);
    auto istr = inS.startReadParams();
    int iceP_seconds;
    istr->readAll(iceP_seconds);
    inS.endReadParams();
    this->sleepAndHold(iceP_seconds, current);
    inS.writeEmptyParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
Test::TestIntf::_iceD_interruptSleep(::IceInternal::Incoming& inS, const ::Ice::Current& current)
{
    _iceCheckMode(::Ice::OperationMode::Normal, current.mode);
    inS.readEmptyParams();
    this->interruptSleep(current);
    inS.writeEmptyParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
Test::TestIntf::_iceD_startHeartbeatCount(::IceInternal::Incoming& inS, const ::Ice::Current& current)
{
    _iceCheckMode(::Ice::OperationMode::Normal, current.mode);
    inS.readEmptyParams();
    this->startHeartbeatCount(current);
    inS.writeEmptyParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
Test::TestIntf::_iceD_waitForHeartbeatCount(::IceInternal::Incoming& inS, const ::Ice::Current& current)
{
    _iceCheckMode(::Ice::OperationMode::Normal, current.mode);
    auto istr = inS.startReadParams();
    int iceP_count;
    istr->readAll(iceP_count);
    inS.endReadParams();
    this->waitForHeartbeatCount(iceP_count, current);
    inS.writeEmptyParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
Test::TestIntf::_iceDispatch(::IceInternal::Incoming& in, const ::Ice::Current& current)
{
    ::std::pair<const ::std::string*, const ::std::string*> r = ::std::equal_range(iceC_Test_TestIntf_ops, iceC_Test_TestIntf_ops + 9, current.operation);
    if(r.first == r.second)
    {
        throw ::Ice::OperationNotExistException(__FILE__, __LINE__, current.id, current.facet, current.operation);
    }

    switch(r.first - iceC_Test_TestIntf_ops)
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
            return _iceD_interruptSleep(in, current);
        }
        case 5:
        {
            return _iceD_sleep(in, current);
        }
        case 6:
        {
            return _iceD_sleepAndHold(in, current);
        }
        case 7:
        {
            return _iceD_startHeartbeatCount(in, current);
        }
        case 8:
        {
            return _iceD_waitForHeartbeatCount(in, current);
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
Test::RemoteObjectAdapter::ice_isA(::std::string s, const ::Ice::Current&) const
{
    return ::std::binary_search(iceC_Test_RemoteObjectAdapter_ids, iceC_Test_RemoteObjectAdapter_ids + 2, s);
}

::std::vector<::std::string>
Test::RemoteObjectAdapter::ice_ids(const ::Ice::Current&) const
{
    return ::std::vector<::std::string>(&iceC_Test_RemoteObjectAdapter_ids[0], &iceC_Test_RemoteObjectAdapter_ids[2]);
}

::std::string
Test::RemoteObjectAdapter::ice_id(const ::Ice::Current&) const
{
    return ice_staticId();
}

const ::std::string&
Test::RemoteObjectAdapter::ice_staticId()
{
    static const ::std::string typeId = "::Test::RemoteObjectAdapter";
    return typeId;
}

/// \cond INTERNAL
bool
Test::RemoteObjectAdapter::_iceD_getTestIntf(::IceInternal::Incoming& inS, const ::Ice::Current& current)
{
    _iceCheckMode(::Ice::OperationMode::Normal, current.mode);
    inS.readEmptyParams();
    ::std::shared_ptr<TestIntfPrx> ret = this->getTestIntf(current);
    auto ostr = inS.startWriteParams();
    ostr->writeAll(ret);
    inS.endWriteParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
Test::RemoteObjectAdapter::_iceD_activate(::IceInternal::Incoming& inS, const ::Ice::Current& current)
{
    _iceCheckMode(::Ice::OperationMode::Normal, current.mode);
    inS.readEmptyParams();
    this->activate(current);
    inS.writeEmptyParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
Test::RemoteObjectAdapter::_iceD_hold(::IceInternal::Incoming& inS, const ::Ice::Current& current)
{
    _iceCheckMode(::Ice::OperationMode::Normal, current.mode);
    inS.readEmptyParams();
    this->hold(current);
    inS.writeEmptyParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
Test::RemoteObjectAdapter::_iceD_deactivate(::IceInternal::Incoming& inS, const ::Ice::Current& current)
{
    _iceCheckMode(::Ice::OperationMode::Normal, current.mode);
    inS.readEmptyParams();
    this->deactivate(current);
    inS.writeEmptyParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
Test::RemoteObjectAdapter::_iceDispatch(::IceInternal::Incoming& in, const ::Ice::Current& current)
{
    ::std::pair<const ::std::string*, const ::std::string*> r = ::std::equal_range(iceC_Test_RemoteObjectAdapter_ops, iceC_Test_RemoteObjectAdapter_ops + 8, current.operation);
    if(r.first == r.second)
    {
        throw ::Ice::OperationNotExistException(__FILE__, __LINE__, current.id, current.facet, current.operation);
    }

    switch(r.first - iceC_Test_RemoteObjectAdapter_ops)
    {
        case 0:
        {
            return _iceD_activate(in, current);
        }
        case 1:
        {
            return _iceD_deactivate(in, current);
        }
        case 2:
        {
            return _iceD_getTestIntf(in, current);
        }
        case 3:
        {
            return _iceD_hold(in, current);
        }
        case 4:
        {
            return _iceD_ice_id(in, current);
        }
        case 5:
        {
            return _iceD_ice_ids(in, current);
        }
        case 6:
        {
            return _iceD_ice_isA(in, current);
        }
        case 7:
        {
            return _iceD_ice_ping(in, current);
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
Test::RemoteCommunicator::ice_isA(::std::string s, const ::Ice::Current&) const
{
    return ::std::binary_search(iceC_Test_RemoteCommunicator_ids, iceC_Test_RemoteCommunicator_ids + 2, s);
}

::std::vector<::std::string>
Test::RemoteCommunicator::ice_ids(const ::Ice::Current&) const
{
    return ::std::vector<::std::string>(&iceC_Test_RemoteCommunicator_ids[0], &iceC_Test_RemoteCommunicator_ids[2]);
}

::std::string
Test::RemoteCommunicator::ice_id(const ::Ice::Current&) const
{
    return ice_staticId();
}

const ::std::string&
Test::RemoteCommunicator::ice_staticId()
{
    static const ::std::string typeId = "::Test::RemoteCommunicator";
    return typeId;
}

/// \cond INTERNAL
bool
Test::RemoteCommunicator::_iceD_createObjectAdapter(::IceInternal::Incoming& inS, const ::Ice::Current& current)
{
    _iceCheckMode(::Ice::OperationMode::Normal, current.mode);
    auto istr = inS.startReadParams();
    int iceP_acmTimeout;
    int iceP_close;
    int iceP_heartbeat;
    istr->readAll(iceP_acmTimeout, iceP_close, iceP_heartbeat);
    inS.endReadParams();
    ::std::shared_ptr<RemoteObjectAdapterPrx> ret = this->createObjectAdapter(iceP_acmTimeout, iceP_close, iceP_heartbeat, current);
    auto ostr = inS.startWriteParams();
    ostr->writeAll(ret);
    inS.endWriteParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
Test::RemoteCommunicator::_iceD_shutdown(::IceInternal::Incoming& inS, const ::Ice::Current& current)
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
Test::RemoteCommunicator::_iceDispatch(::IceInternal::Incoming& in, const ::Ice::Current& current)
{
    ::std::pair<const ::std::string*, const ::std::string*> r = ::std::equal_range(iceC_Test_RemoteCommunicator_ops, iceC_Test_RemoteCommunicator_ops + 6, current.operation);
    if(r.first == r.second)
    {
        throw ::Ice::OperationNotExistException(__FILE__, __LINE__, current.id, current.facet, current.operation);
    }

    switch(r.first - iceC_Test_RemoteCommunicator_ops)
    {
        case 0:
        {
            return _iceD_createObjectAdapter(in, current);
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

/// \cond INTERNAL
void
Test::TestIntfPrx::_iceI_sleep(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>& outAsync, int iceP_seconds, const ::Ice::Context& context)
{
    outAsync->invoke(iceC_Test_TestIntf_sleep_name, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        [&](::Ice::OutputStream* ostr)
        {
            ostr->writeAll(iceP_seconds);
        },
        nullptr);
}
/// \endcond

/// \cond INTERNAL
void
Test::TestIntfPrx::_iceI_sleepAndHold(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>& outAsync, int iceP_seconds, const ::Ice::Context& context)
{
    outAsync->invoke(iceC_Test_TestIntf_sleepAndHold_name, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        [&](::Ice::OutputStream* ostr)
        {
            ostr->writeAll(iceP_seconds);
        },
        nullptr);
}
/// \endcond

/// \cond INTERNAL
void
Test::TestIntfPrx::_iceI_interruptSleep(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>& outAsync, const ::Ice::Context& context)
{
    outAsync->invoke(iceC_Test_TestIntf_interruptSleep_name, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        nullptr,
        nullptr);
}
/// \endcond

/// \cond INTERNAL
void
Test::TestIntfPrx::_iceI_startHeartbeatCount(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>& outAsync, const ::Ice::Context& context)
{
    outAsync->invoke(iceC_Test_TestIntf_startHeartbeatCount_name, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        nullptr,
        nullptr);
}
/// \endcond

/// \cond INTERNAL
void
Test::TestIntfPrx::_iceI_waitForHeartbeatCount(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>& outAsync, int iceP_count, const ::Ice::Context& context)
{
    outAsync->invoke(iceC_Test_TestIntf_waitForHeartbeatCount_name, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        [&](::Ice::OutputStream* ostr)
        {
            ostr->writeAll(iceP_count);
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
Test::RemoteObjectAdapterPrx::_iceI_getTestIntf(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<::std::shared_ptr<::Test::TestIntfPrx>>>& outAsync, const ::Ice::Context& context)
{
    _checkTwowayOnly(iceC_Test_RemoteObjectAdapter_getTestIntf_name);
    outAsync->invoke(iceC_Test_RemoteObjectAdapter_getTestIntf_name, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        nullptr,
        nullptr);
}
/// \endcond

/// \cond INTERNAL
void
Test::RemoteObjectAdapterPrx::_iceI_activate(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>& outAsync, const ::Ice::Context& context)
{
    outAsync->invoke(iceC_Test_RemoteObjectAdapter_activate_name, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        nullptr,
        nullptr);
}
/// \endcond

/// \cond INTERNAL
void
Test::RemoteObjectAdapterPrx::_iceI_hold(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>& outAsync, const ::Ice::Context& context)
{
    outAsync->invoke(iceC_Test_RemoteObjectAdapter_hold_name, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        nullptr,
        nullptr);
}
/// \endcond

/// \cond INTERNAL
void
Test::RemoteObjectAdapterPrx::_iceI_deactivate(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>& outAsync, const ::Ice::Context& context)
{
    outAsync->invoke(iceC_Test_RemoteObjectAdapter_deactivate_name, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        nullptr,
        nullptr);
}
/// \endcond

/// \cond INTERNAL
::std::shared_ptr<::Ice::ObjectPrx>
Test::RemoteObjectAdapterPrx::_newInstance() const
{
    return ::IceInternal::createProxy<RemoteObjectAdapterPrx>();
}
/// \endcond

const ::std::string&
Test::RemoteObjectAdapterPrx::ice_staticId()
{
    return RemoteObjectAdapter::ice_staticId();
}

/// \cond INTERNAL
void
Test::RemoteCommunicatorPrx::_iceI_createObjectAdapter(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<::std::shared_ptr<::Test::RemoteObjectAdapterPrx>>>& outAsync, int iceP_acmTimeout, int iceP_close, int iceP_heartbeat, const ::Ice::Context& context)
{
    _checkTwowayOnly(iceC_Test_RemoteCommunicator_createObjectAdapter_name);
    outAsync->invoke(iceC_Test_RemoteCommunicator_createObjectAdapter_name, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        [&](::Ice::OutputStream* ostr)
        {
            ostr->writeAll(iceP_acmTimeout, iceP_close, iceP_heartbeat);
        },
        nullptr);
}
/// \endcond

/// \cond INTERNAL
void
Test::RemoteCommunicatorPrx::_iceI_shutdown(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>& outAsync, const ::Ice::Context& context)
{
    outAsync->invoke(iceC_Test_RemoteCommunicator_shutdown_name, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        nullptr,
        nullptr);
}
/// \endcond

/// \cond INTERNAL
::std::shared_ptr<::Ice::ObjectPrx>
Test::RemoteCommunicatorPrx::_newInstance() const
{
    return ::IceInternal::createProxy<RemoteCommunicatorPrx>();
}
/// \endcond

const ::std::string&
Test::RemoteCommunicatorPrx::ice_staticId()
{
    return RemoteCommunicator::ice_staticId();
}
