//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `ClientPrivate.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

#ifndef __ClientPrivate_h__
#define __ClientPrivate_h__

#include <IceUtil/PushDisableWarnings.h>
#include <Ice/Ice.h>
#include <IceUtil/UndefSysMacros.h>

#ifndef ICE_IGNORE_VERSION
#   if ICE_INT_VERSION  != 30850
#       error Ice version mismatch: an exact match is required for beta generated code
#   endif
#endif

namespace Test
{

class Empty;
class AlsoEmpty;
class UnexpectedObjectExceptionTest;
class UnexpectedObjectExceptionTestPrx;
class COneMember;
class CTwoMembers;

}

namespace Test
{

class EOneMember : public ::Ice::UserExceptionHelper<EOneMember, ::Ice::UserException>
{
public:

    virtual ~EOneMember();

    EOneMember(const EOneMember&) = default;

    EOneMember() = default;

    /**
     * One-shot constructor to initialize all data members.
     */
    EOneMember(const ::std::shared_ptr<Empty>& e) :
        e(e)
    {
    }

    /**
     * Obtains a tuple containing all of the exception's data members.
     * @return The data members in a tuple.
     */
    std::tuple<const ::std::shared_ptr<::Test::Empty>&> ice_tuple() const
    {
        return std::tie(e);
    }

    /**
     * Obtains the Slice type ID of this exception.
     * @return The fully-scoped type ID.
     */
    static const ::std::string& ice_staticId();

    /// \cond STREAM
    virtual bool _usesClasses() const override;
    /// \endcond

    ::std::shared_ptr<::Test::Empty> e;
};

/// \cond INTERNAL
static EOneMember _iceS_EOneMember_init;
/// \endcond

class ETwoMembers : public ::Ice::UserExceptionHelper<ETwoMembers, ::Ice::UserException>
{
public:

    virtual ~ETwoMembers();

    ETwoMembers(const ETwoMembers&) = default;

    ETwoMembers() = default;

    /**
     * One-shot constructor to initialize all data members.
     */
    ETwoMembers(const ::std::shared_ptr<Empty>& e1, const ::std::shared_ptr<Empty>& e2) :
        e1(e1),
        e2(e2)
    {
    }

    /**
     * Obtains a tuple containing all of the exception's data members.
     * @return The data members in a tuple.
     */
    std::tuple<const ::std::shared_ptr<::Test::Empty>&, const ::std::shared_ptr<::Test::Empty>&> ice_tuple() const
    {
        return std::tie(e1, e2);
    }

    /**
     * Obtains the Slice type ID of this exception.
     * @return The fully-scoped type ID.
     */
    static const ::std::string& ice_staticId();

    /// \cond STREAM
    virtual bool _usesClasses() const override;
    /// \endcond

    ::std::shared_ptr<::Test::Empty> e1;
    ::std::shared_ptr<::Test::Empty> e2;
};

struct SOneMember
{
    ::std::shared_ptr<::Test::Empty> e;

    /**
     * Obtains a tuple containing all of the struct's data members.
     * @return The data members in a tuple.
     */
    std::tuple<const ::std::shared_ptr<::Test::Empty>&> ice_tuple() const
    {
        return std::tie(e);
    }
};

struct STwoMembers
{
    ::std::shared_ptr<::Test::Empty> e1;
    ::std::shared_ptr<::Test::Empty> e2;

    /**
     * Obtains a tuple containing all of the struct's data members.
     * @return The data members in a tuple.
     */
    std::tuple<const ::std::shared_ptr<::Test::Empty>&, const ::std::shared_ptr<::Test::Empty>&> ice_tuple() const
    {
        return std::tie(e1, e2);
    }
};

using DOneMember = ::std::map<int, ::std::shared_ptr<COneMember>>;

using DTwoMembers = ::std::map<int, ::std::shared_ptr<CTwoMembers>>;

using Ice::operator<;
using Ice::operator<=;
using Ice::operator>;
using Ice::operator>=;
using Ice::operator==;
using Ice::operator!=;

}

namespace Test
{

class UnexpectedObjectExceptionTest : public virtual ::Ice::Object
{
public:

    using ProxyType = UnexpectedObjectExceptionTestPrx;

    /**
     * Determines whether this object supports an interface with the given Slice type ID.
     * @param id The fully-scoped Slice type ID.
     * @param current The Current object for the invocation.
     * @return True if this object supports the interface, false, otherwise.
     */
    virtual bool ice_isA(::std::string id, const ::Ice::Current& current) const override;

