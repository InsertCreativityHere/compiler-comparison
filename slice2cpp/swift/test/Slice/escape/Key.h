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

#include <Ice/PushDisableWarnings.h>
#include <Ice/Ice.h>

#ifndef ICE_IGNORE_VERSION
#   if ICE_INT_VERSION  != 30850
#       error Ice version mismatch: an exact match is required for beta generated code
#   endif
#endif

namespace _cpp_and
{
    enum class _cpp_continue : ::std::uint8_t
    {
        let,
        var
    };

    struct guard;

    struct defer;

    class breakPrx;

    class funcPrx;

    class _cpp_switch;
    using switchPtr = ::std::shared_ptr<_cpp_switch>;

    class doPrx;

    using fileprivate = ::std::vector<guard>;

    using _cpp_for = ::std::map<::std::string, guard>;

    /**
     * TODO: reenable when #1617 is fixed
     * interface friend
     * {
     * guard goto(continue if, guard d, defer inline, switch private, do mutable, break* namespace,
     * func* new, switch* not, do* operator, int or, int protected, int public, int register)
     * throws return, as;
     * }
     */
    constexpr ::std::int32_t is = 0;

    constexpr ::std::int32_t self = 0;

    constexpr ::std::int32_t _cpp_throw = 0;

    constexpr ::std::int32_t typealias = 0;

    constexpr ::std::int32_t internal = 0;

    constexpr ::std::int32_t _cpp_while = 0;

    constexpr ::std::int32_t _cpp_import = 0;

}

namespace _cpp_and
{

class breakPrx : public ::Ice::Proxy<breakPrx, ::Ice::ObjectPrx>
{
public:

