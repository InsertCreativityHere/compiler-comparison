//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.7.10
//
// <auto-generated>
//
// Generated from file `File2.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

#define ICE_BUILDING_GENERATED_CODE
#include <File2.h>
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

const ::std::string iceC_Test_Interface2_ids[2] =
{
    "::Ice::Object",
    "::Test::Interface2"
};
const ::std::string iceC_Test_Interface2_ops[] =
{
    "ice_id",
    "ice_ids",
    "ice_isA",
    "ice_ping",
    "method"
};
const ::std::string iceC_Test_Interface2_method_name = "method";

}

bool
Test::Interface2::ice_isA(::std::string s, const ::Ice::Current&) const
{
    return ::std::binary_search(iceC_Test_Interface2_ids, iceC_Test_Interface2_ids + 2, s);
}

::std::vector<::std::string>
Test::Interface2::ice_ids(const ::Ice::Current&) const
{
    return ::std::vector<::std::string>(&iceC_Test_Interface2_ids[0], &iceC_Test_Interface2_ids[2]);
}

::std::string
Test::Interface2::ice_id(const ::Ice::Current&) const
{
    return ice_staticId();
}

const ::std::string&
Test::Interface2::ice_staticId()
{
    static const ::std::string typeId = "::Test::Interface2";
    return typeId;
}

