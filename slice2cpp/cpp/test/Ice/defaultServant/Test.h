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

#include <Ice/PushDisableWarnings.h>
#include <Ice/Ice.h>

#ifndef ICE_IGNORE_VERSION
#   if ICE_INT_VERSION  != 30850
#       error Ice version mismatch: an exact match is required for beta generated code
#   endif
#endif

namespace Test
{
    class MyObjectPrx;

}

namespace Test
{

class MyObjectPrx : public ::Ice::Proxy<MyObjectPrx, ::Ice::ObjectPrx>
{
public:

    ::std::string getName(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::future<::std::string> getNameAsync(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::function<void()>
    getNameAsync(::std::function<void(::std::string)> response, ::std::function<void(::std::exception_ptr)> ex = nullptr, ::std::function<void(bool)> sent = nullptr, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /// \cond INTERNAL
    void _iceI_getName(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<::std::string>>&, const ::Ice::Context&) const;
    /// \endcond

    /**
     * Obtains the Slice type ID of this interface.
     * @return The fully-scoped type ID.
     */
    static const char* ice_staticId() noexcept;

    explicit MyObjectPrx(const ::Ice::ObjectPrx& other) : ::Ice::ObjectPrx(other)
    {
    }

    MyObjectPrx(const MyObjectPrx& other) noexcept : ::Ice::ObjectPrx(other)
    {
    }

    MyObjectPrx(MyObjectPrx&& other) noexcept : ::Ice::ObjectPrx(::std::move(other))
    {
    }

    MyObjectPrx(const ::Ice::CommunicatorPtr& communicator, std::string_view proxyString) :
        ::Ice::ObjectPrx(communicator, proxyString)
    {
    }

    MyObjectPrx& operator=(const MyObjectPrx& rhs) noexcept
    {
        ::Ice::ObjectPrx::operator=(rhs);
        return *this;
    }

    MyObjectPrx& operator=(MyObjectPrx&& rhs) noexcept
    {
        ::Ice::ObjectPrx::operator=(::std::move(rhs));
        return *this;
    }

    /// \cond INTERNAL
    static MyObjectPrx _fromReference(::IceInternal::ReferencePtr ref) { return MyObjectPrx(::std::move(ref)); }

protected:

    MyObjectPrx() = default;

    explicit MyObjectPrx(::IceInternal::ReferencePtr&& ref) : ::Ice::ObjectPrx(::std::move(ref))
    {
    }
    /// \endcond
};

}

namespace Test
{

class MyObject : public virtual ::Ice::Object
{
public:

    using ProxyType = MyObjectPrx;

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

    virtual ::std::string getName(const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    void _iceD_getName(::Ice::IncomingRequest&, ::std::function<void(::Ice::OutgoingResponse)>);
    /// \endcond

    /// \cond INTERNAL
    void dispatch(::Ice::IncomingRequest&, ::std::function<void(::Ice::OutgoingResponse)>) override;
    /// \endcond
};

using MyObjectPtr = ::std::shared_ptr<MyObject>;

}

#include <Ice/PopDisableWarnings.h>
#endif
