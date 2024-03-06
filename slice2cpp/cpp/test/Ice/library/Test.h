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

#ifndef LIBRARY_TEST_API
#   if defined(ICE_STATIC_LIBS)
#       define LIBRARY_TEST_API /**/
#   elif defined(LIBRARY_TEST_API_EXPORTS)
#       define LIBRARY_TEST_API ICE_DECLSPEC_EXPORT
#   else
#       define LIBRARY_TEST_API ICE_DECLSPEC_IMPORT
#   endif
#endif

namespace Test
{

class MyInterfacePrx;

using MyInterfacePrxPtr = ::std::optional<MyInterfacePrx>;

}

namespace Test
{

class LIBRARY_TEST_API MyInterfacePrx : public ::Ice::Proxy<MyInterfacePrx, ::Ice::ObjectPrx>
{
public:

    void op(bool throwIt, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::future<void> opAsync(bool throwIt, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::function<void()>
    opAsync(bool throwIt, ::std::function<void()> response, ::std::function<void(::std::exception_ptr)> ex = nullptr, ::std::function<void(bool)> sent = nullptr, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /// \cond INTERNAL
    void _iceI_op(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>&, bool, const ::Ice::Context&) const;
    /// \endcond

    /**
     * Obtains the Slice type ID of this interface.
     * @return The fully-scoped type ID.
     */
    static ::std::string_view ice_staticId();

    explicit MyInterfacePrx(const ::Ice::ObjectPrx& other) : ::Ice::ObjectPrx(other)
    {
    }

    MyInterfacePrx(const MyInterfacePrx& other) noexcept : ::Ice::ObjectPrx(other)
    {
    }

    MyInterfacePrx(MyInterfacePrx&& other) noexcept : ::Ice::ObjectPrx(::std::move(other))
    {
    }

    MyInterfacePrx(const ::std::shared_ptr<::Ice::Communicator>& communicator, const ::std::string& proxyString) :
        ::Ice::ObjectPrx(communicator, proxyString)
    {
    }

    MyInterfacePrx& operator=(const MyInterfacePrx& rhs) noexcept
    {
        ::Ice::ObjectPrx::operator=(rhs);
        return *this;
    }

    MyInterfacePrx& operator=(MyInterfacePrx&& rhs) noexcept
    {
        ::Ice::ObjectPrx::operator=(::std::move(rhs));
        return *this;
    }

    /// \cond INTERNAL
    static MyInterfacePrx _fromReference(::IceInternal::ReferencePtr ref) { return MyInterfacePrx(::std::move(ref)); }

protected:

    MyInterfacePrx() = default;

    explicit MyInterfacePrx(::IceInternal::ReferencePtr&& ref) : ::Ice::ObjectPrx(::std::move(ref))
    {
    }
    /// \endcond
};

}

namespace Test
{

class ICE_CLASS(LIBRARY_TEST_API) UserError : public ::Ice::UserExceptionHelper<UserError, ::Ice::UserException>
{
public:

    ICE_MEMBER(LIBRARY_TEST_API) virtual ~UserError();

    UserError(const UserError&) = default;

    UserError() = default;

    /**
     * One-shot constructor to initialize all data members.
     */
    UserError(::std::string_view message) :
        message(message)
    {
    }

    /**
     * Obtains a tuple containing all of the exception's data members.
     * @return The data members in a tuple.
     */
    std::tuple<const ::std::string&> ice_tuple() const
    {
        return std::tie(message);
    }

    /**
     * Obtains the Slice type ID of this exception.
     * @return The fully-scoped type ID.
     */
    ICE_MEMBER(LIBRARY_TEST_API) static ::std::string_view ice_staticId();

    ::std::string message;
};

/// \cond INTERNAL
static UserError _iceS_UserError_init;
/// \endcond

}

namespace Test
{

class LIBRARY_TEST_API MyInterface : public virtual ::Ice::Object
{
public:

    using ProxyType = MyInterfacePrx;

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

    virtual void op(bool throwIt, const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    bool _iceD_op(::IceInternal::Incoming&);
    /// \endcond

    /// \cond INTERNAL
    virtual bool _iceDispatch(::IceInternal::Incoming&) override;
    /// \endcond
};

using MyInterfacePtr = ::std::shared_ptr<MyInterface>;

}

/// \cond STREAM
namespace Ice
{

template<typename S>
struct StreamReader<::Test::UserError, S>
{
    static void read(S* istr, ::Test::UserError& v)
    {
        istr->readAll(v.message);
    }
};

}
/// \endcond

#include <IceUtil/PopDisableWarnings.h>
#endif