/// \cond INTERNAL
bool
Test::Interface2::_iceD_method(::IceInternal::Incoming& inS, const ::Ice::Current& current)
{
    _iceCheckMode(::Ice::OperationMode::Normal, current.mode);
    inS.readEmptyParams();
    this->method(current);
    inS.writeEmptyParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
Test::Interface2::_iceDispatch(::IceInternal::Incoming& in, const ::Ice::Current& current)
{
    ::std::pair<const ::std::string*, const ::std::string*> r = ::std::equal_range(iceC_Test_Interface2_ops, iceC_Test_Interface2_ops + 5, current.operation);
    if(r.first == r.second)
    {
        throw ::Ice::OperationNotExistException(__FILE__, __LINE__, current.id, current.facet, current.operation);
    }

    switch(r.first - iceC_Test_Interface2_ops)
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
            return _iceD_method(in, current);
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
Test::Interface2Prx::_iceI_method(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>& outAsync, const ::Ice::Context& context)
{
    outAsync->invoke(iceC_Test_Interface2_method_name, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        nullptr,
        nullptr);
}
/// \endcond

/// \cond INTERNAL
::std::shared_ptr<::Ice::ObjectPrx>
Test::Interface2Prx::_newInstance() const
{
    return ::IceInternal::createProxy<Interface2Prx>();
}
/// \endcond

const ::std::string&
Test::Interface2Prx::ice_staticId()
{
    return Interface2::ice_staticId();
}

#else // C++98 mapping

namespace
{

const ::std::string iceC_Test_Interface2_method_name = "method";

}

/// \cond INTERNAL
::IceProxy::Ice::Object* ::IceProxy::Test::upCast(Interface2* p) { return p; }

void
::IceProxy::Test::_readProxy(::Ice::InputStream* istr, ::IceInternal::ProxyHandle< Interface2>& v)
{
    ::Ice::ObjectPrx proxy;
    istr->read(proxy);
    if(!proxy)
    {
        v = 0;
    }
    else
    {
        v = new Interface2;
        v->_copyFrom(proxy);
    }
}
/// \endcond

::Ice::AsyncResultPtr
IceProxy::Test::Interface2::_iceI_begin_method(const ::Ice::Context& context, const ::IceInternal::CallbackBasePtr& del, const ::Ice::LocalObjectPtr& cookie, bool sync)
{
    ::IceInternal::OutgoingAsyncPtr result = new ::IceInternal::CallbackOutgoing(this, iceC_Test_Interface2_method_name, del, cookie, sync);
    try
    {
        result->prepare(iceC_Test_Interface2_method_name, ::Ice::Normal, context);
        result->writeEmptyParams();
        result->invoke(iceC_Test_Interface2_method_name);
    }
    catch(const ::Ice::Exception& ex)
    {
        result->abort(ex);
    }
    return result;
}

void
IceProxy::Test::Interface2::end_method(const ::Ice::AsyncResultPtr& result)
{
    _end(result, iceC_Test_Interface2_method_name);
}

/// \cond INTERNAL
::IceProxy::Ice::Object*
IceProxy::Test::Interface2::_newInstance() const
{
    return new Interface2;
}
/// \endcond

const ::std::string&
IceProxy::Test::Interface2::ice_staticId()
{
    return ::Test::Interface2::ice_staticId();
}

Test::Interface2::~Interface2()
{
}

/// \cond INTERNAL
::Ice::Object* Test::upCast(Interface2* p) { return p; }

/// \endcond

namespace
{
const ::std::string iceC_Test_Interface2_ids[2] =
{
    "::Ice::Object",
    "::Test::Interface2"
};

}

bool
Test::Interface2::ice_isA(const ::std::string& s, const ::Ice::Current&) const
{
    return ::std::binary_search(iceC_Test_Interface2_ids, iceC_Test_Interface2_ids + 2, s);
}

::std::vector< ::std::string>
Test::Interface2::ice_ids(const ::Ice::Current&) const
{
    return ::std::vector< ::std::string>(&iceC_Test_Interface2_ids[0], &iceC_Test_Interface2_ids[2]);
}

const ::std::string&
Test::Interface2::ice_id(const ::Ice::Current&) const
{
    return ice_staticId();
}

const ::std::string&
Test::Interface2::ice_staticId()
{
    static const ::std::string typeId = "::Test::Interface2";
    return typeId;
}

/// \cond INTERNAL
bool
Test::Interface2::_iceD_method(::IceInternal::Incoming& inS, const ::Ice::Current& current)
{
    _iceCheckMode(::Ice::Normal, current.mode);
    inS.readEmptyParams();
    this->method(current);
    inS.writeEmptyParams();
    return true;
}
/// \endcond

namespace
{
const ::std::string iceC_Test_Interface2_all[] =
{
    "ice_id",
    "ice_ids",
    "ice_isA",
    "ice_ping",
    "method"
};

}

/// \cond INTERNAL
bool
Test::Interface2::_iceDispatch(::IceInternal::Incoming& in, const ::Ice::Current& current)
{
    ::std::pair<const ::std::string*, const ::std::string*> r = ::std::equal_range(iceC_Test_Interface2_all, iceC_Test_Interface2_all + 5, current.operation);
    if(r.first == r.second)
    {
        throw ::Ice::OperationNotExistException(__FILE__, __LINE__, current.id, current.facet, current.operation);
    }

    switch(r.first - iceC_Test_Interface2_all)
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
            return _iceD_method(in, current);
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
Test::Interface2::_iceWriteImpl(::Ice::OutputStream* ostr) const
{
    ostr->startSlice(ice_staticId(), -1, true);
    ::Ice::StreamWriter< Interface2, ::Ice::OutputStream>::write(ostr, *this);
    ostr->endSlice();
}

void
Test::Interface2::_iceReadImpl(::Ice::InputStream* istr)
{
    istr->startSlice();
    ::Ice::StreamReader< Interface2, ::Ice::InputStream>::read(istr, *this);
    istr->endSlice();
}
/// \endcond

/// \cond INTERNAL
void
Test::_icePatchObjectPtr(Interface2Ptr& handle, const ::Ice::ObjectPtr& v)
{
    handle = Interface2Ptr::dynamicCast(v);
    if(v && !handle)
    {
        IceInternal::Ex::throwUOE(Interface2::ice_staticId(), v);
    }
}
/// \endcond

namespace Ice
{
}

#endif
