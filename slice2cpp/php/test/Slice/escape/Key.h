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


enum class array : unsigned char
{
    as
};
struct _cpp_xor;
class breakPrx;

using breakPrxPtr = ::std::optional<breakPrx>;
class functionPrx;

using functionPrxPtr = ::std::optional<functionPrx>;
class diePrx;

using diePrxPtr = ::std::optional<diePrx>;
class echo;

using echoPtr = ::std::shared_ptr<echo>;
class enddeclarePrx;

using enddeclarePrxPtr = ::std::optional<enddeclarePrx>;

using endfor = ::std::vector<array>;

using endforeach = ::std::map<::std::string, array>;
class forPrx;

using forPrxPtr = ::std::optional<forPrx>;

constexpr ::std::int32_t _cpp_or = 0;

constexpr ::std::int32_t print = 0;

constexpr ::std::int32_t require_once = 0;

}

namespace _cpp_and
{

class breakPrx : public ::Ice::Proxy<breakPrx, ::Ice::ObjectPrx>
{
public:

    void _cpp_case(::std::int32_t _cpp_catch, ::std::int32_t& _cpp_try, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::future<::std::int32_t> caseAsync(::std::int32_t _cpp_catch, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::function<void()>
    caseAsync(::std::int32_t _cpp_catch, ::std::function<void(::std::int32_t)> response, ::std::function<void(::std::exception_ptr)> ex = nullptr, ::std::function<void(bool)> sent = nullptr, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /// \cond INTERNAL
    void _iceI_case(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<::std::int32_t>>&, ::std::int32_t, const ::Ice::Context&) const;
    /// \endcond

    /**
     * Obtains the Slice type ID of this interface.
     * @return The fully-scoped type ID.
     */
    static ::std::string_view ice_staticId();

    explicit breakPrx(const ::Ice::ObjectPrx& other) : ::Ice::ObjectPrx(other)
    {
    }

    breakPrx(const breakPrx& other) noexcept : ::Ice::ObjectPrx(other)
    {
    }

    breakPrx(breakPrx&& other) noexcept : ::Ice::ObjectPrx(::std::move(other))
    {
    }

    breakPrx(const ::std::shared_ptr<::Ice::Communicator>& communicator, const ::std::string& proxyString) :
        ::Ice::ObjectPrx(communicator, proxyString)
    {
    }

    breakPrx& operator=(const breakPrx& rhs) noexcept
    {
        ::Ice::ObjectPrx::operator=(rhs);
        return *this;
    }

    breakPrx& operator=(breakPrx&& rhs) noexcept
    {
        ::Ice::ObjectPrx::operator=(::std::move(rhs));
        return *this;
    }

    /// \cond INTERNAL
    static breakPrx _fromReference(::IceInternal::ReferencePtr ref) { return breakPrx(::std::move(ref)); }

protected:

    breakPrx() = default;

    explicit breakPrx(::IceInternal::ReferencePtr&& ref) : ::Ice::ObjectPrx(::std::move(ref))
    {
    }
    /// \endcond
};

class functionPrx : public ::Ice::Proxy<functionPrx, ::Ice::ObjectPrx>
{
public:

    void _cpp_continue(::std::int32_t declare, ::std::int32_t _cpp_default, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::future<void> continueAsync(::std::int32_t declare, ::std::int32_t _cpp_default, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::function<void()>
    continueAsync(::std::int32_t declare, ::std::int32_t _cpp_default, ::std::function<void()> response, ::std::function<void(::std::exception_ptr)> ex = nullptr, ::std::function<void(bool)> sent = nullptr, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /// \cond INTERNAL
    void _iceI_continue(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>&, ::std::int32_t, ::std::int32_t, const ::Ice::Context&) const;
    /// \endcond

    /**
     * Obtains the Slice type ID of this interface.
     * @return The fully-scoped type ID.
     */
    static ::std::string_view ice_staticId();

    explicit functionPrx(const ::Ice::ObjectPrx& other) : ::Ice::ObjectPrx(other)
    {
    }

    functionPrx(const functionPrx& other) noexcept : ::Ice::ObjectPrx(other)
    {
    }

    functionPrx(functionPrx&& other) noexcept : ::Ice::ObjectPrx(::std::move(other))
    {
    }

    functionPrx(const ::std::shared_ptr<::Ice::Communicator>& communicator, const ::std::string& proxyString) :
        ::Ice::ObjectPrx(communicator, proxyString)
    {
    }

    functionPrx& operator=(const functionPrx& rhs) noexcept
    {
        ::Ice::ObjectPrx::operator=(rhs);
        return *this;
    }

    functionPrx& operator=(functionPrx&& rhs) noexcept
    {
        ::Ice::ObjectPrx::operator=(::std::move(rhs));
        return *this;
    }

    /// \cond INTERNAL
    static functionPrx _fromReference(::IceInternal::ReferencePtr ref) { return functionPrx(::std::move(ref)); }

protected:

    functionPrx() = default;

    explicit functionPrx(::IceInternal::ReferencePtr&& ref) : ::Ice::ObjectPrx(::std::move(ref))
    {
    }
    /// \endcond
};

class diePrx : public ::Ice::Proxy<diePrx, ::Ice::ObjectPrx>
{
public:

    void _cpp_do(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::future<void> doAsync(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::function<void()>
    doAsync(::std::function<void()> response, ::std::function<void(::std::exception_ptr)> ex = nullptr, ::std::function<void(bool)> sent = nullptr, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /// \cond INTERNAL
    void _iceI_do(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>&, const ::Ice::Context&) const;
    /// \endcond

    /**
     * Obtains the Slice type ID of this interface.
     * @return The fully-scoped type ID.
     */
    static ::std::string_view ice_staticId();

    explicit diePrx(const ::Ice::ObjectPrx& other) : ::Ice::ObjectPrx(other)
    {
    }

    diePrx(const diePrx& other) noexcept : ::Ice::ObjectPrx(other)
    {
    }

    diePrx(diePrx&& other) noexcept : ::Ice::ObjectPrx(::std::move(other))
    {
    }

    diePrx(const ::std::shared_ptr<::Ice::Communicator>& communicator, const ::std::string& proxyString) :
        ::Ice::ObjectPrx(communicator, proxyString)
    {
    }

    diePrx& operator=(const diePrx& rhs) noexcept
    {
        ::Ice::ObjectPrx::operator=(rhs);
        return *this;
    }

    diePrx& operator=(diePrx&& rhs) noexcept
    {
        ::Ice::ObjectPrx::operator=(::std::move(rhs));
        return *this;
    }

    /// \cond INTERNAL
    static diePrx _fromReference(::IceInternal::ReferencePtr ref) { return diePrx(::std::move(ref)); }

protected:

    diePrx() = default;

    explicit diePrx(::IceInternal::ReferencePtr&& ref) : ::Ice::ObjectPrx(::std::move(ref))
    {
    }
    /// \endcond
};

class enddeclarePrx : public ::Ice::Proxy<enddeclarePrx, diePrx, functionPrx>
{
public:

    /**
     * Obtains the Slice type ID of this interface.
     * @return The fully-scoped type ID.
     */
    static ::std::string_view ice_staticId();

#if defined(__GNUC__)
#   pragma GCC diagnostic push
#   pragma GCC diagnostic ignored "-Wextra" // initialize all virtual bases in correct order
#endif

    explicit enddeclarePrx(const ::Ice::ObjectPrx& other) : ::Ice::ObjectPrx(other)
    {
    }

    enddeclarePrx(const enddeclarePrx& other) noexcept : ::Ice::ObjectPrx(other)
    {
    }

    enddeclarePrx(enddeclarePrx&& other) noexcept : ::Ice::ObjectPrx(::std::move(other))
    {
    }

    enddeclarePrx(const ::std::shared_ptr<::Ice::Communicator>& communicator, const ::std::string& proxyString) :
        ::Ice::ObjectPrx(communicator, proxyString)
    {
    }

    enddeclarePrx& operator=(const enddeclarePrx& rhs) noexcept
    {
        ::Ice::ObjectPrx::operator=(rhs);
        return *this;
    }

    enddeclarePrx& operator=(enddeclarePrx&& rhs) noexcept
    {
        ::Ice::ObjectPrx::operator=(::std::move(rhs));
        return *this;
    }

    /// \cond INTERNAL
    static enddeclarePrx _fromReference(::IceInternal::ReferencePtr ref) { return enddeclarePrx(::std::move(ref)); }

protected:

    enddeclarePrx() = default;

    explicit enddeclarePrx(::IceInternal::ReferencePtr&& ref) : ::Ice::ObjectPrx(::std::move(ref))
    {
    }
    /// \endcond

#if defined(__GNUC__)
#   pragma GCC diagnostic pop
#endif
};

class forPrx : public ::Ice::Proxy<forPrx, ::Ice::ObjectPrx>
{
public:

    array foreach(const ::std::optional<breakPrx>& _cpp_if, const ::std::shared_ptr<::and::echo>& global, const ::std::optional<functionPrx>& include, const ::std::optional<diePrx>& _cpp_return, const ::std::optional<enddeclarePrx>& list, ::std::int32_t _cpp_new, ::std::int32_t _cpp_static, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::future<array> foreachAsync(const ::std::optional<breakPrx>& _cpp_if, const ::std::shared_ptr<::and::echo>& global, const ::std::optional<functionPrx>& include, const ::std::optional<diePrx>& _cpp_return, const ::std::optional<enddeclarePrx>& list, ::std::int32_t _cpp_new, ::std::int32_t _cpp_static, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::function<void()>
    foreachAsync(const ::std::optional<breakPrx>& _cpp_if, const ::std::shared_ptr<::and::echo>& global, const ::std::optional<functionPrx>& include, const ::std::optional<diePrx>& _cpp_return, const ::std::optional<enddeclarePrx>& list, ::std::int32_t _cpp_new, ::std::int32_t _cpp_static, ::std::function<void(::_cpp_and::array)> response, ::std::function<void(::std::exception_ptr)> ex = nullptr, ::std::function<void(bool)> sent = nullptr, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /// \cond INTERNAL
    void _iceI_foreach(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<array>>&, const ::std::optional<breakPrx>&, const ::std::shared_ptr<::and::echo>&, const ::std::optional<functionPrx>&, const ::std::optional<diePrx>&, const ::std::optional<enddeclarePrx>&, ::std::int32_t, ::std::int32_t, const ::Ice::Context&) const;
    /// \endcond

    /**
     * Obtains the Slice type ID of this interface.
     * @return The fully-scoped type ID.
     */
    static ::std::string_view ice_staticId();

    explicit forPrx(const ::Ice::ObjectPrx& other) : ::Ice::ObjectPrx(other)
    {
    }

    forPrx(const forPrx& other) noexcept : ::Ice::ObjectPrx(other)
    {
    }

    forPrx(forPrx&& other) noexcept : ::Ice::ObjectPrx(::std::move(other))
    {
    }

    forPrx(const ::std::shared_ptr<::Ice::Communicator>& communicator, const ::std::string& proxyString) :
        ::Ice::ObjectPrx(communicator, proxyString)
    {
    }

    forPrx& operator=(const forPrx& rhs) noexcept
    {
        ::Ice::ObjectPrx::operator=(rhs);
        return *this;
    }

    forPrx& operator=(forPrx&& rhs) noexcept
    {
        ::Ice::ObjectPrx::operator=(::std::move(rhs));
        return *this;
    }

    /// \cond INTERNAL
    static forPrx _fromReference(::IceInternal::ReferencePtr ref) { return forPrx(::std::move(ref)); }

protected:

    forPrx() = default;

    explicit forPrx(::IceInternal::ReferencePtr&& ref) : ::Ice::ObjectPrx(::std::move(ref))
    {
    }
    /// \endcond
};

}

namespace _cpp_and
{

struct _cpp_xor
{
    ::std::int32_t abstract;
    ::std::int32_t clone;
    ::std::int32_t _cpp_private;
    ::std::int32_t _cpp_protected;
    ::std::int32_t _cpp_public;
    ::std::int32_t _cpp_this;
    ::std::int32_t _cpp_throw;
    ::std::int32_t use;
    ::std::int32_t var;

    /**
     * Obtains a tuple containing all of the struct's data members.
     * @return The data members in a tuple.
     */
    std::tuple<const ::std::int32_t&, const ::std::int32_t&, const ::std::int32_t&, const ::std::int32_t&, const ::std::int32_t&, const ::std::int32_t&, const ::std::int32_t&, const ::std::int32_t&, const ::std::int32_t&> ice_tuple() const
    {
        return std::tie(abstract, clone, _cpp_private, _cpp_protected, _cpp_public, _cpp_this, _cpp_throw, use, var);
    }
};

class echo : public ::Ice::ValueHelper<echo, ::Ice::Value>
{
public:

    virtual ~echo();

    echo() = default;

    echo(const echo&) = default;
    echo(echo&&) = default;
    echo& operator=(const echo&) = default;
    echo& operator=(echo&&) = default;

    /**
     * One-shot constructor to initialize all data members.
     */
    echo(::std::int32_t _cpp_if, ::std::int32_t _cpp_else, const ::std::optional<::_cpp_and::diePrx>& elseif, ::std::int32_t empty) :
        _cpp_if(_cpp_if),
        _cpp_else(_cpp_else),
        elseif(elseif),
        empty(empty)
    {
    }

    /**
     * Obtains a tuple containing all of the value's data members.
     * @return The data members in a tuple.
     */
    std::tuple<const ::std::int32_t&, const ::std::int32_t&, const ::std::optional<::_cpp_and::diePrx>&, const ::std::int32_t&> ice_tuple() const
    {
        return std::tie(_cpp_if, _cpp_else, elseif, empty);
    }

    /**
     * Obtains the Slice type ID of this value.
     * @return The fully-scoped type ID.
     */
    static ::std::string_view ice_staticId();

    ::std::int32_t _cpp_if;
    ::std::int32_t _cpp_else;
    ::std::optional<::_cpp_and::diePrx> elseif;
    ::std::int32_t empty;
};

/// \cond INTERNAL
static echo _iceS_echo_init;
/// \endcond

class endif : public ::Ice::UserExceptionHelper<endif, ::Ice::UserException>
{
public:

    virtual ~endif();

    endif(const endif&) = default;

    endif() = default;

    /**
     * One-shot constructor to initialize all data members.
     */
    endif(::std::int32_t endswitch) :
        endswitch(endswitch)
    {
    }

    /**
     * Obtains a tuple containing all of the exception's data members.
     * @return The data members in a tuple.
     */
    std::tuple<const ::std::int32_t&> ice_tuple() const
    {
        return std::tie(endswitch);
    }

    /**
     * Obtains the Slice type ID of this exception.
     * @return The fully-scoped type ID.
     */
    static ::std::string_view ice_staticId();

    ::std::int32_t endswitch;
};

class endwhile : public ::Ice::UserExceptionHelper<endwhile, endif>
{
public:

    virtual ~endwhile();

    endwhile(const endwhile&) = default;

    endwhile() = default;

    /**
     * One-shot constructor to initialize all data members.
     */
    endwhile(::std::int32_t endswitch, ::std::int32_t eval, ::std::int32_t exit) :
        ::Ice::UserExceptionHelper<endwhile, endif>(endswitch),
        eval(eval),
        exit(exit)
    {
    }

    /**
     * Obtains a tuple containing all of the exception's data members.
     * @return The data members in a tuple.
     */
    std::tuple<const ::std::int32_t&, const ::std::int32_t&, const ::std::int32_t&> ice_tuple() const
    {
        return std::tie(endswitch, eval, exit);
    }

    /**
     * Obtains the Slice type ID of this exception.
     * @return The fully-scoped type ID.
     */
    static ::std::string_view ice_staticId();

    ::std::int32_t eval;
    ::std::int32_t exit;
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

class _cpp_break : public virtual ::Ice::Object
{
public:

    using ProxyType = breakPrx;

    /**
     * Obtains a list of the Slice type IDs representing the interfaces supported by this object.
     * @param current The Current object for the invocation.
     * @return A list of fully-scoped type IDs.
     */
    ::std::vector<::std::string> ice_ids(const ::Ice::Current& current) const override;

    /**
     * Obtains a Slice type ID representing the most-derived interface supported by this object.
     * @param current The Current object for the invocation.
     * @return A fully-scoped type ID.
     */
    ::std::string ice_id(const ::Ice::Current& current) const override;

    /**
     * Obtains the Slice type ID corresponding to this interface.
     * @return A fully-scoped type ID.
     */
    static ::std::string_view ice_staticId();

    virtual void _cpp_case(::std::int32_t _cpp_catch, ::std::int32_t& _cpp_try, const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    bool _iceD_case(::IceInternal::Incoming&);
    /// \endcond

    /// \cond INTERNAL
    virtual bool _iceDispatch(::IceInternal::Incoming&) override;
    /// \endcond
};

using breakPtr = ::std::shared_ptr<_cpp_break>;

class function : public virtual ::Ice::Object
{
public:

    using ProxyType = functionPrx;

    /**
     * Obtains a list of the Slice type IDs representing the interfaces supported by this object.
     * @param current The Current object for the invocation.
     * @return A list of fully-scoped type IDs.
     */
    ::std::vector<::std::string> ice_ids(const ::Ice::Current& current) const override;

    /**
     * Obtains a Slice type ID representing the most-derived interface supported by this object.
     * @param current The Current object for the invocation.
     * @return A fully-scoped type ID.
     */
    ::std::string ice_id(const ::Ice::Current& current) const override;

    /**
     * Obtains the Slice type ID corresponding to this interface.
     * @return A fully-scoped type ID.
     */
    static ::std::string_view ice_staticId();

    virtual void _cpp_continue(::std::int32_t declare, ::std::int32_t _cpp_default, const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    bool _iceD_continue(::IceInternal::Incoming&);
    /// \endcond

    /// \cond INTERNAL
    virtual bool _iceDispatch(::IceInternal::Incoming&) override;
    /// \endcond
};

using functionPtr = ::std::shared_ptr<function>;

class die : public virtual ::Ice::Object
{
public:

    using ProxyType = diePrx;

    /**
     * Obtains a list of the Slice type IDs representing the interfaces supported by this object.
     * @param current The Current object for the invocation.
     * @return A list of fully-scoped type IDs.
     */
    ::std::vector<::std::string> ice_ids(const ::Ice::Current& current) const override;

    /**
     * Obtains a Slice type ID representing the most-derived interface supported by this object.
     * @param current The Current object for the invocation.
     * @return A fully-scoped type ID.
     */
    ::std::string ice_id(const ::Ice::Current& current) const override;

    /**
     * Obtains the Slice type ID corresponding to this interface.
     * @return A fully-scoped type ID.
     */
    static ::std::string_view ice_staticId();

    virtual void _cpp_do(const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    bool _iceD_do(::IceInternal::Incoming&);
    /// \endcond

    /// \cond INTERNAL
    virtual bool _iceDispatch(::IceInternal::Incoming&) override;
    /// \endcond
};

using diePtr = ::std::shared_ptr<die>;

class enddeclare : public virtual die,
                   public virtual function
{
public:

    using ProxyType = enddeclarePrx;

    /**
     * Obtains a list of the Slice type IDs representing the interfaces supported by this object.
     * @param current The Current object for the invocation.
     * @return A list of fully-scoped type IDs.
     */
    ::std::vector<::std::string> ice_ids(const ::Ice::Current& current) const override;

    /**
     * Obtains a Slice type ID representing the most-derived interface supported by this object.
     * @param current The Current object for the invocation.
     * @return A fully-scoped type ID.
     */
    ::std::string ice_id(const ::Ice::Current& current) const override;

    /**
     * Obtains the Slice type ID corresponding to this interface.
     * @return A fully-scoped type ID.
     */
    static ::std::string_view ice_staticId();

    /// \cond INTERNAL
    virtual bool _iceDispatch(::IceInternal::Incoming&) override;
    /// \endcond
};

using enddeclarePtr = ::std::shared_ptr<enddeclare>;

class _cpp_for : public virtual ::Ice::Object
{
public:

    using ProxyType = forPrx;

    /**
     * Obtains a list of the Slice type IDs representing the interfaces supported by this object.
     * @param current The Current object for the invocation.
     * @return A list of fully-scoped type IDs.
     */
    ::std::vector<::std::string> ice_ids(const ::Ice::Current& current) const override;

    /**
     * Obtains a Slice type ID representing the most-derived interface supported by this object.
     * @param current The Current object for the invocation.
     * @return A fully-scoped type ID.
     */
    ::std::string ice_id(const ::Ice::Current& current) const override;

    /**
     * Obtains the Slice type ID corresponding to this interface.
     * @return A fully-scoped type ID.
     */
    static ::std::string_view ice_staticId();

    virtual array foreach(::std::optional<breakPrx> _cpp_if, ::std::shared_ptr<::and::echo> global, ::std::optional<functionPrx> include, ::std::optional<diePrx> _cpp_return, ::std::optional<enddeclarePrx> list, ::std::int32_t _cpp_new, ::std::int32_t _cpp_static, const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    bool _iceD_foreach(::IceInternal::Incoming&);
    /// \endcond

    /// \cond INTERNAL
    virtual bool _iceDispatch(::IceInternal::Incoming&) override;
    /// \endcond
};

using forPtr = ::std::shared_ptr<_cpp_for>;

}

/// \cond STREAM
namespace Ice
{

template<>
struct StreamableTraits< ::_cpp_and::array>
{
    static const StreamHelperCategory helper = StreamHelperCategoryEnum;
    static const int minValue = 0;
    static const int maxValue = 0;
    static const int minWireSize = 1;
    static const bool fixedLength = false;
};

template<>
struct StreamableTraits<::_cpp_and::_cpp_xor>
{
    static const StreamHelperCategory helper = StreamHelperCategoryStruct;
    static const int minWireSize = 36;
    static const bool fixedLength = true;
};

template<typename S>
struct StreamReader<::_cpp_and::_cpp_xor, S>
{
    static void read(S* istr, ::_cpp_and::_cpp_xor& v)
    {
        istr->readAll(v.abstract, v.clone, v._cpp_private, v._cpp_protected, v._cpp_public, v._cpp_this, v._cpp_throw, v.use, v.var);
    }
};

template<typename S>
struct StreamReader<::_cpp_and::echo, S>
{
    static void read(S* istr, ::_cpp_and::echo& v)
    {
        istr->readAll(v._cpp_if, v._cpp_else, v.elseif, v.empty);
    }
};

template<typename S>
struct StreamReader<::_cpp_and::endif, S>
{
    static void read(S* istr, ::_cpp_and::endif& v)
    {
        istr->readAll(v.endswitch);
    }
};

template<typename S>
struct StreamWriter<::_cpp_and::endwhile, S>
{
    static void write(S* ostr, const ::_cpp_and::endwhile& v)
    {
        ostr->writeAll(v.eval, v.exit);
    }
};

template<typename S>
struct StreamReader<::_cpp_and::endwhile, S>
{
    static void read(S* istr, ::_cpp_and::endwhile& v)
    {
        istr->readAll(v.eval, v.exit);
    }
};

}
/// \endcond

#include <IceUtil/PopDisableWarnings.h>
#endif
