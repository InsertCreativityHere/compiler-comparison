//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `Key.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

#ifndef __Key_h__
#define __Key_h__

#include <IceUtil/PushDisableWarnings.h>
#include <Ice/Ice.h>
#include <IceUtil/UndefSysMacros.h>

#ifndef ICE_IGNORE_VERSION
#   if ICE_INT_VERSION  != 30850
#       error Ice version mismatch: an exact match is required for beta generated code
#   endif
#endif

namespace _cpp_and
{

class del;
class delPrx;
class exec;
class execPrx;
class _cpp_for;
class _cpp_if;
class ifPrx;
class print;
class printPrx;

}

namespace _cpp_and
{

enum class assert : unsigned char
{
    _cpp_break
};

struct _cpp_continue
{
    int def;

    /**
     * Obtains a tuple containing all of the struct's data members.
     * @return The data members in a tuple.
     */
    std::tuple<const int&> ice_tuple() const
    {
        return std::tie(def);
    }
};

using import = ::std::vector<assert>;

using in = ::std::map<::std::string, assert>;

class is : public ::Ice::UserExceptionHelper<is, ::Ice::UserException>
{
public:

    virtual ~is();

    is(const is&) = default;

    is() = default;

    /**
     * One-shot constructor to initialize all data members.
     */
    is(int lambda) :
        lambda(lambda)
    {
    }

    /**
     * Obtains a tuple containing all of the exception's data members.
     * @return The data members in a tuple.
     */
    std::tuple<const int&> ice_tuple() const
    {
        return std::tie(lambda);
    }

    /**
     * Obtains the Slice type ID of this exception.
     * @return The fully-scoped type ID.
     */
    static const ::std::string& ice_staticId();

    int lambda;
};

/// \cond INTERNAL
static is _iceS_is_init;
/// \endcond

class _cpp_not : public ::Ice::UserExceptionHelper<_cpp_not, is>
{
public:

    virtual ~_cpp_not();

    _cpp_not(const _cpp_not&) = default;

    _cpp_not() = default;

    /**
     * One-shot constructor to initialize all data members.
     */
    _cpp_not(int lambda, int _cpp_or, int pass) :
        ::Ice::UserExceptionHelper<_cpp_not, is>(lambda),
        _cpp_or(_cpp_or),
        pass(pass)
    {
    }

    /**
     * Obtains a tuple containing all of the exception's data members.
     * @return The data members in a tuple.
     */
    std::tuple<const int&, const int&, const int&> ice_tuple() const
    {
        return std::tie(lambda, _cpp_or, pass);
    }

    /**
     * Obtains the Slice type ID of this exception.
     * @return The fully-scoped type ID.
     */
    static const ::std::string& ice_staticId();

    int _cpp_or;
    int pass;
};

constexpr int lambda = 0;

enum class EnumNone : unsigned char
{
    None
};

using Ice::operator<;
using Ice::operator<=;
using Ice::operator>;
using Ice::operator>=;
using Ice::operator==;
using Ice::operator!=;

}

namespace _cpp_and
{

class del : public virtual ::Ice::Object
{
public:

    using ProxyType = delPrx;

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

    virtual void elifAsync(int _cpp_else, ::std::function<void(int except)> response, ::std::function<void(::std::exception_ptr)> exception, const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    bool _iceD_elif(::IceInternal::Incoming&, const ::Ice::Current&);
    /// \endcond

    /// \cond INTERNAL
    virtual bool _iceDispatch(::IceInternal::Incoming&, const ::Ice::Current&) override;
    /// \endcond
};

class exec : public virtual ::Ice::Object
{
public:

    using ProxyType = execPrx;

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