    /**
     * Obtains a list of the Slice type IDs representing the interfaces supported by this object.
     * @param current The Current object for the invocation.
     * @return A list of fully-scoped type IDs.
     */
    virtual ::std::vector<::std::string> ice_ids(const ::Ice::Current& current) const override;

    /**
     * Obtains a Slice type ID representing the most-derived interface supported by this object.
     * @param current The Current object for the invocation.
     * @return A fully-scoped type ID.
     */
    virtual ::std::string ice_id(const ::Ice::Current& current) const override;

    /**
     * Obtains the Slice type ID corresponding to this class.
     * @return A fully-scoped type ID.
     */
    static const ::std::string& ice_staticId();

    virtual ::std::shared_ptr<Empty> op(const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    bool _iceD_op(::IceInternal::Incoming&, const ::Ice::Current&);
    /// \endcond

    /// \cond INTERNAL
    virtual bool _iceDispatch(::IceInternal::Incoming&, const ::Ice::Current&) override;
    /// \endcond
};

}

namespace Test
{

class Empty : public ::Ice::ValueHelper<Empty, ::Ice::Value>
{
public:

    virtual ~Empty();

    Empty() = default;

    Empty(const Empty&) = default;
    Empty(Empty&&) = default;
    Empty& operator=(const Empty&) = default;
    Empty& operator=(Empty&&) = default;

    /**
     * Obtains a tuple containing all of the value's data members.
     * @return The data members in a tuple.
     */
    std::tuple<> ice_tuple() const
    {
        return std::tie();
    }

    /**
     * Obtains the Slice type ID of this value.
     * @return The fully-scoped type ID.
     */
    static const ::std::string& ice_staticId();
};

/// \cond INTERNAL
static Empty _iceS_Empty_init;
/// \endcond

class AlsoEmpty : public ::Ice::ValueHelper<AlsoEmpty, ::Ice::Value>
{
public:

    virtual ~AlsoEmpty();

    AlsoEmpty() = default;

    AlsoEmpty(const AlsoEmpty&) = default;
    AlsoEmpty(AlsoEmpty&&) = default;
    AlsoEmpty& operator=(const AlsoEmpty&) = default;
    AlsoEmpty& operator=(AlsoEmpty&&) = default;

    /**
     * Obtains a tuple containing all of the value's data members.
     * @return The data members in a tuple.
     */
    std::tuple<> ice_tuple() const
    {
        return std::tie();
    }

    /**
     * Obtains the Slice type ID of this value.
     * @return The fully-scoped type ID.
     */
    static const ::std::string& ice_staticId();
};

class COneMember : public ::Ice::ValueHelper<COneMember, ::Ice::Value>
{
public:

    virtual ~COneMember();

    COneMember() = default;

    COneMember(const COneMember&) = default;
    COneMember(COneMember&&) = default;
    COneMember& operator=(const COneMember&) = default;
    COneMember& operator=(COneMember&&) = default;

    /**
     * One-shot constructor to initialize all data members.
     */
    explicit COneMember(const ::std::shared_ptr<::Test::Empty>& e) :
        e(e)
    {
    }

    /**
     * Obtains a tuple containing all of the value's data members.
     * @return The data members in a tuple.
     */
    std::tuple<const ::std::shared_ptr<::Test::Empty>&> ice_tuple() const
    {
        return std::tie(e);
    }

    /**
     * Obtains the Slice type ID of this value.
     * @return The fully-scoped type ID.
     */
    static const ::std::string& ice_staticId();

    ::std::shared_ptr<::Test::Empty> e;
};

class CTwoMembers : public ::Ice::ValueHelper<CTwoMembers, ::Ice::Value>
{
public:

    virtual ~CTwoMembers();

    CTwoMembers() = default;

    CTwoMembers(const CTwoMembers&) = default;
    CTwoMembers(CTwoMembers&&) = default;
    CTwoMembers& operator=(const CTwoMembers&) = default;
    CTwoMembers& operator=(CTwoMembers&&) = default;

    /**
     * One-shot constructor to initialize all data members.
     */
    CTwoMembers(const ::std::shared_ptr<::Test::Empty>& e1, const ::std::shared_ptr<::Test::Empty>& e2) :
        e1(e1),
        e2(e2)
    {
    }

    /**
     * Obtains a tuple containing all of the value's data members.
     * @return The data members in a tuple.
     */
    std::tuple<const ::std::shared_ptr<::Test::Empty>&, const ::std::shared_ptr<::Test::Empty>&> ice_tuple() const
    {
        return std::tie(e1, e2);
    }

    /**
     * Obtains the Slice type ID of this value.
     * @return The fully-scoped type ID.
     */
    static const ::std::string& ice_staticId();

