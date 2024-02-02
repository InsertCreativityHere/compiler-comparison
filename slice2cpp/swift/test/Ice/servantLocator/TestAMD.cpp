//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `TestAMD.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

#define ICE_BUILDING_GENERATED_CODE
#include <TestAMD.h>
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

const ::IceInternal::DefaultUserExceptionFactoryInit<::Test::TestIntfUserException> iceC_Test_TestIntfUserException_init("::Test::TestIntfUserException");

const ::IceInternal::DefaultUserExceptionFactoryInit<::Test::TestImpossibleException> iceC_Test_TestImpossibleException_init("::Test::TestImpossibleException");

const ::std::string iceC_Test_TestIntf_ids[2] =
{
    "::Ice::Object",
    "::Test::TestIntf"
};
const ::std::string iceC_Test_TestIntf_ops[] =
{
    "asyncException",
    "asyncResponse",
    "ice_id",
    "ice_ids",
    "ice_isA",
    "ice_ping",
    "impossibleException",
    "intfUserException",
    "localException",
    "requestFailedException",
    "shutdown",
    "unknownException",
    "unknownExceptionWithServantException",
    "unknownLocalException",
    "unknownUserException",
    "userException"
};
const ::std::string iceC_Test_TestIntf_requestFailedException_name = "requestFailedException";
const ::std::string iceC_Test_TestIntf_unknownUserException_name = "unknownUserException";
const ::std::string iceC_Test_TestIntf_unknownLocalException_name = "unknownLocalException";
const ::std::string iceC_Test_TestIntf_unknownException_name = "unknownException";
const ::std::string iceC_Test_TestIntf_localException_name = "localException";
const ::std::string iceC_Test_TestIntf_userException_name = "userException";
const ::std::string iceC_Test_TestIntf_unknownExceptionWithServantException_name = "unknownExceptionWithServantException";
const ::std::string iceC_Test_TestIntf_impossibleException_name = "impossibleException";
const ::std::string iceC_Test_TestIntf_intfUserException_name = "intfUserException";
const ::std::string iceC_Test_TestIntf_asyncResponse_name = "asyncResponse";
const ::std::string iceC_Test_TestIntf_asyncException_name = "asyncException";
const ::std::string iceC_Test_TestIntf_shutdown_name = "shutdown";

const ::std::string iceC_Test_TestActivation_ids[2] =
{
    "::Ice::Object",
    "::Test::TestActivation"
};
const ::std::string iceC_Test_TestActivation_ops[] =
{
    "activateServantLocator",
    "ice_id",
    "ice_ids",
    "ice_isA",
    "ice_ping"
};
const ::std::string iceC_Test_TestActivation_activateServantLocator_name = "activateServantLocator";

}

Test::TestIntfUserException::~TestIntfUserException()
{
}

const ::std::string&
Test::TestIntfUserException::ice_staticId()
{
    static const ::std::string typeId = "::Test::TestIntfUserException";
    return typeId;
}

Test::TestImpossibleException::~TestImpossibleException()
{
}