    virtual void finally(const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    bool _iceD_finally(::IceInternal::Incoming&, const ::Ice::Current&);
    /// \endcond

    /// \cond INTERNAL
    virtual bool _iceDispatch(::IceInternal::Incoming&, const ::Ice::Current&) override;
    /// \endcond
};

class _cpp_if : public virtual exec,
                public virtual del
{
public:

    using ProxyType = ifPrx;

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

    /// \cond INTERNAL
    virtual bool _iceDispatch(::IceInternal::Incoming&, const ::Ice::Current&) override;
    /// \endcond
};

class print : public virtual ::Ice::Object
{
public:

    using ProxyType = printPrx;

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

    virtual assert raise(_cpp_continue _cpp_else, ::std::shared_ptr<::and::for> _cpp_return, ::std::shared_ptr<delPrx> _cpp_while, ::std::shared_ptr<execPrx> yield, ::std::shared_ptr<ifPrx> _cpp_or, int global, const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    bool _iceD_raise(::IceInternal::Incoming&, const ::Ice::Current&);
    /// \endcond

    /// \cond INTERNAL
    virtual bool _iceDispatch(::IceInternal::Incoming&, const ::Ice::Current&) override;
    /// \endcond
};

}

namespace _cpp_and
{

class _cpp_for : public ::Ice::ValueHelper<_cpp_for, ::Ice::Value>
{
public:

    virtual ~_cpp_for();

    _cpp_for() = default;

    _cpp_for(const _cpp_for&) = default;
    _cpp_for(_cpp_for&&) = default;
    _cpp_for& operator=(const _cpp_for&) = default;
    _cpp_for& operator=(_cpp_for&&) = default;

    /**
     * One-shot constructor to initialize all data members.
     */
    _cpp_for(int lambda, const ::std::shared_ptr<::_cpp_and::execPrx>& from, int global) :
        lambda(lambda),
        from(from),
        global(global)
    {
    }

    /**
     * Obtains a tuple containing all of the value's data members.
     * @return The data members in a tuple.
     */
    std::tuple<const int&, const ::std::shared_ptr<::_cpp_and::execPrx>&, const int&> ice_tuple() const
    {
        return std::tie(lambda, from, global);
    }

    /**
     * Obtains the Slice type ID of this value.
     * @return The fully-scoped type ID.
     */
    static const ::std::string& ice_staticId();

    int lambda;
    ::std::shared_ptr<::_cpp_and::execPrx> from;
    int global;
};

/// \cond INTERNAL
static _cpp_for _iceS_for_init;
/// \endcond

}

namespace _cpp_and
{

class delPrx : public virtual ::Ice::Proxy<delPrx, ::Ice::ObjectPrx>
{
public:

    void elif(int _cpp_else, int& except, const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        except = _makePromiseOutgoing<int>(true, this, &delPrx::_iceI_elif, _cpp_else, context).get();
    }

    template<template<typename> class P = ::std::promise>
    auto elifAsync(int _cpp_else, const ::Ice::Context& context = ::Ice::noExplicitContext)
        -> decltype(::std::declval<P<int>>().get_future())
    {
        return _makePromiseOutgoing<int, P>(false, this, &delPrx::_iceI_elif, _cpp_else, context);
    }

    ::std::function<void()>
    elifAsync(int _cpp_else,
              ::std::function<void(int)> response,
              ::std::function<void(::std::exception_ptr)> ex = nullptr,
              ::std::function<void(bool)> sent = nullptr,
              const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        return _makeLambdaOutgoing<int>(std::move(response), std::move(ex), std::move(sent), this, &_cpp_and::delPrx::_iceI_elif, _cpp_else, context);
    }

    /// \cond INTERNAL
    void _iceI_elif(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<int>>&, int, const ::Ice::Context&);
    /// \endcond

    /**
     * Obtains the Slice type ID of this interface.
     * @return The fully-scoped type ID.
     */
    static const ::std::string& ice_staticId();

protected:

    /// \cond INTERNAL
    delPrx() = default;
    friend ::std::shared_ptr<delPrx> IceInternal::createProxy<delPrx>();

