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

#ifndef Test_h_
#define Test_h_

#include <Ice/PushDisableWarnings.h>
#include <Ice/Ice.h>
#include <Ice/Context.h>

#ifndef ICE_IGNORE_VERSION
#   if ICE_INT_VERSION  != 30850
#       error Ice version mismatch: an exact match is required for beta generated code
#   endif
#endif

namespace Test
{
    class MyClassPrx;

    class MyDerivedClassPrx;

    class MyOtherDerivedClassPrx;

    class DiamondClassPrx;

}

namespace Test
{

class MyClassPrx : public ::Ice::Proxy<MyClassPrx, ::Ice::ObjectPrx>
{
public:

    void shutdown(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    [[nodiscard]] ::std::future<void> shutdownAsync(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::function<void()>
    shutdownAsync(::std::function<void()> response, ::std::function<void(::std::exception_ptr)> ex = nullptr, ::std::function<void(bool)> sent = nullptr, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /// \cond INTERNAL
    void _iceI_shutdown(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>&, const ::Ice::Context&) const;
    /// \endcond

    ::Ice::Context getContext(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    [[nodiscard]] ::std::future<::Ice::Context> getContextAsync(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::function<void()>
    getContextAsync(::std::function<void(::Ice::Context)> response, ::std::function<void(::std::exception_ptr)> ex = nullptr, ::std::function<void(bool)> sent = nullptr, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /// \cond INTERNAL
    void _iceI_getContext(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<::Ice::Context>>&, const ::Ice::Context&) const;
    /// \endcond

    /// Obtains the Slice type ID of this interface.
    /// @return The fully-scoped type ID.
    static const char* ice_staticId() noexcept;
    MyClassPrx(const MyClassPrx& other) noexcept : ::Ice::ObjectPrx(other)
    {
    }

    MyClassPrx(MyClassPrx&& other) noexcept : ::Ice::ObjectPrx(::std::move(other))
    {
    }

    MyClassPrx(const ::Ice::CommunicatorPtr& communicator, std::string_view proxyString) :
        ::Ice::ObjectPrx(communicator, proxyString)
    {
    }

    MyClassPrx& operator=(const MyClassPrx& rhs) noexcept
    {
        if (this != &rhs)
        {
            ::Ice::ObjectPrx::operator=(rhs);
        }
        return *this;
    }

    MyClassPrx& operator=(MyClassPrx&& rhs) noexcept
    {
        if (this != &rhs)
        {
            ::Ice::ObjectPrx::operator=(::std::move(rhs));
        }
        return *this;
    }

    /// \cond INTERNAL
    static MyClassPrx _fromReference(::IceInternal::ReferencePtr ref) { return MyClassPrx(::std::move(ref)); }

protected:

    MyClassPrx() = default;

    explicit MyClassPrx(::IceInternal::ReferencePtr&& ref) : ::Ice::ObjectPrx(::std::move(ref))
    {
    }
    /// \endcond
};

class MyDerivedClassPrx : public ::Ice::Proxy<MyDerivedClassPrx, MyClassPrx>
{
public:

    ::std::optional<::Ice::ObjectPrx> echo(const ::std::optional<::Ice::ObjectPrx>& obj, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    [[nodiscard]] ::std::future<::std::optional<::Ice::ObjectPrx>> echoAsync(const ::std::optional<::Ice::ObjectPrx>& obj, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::function<void()>
    echoAsync(const ::std::optional<::Ice::ObjectPrx>& obj, ::std::function<void(::std::optional<::Ice::ObjectPrx>)> response, ::std::function<void(::std::exception_ptr)> ex = nullptr, ::std::function<void(bool)> sent = nullptr, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /// \cond INTERNAL
    void _iceI_echo(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<::std::optional<::Ice::ObjectPrx>>>&, const ::std::optional<::Ice::ObjectPrx>&, const ::Ice::Context&) const;
    /// \endcond

    /// Obtains the Slice type ID of this interface.
    /// @return The fully-scoped type ID.
    static const char* ice_staticId() noexcept;

#if defined(__GNUC__)
#   pragma GCC diagnostic push
#   pragma GCC diagnostic ignored "-Wextra" // initialize all virtual bases in correct order
#endif
    MyDerivedClassPrx(const MyDerivedClassPrx& other) noexcept : ::Ice::ObjectPrx(other)
    {
    }

    MyDerivedClassPrx(MyDerivedClassPrx&& other) noexcept : ::Ice::ObjectPrx(::std::move(other))
    {
    }

    MyDerivedClassPrx(const ::Ice::CommunicatorPtr& communicator, std::string_view proxyString) :
        ::Ice::ObjectPrx(communicator, proxyString)
    {
    }

    MyDerivedClassPrx& operator=(const MyDerivedClassPrx& rhs) noexcept
    {
        if (this != &rhs)
        {
            ::Ice::ObjectPrx::operator=(rhs);
        }
        return *this;
    }

    MyDerivedClassPrx& operator=(MyDerivedClassPrx&& rhs) noexcept
    {
        if (this != &rhs)
        {
            ::Ice::ObjectPrx::operator=(::std::move(rhs));
        }
        return *this;
    }

    /// \cond INTERNAL
    static MyDerivedClassPrx _fromReference(::IceInternal::ReferencePtr ref) { return MyDerivedClassPrx(::std::move(ref)); }

protected:

    MyDerivedClassPrx() = default;

    explicit MyDerivedClassPrx(::IceInternal::ReferencePtr&& ref) : ::Ice::ObjectPrx(::std::move(ref))
    {
    }
    /// \endcond

#if defined(__GNUC__)
#   pragma GCC diagnostic pop
#endif
};

class MyOtherDerivedClassPrx : public ::Ice::Proxy<MyOtherDerivedClassPrx, MyClassPrx>
{
public:

    /// Obtains the Slice type ID of this interface.
    /// @return The fully-scoped type ID.
    static const char* ice_staticId() noexcept;

#if defined(__GNUC__)
#   pragma GCC diagnostic push
#   pragma GCC diagnostic ignored "-Wextra" // initialize all virtual bases in correct order
#endif
    MyOtherDerivedClassPrx(const MyOtherDerivedClassPrx& other) noexcept : ::Ice::ObjectPrx(other)
    {
    }

    MyOtherDerivedClassPrx(MyOtherDerivedClassPrx&& other) noexcept : ::Ice::ObjectPrx(::std::move(other))
    {
    }

    MyOtherDerivedClassPrx(const ::Ice::CommunicatorPtr& communicator, std::string_view proxyString) :
        ::Ice::ObjectPrx(communicator, proxyString)
    {
    }

    MyOtherDerivedClassPrx& operator=(const MyOtherDerivedClassPrx& rhs) noexcept
    {
        if (this != &rhs)
        {
            ::Ice::ObjectPrx::operator=(rhs);
        }
        return *this;
    }

    MyOtherDerivedClassPrx& operator=(MyOtherDerivedClassPrx&& rhs) noexcept
    {
        if (this != &rhs)
        {
            ::Ice::ObjectPrx::operator=(::std::move(rhs));
        }
        return *this;
    }

    /// \cond INTERNAL
    static MyOtherDerivedClassPrx _fromReference(::IceInternal::ReferencePtr ref) { return MyOtherDerivedClassPrx(::std::move(ref)); }

protected:

    MyOtherDerivedClassPrx() = default;

    explicit MyOtherDerivedClassPrx(::IceInternal::ReferencePtr&& ref) : ::Ice::ObjectPrx(::std::move(ref))
    {
    }
    /// \endcond

#if defined(__GNUC__)
#   pragma GCC diagnostic pop
#endif
};

class DiamondClassPrx : public ::Ice::Proxy<DiamondClassPrx, MyDerivedClassPrx, MyOtherDerivedClassPrx>
{
public:

    /// Obtains the Slice type ID of this interface.
    /// @return The fully-scoped type ID.
    static const char* ice_staticId() noexcept;

#if defined(__GNUC__)
#   pragma GCC diagnostic push
#   pragma GCC diagnostic ignored "-Wextra" // initialize all virtual bases in correct order
#endif
    DiamondClassPrx(const DiamondClassPrx& other) noexcept : ::Ice::ObjectPrx(other)
    {
    }

    DiamondClassPrx(DiamondClassPrx&& other) noexcept : ::Ice::ObjectPrx(::std::move(other))
    {
    }

    DiamondClassPrx(const ::Ice::CommunicatorPtr& communicator, std::string_view proxyString) :
        ::Ice::ObjectPrx(communicator, proxyString)
    {
    }

    DiamondClassPrx& operator=(const DiamondClassPrx& rhs) noexcept
    {
        if (this != &rhs)
        {
            ::Ice::ObjectPrx::operator=(rhs);
        }
        return *this;
    }

    DiamondClassPrx& operator=(DiamondClassPrx&& rhs) noexcept
    {
        if (this != &rhs)
        {
            ::Ice::ObjectPrx::operator=(::std::move(rhs));
        }
        return *this;
    }

    /// \cond INTERNAL
    static DiamondClassPrx _fromReference(::IceInternal::ReferencePtr ref) { return DiamondClassPrx(::std::move(ref)); }

protected:

    DiamondClassPrx() = default;

    explicit DiamondClassPrx(::IceInternal::ReferencePtr&& ref) : ::Ice::ObjectPrx(::std::move(ref))
    {
    }
    /// \endcond

#if defined(__GNUC__)
#   pragma GCC diagnostic pop
#endif
};

}

namespace Test
{

class MyClass : public virtual ::Ice::Object
{
public:

    using ProxyType = MyClassPrx;

    /// Obtains a list of the Slice type IDs representing the interfaces supported by this object.
    /// @param current The Current object for the invocation.
    /// @return A list of fully-scoped type IDs.
    ::std::vector<::std::string> ice_ids(const ::Ice::Current& current) const override;

    /// Obtains a Slice type ID representing the most-derived interface supported by this object.
    /// @param current The Current object for the invocation.
    /// @return A fully-scoped type ID.
    ::std::string ice_id(const ::Ice::Current& current) const override;

    /// Obtains the Slice type ID corresponding to this interface.
    /// @return A fully-scoped type ID.
    static const char* ice_staticId() noexcept;

    virtual void shutdown(const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    void _iceD_shutdown(::Ice::IncomingRequest&, ::std::function<void(::Ice::OutgoingResponse)>);
    /// \endcond

    virtual ::Ice::Context getContext(const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    void _iceD_getContext(::Ice::IncomingRequest&, ::std::function<void(::Ice::OutgoingResponse)>);
    /// \endcond

    /// \cond INTERNAL
    void dispatch(::Ice::IncomingRequest&, ::std::function<void(::Ice::OutgoingResponse)>) override;
    /// \endcond
};

using MyClassPtr = ::std::shared_ptr<MyClass>;

class MyDerivedClass : public virtual MyClass
{
public:

    using ProxyType = MyDerivedClassPrx;

    /// Obtains a list of the Slice type IDs representing the interfaces supported by this object.
    /// @param current The Current object for the invocation.
    /// @return A list of fully-scoped type IDs.
    ::std::vector<::std::string> ice_ids(const ::Ice::Current& current) const override;

    /// Obtains a Slice type ID representing the most-derived interface supported by this object.
    /// @param current The Current object for the invocation.
    /// @return A fully-scoped type ID.
    ::std::string ice_id(const ::Ice::Current& current) const override;

    /// Obtains the Slice type ID corresponding to this interface.
    /// @return A fully-scoped type ID.
    static const char* ice_staticId() noexcept;

    virtual ::std::optional<::Ice::ObjectPrx> echo(::std::optional<::Ice::ObjectPrx> obj, const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    void _iceD_echo(::Ice::IncomingRequest&, ::std::function<void(::Ice::OutgoingResponse)>);
    /// \endcond

    /// \cond INTERNAL
    void dispatch(::Ice::IncomingRequest&, ::std::function<void(::Ice::OutgoingResponse)>) override;
    /// \endcond
};

using MyDerivedClassPtr = ::std::shared_ptr<MyDerivedClass>;

class MyOtherDerivedClass : public virtual MyClass
{
public:

    using ProxyType = MyOtherDerivedClassPrx;

    /// Obtains a list of the Slice type IDs representing the interfaces supported by this object.
    /// @param current The Current object for the invocation.
    /// @return A list of fully-scoped type IDs.
    ::std::vector<::std::string> ice_ids(const ::Ice::Current& current) const override;

    /// Obtains a Slice type ID representing the most-derived interface supported by this object.
    /// @param current The Current object for the invocation.
    /// @return A fully-scoped type ID.
    ::std::string ice_id(const ::Ice::Current& current) const override;

    /// Obtains the Slice type ID corresponding to this interface.
    /// @return A fully-scoped type ID.
    static const char* ice_staticId() noexcept;

    /// \cond INTERNAL
    void dispatch(::Ice::IncomingRequest&, ::std::function<void(::Ice::OutgoingResponse)>) override;
    /// \endcond
};

using MyOtherDerivedClassPtr = ::std::shared_ptr<MyOtherDerivedClass>;

class DiamondClass : public virtual MyDerivedClass,
                     public virtual MyOtherDerivedClass
{
public:

    using ProxyType = DiamondClassPrx;

    /// Obtains a list of the Slice type IDs representing the interfaces supported by this object.
    /// @param current The Current object for the invocation.
    /// @return A list of fully-scoped type IDs.
    ::std::vector<::std::string> ice_ids(const ::Ice::Current& current) const override;

    /// Obtains a Slice type ID representing the most-derived interface supported by this object.
    /// @param current The Current object for the invocation.
    /// @return A fully-scoped type ID.
    ::std::string ice_id(const ::Ice::Current& current) const override;

    /// Obtains the Slice type ID corresponding to this interface.
    /// @return A fully-scoped type ID.
    static const char* ice_staticId() noexcept;

    /// \cond INTERNAL
    void dispatch(::Ice::IncomingRequest&, ::std::function<void(::Ice::OutgoingResponse)>) override;
    /// \endcond
};

using DiamondClassPtr = ::std::shared_ptr<DiamondClass>;

}

#include <Ice/PopDisableWarnings.h>
#endif
