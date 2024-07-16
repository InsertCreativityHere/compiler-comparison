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
    class TestIntfPrx;

}

namespace Test
{

class TestIntfPrx : public ::Ice::Proxy<TestIntfPrx, ::Ice::ObjectPrx>
{
public:

    void baseAsBase(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::future<void> baseAsBaseAsync(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::function<void()>
    baseAsBaseAsync(::std::function<void()> response, ::std::function<void(::std::exception_ptr)> ex = nullptr, ::std::function<void(bool)> sent = nullptr, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /// \cond INTERNAL
    void _iceI_baseAsBase(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>&, const ::Ice::Context&) const;
    /// \endcond

    void unknownDerivedAsBase(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::future<void> unknownDerivedAsBaseAsync(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::function<void()>
    unknownDerivedAsBaseAsync(::std::function<void()> response, ::std::function<void(::std::exception_ptr)> ex = nullptr, ::std::function<void(bool)> sent = nullptr, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /// \cond INTERNAL
    void _iceI_unknownDerivedAsBase(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>&, const ::Ice::Context&) const;
    /// \endcond

    void knownDerivedAsBase(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::future<void> knownDerivedAsBaseAsync(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::function<void()>
    knownDerivedAsBaseAsync(::std::function<void()> response, ::std::function<void(::std::exception_ptr)> ex = nullptr, ::std::function<void(bool)> sent = nullptr, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /// \cond INTERNAL
    void _iceI_knownDerivedAsBase(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>&, const ::Ice::Context&) const;
    /// \endcond

    void knownDerivedAsKnownDerived(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::future<void> knownDerivedAsKnownDerivedAsync(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::function<void()>
    knownDerivedAsKnownDerivedAsync(::std::function<void()> response, ::std::function<void(::std::exception_ptr)> ex = nullptr, ::std::function<void(bool)> sent = nullptr, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /// \cond INTERNAL
    void _iceI_knownDerivedAsKnownDerived(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>&, const ::Ice::Context&) const;
    /// \endcond

    void unknownIntermediateAsBase(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::future<void> unknownIntermediateAsBaseAsync(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::function<void()>
    unknownIntermediateAsBaseAsync(::std::function<void()> response, ::std::function<void(::std::exception_ptr)> ex = nullptr, ::std::function<void(bool)> sent = nullptr, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /// \cond INTERNAL
    void _iceI_unknownIntermediateAsBase(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>&, const ::Ice::Context&) const;
    /// \endcond

    void knownIntermediateAsBase(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::future<void> knownIntermediateAsBaseAsync(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::function<void()>
    knownIntermediateAsBaseAsync(::std::function<void()> response, ::std::function<void(::std::exception_ptr)> ex = nullptr, ::std::function<void(bool)> sent = nullptr, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /// \cond INTERNAL
    void _iceI_knownIntermediateAsBase(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>&, const ::Ice::Context&) const;
    /// \endcond

    void knownMostDerivedAsBase(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::future<void> knownMostDerivedAsBaseAsync(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::function<void()>
    knownMostDerivedAsBaseAsync(::std::function<void()> response, ::std::function<void(::std::exception_ptr)> ex = nullptr, ::std::function<void(bool)> sent = nullptr, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /// \cond INTERNAL
    void _iceI_knownMostDerivedAsBase(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>&, const ::Ice::Context&) const;
    /// \endcond

    void knownIntermediateAsKnownIntermediate(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::future<void> knownIntermediateAsKnownIntermediateAsync(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::function<void()>
    knownIntermediateAsKnownIntermediateAsync(::std::function<void()> response, ::std::function<void(::std::exception_ptr)> ex = nullptr, ::std::function<void(bool)> sent = nullptr, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /// \cond INTERNAL
    void _iceI_knownIntermediateAsKnownIntermediate(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>&, const ::Ice::Context&) const;
    /// \endcond

    void knownMostDerivedAsKnownIntermediate(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::future<void> knownMostDerivedAsKnownIntermediateAsync(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::function<void()>
    knownMostDerivedAsKnownIntermediateAsync(::std::function<void()> response, ::std::function<void(::std::exception_ptr)> ex = nullptr, ::std::function<void(bool)> sent = nullptr, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /// \cond INTERNAL
    void _iceI_knownMostDerivedAsKnownIntermediate(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>&, const ::Ice::Context&) const;
    /// \endcond

    void knownMostDerivedAsKnownMostDerived(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::future<void> knownMostDerivedAsKnownMostDerivedAsync(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::function<void()>
    knownMostDerivedAsKnownMostDerivedAsync(::std::function<void()> response, ::std::function<void(::std::exception_ptr)> ex = nullptr, ::std::function<void(bool)> sent = nullptr, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /// \cond INTERNAL
    void _iceI_knownMostDerivedAsKnownMostDerived(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>&, const ::Ice::Context&) const;
    /// \endcond

    void unknownMostDerived1AsBase(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::future<void> unknownMostDerived1AsBaseAsync(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::function<void()>
    unknownMostDerived1AsBaseAsync(::std::function<void()> response, ::std::function<void(::std::exception_ptr)> ex = nullptr, ::std::function<void(bool)> sent = nullptr, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /// \cond INTERNAL
    void _iceI_unknownMostDerived1AsBase(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>&, const ::Ice::Context&) const;
    /// \endcond

    void unknownMostDerived1AsKnownIntermediate(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::future<void> unknownMostDerived1AsKnownIntermediateAsync(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::function<void()>
    unknownMostDerived1AsKnownIntermediateAsync(::std::function<void()> response, ::std::function<void(::std::exception_ptr)> ex = nullptr, ::std::function<void(bool)> sent = nullptr, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /// \cond INTERNAL
    void _iceI_unknownMostDerived1AsKnownIntermediate(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>&, const ::Ice::Context&) const;
    /// \endcond

    void unknownMostDerived2AsBase(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::future<void> unknownMostDerived2AsBaseAsync(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::function<void()>
    unknownMostDerived2AsBaseAsync(::std::function<void()> response, ::std::function<void(::std::exception_ptr)> ex = nullptr, ::std::function<void(bool)> sent = nullptr, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /// \cond INTERNAL
    void _iceI_unknownMostDerived2AsBase(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>&, const ::Ice::Context&) const;
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
    static const char* ice_staticId() noexcept;

    explicit TestIntfPrx(const ::Ice::ObjectPrx& other) : ::Ice::ObjectPrx(other)
    {
    }

    TestIntfPrx(const TestIntfPrx& other) noexcept : ::Ice::ObjectPrx(other)
    {
    }

    TestIntfPrx(TestIntfPrx&& other) noexcept : ::Ice::ObjectPrx(::std::move(other))
    {
    }

    TestIntfPrx(const ::Ice::CommunicatorPtr& communicator, std::string_view proxyString) :
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

}

namespace Test
{

class Base : public ::Ice::UserException
{
public:
    /**
     * Default constructor.
     */
    Base() noexcept = default;

    /**
     * One-shot constructor to initialize all data members.
     */
    Base(::std::string b) noexcept :
        b(::std::move(b))
    {
    }

    /**
     * Obtains a tuple containing all of the exception's data members.
     * @return The data members in a tuple.
     */
    std::tuple<const ::std::string&> ice_tuple() const
    {
        return std::tie(b);
    }

    /**
     * Obtains the Slice type ID of this exception.
     * @return The fully-scoped type ID.
     */
    static const char* ice_staticId() noexcept;

    const char* ice_id() const noexcept override;

    void ice_throw() const override;

    ::std::string b;

protected:
    void _writeImpl(::Ice::OutputStream*) const override;

    void _readImpl(::Ice::InputStream*) override;
};

/// \cond INTERNAL
static Base _iceS_Base_init;
/// \endcond

class KnownDerived : public Base
{
public:
    /**
     * Default constructor.
     */
    KnownDerived() noexcept = default;

    /**
     * One-shot constructor to initialize all data members.
     */
    KnownDerived(::std::string b, ::std::string kd) noexcept :
        Base(::std::move(b)),
        kd(::std::move(kd))
    {
    }

    /**
     * Obtains a tuple containing all of the exception's data members.
     * @return The data members in a tuple.
     */
    std::tuple<const ::std::string&, const ::std::string&> ice_tuple() const
    {
        return std::tie(b, kd);
    }

    /**
     * Obtains the Slice type ID of this exception.
     * @return The fully-scoped type ID.
     */
    static const char* ice_staticId() noexcept;

    const char* ice_id() const noexcept override;

    void ice_throw() const override;

    ::std::string kd;

protected:
    void _writeImpl(::Ice::OutputStream*) const override;

    void _readImpl(::Ice::InputStream*) override;
};

class KnownIntermediate : public Base
{
public:
    /**
     * Default constructor.
     */
    KnownIntermediate() noexcept = default;

    /**
     * One-shot constructor to initialize all data members.
     */
    KnownIntermediate(::std::string b, ::std::string ki) noexcept :
        Base(::std::move(b)),
        ki(::std::move(ki))
    {
    }

    /**
     * Obtains a tuple containing all of the exception's data members.
     * @return The data members in a tuple.
     */
    std::tuple<const ::std::string&, const ::std::string&> ice_tuple() const
    {
        return std::tie(b, ki);
    }

    /**
     * Obtains the Slice type ID of this exception.
     * @return The fully-scoped type ID.
     */
    static const char* ice_staticId() noexcept;

    const char* ice_id() const noexcept override;

    void ice_throw() const override;

    ::std::string ki;

protected:
    void _writeImpl(::Ice::OutputStream*) const override;

    void _readImpl(::Ice::InputStream*) override;
};

class KnownMostDerived : public KnownIntermediate
{
public:
    /**
     * Default constructor.
     */
    KnownMostDerived() noexcept = default;

    /**
     * One-shot constructor to initialize all data members.
     */
    KnownMostDerived(::std::string b, ::std::string ki, ::std::string kmd) noexcept :
        KnownIntermediate(::std::move(b), ::std::move(ki)),
        kmd(::std::move(kmd))
    {
    }

    /**
     * Obtains a tuple containing all of the exception's data members.
     * @return The data members in a tuple.
     */
    std::tuple<const ::std::string&, const ::std::string&, const ::std::string&> ice_tuple() const
    {
        return std::tie(b, ki, kmd);
    }

    /**
     * Obtains the Slice type ID of this exception.
     * @return The fully-scoped type ID.
     */
    static const char* ice_staticId() noexcept;

    const char* ice_id() const noexcept override;

    void ice_throw() const override;

    ::std::string kmd;

protected:
    void _writeImpl(::Ice::OutputStream*) const override;

    void _readImpl(::Ice::InputStream*) override;
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
    static const char* ice_staticId() noexcept;

    virtual void baseAsBase(const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    void _iceD_baseAsBase(::Ice::IncomingRequest&, ::std::function<void(::Ice::OutgoingResponse)>);
    /// \endcond

    virtual void unknownDerivedAsBase(const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    void _iceD_unknownDerivedAsBase(::Ice::IncomingRequest&, ::std::function<void(::Ice::OutgoingResponse)>);
    /// \endcond

    virtual void knownDerivedAsBase(const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    void _iceD_knownDerivedAsBase(::Ice::IncomingRequest&, ::std::function<void(::Ice::OutgoingResponse)>);
    /// \endcond

    virtual void knownDerivedAsKnownDerived(const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    void _iceD_knownDerivedAsKnownDerived(::Ice::IncomingRequest&, ::std::function<void(::Ice::OutgoingResponse)>);
    /// \endcond

    virtual void unknownIntermediateAsBase(const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    void _iceD_unknownIntermediateAsBase(::Ice::IncomingRequest&, ::std::function<void(::Ice::OutgoingResponse)>);
    /// \endcond

    virtual void knownIntermediateAsBase(const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    void _iceD_knownIntermediateAsBase(::Ice::IncomingRequest&, ::std::function<void(::Ice::OutgoingResponse)>);
    /// \endcond

    virtual void knownMostDerivedAsBase(const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    void _iceD_knownMostDerivedAsBase(::Ice::IncomingRequest&, ::std::function<void(::Ice::OutgoingResponse)>);
    /// \endcond

    virtual void knownIntermediateAsKnownIntermediate(const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    void _iceD_knownIntermediateAsKnownIntermediate(::Ice::IncomingRequest&, ::std::function<void(::Ice::OutgoingResponse)>);
    /// \endcond

    virtual void knownMostDerivedAsKnownIntermediate(const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    void _iceD_knownMostDerivedAsKnownIntermediate(::Ice::IncomingRequest&, ::std::function<void(::Ice::OutgoingResponse)>);
    /// \endcond

    virtual void knownMostDerivedAsKnownMostDerived(const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    void _iceD_knownMostDerivedAsKnownMostDerived(::Ice::IncomingRequest&, ::std::function<void(::Ice::OutgoingResponse)>);
    /// \endcond

    virtual void unknownMostDerived1AsBase(const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    void _iceD_unknownMostDerived1AsBase(::Ice::IncomingRequest&, ::std::function<void(::Ice::OutgoingResponse)>);
    /// \endcond

    virtual void unknownMostDerived1AsKnownIntermediate(const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    void _iceD_unknownMostDerived1AsKnownIntermediate(::Ice::IncomingRequest&, ::std::function<void(::Ice::OutgoingResponse)>);
    /// \endcond

    virtual void unknownMostDerived2AsBase(const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    void _iceD_unknownMostDerived2AsBase(::Ice::IncomingRequest&, ::std::function<void(::Ice::OutgoingResponse)>);
    /// \endcond

    virtual void shutdown(const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    void _iceD_shutdown(::Ice::IncomingRequest&, ::std::function<void(::Ice::OutgoingResponse)>);
    /// \endcond

    /// \cond INTERNAL
    void dispatch(::Ice::IncomingRequest&, ::std::function<void(::Ice::OutgoingResponse)>) override;
    /// \endcond
};

using TestIntfPtr = ::std::shared_ptr<TestIntf>;

}

/// \cond STREAM
namespace Ice
{

template<>
struct StreamReader<::Test::Base>
{
    static void read(InputStream* istr, ::Test::Base& v)
    {
        istr->readAll(v.b);
    }
};

template<>
struct StreamWriter<::Test::KnownDerived>
{
    static void write(OutputStream* ostr, const ::Test::KnownDerived& v)
    {
        ostr->writeAll(v.kd);
    }
};

template<>
struct StreamReader<::Test::KnownDerived>
{
    static void read(InputStream* istr, ::Test::KnownDerived& v)
    {
        istr->readAll(v.kd);
    }
};

template<>
struct StreamWriter<::Test::KnownIntermediate>
{
    static void write(OutputStream* ostr, const ::Test::KnownIntermediate& v)
    {
        ostr->writeAll(v.ki);
    }
};

template<>
struct StreamReader<::Test::KnownIntermediate>
{
    static void read(InputStream* istr, ::Test::KnownIntermediate& v)
    {
        istr->readAll(v.ki);
    }
};

template<>
struct StreamWriter<::Test::KnownMostDerived>
{
    static void write(OutputStream* ostr, const ::Test::KnownMostDerived& v)
    {
        ostr->writeAll(v.kmd);
    }
};

template<>
struct StreamReader<::Test::KnownMostDerived>
{
    static void read(InputStream* istr, ::Test::KnownMostDerived& v)
    {
        istr->readAll(v.kmd);
    }
};

}
/// \endcond

#include <Ice/PopDisableWarnings.h>
#endif