    virtual ::std::shared_ptr<::Ice::ObjectPrx> _newInstance() const override;
    /// \endcond
};

class execPrx : public virtual ::Ice::Proxy<execPrx, ::Ice::ObjectPrx>
{
public:

    void finally(const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        _makePromiseOutgoing<void>(true, this, &execPrx::_iceI_finally, context).get();
    }

    template<template<typename> class P = ::std::promise>
    auto finallyAsync(const ::Ice::Context& context = ::Ice::noExplicitContext)
        -> decltype(::std::declval<P<void>>().get_future())
    {
        return _makePromiseOutgoing<void, P>(false, this, &execPrx::_iceI_finally, context);
    }

    ::std::function<void()>
    finallyAsync(::std::function<void()> response,
                 ::std::function<void(::std::exception_ptr)> ex = nullptr,
                 ::std::function<void(bool)> sent = nullptr,
                 const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        return _makeLambdaOutgoing<void>(std::move(response), std::move(ex), std::move(sent), this, &_cpp_and::execPrx::_iceI_finally, context);
    }

    /// \cond INTERNAL
    void _iceI_finally(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>&, const ::Ice::Context&);
    /// \endcond

    /**
     * Obtains the Slice type ID of this interface.
     * @return The fully-scoped type ID.
     */
    static const ::std::string& ice_staticId();

protected:

    /// \cond INTERNAL
    execPrx() = default;
    friend ::std::shared_ptr<execPrx> IceInternal::createProxy<execPrx>();

    virtual ::std::shared_ptr<::Ice::ObjectPrx> _newInstance() const override;
    /// \endcond
};

class ifPrx : public virtual ::Ice::Proxy<ifPrx, execPrx, delPrx>
{
public:

    /**
     * Obtains the Slice type ID of this interface.
     * @return The fully-scoped type ID.
     */
    static const ::std::string& ice_staticId();

protected:

    /// \cond INTERNAL
    ifPrx() = default;
    friend ::std::shared_ptr<ifPrx> IceInternal::createProxy<ifPrx>();

    virtual ::std::shared_ptr<::Ice::ObjectPrx> _newInstance() const override;
    /// \endcond
};

class printPrx : public virtual ::Ice::Proxy<printPrx, ::Ice::ObjectPrx>
{
public:

    assert raise(const _cpp_continue& _cpp_else, const ::std::shared_ptr<_cpp_for>& _cpp_return, const ::std::shared_ptr<delPrx>& _cpp_while, const ::std::shared_ptr<execPrx>& yield, const ::std::shared_ptr<ifPrx>& _cpp_or, int global, const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        return _makePromiseOutgoing<::_cpp_and::assert>(true, this, &printPrx::_iceI_raise, _cpp_else, _cpp_return, _cpp_while, yield, _cpp_or, global, context).get();
    }

    template<template<typename> class P = ::std::promise>
    auto raiseAsync(const _cpp_continue& _cpp_else, const ::std::shared_ptr<_cpp_for>& _cpp_return, const ::std::shared_ptr<delPrx>& _cpp_while, const ::std::shared_ptr<execPrx>& yield, const ::std::shared_ptr<ifPrx>& _cpp_or, int global, const ::Ice::Context& context = ::Ice::noExplicitContext)
        -> decltype(::std::declval<P<::_cpp_and::assert>>().get_future())
    {
        return _makePromiseOutgoing<::_cpp_and::assert, P>(false, this, &printPrx::_iceI_raise, _cpp_else, _cpp_return, _cpp_while, yield, _cpp_or, global, context);
    }

    ::std::function<void()>
    raiseAsync(const _cpp_continue& _cpp_else, const ::std::shared_ptr<_cpp_for>& _cpp_return, const ::std::shared_ptr<delPrx>& _cpp_while, const ::std::shared_ptr<execPrx>& yield, const ::std::shared_ptr<ifPrx>& _cpp_or, int global,
               ::std::function<void(::_cpp_and::assert)> response,
               ::std::function<void(::std::exception_ptr)> ex = nullptr,
               ::std::function<void(bool)> sent = nullptr,
               const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        return _makeLambdaOutgoing<::_cpp_and::assert>(std::move(response), std::move(ex), std::move(sent), this, &_cpp_and::printPrx::_iceI_raise, _cpp_else, _cpp_return, _cpp_while, yield, _cpp_or, global, context);
    }

