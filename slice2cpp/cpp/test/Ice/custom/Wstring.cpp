//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.7.10
//
// <auto-generated>
//
// Generated from file `Wstring.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

#define ICE_BUILDING_GENERATED_CODE
#include <Wstring.h>
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

const ::IceInternal::DefaultUserExceptionFactoryInit<::Test1::WstringException> iceC_Test1_WstringException_init("::Test1::WstringException");

const ::std::string iceC_Test1_WstringClass_ids[2] =
{
    "::Ice::Object",
    "::Test1::WstringClass"
};
const ::std::string iceC_Test1_WstringClass_ops[] =
{
    "ice_id",
    "ice_ids",
    "ice_isA",
    "ice_ping",
    "opString",
    "opStruct",
    "throwExcept"
};
const ::std::string iceC_Test1_WstringClass_opString_name = "opString";
const ::std::string iceC_Test1_WstringClass_opStruct_name = "opStruct";
const ::std::string iceC_Test1_WstringClass_throwExcept_name = "throwExcept";

const ::IceInternal::DefaultUserExceptionFactoryInit<::Test2::WstringException> iceC_Test2_WstringException_init("::Test2::WstringException");

const ::std::string iceC_Test2_WstringClass_ids[2] =
{
    "::Ice::Object",
    "::Test2::WstringClass"
};
const ::std::string iceC_Test2_WstringClass_ops[] =
{
    "ice_id",
    "ice_ids",
    "ice_isA",
    "ice_ping",
    "opString",
    "opStruct",
    "throwExcept"
};
const ::std::string iceC_Test2_WstringClass_opString_name = "opString";
const ::std::string iceC_Test2_WstringClass_opStruct_name = "opStruct";
const ::std::string iceC_Test2_WstringClass_throwExcept_name = "throwExcept";

}

Test1::WstringException::~WstringException()
{
}

const ::std::string&
Test1::WstringException::ice_staticId()
{
    static const ::std::string typeId = "::Test1::WstringException";
    return typeId;
}

Test2::WstringException::~WstringException()
{
}

const ::std::string&
Test2::WstringException::ice_staticId()
{
    static const ::std::string typeId = "::Test2::WstringException";
    return typeId;
}

bool
Test1::WstringClass::ice_isA(::std::string s, const ::Ice::Current&) const
{
    return ::std::binary_search(iceC_Test1_WstringClass_ids, iceC_Test1_WstringClass_ids + 2, s);
}

::std::vector<::std::string>
Test1::WstringClass::ice_ids(const ::Ice::Current&) const
{
    return ::std::vector<::std::string>(&iceC_Test1_WstringClass_ids[0], &iceC_Test1_WstringClass_ids[2]);
}

::std::string
Test1::WstringClass::ice_id(const ::Ice::Current&) const
{
    return ice_staticId();
}

const ::std::string&
Test1::WstringClass::ice_staticId()
{
    static const ::std::string typeId = "::Test1::WstringClass";
    return typeId;
}

