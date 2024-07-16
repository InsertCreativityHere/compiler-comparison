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
    using NV = ::std::map<::std::int32_t, ::std::int32_t>;

    using NR = ::std::map<::std::string, ::std::string>;

    using NDV = ::std::map<::std::string, NV>;

    using NDR = ::std::map<::std::string, NR>;

    using IntSeq = ::std::vector<::std::int32_t>;

    struct TEstNv;

    using AIS = ::std::vector<::std::int32_t>;

    using GIS = ::std::vector<::std::int32_t>;

    using ASS = ::std::vector<::std::string>;

    using GSS = ::std::vector<::std::string>;

    using NDAIS = ::std::map<::std::string, AIS>;

    using NDGIS = ::std::map<::std::string, GIS>;

    using NDASS = ::std::map<::std::string, ASS>;

    using NDGSS = ::std::map<::std::string, GSS>;

    class MyClassPrx;

}

namespace Test
{

class MyClassPrx : public ::Ice::Proxy<MyClassPrx, ::Ice::ObjectPrx>
{
public:

    void shutdown(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::future<void> shutdownAsync(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::function<void()>
    shutdownAsync(::std::function<void()> response, ::std::function<void(::std::exception_ptr)> ex = nullptr, ::std::function<void(bool)> sent = nullptr, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /// \cond INTERNAL
    void _iceI_shutdown(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>&, const ::Ice::Context&) const;
    /// \endcond

    NV opNV(const NV& i, NV& o, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::future<::std::tuple<NV, NV>> opNVAsync(const NV& i, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::function<void()>
    opNVAsync(const NV& i, ::std::function<void(::Test::NV, ::Test::NV)> response, ::std::function<void(::std::exception_ptr)> ex = nullptr, ::std::function<void(bool)> sent = nullptr, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /// \cond INTERNAL
    void _iceI_opNV(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<::std::tuple<NV, NV>>>&, const NV&, const ::Ice::Context&) const;
    /// \endcond

    NR opNR(const NR& i, NR& o, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::future<::std::tuple<NR, NR>> opNRAsync(const NR& i, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::function<void()>
    opNRAsync(const NR& i, ::std::function<void(::Test::NR, ::Test::NR)> response, ::std::function<void(::std::exception_ptr)> ex = nullptr, ::std::function<void(bool)> sent = nullptr, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /// \cond INTERNAL
    void _iceI_opNR(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<::std::tuple<NR, NR>>>&, const NR&, const ::Ice::Context&) const;
    /// \endcond

    NDV opNDV(const NDV& i, NDV& o, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::future<::std::tuple<NDV, NDV>> opNDVAsync(const NDV& i, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::function<void()>
    opNDVAsync(const NDV& i, ::std::function<void(::Test::NDV, ::Test::NDV)> response, ::std::function<void(::std::exception_ptr)> ex = nullptr, ::std::function<void(bool)> sent = nullptr, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /// \cond INTERNAL
    void _iceI_opNDV(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<::std::tuple<NDV, NDV>>>&, const NDV&, const ::Ice::Context&) const;
    /// \endcond

    NDR opNDR(const NDR& i, NDR& o, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::future<::std::tuple<NDR, NDR>> opNDRAsync(const NDR& i, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::function<void()>
    opNDRAsync(const NDR& i, ::std::function<void(::Test::NDR, ::Test::NDR)> response, ::std::function<void(::std::exception_ptr)> ex = nullptr, ::std::function<void(bool)> sent = nullptr, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /// \cond INTERNAL
    void _iceI_opNDR(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<::std::tuple<NDR, NDR>>>&, const NDR&, const ::Ice::Context&) const;
    /// \endcond

    NDAIS opNDAIS(const NDAIS& i, NDAIS& o, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::future<::std::tuple<NDAIS, NDAIS>> opNDAISAsync(const NDAIS& i, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::function<void()>
    opNDAISAsync(const NDAIS& i, ::std::function<void(::Test::NDAIS, ::Test::NDAIS)> response, ::std::function<void(::std::exception_ptr)> ex = nullptr, ::std::function<void(bool)> sent = nullptr, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /// \cond INTERNAL
    void _iceI_opNDAIS(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<::std::tuple<NDAIS, NDAIS>>>&, const NDAIS&, const ::Ice::Context&) const;
    /// \endcond

    NDGIS opNDGIS(const NDGIS& i, NDGIS& o, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::future<::std::tuple<NDGIS, NDGIS>> opNDGISAsync(const NDGIS& i, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::function<void()>
    opNDGISAsync(const NDGIS& i, ::std::function<void(::Test::NDGIS, ::Test::NDGIS)> response, ::std::function<void(::std::exception_ptr)> ex = nullptr, ::std::function<void(bool)> sent = nullptr, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /// \cond INTERNAL
    void _iceI_opNDGIS(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<::std::tuple<NDGIS, NDGIS>>>&, const NDGIS&, const ::Ice::Context&) const;
    /// \endcond

    NDASS opNDASS(const NDASS& i, NDASS& o, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::future<::std::tuple<NDASS, NDASS>> opNDASSAsync(const NDASS& i, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::function<void()>
    opNDASSAsync(const NDASS& i, ::std::function<void(::Test::NDASS, ::Test::NDASS)> response, ::std::function<void(::std::exception_ptr)> ex = nullptr, ::std::function<void(bool)> sent = nullptr, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /// \cond INTERNAL
    void _iceI_opNDASS(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<::std::tuple<NDASS, NDASS>>>&, const NDASS&, const ::Ice::Context&) const;
    /// \endcond

    NDGSS opNDGSS(const NDGSS& i, NDGSS& o, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::future<::std::tuple<NDGSS, NDGSS>> opNDGSSAsync(const NDGSS& i, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::function<void()>
    opNDGSSAsync(const NDGSS& i, ::std::function<void(::Test::NDGSS, ::Test::NDGSS)> response, ::std::function<void(::std::exception_ptr)> ex = nullptr, ::std::function<void(bool)> sent = nullptr, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /// \cond INTERNAL
    void _iceI_opNDGSS(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<::std::tuple<NDGSS, NDGSS>>>&, const NDGSS&, const ::Ice::Context&) const;
    /// \endcond

    /**
     * Obtains the Slice type ID of this interface.
     * @return The fully-scoped type ID.
     */
    static const char* ice_staticId() noexcept;

    explicit MyClassPrx(const ::Ice::ObjectPrx& other) : ::Ice::ObjectPrx(other)
    {
    }

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
        ::Ice::ObjectPrx::operator=(rhs);
        return *this;
    }

    MyClassPrx& operator=(MyClassPrx&& rhs) noexcept
    {
        ::Ice::ObjectPrx::operator=(::std::move(rhs));
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

}

namespace Test
{

struct TEstNv
{
    ::Test::NV d;
    ::Test::IntSeq s;

    /**
     * Obtains a tuple containing all of the struct's data members.
     * @return The data members in a tuple.
     */
    std::tuple<const ::Test::NV&, const ::Test::IntSeq&> ice_tuple() const
    {
        return std::tie(d, s);
    }
};

using Ice::operator<;
using Ice::operator<=;
using Ice::operator>;
using Ice::operator>=;
using Ice::operator==;
using Ice::operator!=;

}

namespace Test
{

class MyClass : public virtual ::Ice::Object
{
public:

    using ProxyType = MyClassPrx;

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

    virtual void shutdown(const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    void _iceD_shutdown(::Ice::IncomingRequest&, ::std::function<void(::Ice::OutgoingResponse)>);
    /// \endcond

    virtual NV opNV(NV i, NV& o, const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    void _iceD_opNV(::Ice::IncomingRequest&, ::std::function<void(::Ice::OutgoingResponse)>);
    /// \endcond

    virtual NR opNR(NR i, NR& o, const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    void _iceD_opNR(::Ice::IncomingRequest&, ::std::function<void(::Ice::OutgoingResponse)>);
    /// \endcond

    virtual NDV opNDV(NDV i, NDV& o, const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    void _iceD_opNDV(::Ice::IncomingRequest&, ::std::function<void(::Ice::OutgoingResponse)>);
    /// \endcond

    virtual NDR opNDR(NDR i, NDR& o, const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    void _iceD_opNDR(::Ice::IncomingRequest&, ::std::function<void(::Ice::OutgoingResponse)>);
    /// \endcond

    virtual NDAIS opNDAIS(NDAIS i, NDAIS& o, const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    void _iceD_opNDAIS(::Ice::IncomingRequest&, ::std::function<void(::Ice::OutgoingResponse)>);
    /// \endcond

    virtual NDGIS opNDGIS(NDGIS i, NDGIS& o, const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    void _iceD_opNDGIS(::Ice::IncomingRequest&, ::std::function<void(::Ice::OutgoingResponse)>);
    /// \endcond

    virtual NDASS opNDASS(NDASS i, NDASS& o, const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    void _iceD_opNDASS(::Ice::IncomingRequest&, ::std::function<void(::Ice::OutgoingResponse)>);
    /// \endcond

    virtual NDGSS opNDGSS(NDGSS i, NDGSS& o, const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    void _iceD_opNDGSS(::Ice::IncomingRequest&, ::std::function<void(::Ice::OutgoingResponse)>);
    /// \endcond

    /// \cond INTERNAL
    void dispatch(::Ice::IncomingRequest&, ::std::function<void(::Ice::OutgoingResponse)>) override;
    /// \endcond
};

using MyClassPtr = ::std::shared_ptr<MyClass>;

}

/// \cond STREAM
namespace Ice
{

template<>
struct StreamableTraits<::Test::TEstNv>
{
    static const StreamHelperCategory helper = StreamHelperCategoryStruct;
    static const int minWireSize = 2;
    static const bool fixedLength = false;
};

template<>
struct StreamReader<::Test::TEstNv>
{
    static void read(InputStream* istr, ::Test::TEstNv& v)
    {
        istr->readAll(v.d, v.s);
    }
};

}
/// \endcond

#include <Ice/PopDisableWarnings.h>
#endif