    ::std::shared_ptr<::Test::Empty> e1;
    ::std::shared_ptr<::Test::Empty> e2;
};

}

namespace Test
{

class UnexpectedObjectExceptionTestPrx : public virtual ::Ice::Proxy<UnexpectedObjectExceptionTestPrx, ::Ice::ObjectPrx>
{
public:

    ::std::shared_ptr<Empty> op(const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        return _makePromiseOutgoing<::std::shared_ptr<::Test::Empty>>(true, this, &UnexpectedObjectExceptionTestPrx::_iceI_op, context).get();
    }

    template<template<typename> class P = ::std::promise>
    auto opAsync(const ::Ice::Context& context = ::Ice::noExplicitContext)
        -> decltype(::std::declval<P<::std::shared_ptr<::Test::Empty>>>().get_future())
    {
        return _makePromiseOutgoing<::std::shared_ptr<::Test::Empty>, P>(false, this, &UnexpectedObjectExceptionTestPrx::_iceI_op, context);
    }

    ::std::function<void()>
    opAsync(::std::function<void(::std::shared_ptr<::Test::Empty>)> response,
            ::std::function<void(::std::exception_ptr)> ex = nullptr,
            ::std::function<void(bool)> sent = nullptr,
            const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        return _makeLambdaOutgoing<::std::shared_ptr<::Test::Empty>>(std::move(response), std::move(ex), std::move(sent), this, &Test::UnexpectedObjectExceptionTestPrx::_iceI_op, context);
    }

    /// \cond INTERNAL
    void _iceI_op(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<::std::shared_ptr<::Test::Empty>>>&, const ::Ice::Context&);
    /// \endcond

    /**
     * Obtains the Slice type ID of this interface.
     * @return The fully-scoped type ID.
     */
    static const ::std::string& ice_staticId();

protected:

    /// \cond INTERNAL
    UnexpectedObjectExceptionTestPrx() = default;
    friend ::std::shared_ptr<UnexpectedObjectExceptionTestPrx> IceInternal::createProxy<UnexpectedObjectExceptionTestPrx>();

    virtual ::std::shared_ptr<::Ice::ObjectPrx> _newInstance() const override;
    /// \endcond
};

}

/// \cond STREAM
namespace Ice
{

template<typename S>
struct StreamReader<::Test::COneMember, S>
{
    static void read(S* istr, ::Test::COneMember& v)
    {
        istr->readAll(v.e);
    }
};

template<typename S>
struct StreamReader<::Test::CTwoMembers, S>
{
    static void read(S* istr, ::Test::CTwoMembers& v)
    {
        istr->readAll(v.e1, v.e2);
    }
};

template<typename S>
struct StreamReader<::Test::EOneMember, S>
{
    static void read(S* istr, ::Test::EOneMember& v)
    {
        istr->readAll(v.e);
    }
};

template<typename S>
struct StreamReader<::Test::ETwoMembers, S>
{
    static void read(S* istr, ::Test::ETwoMembers& v)
    {
        istr->readAll(v.e1, v.e2);
    }
};

template<>
struct StreamableTraits<::Test::SOneMember>
{
    static const StreamHelperCategory helper = StreamHelperCategoryStruct;
    static const int minWireSize = 1;
    static const bool fixedLength = false;
};

template<typename S>
struct StreamReader<::Test::SOneMember, S>
{
    static void read(S* istr, ::Test::SOneMember& v)
    {
        istr->readAll(v.e);
    }
};

template<>
struct StreamableTraits<::Test::STwoMembers>
{
    static const StreamHelperCategory helper = StreamHelperCategoryStruct;
    static const int minWireSize = 2;
    static const bool fixedLength = false;
};

template<typename S>
struct StreamReader<::Test::STwoMembers, S>
{
    static void read(S* istr, ::Test::STwoMembers& v)
    {
        istr->readAll(v.e1, v.e2);
    }
};

}
/// \endcond

/// \cond INTERNAL
namespace Test
{

using EmptyPtr = ::std::shared_ptr<Empty>;

using AlsoEmptyPtr = ::std::shared_ptr<AlsoEmpty>;

using UnexpectedObjectExceptionTestPtr = ::std::shared_ptr<UnexpectedObjectExceptionTest>;
using UnexpectedObjectExceptionTestPrxPtr = ::std::shared_ptr<UnexpectedObjectExceptionTestPrx>;

using COneMemberPtr = ::std::shared_ptr<COneMember>;

using CTwoMembersPtr = ::std::shared_ptr<CTwoMembers>;

}
/// \endcond

#include <IceUtil/PopDisableWarnings.h>
#endif
