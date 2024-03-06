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

namespace Test
{

class TestIntfPrx;

using TestIntfPrxPtr = ::std::optional<TestIntfPrx>;
class ControllerPrx;

using ControllerPrxPtr = ::std::optional<ControllerPrx>;

}

namespace Test
{

class TestIntfPrx : public ::Ice::Proxy<TestIntfPrx, ::Ice::ObjectPrx>
{
public:

    ::std::string getAdapterId(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::future<::std::string> getAdapterIdAsync(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::function<void()>
    getAdapterIdAsync(::std::function<void(::std::string)> response, ::std::function<void(::std::exception_ptr)> ex = nullptr, ::std::function<void(bool)> sent = nullptr, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /// \cond INTERNAL
    void _iceI_getAdapterId(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<::std::string>>&, const ::Ice::Context&) const;
    /// \endcond

    /**
     * Obtains the Slice type ID of this interface.
     * @return The fully-scoped type ID.
     */
    static ::std::string_view ice_staticId();

    explicit TestIntfPrx(const ::Ice::ObjectPrx& other) : ::Ice::ObjectPrx(other)
    {
    }

    TestIntfPrx(const TestIntfPrx& other) noexcept : ::Ice::ObjectPrx(other)
    {
    }

    TestIntfPrx(TestIntfPrx&& other) noexcept : ::Ice::ObjectPrx(::std::move(other))
    {
    }

    TestIntfPrx(const ::std::shared_ptr<::Ice::Communicator>& communicator, const ::std::string& proxyString) :
        ::Ice::ObjectPrx(communicator, proxyString)
    {
    }

    TestIntfPrx& operator=(const TestIntfPrx& rhs) noexcept
    {
        ::Ice::ObjectPrx::operator=(rhs);
        return *this;
    }

    TestIntfPrx& operator=(TestIntfPrx&& rhs) noexcept
    {
        ::Ice::ObjectPrx::operator=(::std::move(rhs));
        return *this;
    }

    /// \cond INTERNAL
    static TestIntfPrx _fromReference(::IceInternal::ReferencePtr ref) { return TestIntfPrx(::std::move(ref)); }

protected:

    TestIntfPrx() = default;

    explicit TestIntfPrx(::IceInternal::ReferencePtr&& ref) : ::Ice::ObjectPrx(::std::move(ref))
    {
    }
    /// \endcond
};

class ControllerPrx : public ::Ice::Proxy<ControllerPrx, ::Ice::ObjectPrx>
{
public:

    void activateObjectAdapter(::std::string_view name, ::std::string_view adapterId, ::std::string_view replicaGroupId, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::future<void> activateObjectAdapterAsync(::std::string_view name, ::std::string_view adapterId, ::std::string_view replicaGroupId, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::function<void()>
    activateObjectAdapterAsync(::std::string_view name, ::std::string_view adapterId, ::std::string_view replicaGroupId, ::std::function<void()> response, ::std::function<void(::std::exception_ptr)> ex = nullptr, ::std::function<void(bool)> sent = nullptr, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /// \cond INTERNAL
    void _iceI_activateObjectAdapter(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>&, ::std::string_view, ::std::string_view, ::std::string_view, const ::Ice::Context&) const;
    /// \endcond

    void deactivateObjectAdapter(::std::string_view name, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::future<void> deactivateObjectAdapterAsync(::std::string_view name, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::function<void()>
    deactivateObjectAdapterAsync(::std::string_view name, ::std::function<void()> response, ::std::function<void(::std::exception_ptr)> ex = nullptr, ::std::function<void(bool)> sent = nullptr, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /// \cond INTERNAL
    void _iceI_deactivateObjectAdapter(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>&, ::std::string_view, const ::Ice::Context&) const;
    /// \endcond

    void addObject(::std::string_view oaName, ::std::string_view id, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::future<void> addObjectAsync(::std::string_view oaName, ::std::string_view id, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::function<void()>
    addObjectAsync(::std::string_view oaName, ::std::string_view id, ::std::function<void()> response, ::std::function<void(::std::exception_ptr)> ex = nullptr, ::std::function<void(bool)> sent = nullptr, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /// \cond INTERNAL
    void _iceI_addObject(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>&, ::std::string_view, ::std::string_view, const ::Ice::Context&) const;
    /// \endcond

    void removeObject(::std::string_view oaName, ::std::string_view id, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::future<void> removeObjectAsync(::std::string_view oaName, ::std::string_view id, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::function<void()>
    removeObjectAsync(::std::string_view oaName, ::std::string_view id, ::std::function<void()> response, ::std::function<void(::std::exception_ptr)> ex = nullptr, ::std::function<void(bool)> sent = nullptr, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /// \cond INTERNAL
    void _iceI_removeObject(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>&, ::std::string_view, ::std::string_view, const ::Ice::Context&) const;
    /// \endcond

    void shutdown(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::future<void> shutdownAsync(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::function<void()>
    shutdownAsync(::std::function<void()> response, ::std::function<void(::std::exception_ptr)> ex = nullptr, ::std::function<void(bool)> sent = nullptr, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /// \cond INTERNAL
    void _iceI_shutdown(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>&, const ::Ice::Context&) const;
    /// \endcond

    /**
     * Obtains the Slice type ID of this interface.
     * @return The fully-scoped type ID.
     */
    static ::std::string_view ice_staticId();

    explicit ControllerPrx(const ::Ice::ObjectPrx& other) : ::Ice::ObjectPrx(other)
    {
    }

    ControllerPrx(const ControllerPrx& other) noexcept : ::Ice::ObjectPrx(other)
    {
    }

    ControllerPrx(ControllerPrx&& other) noexcept : ::Ice::ObjectPrx(::std::move(other))
    {
    }

    ControllerPrx(const ::std::shared_ptr<::Ice::Communicator>& communicator, const ::std::string& proxyString) :
        ::Ice::ObjectPrx(communicator, proxyString)
    {
    }

    ControllerPrx& operator=(const ControllerPrx& rhs) noexcept
    {
        ::Ice::ObjectPrx::operator=(rhs);
        return *this;
    }

    ControllerPrx& operator=(ControllerPrx&& rhs) noexcept
    {
        ::Ice::ObjectPrx::operator=(::std::move(rhs));
        return *this;
    }

    /// \cond INTERNAL
    static ControllerPrx _fromReference(::IceInternal::ReferencePtr ref) { return ControllerPrx(::std::move(ref)); }

protected:

    ControllerPrx() = default;

    explicit ControllerPrx(::IceInternal::ReferencePtr&& ref) : ::Ice::ObjectPrx(::std::move(ref))
    {
    }
    /// \endcond
};

}

namespace Test
{

class TestIntf : public virtual ::Ice::Object
{
public:

    using ProxyType = TestIntfPrx;

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

    virtual ::std::string getAdapterId(const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    bool _iceD_getAdapterId(::IceInternal::Incoming&);
    /// \endcond

    /// \cond INTERNAL
    virtual bool _iceDispatch(::IceInternal::Incoming&) override;
    /// \endcond
};

using TestIntfPtr = ::std::shared_ptr<TestIntf>;

class Controller : public virtual ::Ice::Object
{
public:

    using ProxyType = ControllerPrx;

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

    virtual void activateObjectAdapter(::std::string name, ::std::string adapterId, ::std::string replicaGroupId, const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    bool _iceD_activateObjectAdapter(::IceInternal::Incoming&);
    /// \endcond

    virtual void deactivateObjectAdapter(::std::string name, const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    bool _iceD_deactivateObjectAdapter(::IceInternal::Incoming&);
    /// \endcond

    virtual void addObject(::std::string oaName, ::std::string id, const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    bool _iceD_addObject(::IceInternal::Incoming&);
    /// \endcond

    virtual void removeObject(::std::string oaName, ::std::string id, const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    bool _iceD_removeObject(::IceInternal::Incoming&);
    /// \endcond

    virtual void shutdown(const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    bool _iceD_shutdown(::IceInternal::Incoming&);
    /// \endcond

    /// \cond INTERNAL
    virtual bool _iceDispatch(::IceInternal::Incoming&) override;
    /// \endcond
};

using ControllerPtr = ::std::shared_ptr<Controller>;

}

#include <IceUtil/PopDisableWarnings.h>
#endif