const ::std::string&
Test::TestImpossibleException::ice_staticId()
{
    static const ::std::string typeId = "::Test::TestImpossibleException";
    return typeId;
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
Test::TestIntf::_iceD_requestFailedException(::IceInternal::Incoming& inS, const ::Ice::Current& current)
{
    _iceCheckMode(::Ice::OperationMode::Normal, current.mode);
    inS.readEmptyParams();
    auto inA = ::IceInternal::IncomingAsync::create(inS);
    this->requestFailedExceptionAsync(inA->response(), inA->exception(), current);
    return false;
}
/// \endcond

/// \cond INTERNAL
bool
Test::TestIntf::_iceD_unknownUserException(::IceInternal::Incoming& inS, const ::Ice::Current& current)
{
    _iceCheckMode(::Ice::OperationMode::Normal, current.mode);
    inS.readEmptyParams();
    auto inA = ::IceInternal::IncomingAsync::create(inS);
    this->unknownUserExceptionAsync(inA->response(), inA->exception(), current);
    return false;
}
/// \endcond

/// \cond INTERNAL
bool
Test::TestIntf::_iceD_unknownLocalException(::IceInternal::Incoming& inS, const ::Ice::Current& current)
{
    _iceCheckMode(::Ice::OperationMode::Normal, current.mode);
    inS.readEmptyParams();
    auto inA = ::IceInternal::IncomingAsync::create(inS);
    this->unknownLocalExceptionAsync(inA->response(), inA->exception(), current);
    return false;
}
/// \endcond

/// \cond INTERNAL
bool
Test::TestIntf::_iceD_unknownException(::IceInternal::Incoming& inS, const ::Ice::Current& current)
{
    _iceCheckMode(::Ice::OperationMode::Normal, current.mode);
    inS.readEmptyParams();
    auto inA = ::IceInternal::IncomingAsync::create(inS);
    this->unknownExceptionAsync(inA->response(), inA->exception(), current);
    return false;
}
/// \endcond

/// \cond INTERNAL
bool
Test::TestIntf::_iceD_localException(::IceInternal::Incoming& inS, const ::Ice::Current& current)
{
    _iceCheckMode(::Ice::OperationMode::Normal, current.mode);
    inS.readEmptyParams();
    auto inA = ::IceInternal::IncomingAsync::create(inS);
    this->localExceptionAsync(inA->response(), inA->exception(), current);
    return false;
}
/// \endcond

/// \cond INTERNAL
bool
Test::TestIntf::_iceD_userException(::IceInternal::Incoming& inS, const ::Ice::Current& current)
{
    _iceCheckMode(::Ice::OperationMode::Normal, current.mode);
    inS.readEmptyParams();
    auto inA = ::IceInternal::IncomingAsync::create(inS);
    this->userExceptionAsync(inA->response(), inA->exception(), current);
    return false;
}
/// \endcond

/// \cond INTERNAL
bool
Test::TestIntf::_iceD_unknownExceptionWithServantException(::IceInternal::Incoming& inS, const ::Ice::Current& current)
{
    _iceCheckMode(::Ice::OperationMode::Normal, current.mode);
    inS.readEmptyParams();
    auto inA = ::IceInternal::IncomingAsync::create(inS);
    this->unknownExceptionWithServantExceptionAsync(inA->response(), inA->exception(), current);
    return false;
}
/// \endcond

/// \cond INTERNAL
bool
Test::TestIntf::_iceD_impossibleException(::IceInternal::Incoming& inS, const ::Ice::Current& current)
{
    _iceCheckMode(::Ice::OperationMode::Normal, current.mode);
    auto istr = inS.startReadParams();
    bool iceP_throw;
    istr->readAll(iceP_throw);
    inS.endReadParams();
    auto inA = ::IceInternal::IncomingAsync::create(inS);
    auto responseCB = [inA](const ::std::string& ret)
    {
        auto ostr = inA->startWriteParams();
        ostr->writeAll(ret);
        inA->endWriteParams();
        inA->completed();
    };
    this->impossibleExceptionAsync(iceP_throw, responseCB, inA->exception(), current);
    return false;
}
/// \endcond

/// \cond INTERNAL
bool
Test::TestIntf::_iceD_intfUserException(::IceInternal::Incoming& inS, const ::Ice::Current& current)
{
    _iceCheckMode(::Ice::OperationMode::Normal, current.mode);
    auto istr = inS.startReadParams();
    bool iceP_throw;
    istr->readAll(iceP_throw);
    inS.endReadParams();
    auto inA = ::IceInternal::IncomingAsync::create(inS);
    auto responseCB = [inA](const ::std::string& ret)
    {
        auto ostr = inA->startWriteParams();
        ostr->writeAll(ret);
        inA->endWriteParams();
        inA->completed();
    };
    this->intfUserExceptionAsync(iceP_throw, responseCB, inA->exception(), current);
    return false;
}
/// \endcond

/// \cond INTERNAL
bool
Test::TestIntf::_iceD_asyncResponse(::IceInternal::Incoming& inS, const ::Ice::Current& current)
{
    _iceCheckMode(::Ice::OperationMode::Normal, current.mode);
    inS.readEmptyParams();
    auto inA = ::IceInternal::IncomingAsync::create(inS);
    this->asyncResponseAsync(inA->response(), inA->exception(), current);
    return false;
}
/// \endcond

/// \cond INTERNAL
bool
Test::TestIntf::_iceD_asyncException(::IceInternal::Incoming& inS, const ::Ice::Current& current)
{
    _iceCheckMode(::Ice::OperationMode::Normal, current.mode);
    inS.readEmptyParams();
    auto inA = ::IceInternal::IncomingAsync::create(inS);
    this->asyncExceptionAsync(inA->response(), inA->exception(), current);
    return false;
}
/// \endcond

/// \cond INTERNAL
bool
Test::TestIntf::_iceD_shutdown(::IceInternal::Incoming& inS, const ::Ice::Current& current)
{
    _iceCheckMode(::Ice::OperationMode::Normal, current.mode);
    inS.readEmptyParams();
    auto inA = ::IceInternal::IncomingAsync::create(inS);
    this->shutdownAsync(inA->response(), inA->exception(), current);
    return false;
}
/// \endcond

/// \cond INTERNAL
bool
Test::TestIntf::_iceDispatch(::IceInternal::Incoming& in, const ::Ice::Current& current)
{
    ::std::pair<const ::std::string*, const ::std::string*> r = ::std::equal_range(iceC_Test_TestIntf_ops, iceC_Test_TestIntf_ops + 16, current.operation);
    if(r.first == r.second)
    {
        throw ::Ice::OperationNotExistException(__FILE__, __LINE__, current.id, current.facet, current.operation);
    }

    switch(r.first - iceC_Test_TestIntf_ops)
    {
        case 0:
        {
            return _iceD_asyncException(in, current);
        }
        case 1:
        {
            return _iceD_asyncResponse(in, current);
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
            return _iceD_impossibleException(in, current);
        }
        case 7:
        {
            return _iceD_intfUserException(in, current);
        }
        case 8:
        {
            return _iceD_localException(in, current);
        }
        case 9:
        {
            return _iceD_requestFailedException(in, current);
        }
        case 10:
        {
            return _iceD_shutdown(in, current);
        }
        case 11:
        {
            return _iceD_unknownException(in, current);
        }
        case 12:
        {
            return _iceD_unknownExceptionWithServantException(in, current);
        }
        case 13:
        {
            return _iceD_unknownLocalException(in, current);
        }
        case 14:
        {
            return _iceD_unknownUserException(in, current);
        }
        case 15:
        {
            return _iceD_userException(in, current);
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
Test::TestActivation::ice_isA(::std::string s, const ::Ice::Current&) const
{
    return ::std::binary_search(iceC_Test_TestActivation_ids, iceC_Test_TestActivation_ids + 2, s);
}

::std::vector<::std::string>
Test::TestActivation::ice_ids(const ::Ice::Current&) const
{
    return ::std::vector<::std::string>(&iceC_Test_TestActivation_ids[0], &iceC_Test_TestActivation_ids[2]);
}

::std::string
Test::TestActivation::ice_id(const ::Ice::Current&) const
{
    return ice_staticId();
}

const ::std::string&
Test::TestActivation::ice_staticId()
{
    static const ::std::string typeId = "::Test::TestActivation";
    return typeId;
}

/// \cond INTERNAL
bool
Test::TestActivation::_iceD_activateServantLocator(::IceInternal::Incoming& inS, const ::Ice::Current& current)
{
    _iceCheckMode(::Ice::OperationMode::Normal, current.mode);
    auto istr = inS.startReadParams();
    bool iceP_activate;
    istr->readAll(iceP_activate);
    inS.endReadParams();
    auto inA = ::IceInternal::IncomingAsync::create(inS);
    this->activateServantLocatorAsync(iceP_activate, inA->response(), inA->exception(), current);
    return false;
}
/// \endcond

/// \cond INTERNAL
bool
Test::TestActivation::_iceDispatch(::IceInternal::Incoming& in, const ::Ice::Current& current)
{
    ::std::pair<const ::std::string*, const ::std::string*> r = ::std::equal_range(iceC_Test_TestActivation_ops, iceC_Test_TestActivation_ops + 5, current.operation);
    if(r.first == r.second)
    {
        throw ::Ice::OperationNotExistException(__FILE__, __LINE__, current.id, current.facet, current.operation);
    }

    switch(r.first - iceC_Test_TestActivation_ops)
    {
        case 0:
        {
            return _iceD_activateServantLocator(in, current);
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

/// \cond INTERNAL
void
Test::TestIntfPrx::_iceI_requestFailedException(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>& outAsync, const ::Ice::Context& context)
{
    outAsync->invoke(iceC_Test_TestIntf_requestFailedException_name, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        nullptr,
        nullptr);
}
/// \endcond

/// \cond INTERNAL
void
Test::TestIntfPrx::_iceI_unknownUserException(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>& outAsync, const ::Ice::Context& context)
{
    outAsync->invoke(iceC_Test_TestIntf_unknownUserException_name, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        nullptr,
        nullptr);
}
/// \endcond

/// \cond INTERNAL
void
Test::TestIntfPrx::_iceI_unknownLocalException(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>& outAsync, const ::Ice::Context& context)
{
    outAsync->invoke(iceC_Test_TestIntf_unknownLocalException_name, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        nullptr,
        nullptr);
}
/// \endcond

/// \cond INTERNAL
void
Test::TestIntfPrx::_iceI_unknownException(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>& outAsync, const ::Ice::Context& context)
{
    outAsync->invoke(iceC_Test_TestIntf_unknownException_name, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        nullptr,
        nullptr);
}
/// \endcond

/// \cond INTERNAL
void
Test::TestIntfPrx::_iceI_localException(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>& outAsync, const ::Ice::Context& context)
{
    outAsync->invoke(iceC_Test_TestIntf_localException_name, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        nullptr,
        nullptr);
}
/// \endcond

/// \cond INTERNAL
void
Test::TestIntfPrx::_iceI_userException(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>& outAsync, const ::Ice::Context& context)
{
    outAsync->invoke(iceC_Test_TestIntf_userException_name, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        nullptr,
        nullptr);
}
/// \endcond

/// \cond INTERNAL
void
Test::TestIntfPrx::_iceI_unknownExceptionWithServantException(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>& outAsync, const ::Ice::Context& context)
{
    outAsync->invoke(iceC_Test_TestIntf_unknownExceptionWithServantException_name, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        nullptr,
        nullptr);
}
/// \endcond

/// \cond INTERNAL
void
Test::TestIntfPrx::_iceI_impossibleException(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<::std::string>>& outAsync, bool iceP_throw, const ::Ice::Context& context)
{
    _checkTwowayOnly(iceC_Test_TestIntf_impossibleException_name);
    outAsync->invoke(iceC_Test_TestIntf_impossibleException_name, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        [&](::Ice::OutputStream* ostr)
        {
            ostr->writeAll(iceP_throw);
        },
        [](const ::Ice::UserException& ex)
        {
            try
            {
                ex.ice_throw();
            }
            catch(const TestImpossibleException&)
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
Test::TestIntfPrx::_iceI_intfUserException(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<::std::string>>& outAsync, bool iceP_throw, const ::Ice::Context& context)
{
    _checkTwowayOnly(iceC_Test_TestIntf_intfUserException_name);
    outAsync->invoke(iceC_Test_TestIntf_intfUserException_name, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        [&](::Ice::OutputStream* ostr)
        {
            ostr->writeAll(iceP_throw);
        },
        [](const ::Ice::UserException& ex)
        {
            try
            {
                ex.ice_throw();
            }
            catch(const TestIntfUserException&)
            {
                throw;
            }
            catch(const TestImpossibleException&)
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
Test::TestIntfPrx::_iceI_asyncResponse(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>& outAsync, const ::Ice::Context& context)
{
    _checkTwowayOnly(iceC_Test_TestIntf_asyncResponse_name);
    outAsync->invoke(iceC_Test_TestIntf_asyncResponse_name, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        nullptr,
        [](const ::Ice::UserException& ex)
        {
            try
            {
                ex.ice_throw();
            }
            catch(const TestIntfUserException&)
            {
                throw;
            }
            catch(const TestImpossibleException&)
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
Test::TestIntfPrx::_iceI_asyncException(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>& outAsync, const ::Ice::Context& context)
{
    _checkTwowayOnly(iceC_Test_TestIntf_asyncException_name);
    outAsync->invoke(iceC_Test_TestIntf_asyncException_name, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        nullptr,
        [](const ::Ice::UserException& ex)
        {
            try
            {
                ex.ice_throw();
            }
            catch(const TestIntfUserException&)
            {
                throw;
            }
            catch(const TestImpossibleException&)
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
Test::TestIntfPrx::_iceI_shutdown(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>& outAsync, const ::Ice::Context& context)
{
    outAsync->invoke(iceC_Test_TestIntf_shutdown_name, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
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
Test::TestActivationPrx::_iceI_activateServantLocator(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>& outAsync, bool iceP_activate, const ::Ice::Context& context)
{
    outAsync->invoke(iceC_Test_TestActivation_activateServantLocator_name, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        [&](::Ice::OutputStream* ostr)
        {
            ostr->writeAll(iceP_activate);
        },
        nullptr);
}
/// \endcond

/// \cond INTERNAL
::std::shared_ptr<::Ice::ObjectPrx>
Test::TestActivationPrx::_newInstance() const
{
    return ::IceInternal::createProxy<TestActivationPrx>();
}
/// \endcond

const ::std::string&
Test::TestActivationPrx::ice_staticId()
{
    return TestActivation::ice_staticId();
}
