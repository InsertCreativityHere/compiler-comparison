//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.7.9
//
// <auto-generated>
//
// Generated from file `Test.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

#ifndef LIBRARY_TEST_API_EXPORTS
#   define LIBRARY_TEST_API_EXPORTS
#endif
#include <Test.h>
#include <IceUtil/PushDisableWarnings.h>
#include <Ice/LocalException.h>
#include <Ice/ValueFactory.h>
#include <Ice/OutgoingAsync.h>
#include <Ice/InputStream.h>
#include <Ice/OutputStream.h>
#include <Ice/LocalException.h>
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
#   if ICE_INT_VERSION % 100 < 9
#       error Ice patch level mismatch!
#   endif
#endif

#ifdef ICE_CPP11_MAPPING // C++11 mapping

namespace
{

const ::IceInternal::DefaultUserExceptionFactoryInit<::Test::UserError> iceC_Test_UserError_init("::Test::UserError");

const ::std::string iceC_Test_MyInterface_ids[2] =
{
    "::Ice::Object",
    "::Test::MyInterface"
};
const ::std::string iceC_Test_MyInterface_ops[] =
{
    "ice_id",
    "ice_ids",
    "ice_isA",
    "ice_ping",
    "op"
};
const ::std::string iceC_Test_MyInterface_op_name = "op";

}

Test::UserError::~UserError()
{
}

const ::std::string&
Test::UserError::ice_staticId()
{
    static const ::std::string typeId = "::Test::UserError";
    return typeId;
}

bool
Test::MyInterface::ice_isA(::std::string s, const ::Ice::Current&) const
{
    return ::std::binary_search(iceC_Test_MyInterface_ids, iceC_Test_MyInterface_ids + 2, s);
}

::std::vector<::std::string>
Test::MyInterface::ice_ids(const ::Ice::Current&) const
{
    return ::std::vector<::std::string>(&iceC_Test_MyInterface_ids[0], &iceC_Test_MyInterface_ids[2]);
}

::std::string
Test::MyInterface::ice_id(const ::Ice::Current&) const
{
    return ice_staticId();
}

const ::std::string&
Test::MyInterface::ice_staticId()
{
    static const ::std::string typeId = "::Test::MyInterface";
    return typeId;
}