/// \cond INTERNAL
bool
Test1::WstringClass::_iceD_opString(::IceInternal::Incoming& inS, const ::Ice::Current& current)
{
    _iceCheckMode(::Ice::OperationMode::Normal, current.mode);
    auto istr = inS.startReadParams();
    ::std::wstring iceP_s1;
    istr->readAll(iceP_s1);
    inS.endReadParams();
    ::std::wstring iceP_s2;
    ::std::wstring ret = this->opString(::std::move(iceP_s1), iceP_s2, current);
    auto ostr = inS.startWriteParams();
    ostr->writeAll(iceP_s2, ret);
    inS.endWriteParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
Test1::WstringClass::_iceD_opStruct(::IceInternal::Incoming& inS, const ::Ice::Current& current)
{
    _iceCheckMode(::Ice::OperationMode::Normal, current.mode);
    auto istr = inS.startReadParams();
    WstringStruct iceP_s1;
    istr->readAll(iceP_s1);
    inS.endReadParams();
    WstringStruct iceP_s2;
    WstringStruct ret = this->opStruct(::std::move(iceP_s1), iceP_s2, current);
    auto ostr = inS.startWriteParams();
    ostr->writeAll(iceP_s2, ret);
    inS.endWriteParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
Test1::WstringClass::_iceD_throwExcept(::IceInternal::Incoming& inS, const ::Ice::Current& current)
{
    _iceCheckMode(::Ice::OperationMode::Normal, current.mode);
    auto istr = inS.startReadParams();
    ::std::wstring iceP_reason;
    istr->readAll(iceP_reason);
    inS.endReadParams();
    this->throwExcept(::std::move(iceP_reason), current);
    inS.writeEmptyParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
Test1::WstringClass::_iceDispatch(::IceInternal::Incoming& in, const ::Ice::Current& current)
{
    ::std::pair<const ::std::string*, const ::std::string*> r = ::std::equal_range(iceC_Test1_WstringClass_ops, iceC_Test1_WstringClass_ops + 7, current.operation);
    if(r.first == r.second)
    {
        throw ::Ice::OperationNotExistException(__FILE__, __LINE__, current.id, current.facet, current.operation);
    }

    switch(r.first - iceC_Test1_WstringClass_ops)
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
            return _iceD_opString(in, current);
        }
        case 5:
        {
            return _iceD_opStruct(in, current);
        }
        case 6:
        {
            return _iceD_throwExcept(in, current);
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
Test2::WstringClass::ice_isA(::std::string s, const ::Ice::Current&) const
{
    return ::std::binary_search(iceC_Test2_WstringClass_ids, iceC_Test2_WstringClass_ids + 2, s);
}

::std::vector<::std::string>
Test2::WstringClass::ice_ids(const ::Ice::Current&) const
{
    return ::std::vector<::std::string>(&iceC_Test2_WstringClass_ids[0], &iceC_Test2_WstringClass_ids[2]);
}

::std::string
Test2::WstringClass::ice_id(const ::Ice::Current&) const
{
    return ice_staticId();
}

const ::std::string&
Test2::WstringClass::ice_staticId()
{
    static const ::std::string typeId = "::Test2::WstringClass";
    return typeId;
}

/// \cond INTERNAL
bool
Test2::WstringClass::_iceD_opString(::IceInternal::Incoming& inS, const ::Ice::Current& current)
{
    _iceCheckMode(::Ice::OperationMode::Normal, current.mode);
    auto istr = inS.startReadParams();
    ::std::wstring iceP_s1;
    istr->readAll(iceP_s1);
    inS.endReadParams();
    ::std::wstring iceP_s2;
    ::std::wstring ret = this->opString(::std::move(iceP_s1), iceP_s2, current);
    auto ostr = inS.startWriteParams();
    ostr->writeAll(iceP_s2, ret);
    inS.endWriteParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
Test2::WstringClass::_iceD_opStruct(::IceInternal::Incoming& inS, const ::Ice::Current& current)
{
    _iceCheckMode(::Ice::OperationMode::Normal, current.mode);
    auto istr = inS.startReadParams();
    WstringStruct iceP_s1;
    istr->readAll(iceP_s1);
    inS.endReadParams();
    WstringStruct iceP_s2;
    WstringStruct ret = this->opStruct(::std::move(iceP_s1), iceP_s2, current);
    auto ostr = inS.startWriteParams();
    ostr->writeAll(iceP_s2, ret);
    inS.endWriteParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
Test2::WstringClass::_iceD_throwExcept(::IceInternal::Incoming& inS, const ::Ice::Current& current)
{
    _iceCheckMode(::Ice::OperationMode::Normal, current.mode);
    auto istr = inS.startReadParams();
    ::std::wstring iceP_reason;
    istr->readAll(iceP_reason);
    inS.endReadParams();
    this->throwExcept(::std::move(iceP_reason), current);
    inS.writeEmptyParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
Test2::WstringClass::_iceDispatch(::IceInternal::Incoming& in, const ::Ice::Current& current)
{
    ::std::pair<const ::std::string*, const ::std::string*> r = ::std::equal_range(iceC_Test2_WstringClass_ops, iceC_Test2_WstringClass_ops + 7, current.operation);
    if(r.first == r.second)
    {
        throw ::Ice::OperationNotExistException(__FILE__, __LINE__, current.id, current.facet, current.operation);
    }

    switch(r.first - iceC_Test2_WstringClass_ops)
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
            return _iceD_opString(in, current);
        }
        case 5:
        {
            return _iceD_opStruct(in, current);
        }
        case 6:
        {
            return _iceD_throwExcept(in, current);
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
Test1::WstringClassPrx::_iceI_opString(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<WstringClass::OpStringResult>>& outAsync, const ::std::wstring& iceP_s1, const ::Ice::Context& context)
{
    _checkTwowayOnly(iceC_Test1_WstringClass_opString_name);
    outAsync->invoke(iceC_Test1_WstringClass_opString_name, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        [&](::Ice::OutputStream* ostr)
        {
            ostr->writeAll(iceP_s1);
        },
        nullptr,
        [](::Ice::InputStream* istr)
        {
            WstringClass::OpStringResult v;
            istr->readAll(v.s2, v.returnValue);
            return v;
        });
}
/// \endcond

/// \cond INTERNAL
void
Test1::WstringClassPrx::_iceI_opStruct(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<WstringClass::OpStructResult>>& outAsync, const WstringStruct& iceP_s1, const ::Ice::Context& context)
{
    _checkTwowayOnly(iceC_Test1_WstringClass_opStruct_name);
    outAsync->invoke(iceC_Test1_WstringClass_opStruct_name, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        [&](::Ice::OutputStream* ostr)
        {
            ostr->writeAll(iceP_s1);
        },
        nullptr,
        [](::Ice::InputStream* istr)
        {
            WstringClass::OpStructResult v;
            istr->readAll(v.s2, v.returnValue);
            return v;
        });
}
/// \endcond

/// \cond INTERNAL
void
Test1::WstringClassPrx::_iceI_throwExcept(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>& outAsync, const ::std::wstring& iceP_reason, const ::Ice::Context& context)
{
    _checkTwowayOnly(iceC_Test1_WstringClass_throwExcept_name);
    outAsync->invoke(iceC_Test1_WstringClass_throwExcept_name, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        [&](::Ice::OutputStream* ostr)
        {
            ostr->writeAll(iceP_reason);
        },
        [](const ::Ice::UserException& ex)
        {
            try
            {
                ex.ice_throw();
            }
            catch(const WstringException&)
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
Test1::WstringClassPrx::_newInstance() const
{
    return ::IceInternal::createProxy<WstringClassPrx>();
}
/// \endcond

const ::std::string&
Test1::WstringClassPrx::ice_staticId()
{
    return WstringClass::ice_staticId();
}

/// \cond INTERNAL
void
Test2::WstringClassPrx::_iceI_opString(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<WstringClass::OpStringResult>>& outAsync, const ::std::wstring& iceP_s1, const ::Ice::Context& context)
{
    _checkTwowayOnly(iceC_Test2_WstringClass_opString_name);
    outAsync->invoke(iceC_Test2_WstringClass_opString_name, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        [&](::Ice::OutputStream* ostr)
        {
            ostr->writeAll(iceP_s1);
        },
        nullptr,
        [](::Ice::InputStream* istr)
        {
            WstringClass::OpStringResult v;
            istr->readAll(v.s2, v.returnValue);
            return v;
        });
}
/// \endcond

/// \cond INTERNAL
void
Test2::WstringClassPrx::_iceI_opStruct(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<WstringClass::OpStructResult>>& outAsync, const WstringStruct& iceP_s1, const ::Ice::Context& context)
{
    _checkTwowayOnly(iceC_Test2_WstringClass_opStruct_name);
    outAsync->invoke(iceC_Test2_WstringClass_opStruct_name, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        [&](::Ice::OutputStream* ostr)
        {
            ostr->writeAll(iceP_s1);
        },
        nullptr,
        [](::Ice::InputStream* istr)
        {
            WstringClass::OpStructResult v;
            istr->readAll(v.s2, v.returnValue);
            return v;
        });
}
/// \endcond

/// \cond INTERNAL
void
Test2::WstringClassPrx::_iceI_throwExcept(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>& outAsync, const ::std::wstring& iceP_reason, const ::Ice::Context& context)
{
    _checkTwowayOnly(iceC_Test2_WstringClass_throwExcept_name);
    outAsync->invoke(iceC_Test2_WstringClass_throwExcept_name, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        [&](::Ice::OutputStream* ostr)
        {
            ostr->writeAll(iceP_reason);
        },
        [](const ::Ice::UserException& ex)
        {
            try
            {
                ex.ice_throw();
            }
            catch(const WstringException&)
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
Test2::WstringClassPrx::_newInstance() const
{
    return ::IceInternal::createProxy<WstringClassPrx>();
}
/// \endcond

const ::std::string&
Test2::WstringClassPrx::ice_staticId()
{
    return WstringClass::ice_staticId();
}

namespace Ice
{
}

namespace Ice
{
}

#else // C++98 mapping

namespace
{

const ::std::string iceC_Test1_WstringClass_opString_name = "opString";

const ::std::string iceC_Test1_WstringClass_opStruct_name = "opStruct";

const ::std::string iceC_Test1_WstringClass_throwExcept_name = "throwExcept";

}

namespace
{

const ::std::string iceC_Test2_WstringClass_opString_name = "opString";

const ::std::string iceC_Test2_WstringClass_opStruct_name = "opStruct";

const ::std::string iceC_Test2_WstringClass_throwExcept_name = "throwExcept";

}

namespace
{

const ::IceInternal::DefaultUserExceptionFactoryInit< ::Test1::WstringException> iceC_Test1_WstringException_init("::Test1::WstringException");

}

Test1::WstringException::WstringException(const ::std::wstring& reason) :
    ::Ice::UserException(),
    reason(reason)
{
}

#ifdef ICE_CPP11_COMPILER
Test1::WstringException::~WstringException()
{
}
#else
Test1::WstringException::~WstringException() throw()
{
}
#endif

::std::string
Test1::WstringException::ice_id() const
{
    return "::Test1::WstringException";
}

Test1::WstringException*
Test1::WstringException::ice_clone() const
{
    return new WstringException(*this);
}

void
Test1::WstringException::ice_throw() const
{
    throw *this;
}

/// \cond STREAM
void
Test1::WstringException::_writeImpl(::Ice::OutputStream* ostr) const
{
    ostr->startSlice("::Test1::WstringException", -1, true);
    ::Ice::StreamWriter< WstringException, ::Ice::OutputStream>::write(ostr, *this);
    ostr->endSlice();
}

void
Test1::WstringException::_readImpl(::Ice::InputStream* istr)
{
    istr->startSlice();
    ::Ice::StreamReader< WstringException, ::Ice::InputStream>::read(istr, *this);
    istr->endSlice();
}
/// \endcond

namespace
{

const ::IceInternal::DefaultUserExceptionFactoryInit< ::Test2::WstringException> iceC_Test2_WstringException_init("::Test2::WstringException");

}

Test2::WstringException::WstringException(const ::std::wstring& reason) :
    ::Ice::UserException(),
    reason(reason)
{
}

#ifdef ICE_CPP11_COMPILER
Test2::WstringException::~WstringException()
{
}
#else
Test2::WstringException::~WstringException() throw()
{
}
#endif

::std::string
Test2::WstringException::ice_id() const
{
    return "::Test2::WstringException";
}

Test2::WstringException*
Test2::WstringException::ice_clone() const
{
    return new WstringException(*this);
}

void
Test2::WstringException::ice_throw() const
{
    throw *this;
}

/// \cond STREAM
void
Test2::WstringException::_writeImpl(::Ice::OutputStream* ostr) const
{
    ostr->startSlice("::Test2::WstringException", -1, true);
    ::Ice::StreamWriter< WstringException, ::Ice::OutputStream>::write(ostr, *this);
    ostr->endSlice();
}

void
Test2::WstringException::_readImpl(::Ice::InputStream* istr)
{
    istr->startSlice();
    ::Ice::StreamReader< WstringException, ::Ice::InputStream>::read(istr, *this);
    istr->endSlice();
}
/// \endcond

/// \cond INTERNAL
::IceProxy::Ice::Object* ::IceProxy::Test1::upCast(WstringClass* p) { return p; }

void
::IceProxy::Test1::_readProxy(::Ice::InputStream* istr, ::IceInternal::ProxyHandle< WstringClass>& v)
{
    ::Ice::ObjectPrx proxy;
    istr->read(proxy);
    if(!proxy)
    {
        v = 0;
    }
    else
    {
        v = new WstringClass;
        v->_copyFrom(proxy);
    }
}
/// \endcond

::Ice::AsyncResultPtr
IceProxy::Test1::WstringClass::_iceI_begin_opString(const ::std::wstring& iceP_s1, const ::Ice::Context& context, const ::IceInternal::CallbackBasePtr& del, const ::Ice::LocalObjectPtr& cookie, bool sync)
{
    _checkTwowayOnly(iceC_Test1_WstringClass_opString_name, sync);
    ::IceInternal::OutgoingAsyncPtr result = new ::IceInternal::CallbackOutgoing(this, iceC_Test1_WstringClass_opString_name, del, cookie, sync);
    try
    {
        result->prepare(iceC_Test1_WstringClass_opString_name, ::Ice::Normal, context);
        ::Ice::OutputStream* ostr = result->startWriteParams(::Ice::DefaultFormat);
        ostr->write(iceP_s1);
        result->endWriteParams();
        result->invoke(iceC_Test1_WstringClass_opString_name);
    }
    catch(const ::Ice::Exception& ex)
    {
        result->abort(ex);
    }
    return result;
}

::std::wstring
IceProxy::Test1::WstringClass::end_opString(::std::wstring& iceP_s2, const ::Ice::AsyncResultPtr& result)
{
    ::Ice::AsyncResult::_check(result, this, iceC_Test1_WstringClass_opString_name);
    ::std::wstring ret;
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
    istr->read(iceP_s2);
    istr->read(ret);
    result->_endReadParams();
    return ret;
}

void IceProxy::Test1::WstringClass::_iceI_end_opString(::std::wstring& iceP_s2, ::std::wstring& ret, const ::Ice::AsyncResultPtr& result)
{
    ::Ice::AsyncResult::_check(result, this, iceC_Test1_WstringClass_opString_name);
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
    istr->read(iceP_s2);
    istr->read(ret);
    result->_endReadParams();
}

::Ice::AsyncResultPtr
IceProxy::Test1::WstringClass::_iceI_begin_opStruct(const ::Test1::WstringStruct& iceP_s1, const ::Ice::Context& context, const ::IceInternal::CallbackBasePtr& del, const ::Ice::LocalObjectPtr& cookie, bool sync)
{
    _checkTwowayOnly(iceC_Test1_WstringClass_opStruct_name, sync);
    ::IceInternal::OutgoingAsyncPtr result = new ::IceInternal::CallbackOutgoing(this, iceC_Test1_WstringClass_opStruct_name, del, cookie, sync);
    try
    {
        result->prepare(iceC_Test1_WstringClass_opStruct_name, ::Ice::Normal, context);
        ::Ice::OutputStream* ostr = result->startWriteParams(::Ice::DefaultFormat);
        ostr->write(iceP_s1);
        result->endWriteParams();
        result->invoke(iceC_Test1_WstringClass_opStruct_name);
    }
    catch(const ::Ice::Exception& ex)
    {
        result->abort(ex);
    }
    return result;
}

::Test1::WstringStruct
IceProxy::Test1::WstringClass::end_opStruct(::Test1::WstringStruct& iceP_s2, const ::Ice::AsyncResultPtr& result)
{
    ::Ice::AsyncResult::_check(result, this, iceC_Test1_WstringClass_opStruct_name);
    ::Test1::WstringStruct ret;
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
    istr->read(iceP_s2);
    istr->read(ret);
    result->_endReadParams();
    return ret;
}

void IceProxy::Test1::WstringClass::_iceI_end_opStruct(::Test1::WstringStruct& iceP_s2, ::Test1::WstringStruct& ret, const ::Ice::AsyncResultPtr& result)
{
    ::Ice::AsyncResult::_check(result, this, iceC_Test1_WstringClass_opStruct_name);
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
    istr->read(iceP_s2);
    istr->read(ret);
    result->_endReadParams();
}

::Ice::AsyncResultPtr
IceProxy::Test1::WstringClass::_iceI_begin_throwExcept(const ::std::wstring& iceP_reason, const ::Ice::Context& context, const ::IceInternal::CallbackBasePtr& del, const ::Ice::LocalObjectPtr& cookie, bool sync)
{
    _checkTwowayOnly(iceC_Test1_WstringClass_throwExcept_name, sync);
    ::IceInternal::OutgoingAsyncPtr result = new ::IceInternal::CallbackOutgoing(this, iceC_Test1_WstringClass_throwExcept_name, del, cookie, sync);
    try
    {
        result->prepare(iceC_Test1_WstringClass_throwExcept_name, ::Ice::Normal, context);
        ::Ice::OutputStream* ostr = result->startWriteParams(::Ice::DefaultFormat);
        ostr->write(iceP_reason);
        result->endWriteParams();
        result->invoke(iceC_Test1_WstringClass_throwExcept_name);
    }
    catch(const ::Ice::Exception& ex)
    {
        result->abort(ex);
    }
    return result;
}

void
IceProxy::Test1::WstringClass::end_throwExcept(const ::Ice::AsyncResultPtr& result)
{
    ::Ice::AsyncResult::_check(result, this, iceC_Test1_WstringClass_throwExcept_name);
    if(!result->_waitForResponse())
    {
        try
        {
            result->_throwUserException();
        }
        catch(const ::Test1::WstringException&)
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
IceProxy::Test1::WstringClass::_newInstance() const
{
    return new WstringClass;
}
/// \endcond

const ::std::string&
IceProxy::Test1::WstringClass::ice_staticId()
{
    return ::Test1::WstringClass::ice_staticId();
}

/// \cond INTERNAL
::IceProxy::Ice::Object* ::IceProxy::Test2::upCast(WstringClass* p) { return p; }

void
::IceProxy::Test2::_readProxy(::Ice::InputStream* istr, ::IceInternal::ProxyHandle< WstringClass>& v)
{
    ::Ice::ObjectPrx proxy;
    istr->read(proxy);
    if(!proxy)
    {
        v = 0;
    }
    else
    {
        v = new WstringClass;
        v->_copyFrom(proxy);
    }
}
/// \endcond

::Ice::AsyncResultPtr
IceProxy::Test2::WstringClass::_iceI_begin_opString(const ::std::wstring& iceP_s1, const ::Ice::Context& context, const ::IceInternal::CallbackBasePtr& del, const ::Ice::LocalObjectPtr& cookie, bool sync)
{
    _checkTwowayOnly(iceC_Test2_WstringClass_opString_name, sync);
    ::IceInternal::OutgoingAsyncPtr result = new ::IceInternal::CallbackOutgoing(this, iceC_Test2_WstringClass_opString_name, del, cookie, sync);
    try
    {
        result->prepare(iceC_Test2_WstringClass_opString_name, ::Ice::Normal, context);
        ::Ice::OutputStream* ostr = result->startWriteParams(::Ice::DefaultFormat);
        ostr->write(iceP_s1);
        result->endWriteParams();
        result->invoke(iceC_Test2_WstringClass_opString_name);
    }
    catch(const ::Ice::Exception& ex)
    {
        result->abort(ex);
    }
    return result;
}

::std::wstring
IceProxy::Test2::WstringClass::end_opString(::std::wstring& iceP_s2, const ::Ice::AsyncResultPtr& result)
{
    ::Ice::AsyncResult::_check(result, this, iceC_Test2_WstringClass_opString_name);
    ::std::wstring ret;
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
    istr->read(iceP_s2);
    istr->read(ret);
    result->_endReadParams();
    return ret;
}

void IceProxy::Test2::WstringClass::_iceI_end_opString(::std::wstring& iceP_s2, ::std::wstring& ret, const ::Ice::AsyncResultPtr& result)
{
    ::Ice::AsyncResult::_check(result, this, iceC_Test2_WstringClass_opString_name);
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
    istr->read(iceP_s2);
    istr->read(ret);
    result->_endReadParams();
}

::Ice::AsyncResultPtr
IceProxy::Test2::WstringClass::_iceI_begin_opStruct(const ::Test2::WstringStruct& iceP_s1, const ::Ice::Context& context, const ::IceInternal::CallbackBasePtr& del, const ::Ice::LocalObjectPtr& cookie, bool sync)
{
    _checkTwowayOnly(iceC_Test2_WstringClass_opStruct_name, sync);
    ::IceInternal::OutgoingAsyncPtr result = new ::IceInternal::CallbackOutgoing(this, iceC_Test2_WstringClass_opStruct_name, del, cookie, sync);
    try
    {
        result->prepare(iceC_Test2_WstringClass_opStruct_name, ::Ice::Normal, context);
        ::Ice::OutputStream* ostr = result->startWriteParams(::Ice::DefaultFormat);
        ostr->write(iceP_s1);
        result->endWriteParams();
        result->invoke(iceC_Test2_WstringClass_opStruct_name);
    }
    catch(const ::Ice::Exception& ex)
    {
        result->abort(ex);
    }
    return result;
}

::Test2::WstringStruct
IceProxy::Test2::WstringClass::end_opStruct(::Test2::WstringStruct& iceP_s2, const ::Ice::AsyncResultPtr& result)
{
    ::Ice::AsyncResult::_check(result, this, iceC_Test2_WstringClass_opStruct_name);
    ::Test2::WstringStruct ret;
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
    istr->read(iceP_s2);
    istr->read(ret);
    result->_endReadParams();
    return ret;
}

void IceProxy::Test2::WstringClass::_iceI_end_opStruct(::Test2::WstringStruct& iceP_s2, ::Test2::WstringStruct& ret, const ::Ice::AsyncResultPtr& result)
{
    ::Ice::AsyncResult::_check(result, this, iceC_Test2_WstringClass_opStruct_name);
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
    istr->read(iceP_s2);
    istr->read(ret);
    result->_endReadParams();
}

::Ice::AsyncResultPtr
IceProxy::Test2::WstringClass::_iceI_begin_throwExcept(const ::std::wstring& iceP_reason, const ::Ice::Context& context, const ::IceInternal::CallbackBasePtr& del, const ::Ice::LocalObjectPtr& cookie, bool sync)
{
    _checkTwowayOnly(iceC_Test2_WstringClass_throwExcept_name, sync);
    ::IceInternal::OutgoingAsyncPtr result = new ::IceInternal::CallbackOutgoing(this, iceC_Test2_WstringClass_throwExcept_name, del, cookie, sync);
    try
    {
        result->prepare(iceC_Test2_WstringClass_throwExcept_name, ::Ice::Normal, context);
        ::Ice::OutputStream* ostr = result->startWriteParams(::Ice::DefaultFormat);
        ostr->write(iceP_reason);
        result->endWriteParams();
        result->invoke(iceC_Test2_WstringClass_throwExcept_name);
    }
    catch(const ::Ice::Exception& ex)
    {
        result->abort(ex);
    }
    return result;
}

void
IceProxy::Test2::WstringClass::end_throwExcept(const ::Ice::AsyncResultPtr& result)
{
    ::Ice::AsyncResult::_check(result, this, iceC_Test2_WstringClass_throwExcept_name);
    if(!result->_waitForResponse())
    {
        try
        {
            result->_throwUserException();
        }
        catch(const ::Test2::WstringException&)
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
IceProxy::Test2::WstringClass::_newInstance() const
{
    return new WstringClass;
}
/// \endcond

const ::std::string&
IceProxy::Test2::WstringClass::ice_staticId()
{
    return ::Test2::WstringClass::ice_staticId();
}

Test1::WstringClass::~WstringClass()
{
}

/// \cond INTERNAL
::Ice::Object* Test1::upCast(WstringClass* p) { return p; }

/// \endcond

namespace
{
const ::std::string iceC_Test1_WstringClass_ids[2] =
{
    "::Ice::Object",
    "::Test1::WstringClass"
};

}

bool
Test1::WstringClass::ice_isA(const ::std::string& s, const ::Ice::Current&) const
{
    return ::std::binary_search(iceC_Test1_WstringClass_ids, iceC_Test1_WstringClass_ids + 2, s);
}

::std::vector< ::std::string>
Test1::WstringClass::ice_ids(const ::Ice::Current&) const
{
    return ::std::vector< ::std::string>(&iceC_Test1_WstringClass_ids[0], &iceC_Test1_WstringClass_ids[2]);
}

const ::std::string&
Test1::WstringClass::ice_id(const ::Ice::Current&) const
{
    return ice_staticId();
}

const ::std::string&
Test1::WstringClass::ice_staticId()
{
    static const ::std::string typeId = "::Test1::WstringClass";
    return typeId;
}

/// \cond INTERNAL
bool
Test1::WstringClass::_iceD_opString(::IceInternal::Incoming& inS, const ::Ice::Current& current)
{
    _iceCheckMode(::Ice::Normal, current.mode);
    ::Ice::InputStream* istr = inS.startReadParams();
    ::std::wstring iceP_s1;
    istr->read(iceP_s1);
    inS.endReadParams();
    ::std::wstring iceP_s2;
    ::std::wstring ret = this->opString(iceP_s1, iceP_s2, current);
    ::Ice::OutputStream* ostr = inS.startWriteParams();
    ostr->write(iceP_s2);
    ostr->write(ret);
    inS.endWriteParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
Test1::WstringClass::_iceD_opStruct(::IceInternal::Incoming& inS, const ::Ice::Current& current)
{
    _iceCheckMode(::Ice::Normal, current.mode);
    ::Ice::InputStream* istr = inS.startReadParams();
    WstringStruct iceP_s1;
    istr->read(iceP_s1);
    inS.endReadParams();
    WstringStruct iceP_s2;
    WstringStruct ret = this->opStruct(iceP_s1, iceP_s2, current);
    ::Ice::OutputStream* ostr = inS.startWriteParams();
    ostr->write(iceP_s2);
    ostr->write(ret);
    inS.endWriteParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
Test1::WstringClass::_iceD_throwExcept(::IceInternal::Incoming& inS, const ::Ice::Current& current)
{
    _iceCheckMode(::Ice::Normal, current.mode);
    ::Ice::InputStream* istr = inS.startReadParams();
    ::std::wstring iceP_reason;
    istr->read(iceP_reason);
    inS.endReadParams();
    this->throwExcept(iceP_reason, current);
    inS.writeEmptyParams();
    return true;
}
/// \endcond

namespace
{
const ::std::string iceC_Test1_WstringClass_all[] =
{
    "ice_id",
    "ice_ids",
    "ice_isA",
    "ice_ping",
    "opString",
    "opStruct",
    "throwExcept"
};

}

/// \cond INTERNAL
bool
Test1::WstringClass::_iceDispatch(::IceInternal::Incoming& in, const ::Ice::Current& current)
{
    ::std::pair<const ::std::string*, const ::std::string*> r = ::std::equal_range(iceC_Test1_WstringClass_all, iceC_Test1_WstringClass_all + 7, current.operation);
    if(r.first == r.second)
    {
        throw ::Ice::OperationNotExistException(__FILE__, __LINE__, current.id, current.facet, current.operation);
    }

    switch(r.first - iceC_Test1_WstringClass_all)
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
            return _iceD_opString(in, current);
        }
        case 5:
        {
            return _iceD_opStruct(in, current);
        }
        case 6:
        {
            return _iceD_throwExcept(in, current);
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
Test1::WstringClass::_iceWriteImpl(::Ice::OutputStream* ostr) const
{
    ostr->startSlice(ice_staticId(), -1, true);
    ::Ice::StreamWriter< WstringClass, ::Ice::OutputStream>::write(ostr, *this);
    ostr->endSlice();
}

void
Test1::WstringClass::_iceReadImpl(::Ice::InputStream* istr)
{
    istr->startSlice();
    ::Ice::StreamReader< WstringClass, ::Ice::InputStream>::read(istr, *this);
    istr->endSlice();
}
/// \endcond

/// \cond INTERNAL
void
Test1::_icePatchObjectPtr(WstringClassPtr& handle, const ::Ice::ObjectPtr& v)
{
    handle = WstringClassPtr::dynamicCast(v);
    if(v && !handle)
    {
        IceInternal::Ex::throwUOE(WstringClass::ice_staticId(), v);
    }
}
/// \endcond

Test2::WstringClass::~WstringClass()
{
}

/// \cond INTERNAL
::Ice::Object* Test2::upCast(WstringClass* p) { return p; }

/// \endcond

namespace
{
const ::std::string iceC_Test2_WstringClass_ids[2] =
{
    "::Ice::Object",
    "::Test2::WstringClass"
};

}

bool
Test2::WstringClass::ice_isA(const ::std::string& s, const ::Ice::Current&) const
{
    return ::std::binary_search(iceC_Test2_WstringClass_ids, iceC_Test2_WstringClass_ids + 2, s);
}

::std::vector< ::std::string>
Test2::WstringClass::ice_ids(const ::Ice::Current&) const
{
    return ::std::vector< ::std::string>(&iceC_Test2_WstringClass_ids[0], &iceC_Test2_WstringClass_ids[2]);
}

const ::std::string&
Test2::WstringClass::ice_id(const ::Ice::Current&) const
{
    return ice_staticId();
}

const ::std::string&
Test2::WstringClass::ice_staticId()
{
    static const ::std::string typeId = "::Test2::WstringClass";
    return typeId;
}

/// \cond INTERNAL
bool
Test2::WstringClass::_iceD_opString(::IceInternal::Incoming& inS, const ::Ice::Current& current)
{
    _iceCheckMode(::Ice::Normal, current.mode);
    ::Ice::InputStream* istr = inS.startReadParams();
    ::std::wstring iceP_s1;
    istr->read(iceP_s1);
    inS.endReadParams();
    ::std::wstring iceP_s2;
    ::std::wstring ret = this->opString(iceP_s1, iceP_s2, current);
    ::Ice::OutputStream* ostr = inS.startWriteParams();
    ostr->write(iceP_s2);
    ostr->write(ret);
    inS.endWriteParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
Test2::WstringClass::_iceD_opStruct(::IceInternal::Incoming& inS, const ::Ice::Current& current)
{
    _iceCheckMode(::Ice::Normal, current.mode);
    ::Ice::InputStream* istr = inS.startReadParams();
    WstringStruct iceP_s1;
    istr->read(iceP_s1);
    inS.endReadParams();
    WstringStruct iceP_s2;
    WstringStruct ret = this->opStruct(iceP_s1, iceP_s2, current);
    ::Ice::OutputStream* ostr = inS.startWriteParams();
    ostr->write(iceP_s2);
    ostr->write(ret);
    inS.endWriteParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
Test2::WstringClass::_iceD_throwExcept(::IceInternal::Incoming& inS, const ::Ice::Current& current)
{
    _iceCheckMode(::Ice::Normal, current.mode);
    ::Ice::InputStream* istr = inS.startReadParams();
    ::std::wstring iceP_reason;
    istr->read(iceP_reason);
    inS.endReadParams();
    this->throwExcept(iceP_reason, current);
    inS.writeEmptyParams();
    return true;
}
/// \endcond

namespace
{
const ::std::string iceC_Test2_WstringClass_all[] =
{
    "ice_id",
    "ice_ids",
    "ice_isA",
    "ice_ping",
    "opString",
    "opStruct",
    "throwExcept"
};

}

/// \cond INTERNAL
bool
Test2::WstringClass::_iceDispatch(::IceInternal::Incoming& in, const ::Ice::Current& current)
{
    ::std::pair<const ::std::string*, const ::std::string*> r = ::std::equal_range(iceC_Test2_WstringClass_all, iceC_Test2_WstringClass_all + 7, current.operation);
    if(r.first == r.second)
    {
        throw ::Ice::OperationNotExistException(__FILE__, __LINE__, current.id, current.facet, current.operation);
    }

    switch(r.first - iceC_Test2_WstringClass_all)
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
            return _iceD_opString(in, current);
        }
        case 5:
        {
            return _iceD_opStruct(in, current);
        }
        case 6:
        {
            return _iceD_throwExcept(in, current);
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
Test2::WstringClass::_iceWriteImpl(::Ice::OutputStream* ostr) const
{
    ostr->startSlice(ice_staticId(), -1, true);
    ::Ice::StreamWriter< WstringClass, ::Ice::OutputStream>::write(ostr, *this);
    ostr->endSlice();
}

void
Test2::WstringClass::_iceReadImpl(::Ice::InputStream* istr)
{
    istr->startSlice();
    ::Ice::StreamReader< WstringClass, ::Ice::InputStream>::read(istr, *this);
    istr->endSlice();
}
/// \endcond

/// \cond INTERNAL
void
Test2::_icePatchObjectPtr(WstringClassPtr& handle, const ::Ice::ObjectPtr& v)
{
    handle = WstringClassPtr::dynamicCast(v);
    if(v && !handle)
    {
        IceInternal::Ex::throwUOE(WstringClass::ice_staticId(), v);
    }
}
/// \endcond

namespace Ice
{
}

namespace Ice
{
}

#endif
