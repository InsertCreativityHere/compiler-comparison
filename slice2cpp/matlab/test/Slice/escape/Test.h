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

#ifndef __Test_h__
#define __Test_h__

#include <IceUtil/PushDisableWarnings.h>
#include <Ice/Ice.h>
#include <IceUtil/UndefSysMacros.h>

#ifndef ICE_IGNORE_VERSION
#   if ICE_INT_VERSION  != 30850
#       error Ice version mismatch: an exact match is required for beta generated code
#   endif
#endif

namespace classdef
{


namespace _cpp_break
{

class logical;
class _cpp_xor;
class _cpp_try;
class properties;
class elseif;
class elseifPrx;

}

}

namespace classdef
{

namespace _cpp_break
{

enum class _cpp_bitand : unsigned char
{
    _cpp_break,
    _cpp_case,
    _cpp_catch,
    classdef,
    _cpp_continue,
    _cpp_else,
    elseif,
    end,
    enumeration,
    events,
    _cpp_for,
    function,
    global,
    _cpp_if,
    methods,
    otherwise,
    parfor,
    persistent,
    properties,
    _cpp_return,
    spmd,
    _cpp_switch,
    _cpp_try,
    _cpp_while,
    abs,
    _cpp_and,
    _cpp_char,
    eq,
    length,
    size,
    _cpp_xor,
    LAST
};

struct _cpp_bitor
{
    ::classdef::_cpp_break::_cpp_bitand _cpp_case = ::classdef::_cpp_break::_cpp_bitand::_cpp_catch;
    int _cpp_continue = 1;
    int eq = 2;
    int ne = 3;

    /**
     * Obtains a tuple containing all of the struct's data members.
     * @return The data members in a tuple.
     */
    std::tuple<const ::classdef::_cpp_break::_cpp_bitand&, const int&, const int&, const int&> ice_tuple() const
    {
        return std::tie(_cpp_case, _cpp_continue, eq, ne);
    }
};

using parfor = ::std::vector<_cpp_bitor>;

using _cpp_switch = ::std::map<int, _cpp_bitor>;

class persistent : public ::Ice::UserExceptionHelper<persistent, ::Ice::UserException>
{
public:

    virtual ~persistent();

    persistent(const persistent&) = default;

    persistent() = default;

    /**
     * One-shot constructor to initialize all data members.
     */
    persistent(const ::std::string& identifier, const ::std::string& message, const ::std::string& stack, const ::std::string& cause, const ::std::string& type, const ::std::shared_ptr<logical>& end) :
        identifier(identifier),
        message(message),
        stack(stack),
        cause(cause),
        type(type),
        end(end)
    {
    }

    /**
     * Obtains a tuple containing all of the exception's data members.
     * @return The data members in a tuple.
     */
    std::tuple<const ::std::string&, const ::std::string&, const ::std::string&, const ::std::string&, const ::std::string&, const ::std::shared_ptr<::classdef::break::logical>&> ice_tuple() const
    {
        return std::tie(identifier, message, stack, cause, type, end);
    }

    /**
     * Obtains the Slice type ID of this exception.
     * @return The fully-scoped type ID.
     */
    static const ::std::string& ice_staticId();

    /// \cond STREAM
    virtual bool _usesClasses() const override;
    /// \endcond

    ::std::string identifier = "1";
    ::std::string message = "2";
    ::std::string stack = "3";
    ::std::string cause = "4";
    ::std::string type = "5";
    ::std::shared_ptr<::classdef::break::logical> end;
};

/// \cond INTERNAL
static persistent _iceS_persistent_init;
/// \endcond

class global : public ::Ice::UserExceptionHelper<global, persistent>
{
public:

    virtual ~global();

    global(const global&) = default;

    global() = default;

    /**
     * One-shot constructor to initialize all data members.
     */
    global(const ::std::string& identifier, const ::std::string& message, const ::std::string& stack, const ::std::string& cause, const ::std::string& type, const ::std::shared_ptr<logical>& end, int enumeration) :
        ::Ice::UserExceptionHelper<global, persistent>(identifier, message, stack, cause, type, end),
        enumeration(enumeration)
    {
    }

