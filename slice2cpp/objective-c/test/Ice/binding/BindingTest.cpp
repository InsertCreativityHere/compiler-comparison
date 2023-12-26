//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.7.10
//
// <auto-generated>
//
// Generated from file `BindingTest.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

#define ICE_BUILDING_GENERATED_CODE
#include <BindingTest.h>
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
#   if ICE_INT_VERSION / 100 != 307
#       error Ice version mismatch!
#   endif
#   if ICE_INT_VERSION % 100 >= 50
#       error Beta header file detected
#   endif
#   if ICE_INT_VERSION % 100 < 10
#       error Ice patch level mismatch!
#   endif
#endif

#ifdef ICE_CPP11_MAPPING // C++11 mapping

namespace
{

const ::std::string iceC_Test_TestIntf_ids[2] =
{
    "::Ice::Object",
    "::Test::TestIntf"
};
const ::std::string iceC_Test_TestIntf_ops[] =
{
    "getAdapterName",
    "ice_id",
    "ice_ids",
    "ice_isA",
    "ice_ping"
};
const ::std::string iceC_Test_TestIntf_getAdapterName_name = "getAdapterName";

const ::std::string iceC_Test_RemoteObjectAdapter_ids[2] =
{
    "::Ice::Object",
    "::Test::RemoteObjectAdapter"
};
const ::std::string iceC_Test_RemoteObjectAdapter_ops[] =
{
    "deactivate",
    "getTestIntf",
    "ice_id",
    "ice_ids",
    "ice_isA",
    "ice_ping"
};
const ::std::string iceC_Test_RemoteObjectAdapter_getTestIntf_name = "getTestIntf";
const ::std::string iceC_Test_RemoteObjectAdapter_deactivate_name = "deactivate";

const ::std::string iceC_Test_RemoteCommunicator_ids[2] =
{
    "::Ice::Object",
    "::Test::RemoteCommunicator"
};
const ::std::string iceC_Test_RemoteCommunicator_ops[] =
{
    "createObjectAdapter",
    "deactivateObjectAdapter",
    "ice_id",
    "ice_ids",
    "ice_isA",
    "ice_ping",
    "shutdown"
};
const ::std::string iceC_Test_RemoteCommunicator_createObjectAdapter_name = "createObjectAdapter";
const ::std::string iceC_Test_RemoteCommunicator_deactivateObjectAdapter_name = "deactivateObjectAdapter";
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
Test::TestIntf::_iceD_getAdapterName(::IceInternal::Incoming& inS, const ::Ice::Current& current)
{
    _iceCheckMode(::Ice::OperationMode::Normal, current.mode);
    inS.readEmptyParams();
    ::std::string ret = this->getAdapterName(current);
    auto ostr = inS.startWriteParams();
    ostr->writeAll(ret);
    inS.endWriteParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
Test::TestIntf::_iceDispatch(::IceInternal::Incoming& in, const ::Ice::Current& current)
{
    ::std::pair<const ::std::string*, const ::std::string*> r = ::std::equal_range(iceC_Test_TestIntf_ops, iceC_Test_TestIntf_ops + 5, current.operation);
    if(r.first == r.second)
    {
        throw ::Ice::OperationNotExistException(__FILE__, __LINE__, current.id, current.facet, current.operation);
    }

    switch(r.first - iceC_Test_TestIntf_ops)
    {
        case 0:
        {
            return _iceD_getAdapterName(in, current);
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
    ::std::pair<const ::std::string*, const ::std::string*> r = ::std::equal_range(iceC_Test_RemoteObjectAdapter_ops, iceC_Test_RemoteObjectAdapter_ops + 6, current.operation);
    if(r.first == r.second)
    {
        throw ::Ice::OperationNotExistException(__FILE__, __LINE__, current.id, current.facet, current.operation);
    }

    switch(r.first - iceC_Test_RemoteObjectAdapter_ops)
    {
        case 0:
        {
            return _iceD_deactivate(in, current);
        }
        case 1:
        {
            return _iceD_getTestIntf(in, current);
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
    ::std::string iceP_name;
    ::std::string iceP_endpoints;
    istr->readAll(iceP_name, iceP_endpoints);
    inS.endReadParams();
    ::std::shared_ptr<RemoteObjectAdapterPrx> ret = this->createObjectAdapter(::std::move(iceP_name), ::std::move(iceP_endpoints), current);
    auto ostr = inS.startWriteParams();
    ostr->writeAll(ret);
    inS.endWriteParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
Test::RemoteCommunicator::_iceD_deactivateObjectAdapter(::IceInternal::Incoming& inS, const ::Ice::Current& current)
{
    _iceCheckMode(::Ice::OperationMode::Normal, current.mode);
    auto istr = inS.startReadParams();
    ::std::shared_ptr<RemoteObjectAdapterPrx> iceP_adapter;
    istr->readAll(iceP_adapter);
    inS.endReadParams();
    this->deactivateObjectAdapter(::std::move(iceP_adapter), current);
    inS.writeEmptyParams();
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
    ::std::pair<const ::std::string*, const ::std::string*> r = ::std::equal_range(iceC_Test_RemoteCommunicator_ops, iceC_Test_RemoteCommunicator_ops + 7, current.operation);
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
            return _iceD_deactivateObjectAdapter(in, current);
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
Test::TestIntfPrx::_iceI_getAdapterName(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<::std::string>>& outAsync, const ::Ice::Context& context)
{
    _checkTwowayOnly(iceC_Test_TestIntf_getAdapterName_name);
    outAsync->invoke(iceC_Test_TestIntf_getAdapterName_name, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        nullptr,
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
Test::RemoteCommunicatorPrx::_iceI_createObjectAdapter(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<::std::shared_ptr<::Test::RemoteObjectAdapterPrx>>>& outAsync, const ::std::string& iceP_name, const ::std::string& iceP_endpoints, const ::Ice::Context& context)
{
    _checkTwowayOnly(iceC_Test_RemoteCommunicator_createObjectAdapter_name);
    outAsync->invoke(iceC_Test_RemoteCommunicator_createObjectAdapter_name, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        [&](::Ice::OutputStream* ostr)
        {
            ostr->writeAll(iceP_name, iceP_endpoints);
        },
        nullptr);
}
/// \endcond

/// \cond INTERNAL
void
Test::RemoteCommunicatorPrx::_iceI_deactivateObjectAdapter(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>& outAsync, const ::std::shared_ptr<RemoteObjectAdapterPrx>& iceP_adapter, const ::Ice::Context& context)
{
    outAsync->invoke(iceC_Test_RemoteCommunicator_deactivateObjectAdapter_name, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        [&](::Ice::OutputStream* ostr)
        {
            ostr->writeAll(iceP_adapter);
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

#else // C++98 mapping

namespace
{

const ::std::string iceC_Test_TestIntf_getAdapterName_name = "getAdapterName";

const ::std::string iceC_Test_RemoteObjectAdapter_getTestIntf_name = "getTestIntf";

const ::std::string iceC_Test_RemoteObjectAdapter_deactivate_name = "deactivate";

const ::std::string iceC_Test_RemoteCommunicator_createObjectAdapter_name = "createObjectAdapter";

const ::std::string iceC_Test_RemoteCommunicator_deactivateObjectAdapter_name = "deactivateObjectAdapter";

const ::std::string iceC_Test_RemoteCommunicator_shutdown_name = "shutdown";

}

/// \cond INTERNAL
::IceProxy::Ice::Object* ::IceProxy::Test::upCast(TestIntf* p) { return p; }

void
::IceProxy::Test::_readProxy(::Ice::InputStream* istr, ::IceInternal::ProxyHandle< TestIntf>& v)
{
    ::Ice::ObjectPrx proxy;
    istr->read(proxy);
    if(!proxy)
    {
        v = 0;
    }
    else
    {
        v = new TestIntf;
        v->_copyFrom(proxy);
    }
}
/// \endcond

::Ice::AsyncResultPtr
IceProxy::Test::TestIntf::_iceI_begin_getAdapterName(const ::Ice::Context& context, const ::IceInternal::CallbackBasePtr& del, const ::Ice::LocalObjectPtr& cookie, bool sync)
{
    _checkTwowayOnly(iceC_Test_TestIntf_getAdapterName_name, sync);
    ::IceInternal::OutgoingAsyncPtr result = new ::IceInternal::CallbackOutgoing(this, iceC_Test_TestIntf_getAdapterName_name, del, cookie, sync);
    try
    {
        result->prepare(iceC_Test_TestIntf_getAdapterName_name, ::Ice::Normal, context);
        result->writeEmptyParams();
        result->invoke(iceC_Test_TestIntf_getAdapterName_name);
    }
    catch(const ::Ice::Exception& ex)
    {
        result->abort(ex);
    }
    return result;
}

::std::string
IceProxy::Test::TestIntf::end_getAdapterName(const ::Ice::AsyncResultPtr& result)
{
    ::Ice::AsyncResult::_check(result, this, iceC_Test_TestIntf_getAdapterName_name);
    ::std::string ret;
    if(!result->_waitForResponse())
    {
        try
        {
            result->_throwUserException();
        }
        catch(const ::Ice::UserException& ex)
        {
            throw ::Ice::UnknownUserException(__FILE__, __LINE__, ex.ice_id());
        }
    }
    ::Ice::InputStream* istr = result->_startReadParams();
    istr->read(ret);
    result->_endReadParams();
    return ret;
}

/// \cond INTERNAL
::IceProxy::Ice::Object*
IceProxy::Test::TestIntf::_newInstance() const
{
    return new TestIntf;
}
/// \endcond

const ::std::string&
IceProxy::Test::TestIntf::ice_staticId()
{
    return ::Test::TestIntf::ice_staticId();
}

/// \cond INTERNAL
::IceProxy::Ice::Object* ::IceProxy::Test::upCast(RemoteObjectAdapter* p) { return p; }

void
::IceProxy::Test::_readProxy(::Ice::InputStream* istr, ::IceInternal::ProxyHandle< RemoteObjectAdapter>& v)
{
    ::Ice::ObjectPrx proxy;
    istr->read(proxy);
    if(!proxy)
    {
        v = 0;
    }
    else
    {
        v = new RemoteObjectAdapter;
        v->_copyFrom(proxy);
    }
}
/// \endcond

::Ice::AsyncResultPtr
IceProxy::Test::RemoteObjectAdapter::_iceI_begin_getTestIntf(const ::Ice::Context& context, const ::IceInternal::CallbackBasePtr& del, const ::Ice::LocalObjectPtr& cookie, bool sync)
{
    _checkTwowayOnly(iceC_Test_RemoteObjectAdapter_getTestIntf_name, sync);
    ::IceInternal::OutgoingAsyncPtr result = new ::IceInternal::CallbackOutgoing(this, iceC_Test_RemoteObjectAdapter_getTestIntf_name, del, cookie, sync);
    try
    {
        result->prepare(iceC_Test_RemoteObjectAdapter_getTestIntf_name, ::Ice::Normal, context);
        result->writeEmptyParams();
        result->invoke(iceC_Test_RemoteObjectAdapter_getTestIntf_name);
    }
    catch(const ::Ice::Exception& ex)
    {
        result->abort(ex);
    }
    return result;
}

::Test::TestIntfPrx
IceProxy::Test::RemoteObjectAdapter::end_getTestIntf(const ::Ice::AsyncResultPtr& result)
{
    ::Ice::AsyncResult::_check(result, this, iceC_Test_RemoteObjectAdapter_getTestIntf_name);
    ::Test::TestIntfPrx ret;
    if(!result->_waitForResponse())
    {
        try
        {
            result->_throwUserException();
        }
        catch(const ::Ice::UserException& ex)
        {
            throw ::Ice::UnknownUserException(__FILE__, __LINE__, ex.ice_id());
        }
    }
    ::Ice::InputStream* istr = result->_startReadParams();
    istr->read(ret);
    result->_endReadParams();
    return ret;
}

::Ice::AsyncResultPtr
IceProxy::Test::RemoteObjectAdapter::_iceI_begin_deactivate(const ::Ice::Context& context, const ::IceInternal::CallbackBasePtr& del, const ::Ice::LocalObjectPtr& cookie, bool sync)
{
    ::IceInternal::OutgoingAsyncPtr result = new ::IceInternal::CallbackOutgoing(this, iceC_Test_RemoteObjectAdapter_deactivate_name, del, cookie, sync);
    try
    {
        result->prepare(iceC_Test_RemoteObjectAdapter_deactivate_name, ::Ice::Normal, context);
        result->writeEmptyParams();
        result->invoke(iceC_Test_RemoteObjectAdapter_deactivate_name);
    }
    catch(const ::Ice::Exception& ex)
    {
        result->abort(ex);
    }
    return result;
}

void
IceProxy::Test::RemoteObjectAdapter::end_deactivate(const ::Ice::AsyncResultPtr& result)
{
    _end(result, iceC_Test_RemoteObjectAdapter_deactivate_name);
}

/// \cond INTERNAL
::IceProxy::Ice::Object*
IceProxy::Test::RemoteObjectAdapter::_newInstance() const
{
    return new RemoteObjectAdapter;
}
/// \endcond

const ::std::string&
IceProxy::Test::RemoteObjectAdapter::ice_staticId()
{
    return ::Test::RemoteObjectAdapter::ice_staticId();
}

/// \cond INTERNAL
::IceProxy::Ice::Object* ::IceProxy::Test::upCast(RemoteCommunicator* p) { return p; }

void
::IceProxy::Test::_readProxy(::Ice::InputStream* istr, ::IceInternal::ProxyHandle< RemoteCommunicator>& v)
{
    ::Ice::ObjectPrx proxy;
    istr->read(proxy);
    if(!proxy)
    {
        v = 0;
    }
    else
    {
        v = new RemoteCommunicator;
        v->_copyFrom(proxy);
    }
}
/// \endcond

::Ice::AsyncResultPtr
IceProxy::Test::RemoteCommunicator::_iceI_begin_createObjectAdapter(const ::std::string& iceP_name, const ::std::string& iceP_endpoints, const ::Ice::Context& context, const ::IceInternal::CallbackBasePtr& del, const ::Ice::LocalObjectPtr& cookie, bool sync)
{
    _checkTwowayOnly(iceC_Test_RemoteCommunicator_createObjectAdapter_name, sync);
    ::IceInternal::OutgoingAsyncPtr result = new ::IceInternal::CallbackOutgoing(this, iceC_Test_RemoteCommunicator_createObjectAdapter_name, del, cookie, sync);
    try
    {
        result->prepare(iceC_Test_RemoteCommunicator_createObjectAdapter_name, ::Ice::Normal, context);
        ::Ice::OutputStream* ostr = result->startWriteParams(::Ice::DefaultFormat);
        ostr->write(iceP_name);
        ostr->write(iceP_endpoints);
        result->endWriteParams();
        result->invoke(iceC_Test_RemoteCommunicator_createObjectAdapter_name);
    }
    catch(const ::Ice::Exception& ex)
    {
        result->abort(ex);
    }
    return result;
}

::Test::RemoteObjectAdapterPrx
IceProxy::Test::RemoteCommunicator::end_createObjectAdapter(const ::Ice::AsyncResultPtr& result)
{
    ::Ice::AsyncResult::_check(result, this, iceC_Test_RemoteCommunicator_createObjectAdapter_name);
    ::Test::RemoteObjectAdapterPrx ret;
    if(!result->_waitForResponse())
    {
        try
        {
            result->_throwUserException();
        }
        catch(const ::Ice::UserException& ex)
        {
            throw ::Ice::UnknownUserException(__FILE__, __LINE__, ex.ice_id());
        }
    }
    ::Ice::InputStream* istr = result->_startReadParams();
    istr->read(ret);
    result->_endReadParams();
    return ret;
}

::Ice::AsyncResultPtr
IceProxy::Test::RemoteCommunicator::_iceI_begin_deactivateObjectAdapter(const ::Test::RemoteObjectAdapterPrx& iceP_adapter, const ::Ice::Context& context, const ::IceInternal::CallbackBasePtr& del, const ::Ice::LocalObjectPtr& cookie, bool sync)
{
    ::IceInternal::OutgoingAsyncPtr result = new ::IceInternal::CallbackOutgoing(this, iceC_Test_RemoteCommunicator_deactivateObjectAdapter_name, del, cookie, sync);
    try
    {
        result->prepare(iceC_Test_RemoteCommunicator_deactivateObjectAdapter_name, ::Ice::Normal, context);
        ::Ice::OutputStream* ostr = result->startWriteParams(::Ice::DefaultFormat);
        ostr->write(iceP_adapter);
        result->endWriteParams();
        result->invoke(iceC_Test_RemoteCommunicator_deactivateObjectAdapter_name);
    }
    catch(const ::Ice::Exception& ex)
    {
        result->abort(ex);
    }
    return result;
}

void
IceProxy::Test::RemoteCommunicator::end_deactivateObjectAdapter(const ::Ice::AsyncResultPtr& result)
{
    _end(result, iceC_Test_RemoteCommunicator_deactivateObjectAdapter_name);
}

::Ice::AsyncResultPtr
IceProxy::Test::RemoteCommunicator::_iceI_begin_shutdown(const ::Ice::Context& context, const ::IceInternal::CallbackBasePtr& del, const ::Ice::LocalObjectPtr& cookie, bool sync)
{
    ::IceInternal::OutgoingAsyncPtr result = new ::IceInternal::CallbackOutgoing(this, iceC_Test_RemoteCommunicator_shutdown_name, del, cookie, sync);
    try
    {
        result->prepare(iceC_Test_RemoteCommunicator_shutdown_name, ::Ice::Normal, context);
        result->writeEmptyParams();
        result->invoke(iceC_Test_RemoteCommunicator_shutdown_name);
    }
    catch(const ::Ice::Exception& ex)
    {
        result->abort(ex);
    }
    return result;
}

void
IceProxy::Test::RemoteCommunicator::end_shutdown(const ::Ice::AsyncResultPtr& result)
{
    _end(result, iceC_Test_RemoteCommunicator_shutdown_name);
}

/// \cond INTERNAL
::IceProxy::Ice::Object*
IceProxy::Test::RemoteCommunicator::_newInstance() const
{
    return new RemoteCommunicator;
}
/// \endcond

const ::std::string&
IceProxy::Test::RemoteCommunicator::ice_staticId()
{
    return ::Test::RemoteCommunicator::ice_staticId();
}

Test::TestIntf::~TestIntf()
{
}

/// \cond INTERNAL
::Ice::Object* Test::upCast(TestIntf* p) { return p; }

/// \endcond

namespace
{
const ::std::string iceC_Test_TestIntf_ids[2] =
{
    "::Ice::Object",
    "::Test::TestIntf"
};

}

bool
Test::TestIntf::ice_isA(const ::std::string& s, const ::Ice::Current&) const
{
    return ::std::binary_search(iceC_Test_TestIntf_ids, iceC_Test_TestIntf_ids + 2, s);
}

::std::vector< ::std::string>
Test::TestIntf::ice_ids(const ::Ice::Current&) const
{
    return ::std::vector< ::std::string>(&iceC_Test_TestIntf_ids[0], &iceC_Test_TestIntf_ids[2]);
}

const ::std::string&
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
Test::TestIntf::_iceD_getAdapterName(::IceInternal::Incoming& inS, const ::Ice::Current& current)
{
    _iceCheckMode(::Ice::Normal, current.mode);
    inS.readEmptyParams();
    ::std::string ret = this->getAdapterName(current);
    ::Ice::OutputStream* ostr = inS.startWriteParams();
    ostr->write(ret);
    inS.endWriteParams();
    return true;
}
/// \endcond

namespace
{
const ::std::string iceC_Test_TestIntf_all[] =
{
    "getAdapterName",
    "ice_id",
    "ice_ids",
    "ice_isA",
    "ice_ping"
};

}

/// \cond INTERNAL
bool
Test::TestIntf::_iceDispatch(::IceInternal::Incoming& in, const ::Ice::Current& current)
{
    ::std::pair<const ::std::string*, const ::std::string*> r = ::std::equal_range(iceC_Test_TestIntf_all, iceC_Test_TestIntf_all + 5, current.operation);
    if(r.first == r.second)
    {
        throw ::Ice::OperationNotExistException(__FILE__, __LINE__, current.id, current.facet, current.operation);
    }

    switch(r.first - iceC_Test_TestIntf_all)
    {
        case 0:
        {
            return _iceD_getAdapterName(in, current);
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
        default:
        {
            assert(false);
            throw ::Ice::OperationNotExistException(__FILE__, __LINE__, current.id, current.facet, current.operation);
        }
    }
}
/// \endcond

/// \cond STREAM
void
Test::TestIntf::_iceWriteImpl(::Ice::OutputStream* ostr) const
{
    ostr->startSlice(ice_staticId(), -1, true);
    ::Ice::StreamWriter< TestIntf, ::Ice::OutputStream>::write(ostr, *this);
    ostr->endSlice();
}

void
Test::TestIntf::_iceReadImpl(::Ice::InputStream* istr)
{
    istr->startSlice();
    ::Ice::StreamReader< TestIntf, ::Ice::InputStream>::read(istr, *this);
    istr->endSlice();
}
/// \endcond

/// \cond INTERNAL
void
Test::_icePatchObjectPtr(TestIntfPtr& handle, const ::Ice::ObjectPtr& v)
{
    handle = TestIntfPtr::dynamicCast(v);
    if(v && !handle)
    {
        IceInternal::Ex::throwUOE(TestIntf::ice_staticId(), v);
    }
}
/// \endcond

Test::RemoteObjectAdapter::~RemoteObjectAdapter()
{
}

/// \cond INTERNAL
::Ice::Object* Test::upCast(RemoteObjectAdapter* p) { return p; }

/// \endcond

namespace
{
const ::std::string iceC_Test_RemoteObjectAdapter_ids[2] =
{
    "::Ice::Object",
    "::Test::RemoteObjectAdapter"
};

}

bool
Test::RemoteObjectAdapter::ice_isA(const ::std::string& s, const ::Ice::Current&) const
{
    return ::std::binary_search(iceC_Test_RemoteObjectAdapter_ids, iceC_Test_RemoteObjectAdapter_ids + 2, s);
}

::std::vector< ::std::string>
Test::RemoteObjectAdapter::ice_ids(const ::Ice::Current&) const
{
    return ::std::vector< ::std::string>(&iceC_Test_RemoteObjectAdapter_ids[0], &iceC_Test_RemoteObjectAdapter_ids[2]);
}

const ::std::string&
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
    _iceCheckMode(::Ice::Normal, current.mode);
    inS.readEmptyParams();
    TestIntfPrx ret = this->getTestIntf(current);
    ::Ice::OutputStream* ostr = inS.startWriteParams();
    ostr->write(ret);
    inS.endWriteParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
Test::RemoteObjectAdapter::_iceD_deactivate(::IceInternal::Incoming& inS, const ::Ice::Current& current)
{
    _iceCheckMode(::Ice::Normal, current.mode);
    inS.readEmptyParams();
    this->deactivate(current);
    inS.writeEmptyParams();
    return true;
}
/// \endcond

namespace
{
const ::std::string iceC_Test_RemoteObjectAdapter_all[] =
{
    "deactivate",
    "getTestIntf",
    "ice_id",
    "ice_ids",
    "ice_isA",
    "ice_ping"
};

}

/// \cond INTERNAL
bool
Test::RemoteObjectAdapter::_iceDispatch(::IceInternal::Incoming& in, const ::Ice::Current& current)
{
    ::std::pair<const ::std::string*, const ::std::string*> r = ::std::equal_range(iceC_Test_RemoteObjectAdapter_all, iceC_Test_RemoteObjectAdapter_all + 6, current.operation);
    if(r.first == r.second)
    {
        throw ::Ice::OperationNotExistException(__FILE__, __LINE__, current.id, current.facet, current.operation);
    }

    switch(r.first - iceC_Test_RemoteObjectAdapter_all)
    {
        case 0:
        {
            return _iceD_deactivate(in, current);
        }
        case 1:
        {
            return _iceD_getTestIntf(in, current);
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
        default:
        {
            assert(false);
            throw ::Ice::OperationNotExistException(__FILE__, __LINE__, current.id, current.facet, current.operation);
        }
    }
}
/// \endcond

/// \cond STREAM
void
Test::RemoteObjectAdapter::_iceWriteImpl(::Ice::OutputStream* ostr) const
{
    ostr->startSlice(ice_staticId(), -1, true);
    ::Ice::StreamWriter< RemoteObjectAdapter, ::Ice::OutputStream>::write(ostr, *this);
    ostr->endSlice();
}

void
Test::RemoteObjectAdapter::_iceReadImpl(::Ice::InputStream* istr)
{
    istr->startSlice();
    ::Ice::StreamReader< RemoteObjectAdapter, ::Ice::InputStream>::read(istr, *this);
    istr->endSlice();
}
/// \endcond

/// \cond INTERNAL
void
Test::_icePatchObjectPtr(RemoteObjectAdapterPtr& handle, const ::Ice::ObjectPtr& v)
{
    handle = RemoteObjectAdapterPtr::dynamicCast(v);
    if(v && !handle)
    {
        IceInternal::Ex::throwUOE(RemoteObjectAdapter::ice_staticId(), v);
    }
}
/// \endcond

Test::RemoteCommunicator::~RemoteCommunicator()
{
}

/// \cond INTERNAL
::Ice::Object* Test::upCast(RemoteCommunicator* p) { return p; }

/// \endcond

namespace
{
const ::std::string iceC_Test_RemoteCommunicator_ids[2] =
{
    "::Ice::Object",
    "::Test::RemoteCommunicator"
};

}

bool
Test::RemoteCommunicator::ice_isA(const ::std::string& s, const ::Ice::Current&) const
{
    return ::std::binary_search(iceC_Test_RemoteCommunicator_ids, iceC_Test_RemoteCommunicator_ids + 2, s);
}

::std::vector< ::std::string>
Test::RemoteCommunicator::ice_ids(const ::Ice::Current&) const
{
    return ::std::vector< ::std::string>(&iceC_Test_RemoteCommunicator_ids[0], &iceC_Test_RemoteCommunicator_ids[2]);
}

const ::std::string&
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
    _iceCheckMode(::Ice::Normal, current.mode);
    ::Ice::InputStream* istr = inS.startReadParams();
    ::std::string iceP_name;
    ::std::string iceP_endpoints;
    istr->read(iceP_name);
    istr->read(iceP_endpoints);
    inS.endReadParams();
    RemoteObjectAdapterPrx ret = this->createObjectAdapter(iceP_name, iceP_endpoints, current);
    ::Ice::OutputStream* ostr = inS.startWriteParams();
    ostr->write(ret);
    inS.endWriteParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
Test::RemoteCommunicator::_iceD_deactivateObjectAdapter(::IceInternal::Incoming& inS, const ::Ice::Current& current)
{
    _iceCheckMode(::Ice::Normal, current.mode);
    ::Ice::InputStream* istr = inS.startReadParams();
    RemoteObjectAdapterPrx iceP_adapter;
    istr->read(iceP_adapter);
    inS.endReadParams();
    this->deactivateObjectAdapter(iceP_adapter, current);
    inS.writeEmptyParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
Test::RemoteCommunicator::_iceD_shutdown(::IceInternal::Incoming& inS, const ::Ice::Current& current)
{
    _iceCheckMode(::Ice::Normal, current.mode);
    inS.readEmptyParams();
    this->shutdown(current);
    inS.writeEmptyParams();
    return true;
}
/// \endcond

namespace
{
const ::std::string iceC_Test_RemoteCommunicator_all[] =
{
    "createObjectAdapter",
    "deactivateObjectAdapter",
    "ice_id",
    "ice_ids",
    "ice_isA",
    "ice_ping",
    "shutdown"
};

}

/// \cond INTERNAL
bool
Test::RemoteCommunicator::_iceDispatch(::IceInternal::Incoming& in, const ::Ice::Current& current)
{
    ::std::pair<const ::std::string*, const ::std::string*> r = ::std::equal_range(iceC_Test_RemoteCommunicator_all, iceC_Test_RemoteCommunicator_all + 7, current.operation);
    if(r.first == r.second)
    {
        throw ::Ice::OperationNotExistException(__FILE__, __LINE__, current.id, current.facet, current.operation);
    }

    switch(r.first - iceC_Test_RemoteCommunicator_all)
    {
        case 0:
        {
            return _iceD_createObjectAdapter(in, current);
        }
        case 1:
        {
            return _iceD_deactivateObjectAdapter(in, current);
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

/// \cond STREAM
void
Test::RemoteCommunicator::_iceWriteImpl(::Ice::OutputStream* ostr) const
{
    ostr->startSlice(ice_staticId(), -1, true);
    ::Ice::StreamWriter< RemoteCommunicator, ::Ice::OutputStream>::write(ostr, *this);
    ostr->endSlice();
}

void
Test::RemoteCommunicator::_iceReadImpl(::Ice::InputStream* istr)
{
    istr->startSlice();
    ::Ice::StreamReader< RemoteCommunicator, ::Ice::InputStream>::read(istr, *this);
    istr->endSlice();
}
/// \endcond

/// \cond INTERNAL
void
Test::_icePatchObjectPtr(RemoteCommunicatorPtr& handle, const ::Ice::ObjectPtr& v)
{
    handle = RemoteCommunicatorPtr::dynamicCast(v);
    if(v && !handle)
    {
        IceInternal::Ex::throwUOE(RemoteCommunicator::ice_staticId(), v);
    }
}
/// \endcond

namespace Ice
{
}

#endif
