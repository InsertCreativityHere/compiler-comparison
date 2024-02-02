//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `User.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

#define ICE_BUILDING_GENERATED_CODE
#include <User.h>
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

const ::IceInternal::DefaultValueFactoryInit<::User::UserInfo> iceC_User_UserInfo_init("::User::UserInfo");

const ::std::string iceC_User_Registry_ids[2] =
{
    "::Ice::Object",
    "::User::Registry"
};
const ::std::string iceC_User_Registry_ops[] =
{
    "getUserInfo",
    "ice_id",
    "ice_ids",
    "ice_isA",
    "ice_ping"
};
const ::std::string iceC_User_Registry_getUserInfo_name = "getUserInfo";

}

bool
User::Registry::ice_isA(::std::string s, const ::Ice::Current&) const
{
    return ::std::binary_search(iceC_User_Registry_ids, iceC_User_Registry_ids + 2, s);
}

::std::vector<::std::string>
User::Registry::ice_ids(const ::Ice::Current&) const
{
    return ::std::vector<::std::string>(&iceC_User_Registry_ids[0], &iceC_User_Registry_ids[2]);
}

::std::string
User::Registry::ice_id(const ::Ice::Current&) const
{
    return ice_staticId();
}

const ::std::string&
User::Registry::ice_staticId()
{
    static const ::std::string typeId = "::User::Registry";
    return typeId;
}

/// \cond INTERNAL
bool
User::Registry::_iceD_getUserInfo(::IceInternal::Incoming& inS, const ::Ice::Current& current)
{
    _iceCheckMode(::Ice::OperationMode::Normal, current.mode);
    auto istr = inS.startReadParams();
    ::std::string iceP_id;
    istr->readAll(iceP_id);
    inS.endReadParams();
    ::std::shared_ptr<UserInfo> ret = this->getUserInfo(::std::move(iceP_id), current);
    auto ostr = inS.startWriteParams();
    ostr->writeAll(ret);
    ostr->writePendingValues();
    inS.endWriteParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
User::Registry::_iceDispatch(::IceInternal::Incoming& in, const ::Ice::Current& current)
{
    ::std::pair<const ::std::string*, const ::std::string*> r = ::std::equal_range(iceC_User_Registry_ops, iceC_User_Registry_ops + 5, current.operation);
    if(r.first == r.second)
    {
        throw ::Ice::OperationNotExistException(__FILE__, __LINE__, current.id, current.facet, current.operation);
    }

    switch(r.first - iceC_User_Registry_ops)
    {
        case 0:
        {
            return _iceD_getUserInfo(in, current);
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

User::UserInfo::~UserInfo()
{
}

const ::std::string&
User::UserInfo::ice_staticId()
{
    static const ::std::string typeId = "::User::UserInfo";
    return typeId;
}

/// \cond INTERNAL
void
User::RegistryPrx::_iceI_getUserInfo(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<::std::shared_ptr<::User::UserInfo>>>& outAsync, const ::std::string& iceP_id, const ::Ice::Context& context)
{
    _checkTwowayOnly(iceC_User_Registry_getUserInfo_name);
    outAsync->invoke(iceC_User_Registry_getUserInfo_name, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        [&](::Ice::OutputStream* ostr)
        {
            ostr->writeAll(iceP_id);
        },
        [](const ::Ice::UserException& ex)
        {
            try
            {
                ex.ice_throw();
            }
            catch(const ::Core::ArgumentException&)
            {
                throw;
            }
            catch(const ::Ice::UserException&)
            {
            }
        },
        [](::Ice::InputStream* istr)
        {
            ::std::shared_ptr<UserInfo> ret;
            istr->readAll(ret);
            istr->readPendingValues();
            return ret;
        });
}
/// \endcond

/// \cond INTERNAL
::std::shared_ptr<::Ice::ObjectPrx>
User::RegistryPrx::_newInstance() const
{
    return ::IceInternal::createProxy<RegistryPrx>();
}
/// \endcond

const ::std::string&
User::RegistryPrx::ice_staticId()
{
    return Registry::ice_staticId();
}