    /// \cond INTERNAL
    void _iceI_raise(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<::_cpp_and::assert>>&, const _cpp_continue&, const ::std::shared_ptr<_cpp_for>&, const ::std::shared_ptr<delPrx>&, const ::std::shared_ptr<execPrx>&, const ::std::shared_ptr<ifPrx>&, int, const ::Ice::Context&);
    /// \endcond

    /**
     * Obtains the Slice type ID of this interface.
     * @return The fully-scoped type ID.
     */
    static const ::std::string& ice_staticId();

protected:

    /// \cond INTERNAL
    printPrx() = default;
    friend ::std::shared_ptr<printPrx> IceInternal::createProxy<printPrx>();

    virtual ::std::shared_ptr<::Ice::ObjectPrx> _newInstance() const override;
    /// \endcond
};

}

/// \cond STREAM
namespace Ice
{

template<>
struct StreamableTraits< ::_cpp_and::assert>
{
    static const StreamHelperCategory helper = StreamHelperCategoryEnum;
    static const int minValue = 0;
    static const int maxValue = 0;
    static const int minWireSize = 1;
    static const bool fixedLength = false;
};

template<>
struct StreamableTraits<::_cpp_and::_cpp_continue>
{
    static const StreamHelperCategory helper = StreamHelperCategoryStruct;
    static const int minWireSize = 4;
    static const bool fixedLength = true;
};

template<typename S>
struct StreamReader<::_cpp_and::_cpp_continue, S>
{
    static void read(S* istr, ::_cpp_and::_cpp_continue& v)
    {
        istr->readAll(v.def);
    }
};

template<typename S>
struct StreamReader<::_cpp_and::_cpp_for, S>
{
    static void read(S* istr, ::_cpp_and::_cpp_for& v)
    {
        istr->readAll(v.lambda, v.from, v.global);
    }
};

template<typename S>
struct StreamReader<::_cpp_and::is, S>
{
    static void read(S* istr, ::_cpp_and::is& v)
    {
        istr->readAll(v.lambda);
    }
};

template<typename S>
struct StreamWriter<::_cpp_and::_cpp_not, S>
{
    static void write(S* ostr, const ::_cpp_and::_cpp_not& v)
    {
        ostr->writeAll(v._cpp_or, v.pass);
    }
};

template<typename S>
struct StreamReader<::_cpp_and::_cpp_not, S>
{
    static void read(S* istr, ::_cpp_and::_cpp_not& v)
    {
        istr->readAll(v._cpp_or, v.pass);
    }
};

template<>
struct StreamableTraits< ::_cpp_and::EnumNone>
{
    static const StreamHelperCategory helper = StreamHelperCategoryEnum;
    static const int minValue = 0;
    static const int maxValue = 0;
    static const int minWireSize = 1;
    static const bool fixedLength = false;
};

}
/// \endcond

/// \cond INTERNAL
namespace _cpp_and
{

using delPtr = ::std::shared_ptr<del>;
using delPrxPtr = ::std::shared_ptr<delPrx>;

using execPtr = ::std::shared_ptr<exec>;
using execPrxPtr = ::std::shared_ptr<execPrx>;

using forPtr = ::std::shared_ptr<_cpp_for>;

using ifPtr = ::std::shared_ptr<_cpp_if>;
using ifPrxPtr = ::std::shared_ptr<ifPrx>;

using printPtr = ::std::shared_ptr<print>;
using printPrxPtr = ::std::shared_ptr<printPrx>;

}
/// \endcond

#include <IceUtil/PopDisableWarnings.h>
#endif
