//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.7.10
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

const ::std::string iceC_Test_Echo_ids[2] =
{
    "::Ice::Object",
    "::Test::Echo"
};
const ::std::string iceC_Test_Echo_ops[] =
{
    "flushBatch",
    "ice_id",
    "ice_ids",
    "ice_isA",
    "ice_ping",
    "shutdown",
    "startBatch"
};
const ::std::string iceC_Test_Echo_startBatch_name = "startBatch";
const ::std::string iceC_Test_Echo_flushBatch_name = "flushBatch";
const ::std::string iceC_Test_Echo_shutdown_name = "shutdown";

}

bool
Test::Echo::ice_isA(::std::string s, const ::Ice::Current&) const
{
    return ::std::binary_search(iceC_Test_Echo_ids, iceC_Test_Echo_ids + 2, s);
}

::std::vector<::std::string>
Test::Echo::ice_ids(const ::Ice::Current&) const
{
    return ::std::vector<::std::string>(&iceC_Test_Echo_ids[0], &iceC_Test_Echo_ids[2]);
}

::std::string
Test::Echo::ice_id(const ::Ice::Current&) const
{
    return ice_staticId();
}

const ::std::string&
Test::Echo::ice_staticId()
{
    static const ::std::string typeId = "::Test::Echo";
    return typeId;
}