    void _cpp_case(::std::int32_t _cpp_catch, ::std::int32_t& _cpp_try, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    [[nodiscard]] ::std::future<::std::int32_t> caseAsync(::std::int32_t _cpp_catch, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::function<void()>
    caseAsync(::std::int32_t _cpp_catch, ::std::function<void(::std::int32_t)> response, ::std::function<void(::std::exception_ptr)> ex = nullptr, ::std::function<void(bool)> sent = nullptr, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /// \cond INTERNAL
    void _iceI_case(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<::std::int32_t>>&, ::std::int32_t, const ::Ice::Context&) const;
    /// \endcond

    /**
     * Obtains the Slice type ID of this interface.
     * @return The fully-scoped type ID.
     */
    static const char* ice_staticId() noexcept;
    breakPrx(const breakPrx& other) noexcept : ::Ice::ObjectPrx(other)
    {
    }

    breakPrx(breakPrx&& other) noexcept : ::Ice::ObjectPrx(::std::move(other))
    {
    }

    breakPrx(const ::Ice::CommunicatorPtr& communicator, std::string_view proxyString) :
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

class funcPrx : public ::Ice::Proxy<funcPrx, ::Ice::ObjectPrx>
{
public:

    void _cpp_public(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    [[nodiscard]] ::std::future<void> publicAsync(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::function<void()>
    publicAsync(::std::function<void()> response, ::std::function<void(::std::exception_ptr)> ex = nullptr, ::std::function<void(bool)> sent = nullptr, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /// \cond INTERNAL
    void _iceI_public(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>&, const ::Ice::Context&) const;
    /// \endcond

    /**
     * Obtains the Slice type ID of this interface.
     * @return The fully-scoped type ID.
     */
    static const char* ice_staticId() noexcept;
    funcPrx(const funcPrx& other) noexcept : ::Ice::ObjectPrx(other)
    {
    }

    funcPrx(funcPrx&& other) noexcept : ::Ice::ObjectPrx(::std::move(other))
    {
    }

    funcPrx(const ::Ice::CommunicatorPtr& communicator, std::string_view proxyString) :
        ::Ice::ObjectPrx(communicator, proxyString)
    {
    }

    funcPrx& operator=(const funcPrx& rhs) noexcept
    {
        ::Ice::ObjectPrx::operator=(rhs);
        return *this;
    }

    funcPrx& operator=(funcPrx&& rhs) noexcept
    {
        ::Ice::ObjectPrx::operator=(::std::move(rhs));
        return *this;
    }

    /// \cond INTERNAL
    static funcPrx _fromReference(::IceInternal::ReferencePtr ref) { return funcPrx(::std::move(ref)); }

protected:

    funcPrx() = default;

    explicit funcPrx(::IceInternal::ReferencePtr&& ref) : ::Ice::ObjectPrx(::std::move(ref))
    {
    }
    /// \endcond
};

class doPrx : public ::Ice::Proxy<doPrx, funcPrx, breakPrx>
{
public:

    /**
     * Obtains the Slice type ID of this interface.
     * @return The fully-scoped type ID.
     */
    static const char* ice_staticId() noexcept;

#if defined(__GNUC__)
#   pragma GCC diagnostic push
#   pragma GCC diagnostic ignored "-Wextra" // initialize all virtual bases in correct order
#endif
    doPrx(const doPrx& other) noexcept : ::Ice::ObjectPrx(other)
    {
    }

    doPrx(doPrx&& other) noexcept : ::Ice::ObjectPrx(::std::move(other))
    {
    }

    doPrx(const ::Ice::CommunicatorPtr& communicator, std::string_view proxyString) :
        ::Ice::ObjectPrx(communicator, proxyString)
    {
    }

    doPrx& operator=(const doPrx& rhs) noexcept
    {
        ::Ice::ObjectPrx::operator=(rhs);
        return *this;
    }

    doPrx& operator=(doPrx&& rhs) noexcept
    {
        ::Ice::ObjectPrx::operator=(::std::move(rhs));
        return *this;
    }

    /// \cond INTERNAL
    static doPrx _fromReference(::IceInternal::ReferencePtr ref) { return doPrx(::std::move(ref)); }

protected:

    doPrx() = default;

    explicit doPrx(::IceInternal::ReferencePtr&& ref) : ::Ice::ObjectPrx(::std::move(ref))
    {
    }
    /// \endcond

#if defined(__GNUC__)
#   pragma GCC diagnostic pop
#endif
};

}

namespace _cpp_and
{

struct guard
{
    ::std::int32_t _cpp_default;

    /**
     * Obtains a tuple containing all of the struct's data members.
     * @return The data members in a tuple.
     */
    std::tuple<const ::std::int32_t&> ice_tuple() const
    {
        return std::tie(_cpp_default);
    }
};

struct defer
{
    ::std::string _cpp_else;

    /**
     * Obtains a tuple containing all of the struct's data members.
     * @return The data members in a tuple.
     */
    std::tuple<const ::std::string&> ice_tuple() const
    {
        return std::tie(_cpp_else);
    }
};

class _cpp_switch : public ::Ice::Value
{
public:
    /**
     * Default constructor.
     */
    _cpp_switch() noexcept = default;

    /**
     * One-shot constructor to initialize all data members.
     */
    _cpp_switch(::std::int32_t _cpp_if, ::std::optional<::_cpp_and::funcPrx> _cpp_export, ::std::int32_t _cpp_volatile) noexcept :
        _cpp_if(_cpp_if),
        _cpp_export(::std::move(_cpp_export)),
        _cpp_volatile(_cpp_volatile)
    {
    }

    /**
     * Obtains the Slice type ID of this value.
     * @return The fully-scoped type ID.
     */
    static const char* ice_staticId() noexcept;

    const char* ice_id() const noexcept override;

    /**
     * Obtains a tuple containing all of the value's data members.
     * @return The data members in a tuple.
     */
    std::tuple<const ::std::int32_t&, const ::std::optional<::_cpp_and::funcPrx>&, const ::std::int32_t&> ice_tuple() const
    {
        return std::tie(_cpp_if, _cpp_export, _cpp_volatile);
    }

    /**
     * Creates a shallow polymorphic copy of this instance.
     * @return The cloned value.
     */
    switchPtr ice_clone() const { return ::std::static_pointer_cast<_cpp_switch>(_iceCloneImpl()); }

    ::std::int32_t _cpp_if;
    ::std::optional<::_cpp_and::funcPrx> _cpp_export;
    ::std::int32_t _cpp_volatile;

protected:
    _cpp_switch(const _cpp_switch&) = default;

    ::Ice::ValuePtr _iceCloneImpl() const override;
    void _iceWriteImpl(::Ice::OutputStream*) const override;

    void _iceReadImpl(::Ice::InputStream*) override;
};

class _cpp_return : public ::Ice::UserException
{
public:
    /**
     * Default constructor.
     */
    _cpp_return() noexcept = default;

    /**
     * One-shot constructor to initialize all data members.
     */
    _cpp_return(::std::int32_t Int32) noexcept :
        Int32(Int32)
    {
    }

    /**
     * Obtains a tuple containing all of the exception's data members.
     * @return The data members in a tuple.
     */
    std::tuple<const ::std::int32_t&> ice_tuple() const
    {
        return std::tie(Int32);
    }

    /**
     * Obtains the Slice type ID of this exception.
     * @return The fully-scoped type ID.
     */
    static const char* ice_staticId() noexcept;

    const char* ice_id() const noexcept override;

    void ice_throw() const override;

    ::std::int32_t Int32;

protected:
    void _writeImpl(::Ice::OutputStream*) const override;

    void _readImpl(::Ice::InputStream*) override;
};

class as : public _cpp_return
{
public:
    /**
     * Default constructor.
     */
    as() noexcept = default;

    /**
     * One-shot constructor to initialize all data members.
     */
    as(::std::int32_t Int32, ::std::int32_t _cpp_static, ::std::int32_t _cpp_switch) noexcept :
        _cpp_return(Int32),
        _cpp_static(_cpp_static),
        _cpp_switch(_cpp_switch)
    {
    }

    /**
     * Obtains a tuple containing all of the exception's data members.
     * @return The data members in a tuple.
     */
    std::tuple<const ::std::int32_t&, const ::std::int32_t&, const ::std::int32_t&> ice_tuple() const
    {
        return std::tie(Int32, _cpp_static, _cpp_switch);
    }

    /**
     * Obtains the Slice type ID of this exception.
     * @return The fully-scoped type ID.
     */
    static const char* ice_staticId() noexcept;

    const char* ice_id() const noexcept override;

    void ice_throw() const override;

    ::std::int32_t _cpp_static;
    ::std::int32_t _cpp_switch;

protected:
    void _writeImpl(::Ice::OutputStream*) const override;

    void _readImpl(::Ice::InputStream*) override;
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
    static const char* ice_staticId() noexcept;

    virtual void caseAsync(::std::int32_t _cpp_catch, ::std::function<void(::std::int32_t _cpp_try)> response, ::std::function<void(::std::exception_ptr)> exception, const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    void _iceD_case(::Ice::IncomingRequest&, ::std::function<void(::Ice::OutgoingResponse)>);
    /// \endcond

    /// \cond INTERNAL
    void dispatch(::Ice::IncomingRequest&, ::std::function<void(::Ice::OutgoingResponse)>) override;
    /// \endcond
};

using breakPtr = ::std::shared_ptr<_cpp_break>;

class func : public virtual ::Ice::Object
{
public:

    using ProxyType = funcPrx;

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
    static const char* ice_staticId() noexcept;

    virtual void _cpp_public(const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    void _iceD_public(::Ice::IncomingRequest&, ::std::function<void(::Ice::OutgoingResponse)>);
    /// \endcond

    /// \cond INTERNAL
    void dispatch(::Ice::IncomingRequest&, ::std::function<void(::Ice::OutgoingResponse)>) override;
    /// \endcond
};

using funcPtr = ::std::shared_ptr<func>;

class _cpp_do : public virtual func,
                public virtual _cpp_break
{
public:

    using ProxyType = doPrx;

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
    static const char* ice_staticId() noexcept;

    /// \cond INTERNAL
    void dispatch(::Ice::IncomingRequest&, ::std::function<void(::Ice::OutgoingResponse)>) override;
    /// \endcond
};

using doPtr = ::std::shared_ptr<_cpp_do>;

}

/// \cond STREAM
namespace Ice
{

template<>
struct StreamableTraits< ::_cpp_and::_cpp_continue>
{
    static const StreamHelperCategory helper = StreamHelperCategoryEnum;
    static const int minValue = 0;
    static const int maxValue = 1;
    static const int minWireSize = 1;
    static const bool fixedLength = false;
};

template<>
struct StreamableTraits<::_cpp_and::guard>
{
    static const StreamHelperCategory helper = StreamHelperCategoryStruct;
    static const int minWireSize = 4;
    static const bool fixedLength = true;
};

template<>
struct StreamReader<::_cpp_and::guard>
{
    static void read(InputStream* istr, ::_cpp_and::guard& v)
    {
        istr->readAll(v._cpp_default);
    }
};

template<>
struct StreamableTraits<::_cpp_and::defer>
{
    static const StreamHelperCategory helper = StreamHelperCategoryStruct;
    static const int minWireSize = 1;
    static const bool fixedLength = false;
};

template<>
struct StreamReader<::_cpp_and::defer>
{
    static void read(InputStream* istr, ::_cpp_and::defer& v)
    {
        istr->readAll(v._cpp_else);
    }
};

template<>
struct StreamReader<::_cpp_and::_cpp_switch>
{
    static void read(InputStream* istr, ::_cpp_and::_cpp_switch& v)
    {
        istr->readAll(v._cpp_if, v._cpp_export, v._cpp_volatile);
    }
};

template<>
struct StreamReader<::_cpp_and::_cpp_return>
{
    static void read(InputStream* istr, ::_cpp_and::_cpp_return& v)
    {
        istr->readAll(v.Int32);
    }
};

template<>
struct StreamWriter<::_cpp_and::as>
{
    static void write(OutputStream* ostr, const ::_cpp_and::as& v)
    {
        ostr->writeAll(v._cpp_static, v._cpp_switch);
    }
};

template<>
struct StreamReader<::_cpp_and::as>
{
    static void read(InputStream* istr, ::_cpp_and::as& v)
    {
        istr->readAll(v._cpp_static, v._cpp_switch);
    }
};

}
/// \endcond

#include <Ice/PopDisableWarnings.h>
#endif