/// \cond INTERNAL
bool
Test::MyInterface::_iceD_op(::IceInternal::Incoming& inS, const ::Ice::Current& current)
{
    _iceCheckMode(::Ice::OperationMode::Normal, current.mode);
    auto istr = inS.startReadParams();
    bool iceP_throwIt;
    istr->readAll(iceP_throwIt);
    inS.endReadParams();
    this->op(iceP_throwIt, current);
    inS.writeEmptyParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
Test::MyInterface::_iceDispatch(::IceInternal::Incoming& in, const ::Ice::Current& current)
{
    ::std::pair<const ::std::string*, const ::std::string*> r = ::std::equal_range(iceC_Test_MyInterface_ops, iceC_Test_MyInterface_ops + 5, current.operation);
    if(r.first == r.second)
    {
        throw ::Ice::OperationNotExistException(__FILE__, __LINE__, current.id, current.facet, current.operation);
    }

    switch(r.first - iceC_Test_MyInterface_ops)
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
Test::MyInterfacePrx::_iceI_op(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>& outAsync, bool iceP_throwIt, const ::Ice::Context& context)
{
    _checkTwowayOnly(iceC_Test_MyInterface_op_name);
    outAsync->invoke(iceC_Test_MyInterface_op_name, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        [&](::Ice::OutputStream* ostr)
        {
            ostr->writeAll(iceP_throwIt);
        },
        [](const ::Ice::UserException& ex)
        {
            try
            {
                ex.ice_throw();
            }
            catch(const UserError&)
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
::std::shared_ptr<::Ice::ObjectPrx>
Test::MyInterfacePrx::_newInstance() const
{
    return ::IceInternal::createProxy<MyInterfacePrx>();
}
/// \endcond

const ::std::string&
Test::MyInterfacePrx::ice_staticId()
{
    return MyInterface::ice_staticId();
}

#else // C++98 mapping

namespace
{

const ::std::string iceC_Test_MyInterface_op_name = "op";

}

namespace
{

const ::IceInternal::DefaultUserExceptionFactoryInit< ::Test::UserError> iceC_Test_UserError_init("::Test::UserError");

}

Test::UserError::UserError(const ::std::string& message) :
    ::Ice::UserException(),
    message(message)
{
}

#ifdef ICE_CPP11_COMPILER
Test::UserError::~UserError()
{
}
#else
Test::UserError::~UserError() throw()
{
}
#endif

::std::string
Test::UserError::ice_id() const
{
    return "::Test::UserError";
}

Test::UserError*
Test::UserError::ice_clone() const
{
    return new UserError(*this);
}

void
Test::UserError::ice_throw() const
{
    throw *this;
}

/// \cond STREAM
void
Test::UserError::_writeImpl(::Ice::OutputStream* ostr) const
{
    ostr->startSlice("::Test::UserError", -1, true);
    ::Ice::StreamWriter< UserError, ::Ice::OutputStream>::write(ostr, *this);
    ostr->endSlice();
}

void
Test::UserError::_readImpl(::Ice::InputStream* istr)
{
    istr->startSlice();
    ::Ice::StreamReader< UserError, ::Ice::InputStream>::read(istr, *this);
    istr->endSlice();
}
/// \endcond

/// \cond INTERNAL
LIBRARY_TEST_API ::IceProxy::Ice::Object* ::IceProxy::Test::upCast(MyInterface* p) { return p; }

void
::IceProxy::Test::_readProxy(::Ice::InputStream* istr, ::IceInternal::ProxyHandle< MyInterface>& v)
{
    ::Ice::ObjectPrx proxy;
    istr->read(proxy);
    if(!proxy)
    {
        v = 0;
    }
    else
    {
        v = new MyInterface;
        v->_copyFrom(proxy);
    }
}
/// \endcond

::Ice::AsyncResultPtr
IceProxy::Test::MyInterface::_iceI_begin_op(bool iceP_throwIt, const ::Ice::Context& context, const ::IceInternal::CallbackBasePtr& del, const ::Ice::LocalObjectPtr& cookie, bool sync)
{
    _checkTwowayOnly(iceC_Test_MyInterface_op_name, sync);
    ::IceInternal::OutgoingAsyncPtr result = new ::IceInternal::CallbackOutgoing(this, iceC_Test_MyInterface_op_name, del, cookie, sync);
    try
    {
        result->prepare(iceC_Test_MyInterface_op_name, ::Ice::Normal, context);
        ::Ice::OutputStream* ostr = result->startWriteParams(::Ice::DefaultFormat);
        ostr->write(iceP_throwIt);
        result->endWriteParams();
        result->invoke(iceC_Test_MyInterface_op_name);
    }
    catch(const ::Ice::Exception& ex)
    {
        result->abort(ex);
    }
    return result;
}

void
IceProxy::Test::MyInterface::end_op(const ::Ice::AsyncResultPtr& result)
{
    ::Ice::AsyncResult::_check(result, this, iceC_Test_MyInterface_op_name);
    if(!result->_waitForResponse())
    {
        try
        {
            result->_throwUserException();
        }
        catch(const ::Test::UserError&)
        {
            throw;
        }
        catch(const ::Ice::UserException& ex)
        {
            throw ::Ice::UnknownUserException(__FILE__, __LINE__, ex.ice_id());
        }
    }
    result->_readEmptyParams();
}

/// \cond INTERNAL
::IceProxy::Ice::Object*
IceProxy::Test::MyInterface::_newInstance() const
{
    return new MyInterface;
}
/// \endcond

const ::std::string&
IceProxy::Test::MyInterface::ice_staticId()
{
    return ::Test::MyInterface::ice_staticId();
}

Test::MyInterface::~MyInterface()
{
}

/// \cond INTERNAL
LIBRARY_TEST_API ::Ice::Object* Test::upCast(MyInterface* p) { return p; }

/// \endcond

namespace
{
const ::std::string iceC_Test_MyInterface_ids[2] =
{
    "::Ice::Object",
    "::Test::MyInterface"
};

}

bool
Test::MyInterface::ice_isA(const ::std::string& s, const ::Ice::Current&) const
{
    return ::std::binary_search(iceC_Test_MyInterface_ids, iceC_Test_MyInterface_ids + 2, s);
}

::std::vector< ::std::string>
Test::MyInterface::ice_ids(const ::Ice::Current&) const
{
    return ::std::vector< ::std::string>(&iceC_Test_MyInterface_ids[0], &iceC_Test_MyInterface_ids[2]);
}

const ::std::string&
Test::MyInterface::ice_id(const ::Ice::Current&) const
{
    return ice_staticId();
}

const ::std::string&
Test::MyInterface::ice_staticId()
{
#ifdef ICE_HAS_THREAD_SAFE_LOCAL_STATIC
    static const ::std::string typeId = "::Test::MyInterface";
    return typeId;
#else
    return iceC_Test_MyInterface_ids[1];
#endif
}

/// \cond INTERNAL
bool
Test::MyInterface::_iceD_op(::IceInternal::Incoming& inS, const ::Ice::Current& current)
{
    _iceCheckMode(::Ice::Normal, current.mode);
    ::Ice::InputStream* istr = inS.startReadParams();
    bool iceP_throwIt;
    istr->read(iceP_throwIt);
    inS.endReadParams();
    this->op(iceP_throwIt, current);
    inS.writeEmptyParams();
    return true;
}
/// \endcond

namespace
{
const ::std::string iceC_Test_MyInterface_all[] =
{
    "ice_id",
    "ice_ids",
    "ice_isA",
    "ice_ping",
    "op"
};

}

/// \cond INTERNAL
bool
Test::MyInterface::_iceDispatch(::IceInternal::Incoming& in, const ::Ice::Current& current)
{
    ::std::pair<const ::std::string*, const ::std::string*> r = ::std::equal_range(iceC_Test_MyInterface_all, iceC_Test_MyInterface_all + 5, current.operation);
    if(r.first == r.second)
    {
        throw ::Ice::OperationNotExistException(__FILE__, __LINE__, current.id, current.facet, current.operation);
    }

    switch(r.first - iceC_Test_MyInterface_all)
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

/// \cond STREAM
void
Test::MyInterface::_iceWriteImpl(::Ice::OutputStream* ostr) const
{
    ostr->startSlice(ice_staticId(), -1, true);
    ::Ice::StreamWriter< MyInterface, ::Ice::OutputStream>::write(ostr, *this);
    ostr->endSlice();
}

void
Test::MyInterface::_iceReadImpl(::Ice::InputStream* istr)
{
    istr->startSlice();
    ::Ice::StreamReader< MyInterface, ::Ice::InputStream>::read(istr, *this);
    istr->endSlice();
}
/// \endcond

/// \cond INTERNAL
void
Test::_icePatchObjectPtr(MyInterfacePtr& handle, const ::Ice::ObjectPtr& v)
{
    handle = MyInterfacePtr::dynamicCast(v);
    if(v && !handle)
    {
        IceInternal::Ex::throwUOE(MyInterface::ice_staticId(), v);
    }
}
/// \endcond

namespace Ice
{
}

#endif