/// \cond INTERNAL
bool
Test::Echo::_iceD_startBatch(::IceInternal::Incoming& inS, const ::Ice::Current& current)
{
    _iceCheckMode(::Ice::OperationMode::Normal, current.mode);
    inS.readEmptyParams();
    this->startBatch(current);
    inS.writeEmptyParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
Test::Echo::_iceD_flushBatch(::IceInternal::Incoming& inS, const ::Ice::Current& current)
{
    _iceCheckMode(::Ice::OperationMode::Normal, current.mode);
    inS.readEmptyParams();
    this->flushBatch(current);
    inS.writeEmptyParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
Test::Echo::_iceD_shutdown(::IceInternal::Incoming& inS, const ::Ice::Current& current)
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
Test::Echo::_iceDispatch(::IceInternal::Incoming& in, const ::Ice::Current& current)
{
    ::std::pair<const ::std::string*, const ::std::string*> r = ::std::equal_range(iceC_Test_Echo_ops, iceC_Test_Echo_ops + 7, current.operation);
    if(r.first == r.second)
    {
        throw ::Ice::OperationNotExistException(__FILE__, __LINE__, current.id, current.facet, current.operation);
    }

    switch(r.first - iceC_Test_Echo_ops)
    {
        case 0:
        {
            return _iceD_flushBatch(in, current);
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
        case 6:
        {
            return _iceD_startBatch(in, current);
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
Test::EchoPrx::_iceI_startBatch(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>& outAsync, const ::Ice::Context& context)
{
    outAsync->invoke(iceC_Test_Echo_startBatch_name, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        nullptr,
        nullptr);
}
/// \endcond

/// \cond INTERNAL
void
Test::EchoPrx::_iceI_flushBatch(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>& outAsync, const ::Ice::Context& context)
{
    outAsync->invoke(iceC_Test_Echo_flushBatch_name, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        nullptr,
        nullptr);
}
/// \endcond

/// \cond INTERNAL
void
Test::EchoPrx::_iceI_shutdown(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>& outAsync, const ::Ice::Context& context)
{
    outAsync->invoke(iceC_Test_Echo_shutdown_name, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        nullptr,
        nullptr);
}
/// \endcond

/// \cond INTERNAL
::std::shared_ptr<::Ice::ObjectPrx>
Test::EchoPrx::_newInstance() const
{
    return ::IceInternal::createProxy<EchoPrx>();
}
/// \endcond

const ::std::string&
Test::EchoPrx::ice_staticId()
{
    return Echo::ice_staticId();
}

#else // C++98 mapping

namespace
{

const ::std::string iceC_Test_Echo_startBatch_name = "startBatch";

const ::std::string iceC_Test_Echo_flushBatch_name = "flushBatch";

const ::std::string iceC_Test_Echo_shutdown_name = "shutdown";

}

/// \cond INTERNAL
::IceProxy::Ice::Object* ::IceProxy::Test::upCast(Echo* p) { return p; }

void
::IceProxy::Test::_readProxy(::Ice::InputStream* istr, ::IceInternal::ProxyHandle< Echo>& v)
{
    ::Ice::ObjectPrx proxy;
    istr->read(proxy);
    if(!proxy)
    {
        v = 0;
    }
    else
    {
        v = new Echo;
        v->_copyFrom(proxy);
    }
}
/// \endcond

::Ice::AsyncResultPtr
IceProxy::Test::Echo::_iceI_begin_startBatch(const ::Ice::Context& context, const ::IceInternal::CallbackBasePtr& del, const ::Ice::LocalObjectPtr& cookie, bool sync)
{
    ::IceInternal::OutgoingAsyncPtr result = new ::IceInternal::CallbackOutgoing(this, iceC_Test_Echo_startBatch_name, del, cookie, sync);
    try
    {
        result->prepare(iceC_Test_Echo_startBatch_name, ::Ice::Normal, context);
        result->writeEmptyParams();
        result->invoke(iceC_Test_Echo_startBatch_name);
    }
    catch(const ::Ice::Exception& ex)
    {
        result->abort(ex);
    }
    return result;
}

void
IceProxy::Test::Echo::end_startBatch(const ::Ice::AsyncResultPtr& result)
{
    _end(result, iceC_Test_Echo_startBatch_name);
}

::Ice::AsyncResultPtr
IceProxy::Test::Echo::_iceI_begin_flushBatch(const ::Ice::Context& context, const ::IceInternal::CallbackBasePtr& del, const ::Ice::LocalObjectPtr& cookie, bool sync)
{
    ::IceInternal::OutgoingAsyncPtr result = new ::IceInternal::CallbackOutgoing(this, iceC_Test_Echo_flushBatch_name, del, cookie, sync);
    try
    {
        result->prepare(iceC_Test_Echo_flushBatch_name, ::Ice::Normal, context);
        result->writeEmptyParams();
        result->invoke(iceC_Test_Echo_flushBatch_name);
    }
    catch(const ::Ice::Exception& ex)
    {
        result->abort(ex);
    }
    return result;
}

void
IceProxy::Test::Echo::end_flushBatch(const ::Ice::AsyncResultPtr& result)
{
    _end(result, iceC_Test_Echo_flushBatch_name);
}

::Ice::AsyncResultPtr
IceProxy::Test::Echo::_iceI_begin_shutdown(const ::Ice::Context& context, const ::IceInternal::CallbackBasePtr& del, const ::Ice::LocalObjectPtr& cookie, bool sync)
{
    ::IceInternal::OutgoingAsyncPtr result = new ::IceInternal::CallbackOutgoing(this, iceC_Test_Echo_shutdown_name, del, cookie, sync);
    try
    {
        result->prepare(iceC_Test_Echo_shutdown_name, ::Ice::Normal, context);
        result->writeEmptyParams();
        result->invoke(iceC_Test_Echo_shutdown_name);
    }
    catch(const ::Ice::Exception& ex)
    {
        result->abort(ex);
    }
    return result;
}

void
IceProxy::Test::Echo::end_shutdown(const ::Ice::AsyncResultPtr& result)
{
    _end(result, iceC_Test_Echo_shutdown_name);
}

/// \cond INTERNAL
::IceProxy::Ice::Object*
IceProxy::Test::Echo::_newInstance() const
{
    return new Echo;
}
/// \endcond

const ::std::string&
IceProxy::Test::Echo::ice_staticId()
{
    return ::Test::Echo::ice_staticId();
}

Test::Echo::~Echo()
{
}

/// \cond INTERNAL
::Ice::Object* Test::upCast(Echo* p) { return p; }

/// \endcond

namespace
{
const ::std::string iceC_Test_Echo_ids[2] =
{
    "::Ice::Object",
    "::Test::Echo"
};

}

bool
Test::Echo::ice_isA(const ::std::string& s, const ::Ice::Current&) const
{
    return ::std::binary_search(iceC_Test_Echo_ids, iceC_Test_Echo_ids + 2, s);
}

::std::vector< ::std::string>
Test::Echo::ice_ids(const ::Ice::Current&) const
{
    return ::std::vector< ::std::string>(&iceC_Test_Echo_ids[0], &iceC_Test_Echo_ids[2]);
}

const ::std::string&
Test::Echo::ice_id(const ::Ice::Current&) const
{
    return ice_staticId();
}

const ::std::string&
Test::Echo::ice_staticId()
{
    static const ::std::string typeId = "::Test::Echo";
    return typeId;
}

/// \cond INTERNAL
bool
Test::Echo::_iceD_startBatch(::IceInternal::Incoming& inS, const ::Ice::Current& current)
{
    _iceCheckMode(::Ice::Normal, current.mode);
    inS.readEmptyParams();
    this->startBatch(current);
    inS.writeEmptyParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
Test::Echo::_iceD_flushBatch(::IceInternal::Incoming& inS, const ::Ice::Current& current)
{
    _iceCheckMode(::Ice::Normal, current.mode);
    inS.readEmptyParams();
    this->flushBatch(current);
    inS.writeEmptyParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
Test::Echo::_iceD_shutdown(::IceInternal::Incoming& inS, const ::Ice::Current& current)
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
const ::std::string iceC_Test_Echo_all[] =
{
    "flushBatch",
    "ice_id",
    "ice_ids",
    "ice_isA",
    "ice_ping",
    "shutdown",
    "startBatch"
};

}

/// \cond INTERNAL
bool
Test::Echo::_iceDispatch(::IceInternal::Incoming& in, const ::Ice::Current& current)
{
    ::std::pair<const ::std::string*, const ::std::string*> r = ::std::equal_range(iceC_Test_Echo_all, iceC_Test_Echo_all + 7, current.operation);
    if(r.first == r.second)
    {
        throw ::Ice::OperationNotExistException(__FILE__, __LINE__, current.id, current.facet, current.operation);
    }

    switch(r.first - iceC_Test_Echo_all)
    {
        case 0:
        {
            return _iceD_flushBatch(in, current);
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
        case 6:
        {
            return _iceD_startBatch(in, current);
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
Test::Echo::_iceWriteImpl(::Ice::OutputStream* ostr) const
{
    ostr->startSlice(ice_staticId(), -1, true);
    ::Ice::StreamWriter< Echo, ::Ice::OutputStream>::write(ostr, *this);
    ostr->endSlice();
}

void
Test::Echo::_iceReadImpl(::Ice::InputStream* istr)
{
    istr->startSlice();
    ::Ice::StreamReader< Echo, ::Ice::InputStream>::read(istr, *this);
    istr->endSlice();
}
/// \endcond

/// \cond INTERNAL
void
Test::_icePatchObjectPtr(EchoPtr& handle, const ::Ice::ObjectPtr& v)
{
    handle = EchoPtr::dynamicCast(v);
    if(v && !handle)
    {
        IceInternal::Ex::throwUOE(Echo::ice_staticId(), v);
    }
}
/// \endcond

namespace Ice
{
}

#endif
