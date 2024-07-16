//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `Wstring.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

#ifndef __Wstring_h__
#define __Wstring_h__

#include <Ice/PushDisableWarnings.h>
#include <Ice/Ice.h>

#ifndef ICE_IGNORE_VERSION
#   if ICE_INT_VERSION  != 30850
#       error Ice version mismatch: an exact match is required for beta generated code
#   endif
#endif

namespace Test1
{
    using WstringSeq = ::std::vector<::std::wstring>;

    using WstringWStringDict = ::std::map<::std::wstring, ::std::wstring>;

    struct WstringStruct;

    class WstringClassPrx;

}

namespace Test2
{
    using WstringSeq = ::std::vector<::std::wstring>;

    using WstringWStringDict = ::std::map<::std::wstring, ::std::wstring>;

    struct WstringStruct;

    class WstringClassPrx;

}

namespace Test1
{

class WstringClassPrx : public ::Ice::Proxy<WstringClassPrx, ::Ice::ObjectPrx>
{
public:

    ::std::wstring opString(::std::wstring_view s1, ::std::wstring& s2, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::future<::std::tuple<::std::wstring, ::std::wstring>> opStringAsync(::std::wstring_view s1, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::function<void()>
    opStringAsync(::std::wstring_view s1, ::std::function<void(::std::wstring, ::std::wstring)> response, ::std::function<void(::std::exception_ptr)> ex = nullptr, ::std::function<void(bool)> sent = nullptr, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /// \cond INTERNAL
    void _iceI_opString(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<::std::tuple<::std::wstring, ::std::wstring>>>&, ::std::wstring_view, const ::Ice::Context&) const;
    /// \endcond

    WstringStruct opStruct(const WstringStruct& s1, WstringStruct& s2, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::future<::std::tuple<WstringStruct, WstringStruct>> opStructAsync(const WstringStruct& s1, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::function<void()>
    opStructAsync(const WstringStruct& s1, ::std::function<void(::Test1::WstringStruct, ::Test1::WstringStruct)> response, ::std::function<void(::std::exception_ptr)> ex = nullptr, ::std::function<void(bool)> sent = nullptr, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /// \cond INTERNAL
    void _iceI_opStruct(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<::std::tuple<WstringStruct, WstringStruct>>>&, const WstringStruct&, const ::Ice::Context&) const;
    /// \endcond

    void throwExcept(::std::wstring_view reason, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::future<void> throwExceptAsync(::std::wstring_view reason, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::function<void()>
    throwExceptAsync(::std::wstring_view reason, ::std::function<void()> response, ::std::function<void(::std::exception_ptr)> ex = nullptr, ::std::function<void(bool)> sent = nullptr, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /// \cond INTERNAL
    void _iceI_throwExcept(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>&, ::std::wstring_view, const ::Ice::Context&) const;
    /// \endcond

    /**
     * Obtains the Slice type ID of this interface.
     * @return The fully-scoped type ID.
     */
    static const char* ice_staticId() noexcept;

    explicit WstringClassPrx(const ::Ice::ObjectPrx& other) : ::Ice::ObjectPrx(other)
    {
    }

    WstringClassPrx(const WstringClassPrx& other) noexcept : ::Ice::ObjectPrx(other)
    {
    }

    WstringClassPrx(WstringClassPrx&& other) noexcept : ::Ice::ObjectPrx(::std::move(other))
    {
    }

    WstringClassPrx(const ::Ice::CommunicatorPtr& communicator, std::string_view proxyString) :
        ::Ice::ObjectPrx(communicator, proxyString)
    {
    }

    WstringClassPrx& operator=(const WstringClassPrx& rhs) noexcept
    {
        ::Ice::ObjectPrx::operator=(rhs);
        return *this;
    }

    WstringClassPrx& operator=(WstringClassPrx&& rhs) noexcept
    {
        ::Ice::ObjectPrx::operator=(::std::move(rhs));
        return *this;
    }

    /// \cond INTERNAL
    static WstringClassPrx _fromReference(::IceInternal::ReferencePtr ref) { return WstringClassPrx(::std::move(ref)); }

protected:

    WstringClassPrx() = default;

    explicit WstringClassPrx(::IceInternal::ReferencePtr&& ref) : ::Ice::ObjectPrx(::std::move(ref))
    {
    }
    /// \endcond
};

}

namespace Test2
{

class WstringClassPrx : public ::Ice::Proxy<WstringClassPrx, ::Ice::ObjectPrx>
{
public:

    ::std::wstring opString(::std::wstring_view s1, ::std::wstring& s2, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::future<::std::tuple<::std::wstring, ::std::wstring>> opStringAsync(::std::wstring_view s1, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::function<void()>
    opStringAsync(::std::wstring_view s1, ::std::function<void(::std::wstring, ::std::wstring)> response, ::std::function<void(::std::exception_ptr)> ex = nullptr, ::std::function<void(bool)> sent = nullptr, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /// \cond INTERNAL
    void _iceI_opString(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<::std::tuple<::std::wstring, ::std::wstring>>>&, ::std::wstring_view, const ::Ice::Context&) const;
    /// \endcond

    WstringStruct opStruct(const WstringStruct& s1, WstringStruct& s2, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::future<::std::tuple<WstringStruct, WstringStruct>> opStructAsync(const WstringStruct& s1, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::function<void()>
    opStructAsync(const WstringStruct& s1, ::std::function<void(::Test2::WstringStruct, ::Test2::WstringStruct)> response, ::std::function<void(::std::exception_ptr)> ex = nullptr, ::std::function<void(bool)> sent = nullptr, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /// \cond INTERNAL
    void _iceI_opStruct(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<::std::tuple<WstringStruct, WstringStruct>>>&, const WstringStruct&, const ::Ice::Context&) const;
    /// \endcond

    void throwExcept(::std::wstring_view reason, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::future<void> throwExceptAsync(::std::wstring_view reason, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::function<void()>
    throwExceptAsync(::std::wstring_view reason, ::std::function<void()> response, ::std::function<void(::std::exception_ptr)> ex = nullptr, ::std::function<void(bool)> sent = nullptr, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /// \cond INTERNAL
    void _iceI_throwExcept(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>&, ::std::wstring_view, const ::Ice::Context&) const;
    /// \endcond

    /**
     * Obtains the Slice type ID of this interface.
     * @return The fully-scoped type ID.
     */
    static const char* ice_staticId() noexcept;

    explicit WstringClassPrx(const ::Ice::ObjectPrx& other) : ::Ice::ObjectPrx(other)
    {
    }

    WstringClassPrx(const WstringClassPrx& other) noexcept : ::Ice::ObjectPrx(other)
    {
    }

    WstringClassPrx(WstringClassPrx&& other) noexcept : ::Ice::ObjectPrx(::std::move(other))
    {
    }

    WstringClassPrx(const ::Ice::CommunicatorPtr& communicator, std::string_view proxyString) :
        ::Ice::ObjectPrx(communicator, proxyString)
    {
    }

    WstringClassPrx& operator=(const WstringClassPrx& rhs) noexcept
    {
        ::Ice::ObjectPrx::operator=(rhs);
        return *this;
    }

    WstringClassPrx& operator=(WstringClassPrx&& rhs) noexcept
    {
        ::Ice::ObjectPrx::operator=(::std::move(rhs));
        return *this;
    }

    /// \cond INTERNAL
    static WstringClassPrx _fromReference(::IceInternal::ReferencePtr ref) { return WstringClassPrx(::std::move(ref)); }

protected:

    WstringClassPrx() = default;

    explicit WstringClassPrx(::IceInternal::ReferencePtr&& ref) : ::Ice::ObjectPrx(::std::move(ref))
    {
    }
    /// \endcond
};

}

namespace Test1
{

struct WstringStruct
{
    ::std::wstring s;

    /**
     * Obtains a tuple containing all of the struct's data members.
     * @return The data members in a tuple.
     */
    std::tuple<const ::std::wstring&> ice_tuple() const
    {
        return std::tie(s);
    }
};

class WstringException : public ::Ice::UserException
{
public:
    /**
     * Default constructor.
     */
    WstringException() noexcept = default;

    /**
     * One-shot constructor to initialize all data members.
     */
    WstringException(::std::wstring reason) noexcept :
        reason(::std::move(reason))
    {
    }

    /**
     * Obtains a tuple containing all of the exception's data members.
     * @return The data members in a tuple.
     */
    std::tuple<const ::std::wstring&> ice_tuple() const
    {
        return std::tie(reason);
    }

    /**
     * Obtains the Slice type ID of this exception.
     * @return The fully-scoped type ID.
     */
    static const char* ice_staticId() noexcept;

    const char* ice_id() const noexcept override;

    void ice_throw() const override;

    ::std::wstring reason;

protected:
    void _writeImpl(::Ice::OutputStream*) const override;

    void _readImpl(::Ice::InputStream*) override;
};

/// \cond INTERNAL
static WstringException _iceS_WstringException_init;
/// \endcond

using Ice::operator<;
using Ice::operator<=;
using Ice::operator>;
using Ice::operator>=;
using Ice::operator==;
using Ice::operator!=;

}

namespace Test2
{

struct WstringStruct
{
    ::std::wstring s;

    /**
     * Obtains a tuple containing all of the struct's data members.
     * @return The data members in a tuple.
     */
    std::tuple<const ::std::wstring&> ice_tuple() const
    {
        return std::tie(s);
    }
};

class WstringException : public ::Ice::UserException
{
public:
    /**
     * Default constructor.
     */
    WstringException() noexcept = default;

    /**
     * One-shot constructor to initialize all data members.
     */
    WstringException(::std::wstring reason) noexcept :
        reason(::std::move(reason))
    {
    }

    /**
     * Obtains a tuple containing all of the exception's data members.
     * @return The data members in a tuple.
     */
    std::tuple<const ::std::wstring&> ice_tuple() const
    {
        return std::tie(reason);
    }

    /**
     * Obtains the Slice type ID of this exception.
     * @return The fully-scoped type ID.
     */
    static const char* ice_staticId() noexcept;

    const char* ice_id() const noexcept override;

    void ice_throw() const override;

    ::std::wstring reason;

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

namespace Test1
{

class WstringClass : public virtual ::Ice::Object
{
public:

    using ProxyType = WstringClassPrx;

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

    virtual ::std::wstring opString(::std::wstring s1, ::std::wstring& s2, const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    void _iceD_opString(::Ice::IncomingRequest&, ::std::function<void(::Ice::OutgoingResponse)>);
    /// \endcond

    virtual WstringStruct opStruct(WstringStruct s1, WstringStruct& s2, const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    void _iceD_opStruct(::Ice::IncomingRequest&, ::std::function<void(::Ice::OutgoingResponse)>);
    /// \endcond

    virtual void throwExcept(::std::wstring reason, const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    void _iceD_throwExcept(::Ice::IncomingRequest&, ::std::function<void(::Ice::OutgoingResponse)>);
    /// \endcond

    /// \cond INTERNAL
    void dispatch(::Ice::IncomingRequest&, ::std::function<void(::Ice::OutgoingResponse)>) override;
    /// \endcond
};

using WstringClassPtr = ::std::shared_ptr<WstringClass>;

}

namespace Test2
{

class WstringClass : public virtual ::Ice::Object
{
public:

    using ProxyType = WstringClassPrx;

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

    virtual ::std::wstring opString(::std::wstring s1, ::std::wstring& s2, const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    void _iceD_opString(::Ice::IncomingRequest&, ::std::function<void(::Ice::OutgoingResponse)>);
    /// \endcond

    virtual WstringStruct opStruct(WstringStruct s1, WstringStruct& s2, const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    void _iceD_opStruct(::Ice::IncomingRequest&, ::std::function<void(::Ice::OutgoingResponse)>);
    /// \endcond

    virtual void throwExcept(::std::wstring reason, const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    void _iceD_throwExcept(::Ice::IncomingRequest&, ::std::function<void(::Ice::OutgoingResponse)>);
    /// \endcond

    /// \cond INTERNAL
    void dispatch(::Ice::IncomingRequest&, ::std::function<void(::Ice::OutgoingResponse)>) override;
    /// \endcond
};

using WstringClassPtr = ::std::shared_ptr<WstringClass>;

}

/// \cond STREAM
namespace Ice
{

template<>
struct StreamableTraits<::Test1::WstringStruct>
{
    static const StreamHelperCategory helper = StreamHelperCategoryStruct;
    static const int minWireSize = 1;
    static const bool fixedLength = false;
};

template<>
struct StreamReader<::Test1::WstringStruct>
{
    static void read(InputStream* istr, ::Test1::WstringStruct& v)
    {
        istr->readAll(v.s);
    }
};

template<>
struct StreamReader<::Test1::WstringException>
{
    static void read(InputStream* istr, ::Test1::WstringException& v)
    {
        istr->readAll(v.reason);
    }
};

}
/// \endcond

/// \cond STREAM
namespace Ice
{

template<>
struct StreamableTraits<::Test2::WstringStruct>
{
    static const StreamHelperCategory helper = StreamHelperCategoryStruct;
    static const int minWireSize = 1;
    static const bool fixedLength = false;
};

template<>
struct StreamReader<::Test2::WstringStruct>
{
    static void read(InputStream* istr, ::Test2::WstringStruct& v)
    {
        istr->readAll(v.s);
    }
};

template<>
struct StreamReader<::Test2::WstringException>
{
    static void read(InputStream* istr, ::Test2::WstringException& v)
    {
        istr->readAll(v.reason);
    }
};

}
/// \endcond

#include <Ice/PopDisableWarnings.h>
#endif