    /**
     * Obtains a tuple containing all of the exception's data members.
     * @return The data members in a tuple.
     */
    std::tuple<const ::std::string&, const ::std::string&, const ::std::string&, const ::std::string&, const ::std::string&, const ::std::shared_ptr<::classdef::break::logical>&, const int&> ice_tuple() const
    {
        return std::tie(identifier, message, stack, cause, type, end, enumeration);
    }

    /**
     * Obtains the Slice type ID of this exception.
     * @return The fully-scoped type ID.
     */
    static const ::std::string& ice_staticId();

    int enumeration = 1;
};

constexpr int methods = 1;

using Ice::operator<;
using Ice::operator<=;
using Ice::operator>;
using Ice::operator>=;
using Ice::operator==;
using Ice::operator!=;

}

using Ice::operator<;
using Ice::operator<=;
using Ice::operator>;
using Ice::operator>=;
using Ice::operator==;
using Ice::operator!=;

}

namespace classdef
{

namespace _cpp_break
{

class elseif : public virtual ::Ice::Object
{
public:

    using ProxyType = elseifPrx;

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

    virtual void events(const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    bool _iceD_events(::IceInternal::Incoming&, const ::Ice::Current&);
    /// \endcond

    virtual void function(const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    bool _iceD_function(::IceInternal::Incoming&, const ::Ice::Current&);
    /// \endcond

    virtual void _cpp_delete(const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    bool _iceD_delete(::IceInternal::Incoming&, const ::Ice::Current&);
    /// \endcond

    virtual void checkedCast(const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    bool _iceD_checkedCast(::IceInternal::Incoming&, const ::Ice::Current&);
    /// \endcond

    /// \cond INTERNAL
    virtual bool _iceDispatch(::IceInternal::Incoming&, const ::Ice::Current&) override;
    /// \endcond
};

}

}

namespace classdef
{

namespace _cpp_break
{

class logical : public ::Ice::ValueHelper<logical, ::Ice::Value>
{
public:

    virtual ~logical();

    logical() = default;

    logical(const logical&) = default;
    logical(logical&&) = default;
    logical& operator=(const logical&) = default;
    logical& operator=(logical&&) = default;

    /**
     * One-shot constructor to initialize all data members.
     */
    logical(::classdef::_cpp_break::_cpp_bitand _cpp_else, const ::classdef::_cpp_break::_cpp_bitor& _cpp_for, bool int64) :
        _cpp_else(_cpp_else),
        _cpp_for(_cpp_for),
        int64(int64)
    {
    }

    /**
     * Obtains a tuple containing all of the value's data members.
     * @return The data members in a tuple.
     */
    std::tuple<const ::classdef::_cpp_break::_cpp_bitand&, const ::classdef::_cpp_break::_cpp_bitor&, const bool&> ice_tuple() const
    {
        return std::tie(_cpp_else, _cpp_for, int64);
    }

    /**
     * Obtains the Slice type ID of this value.
     * @return The fully-scoped type ID.
     */
    static const ::std::string& ice_staticId();

    ::classdef::_cpp_break::_cpp_bitand _cpp_else = ::classdef::_cpp_break::_cpp_bitand::enumeration;
    ::classdef::_cpp_break::_cpp_bitor _cpp_for;
    bool int64 = true;
};

/// \cond INTERNAL
static logical _iceS_logical_init;
/// \endcond

class _cpp_xor : public ::Ice::ValueHelper<_cpp_xor, logical>
{
public:

    virtual ~_cpp_xor();

    _cpp_xor() = default;

    _cpp_xor(const _cpp_xor&) = default;
    _cpp_xor(_cpp_xor&&) = default;
    _cpp_xor& operator=(const _cpp_xor&) = default;
    _cpp_xor& operator=(_cpp_xor&&) = default;

    /**
     * One-shot constructor to initialize all data members.
     */
    _cpp_xor(::classdef::_cpp_break::_cpp_bitand _cpp_else, const ::classdef::_cpp_break::_cpp_bitor& _cpp_for, bool int64, int _cpp_return) :
        Ice::ValueHelper<_cpp_xor, logical>(_cpp_else, _cpp_for, int64),
        _cpp_return(_cpp_return)
    {
    }

    /**
     * Obtains a tuple containing all of the value's data members.
     * @return The data members in a tuple.
     */
    std::tuple<const ::classdef::_cpp_break::_cpp_bitand&, const ::classdef::_cpp_break::_cpp_bitor&, const bool&, const int&> ice_tuple() const
    {
        return std::tie(_cpp_else, _cpp_for, int64, _cpp_return);
    }

    /**
     * Obtains the Slice type ID of this value.
     * @return The fully-scoped type ID.
     */
    static const ::std::string& ice_staticId();

    int _cpp_return = 1;
};

class _cpp_try : public ::Ice::ValueHelper<_cpp_try, ::Ice::Value>
{
public:

    virtual ~_cpp_try();

    _cpp_try() = default;

    _cpp_try(const _cpp_try&) = default;
    _cpp_try(_cpp_try&&) = default;
    _cpp_try& operator=(const _cpp_try&) = default;
    _cpp_try& operator=(_cpp_try&&) = default;

    /**
     * One-shot constructor to initialize all data members.
     */
    _cpp_try(int _cpp_while, int _cpp_delete) :
        _cpp_while(_cpp_while),
        _cpp_delete(_cpp_delete)
    {
    }

    /**
     * Obtains a tuple containing all of the value's data members.
     * @return The data members in a tuple.
     */
    std::tuple<const int&, const int&> ice_tuple() const
    {
        return std::tie(_cpp_while, _cpp_delete);
    }

    /**
     * Obtains the Slice type ID of this value.
     * @return The fully-scoped type ID.
     */
    static const ::std::string& ice_staticId();

    int _cpp_while = 1;
    int _cpp_delete = 2;
};

class properties : public ::Ice::ValueHelper<properties, _cpp_try>
{
public:

    virtual ~properties();

    properties() = default;

    properties(const properties&) = default;
    properties(properties&&) = default;
    properties& operator=(const properties&) = default;
    properties& operator=(properties&&) = default;

    /**
     * One-shot constructor to initialize all data members.
     */
    properties(int _cpp_while, int _cpp_delete, int _cpp_if, const ::std::shared_ptr<::classdef::_cpp_break::_cpp_xor>& _cpp_catch, const ::classdef::_cpp_break::parfor& spmd, const ::classdef::_cpp_break::_cpp_switch& otherwise) :
        Ice::ValueHelper<properties, _cpp_try>(_cpp_while, _cpp_delete),
        _cpp_if(_cpp_if),
        _cpp_catch(_cpp_catch),
        spmd(spmd),
        otherwise(otherwise)
    {
    }

    /**
     * Obtains a tuple containing all of the value's data members.
     * @return The data members in a tuple.
     */
    std::tuple<const int&, const int&, const int&, const ::std::shared_ptr<::classdef::break::xor>&, const ::classdef::_cpp_break::parfor&, const ::classdef::_cpp_break::_cpp_switch&> ice_tuple() const
    {
        return std::tie(_cpp_while, _cpp_delete, _cpp_if, _cpp_catch, spmd, otherwise);
    }

    /**
     * Obtains the Slice type ID of this value.
     * @return The fully-scoped type ID.
     */
    static const ::std::string& ice_staticId();

    int _cpp_if = 2;
    ::std::shared_ptr<::classdef::break::xor> _cpp_catch;
    ::classdef::_cpp_break::parfor spmd;
    ::classdef::_cpp_break::_cpp_switch otherwise;
};

}

}

namespace classdef
{

namespace _cpp_break
{

class elseifPrx : public virtual ::Ice::Proxy<elseifPrx, ::Ice::ObjectPrx>
{
public:

    void events(const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        _makePromiseOutgoing<void>(true, this, &elseifPrx::_iceI_events, context).get();
    }

    template<template<typename> class P = ::std::promise>
    auto eventsAsync(const ::Ice::Context& context = ::Ice::noExplicitContext)
        -> decltype(::std::declval<P<void>>().get_future())
    {
        return _makePromiseOutgoing<void, P>(false, this, &elseifPrx::_iceI_events, context);
    }

    ::std::function<void()>
    eventsAsync(::std::function<void()> response,
                ::std::function<void(::std::exception_ptr)> ex = nullptr,
                ::std::function<void(bool)> sent = nullptr,
                const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        return _makeLambdaOutgoing<void>(std::move(response), std::move(ex), std::move(sent), this, &classdef::_cpp_break::elseifPrx::_iceI_events, context);
    }

    /// \cond INTERNAL
    void _iceI_events(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>&, const ::Ice::Context&);
    /// \endcond

    void function(const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        _makePromiseOutgoing<void>(true, this, &elseifPrx::_iceI_function, context).get();
    }

    template<template<typename> class P = ::std::promise>
    auto functionAsync(const ::Ice::Context& context = ::Ice::noExplicitContext)
        -> decltype(::std::declval<P<void>>().get_future())
    {
        return _makePromiseOutgoing<void, P>(false, this, &elseifPrx::_iceI_function, context);
    }

    ::std::function<void()>
    functionAsync(::std::function<void()> response,
                  ::std::function<void(::std::exception_ptr)> ex = nullptr,
                  ::std::function<void(bool)> sent = nullptr,
                  const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        return _makeLambdaOutgoing<void>(std::move(response), std::move(ex), std::move(sent), this, &classdef::_cpp_break::elseifPrx::_iceI_function, context);
    }

    /// \cond INTERNAL
    void _iceI_function(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>&, const ::Ice::Context&);
    /// \endcond

    void _cpp_delete(const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        _makePromiseOutgoing<void>(true, this, &elseifPrx::_iceI_delete, context).get();
    }

    template<template<typename> class P = ::std::promise>
    auto deleteAsync(const ::Ice::Context& context = ::Ice::noExplicitContext)
        -> decltype(::std::declval<P<void>>().get_future())
    {
        return _makePromiseOutgoing<void, P>(false, this, &elseifPrx::_iceI_delete, context);
    }

    ::std::function<void()>
    deleteAsync(::std::function<void()> response,
                ::std::function<void(::std::exception_ptr)> ex = nullptr,
                ::std::function<void(bool)> sent = nullptr,
                const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        return _makeLambdaOutgoing<void>(std::move(response), std::move(ex), std::move(sent), this, &classdef::_cpp_break::elseifPrx::_iceI_delete, context);
    }

    /// \cond INTERNAL
    void _iceI_delete(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>&, const ::Ice::Context&);
    /// \endcond

    void checkedCast(const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        _makePromiseOutgoing<void>(true, this, &elseifPrx::_iceI_checkedCast, context).get();
    }

    template<template<typename> class P = ::std::promise>
    auto checkedCastAsync(const ::Ice::Context& context = ::Ice::noExplicitContext)
        -> decltype(::std::declval<P<void>>().get_future())
    {
        return _makePromiseOutgoing<void, P>(false, this, &elseifPrx::_iceI_checkedCast, context);
    }

    ::std::function<void()>
    checkedCastAsync(::std::function<void()> response,
                     ::std::function<void(::std::exception_ptr)> ex = nullptr,
                     ::std::function<void(bool)> sent = nullptr,
                     const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        return _makeLambdaOutgoing<void>(std::move(response), std::move(ex), std::move(sent), this, &classdef::_cpp_break::elseifPrx::_iceI_checkedCast, context);
    }

    /// \cond INTERNAL
    void _iceI_checkedCast(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>&, const ::Ice::Context&);
    /// \endcond

    /**
     * Obtains the Slice type ID of this interface.
     * @return The fully-scoped type ID.
     */
    static const ::std::string& ice_staticId();

protected:

    /// \cond INTERNAL
    elseifPrx() = default;
    friend ::std::shared_ptr<elseifPrx> IceInternal::createProxy<elseifPrx>();

    virtual ::std::shared_ptr<::Ice::ObjectPrx> _newInstance() const override;
    /// \endcond
};

}

}

/// \cond STREAM
namespace Ice
{

template<>
struct StreamableTraits< ::classdef::_cpp_break::_cpp_bitand>
{
    static const StreamHelperCategory helper = StreamHelperCategoryEnum;
    static const int minValue = 0;
    static const int maxValue = 31;
    static const int minWireSize = 1;
    static const bool fixedLength = false;
};

template<>
struct StreamableTraits<::classdef::_cpp_break::_cpp_bitor>
{
    static const StreamHelperCategory helper = StreamHelperCategoryStruct;
    static const int minWireSize = 13;
    static const bool fixedLength = false;
};

template<typename S>
struct StreamReader<::classdef::_cpp_break::_cpp_bitor, S>
{
    static void read(S* istr, ::classdef::_cpp_break::_cpp_bitor& v)
    {
        istr->readAll(v._cpp_case, v._cpp_continue, v.eq, v.ne);
    }
};

template<typename S>
struct StreamReader<::classdef::_cpp_break::logical, S>
{
    static void read(S* istr, ::classdef::_cpp_break::logical& v)
    {
        istr->readAll(v._cpp_else, v._cpp_for, v.int64);
    }
};

template<typename S>
struct StreamWriter<::classdef::_cpp_break::_cpp_xor, S>
{
    static void write(S* ostr, const ::classdef::_cpp_break::_cpp_xor& v)
    {
        ostr->writeAll(v._cpp_return);
    }
};

template<typename S>
struct StreamReader<::classdef::_cpp_break::_cpp_xor, S>
{
    static void read(S* istr, ::classdef::_cpp_break::_cpp_xor& v)
    {
        istr->readAll(v._cpp_return);
    }
};

template<typename S>
struct StreamReader<::classdef::_cpp_break::_cpp_try, S>
{
    static void read(S* istr, ::classdef::_cpp_break::_cpp_try& v)
    {
        istr->readAll(v._cpp_while, v._cpp_delete);
    }
};

template<typename S>
struct StreamWriter<::classdef::_cpp_break::properties, S>
{
    static void write(S* ostr, const ::classdef::_cpp_break::properties& v)
    {
        ostr->writeAll(v._cpp_if, v._cpp_catch, v.spmd, v.otherwise);
    }
};

template<typename S>
struct StreamReader<::classdef::_cpp_break::properties, S>
{
    static void read(S* istr, ::classdef::_cpp_break::properties& v)
    {
        istr->readAll(v._cpp_if, v._cpp_catch, v.spmd, v.otherwise);
    }
};

template<typename S>
struct StreamReader<::classdef::_cpp_break::persistent, S>
{
    static void read(S* istr, ::classdef::_cpp_break::persistent& v)
    {
        istr->readAll(v.identifier, v.message, v.stack, v.cause, v.type, v.end);
    }
};

template<typename S>
struct StreamWriter<::classdef::_cpp_break::global, S>
{
    static void write(S* ostr, const ::classdef::_cpp_break::global& v)
    {
        ostr->writeAll(v.enumeration);
    }
};

template<typename S>
struct StreamReader<::classdef::_cpp_break::global, S>
{
    static void read(S* istr, ::classdef::_cpp_break::global& v)
    {
        istr->readAll(v.enumeration);
    }
};

}
/// \endcond

/// \cond INTERNAL
namespace classdef
{

/// \cond INTERNAL
namespace _cpp_break
{

using logicalPtr = ::std::shared_ptr<logical>;

using xorPtr = ::std::shared_ptr<_cpp_xor>;

using tryPtr = ::std::shared_ptr<_cpp_try>;

using propertiesPtr = ::std::shared_ptr<properties>;

using elseifPtr = ::std::shared_ptr<elseif>;
using elseifPrxPtr = ::std::shared_ptr<elseifPrx>;

}
/// \endcond

}
/// \endcond

#include <IceUtil/PopDisableWarnings.h>
#endif
