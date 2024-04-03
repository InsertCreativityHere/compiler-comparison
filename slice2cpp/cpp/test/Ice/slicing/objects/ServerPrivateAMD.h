//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `ServerPrivateAMD.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

#ifndef __ServerPrivateAMD_h__
#define __ServerPrivateAMD_h__

#include <IceUtil/PushDisableWarnings.h>
#include <Ice/Ice.h>
#include "TestAMD.h"

#ifndef ICE_IGNORE_VERSION
#   if ICE_INT_VERSION  != 30850
#       error Ice version mismatch: an exact match is required for beta generated code
#   endif
#endif

namespace Test
{
    class SBSUnknownDerived;
    using SBSUnknownDerivedPtr = ::std::shared_ptr<SBSUnknownDerived>;

    class SUnknown;
    using SUnknownPtr = ::std::shared_ptr<SUnknown>;

    class D2;
    using D2Ptr = ::std::shared_ptr<D2>;

    class D4;
    using D4Ptr = ::std::shared_ptr<D4>;

    class MyClass;
    using MyClassPtr = ::std::shared_ptr<MyClass>;

    class PSUnknown;
    using PSUnknownPtr = ::std::shared_ptr<PSUnknown>;

    class PSUnknown2;
    using PSUnknown2Ptr = ::std::shared_ptr<PSUnknown2>;

}

namespace Test
{

class SBSUnknownDerived : public SBase
{
public:

    SBSUnknownDerived() = default;

    /**
     * One-shot constructor to initialize all data members.
     */
    SBSUnknownDerived(::std::string sb, ::std::string sbsud) :
        SBase(::std::move(sb)),
        sbsud(::std::move(sbsud))
    {
    }

    /**
     * Obtains the Slice type ID of this value.
     * @return The fully-scoped type ID.
     */
    static ::std::string_view ice_staticId() noexcept;

    ::std::string ice_id() const override;

    /**
     * Obtains a tuple containing all of the value's data members.
     * @return The data members in a tuple.
     */
    std::tuple<const ::std::string&, const ::std::string&> ice_tuple() const
    {
        return std::tie(sb, sbsud);
    }

    /**
     * Creates a shallow polymorphic copy of this instance.
     * @return The cloned value.
     */
    SBSUnknownDerivedPtr ice_clone() const { return ::std::static_pointer_cast <SBSUnknownDerived>(_iceCloneImpl()); }

    ::std::string sbsud;

protected:

    SBSUnknownDerived(const SBSUnknownDerived&) = default;

    ::Ice::ValuePtr _iceCloneImpl() const override;
    void _iceWriteImpl(::Ice::OutputStream*) const override;

    void _iceReadImpl(::Ice::InputStream*) override;
};

/// \cond INTERNAL
static SBSUnknownDerived _iceS_SBSUnknownDerived_init;
/// \endcond

class SUnknown : public ::Ice::Value
{
public:

    SUnknown() = default;

    /**
     * One-shot constructor to initialize all data members.
     */
    SUnknown(::std::string su, ::Test::SUnknownPtr cycle) :
        su(::std::move(su)),
        cycle(::std::move(cycle))
    {
    }

    /**
     * Obtains the Slice type ID of this value.
     * @return The fully-scoped type ID.
     */
    static ::std::string_view ice_staticId() noexcept;

    ::std::string ice_id() const override;

    /**
     * Obtains a tuple containing all of the value's data members.
     * @return The data members in a tuple.
     */
    std::tuple<const ::std::string&, const ::Test::SUnknownPtr&> ice_tuple() const
    {
        return std::tie(su, cycle);
    }

    /**
     * Creates a shallow polymorphic copy of this instance.
     * @return The cloned value.
     */
    SUnknownPtr ice_clone() const { return ::std::static_pointer_cast <SUnknown>(_iceCloneImpl()); }

    ::std::string su;
    ::Test::SUnknownPtr cycle;

protected:

    SUnknown(const SUnknown&) = default;

    ::Ice::ValuePtr _iceCloneImpl() const override;
    void _iceWriteImpl(::Ice::OutputStream*) const override;

    void _iceReadImpl(::Ice::InputStream*) override;
};

class D2 : public B
{
public:

    D2() = default;

    /**
     * One-shot constructor to initialize all data members.
     */
    D2(::std::string sb, ::Test::BPtr pb, ::std::string sd2, ::Test::BPtr pd2) :
        B(::std::move(sb), ::std::move(pb)),
        sd2(::std::move(sd2)),
        pd2(::std::move(pd2))
    {
    }

    /**
     * Obtains the Slice type ID of this value.
     * @return The fully-scoped type ID.
     */
    static ::std::string_view ice_staticId() noexcept;

    ::std::string ice_id() const override;

    /**
     * Obtains a tuple containing all of the value's data members.
     * @return The data members in a tuple.
     */
    std::tuple<const ::std::string&, const ::Test::BPtr&, const ::std::string&, const ::Test::BPtr&> ice_tuple() const
    {
        return std::tie(sb, pb, sd2, pd2);
    }

    /**
     * Creates a shallow polymorphic copy of this instance.
     * @return The cloned value.
     */
    D2Ptr ice_clone() const { return ::std::static_pointer_cast <D2>(_iceCloneImpl()); }

    ::std::string sd2;
    ::Test::BPtr pd2;

protected:

    D2(const D2&) = default;

    ::Ice::ValuePtr _iceCloneImpl() const override;
    void _iceWriteImpl(::Ice::OutputStream*) const override;

    void _iceReadImpl(::Ice::InputStream*) override;
};

class D4 : public B
{
public:

    D4() = default;

    /**
     * One-shot constructor to initialize all data members.
     */
    D4(::std::string sb, ::Test::BPtr pb, ::Test::BPtr p1, ::Test::BPtr p2) :
        B(::std::move(sb), ::std::move(pb)),
        p1(::std::move(p1)),
        p2(::std::move(p2))
    {
    }

    /**
     * Obtains the Slice type ID of this value.
     * @return The fully-scoped type ID.
     */
    static ::std::string_view ice_staticId() noexcept;

    ::std::string ice_id() const override;

    /**
     * Obtains a tuple containing all of the value's data members.
     * @return The data members in a tuple.
     */
    std::tuple<const ::std::string&, const ::Test::BPtr&, const ::Test::BPtr&, const ::Test::BPtr&> ice_tuple() const
    {
        return std::tie(sb, pb, p1, p2);
    }

    /**
     * Creates a shallow polymorphic copy of this instance.
     * @return The cloned value.
     */
    D4Ptr ice_clone() const { return ::std::static_pointer_cast <D4>(_iceCloneImpl()); }

    ::Test::BPtr p1;
    ::Test::BPtr p2;

protected:

    D4(const D4&) = default;

    ::Ice::ValuePtr _iceCloneImpl() const override;
    void _iceWriteImpl(::Ice::OutputStream*) const override;

    void _iceReadImpl(::Ice::InputStream*) override;
};

class UnknownDerivedException : public BaseException
{
public:
    using BaseException::BaseException;

    /**
     * One-shot constructor to initialize all data members.
     */
    UnknownDerivedException(::std::string sbe, BPtr pb, ::std::string sude, D2Ptr pd2) noexcept :
        BaseException(::std::move(sbe), ::std::move(pb)),
        sude(::std::move(sude)),
        pd2(::std::move(pd2))
    {
    }

    /**
     * Obtains a tuple containing all of the exception's data members.
     * @return The data members in a tuple.
     */
    std::tuple<const ::std::string&, const ::Test::BPtr&, const ::std::string&, const ::Test::D2Ptr&> ice_tuple() const
    {
        return std::tie(sbe, pb, sude, pd2);
    }

    /**
     * Obtains the Slice type ID of this exception.
     * @return The fully-scoped type ID.
     */
    static ::std::string_view ice_staticId() noexcept;

    ::std::string ice_id() const override;

    void ice_throw() const override;

    ::std::string sude;
    ::Test::D2Ptr pd2;

protected:
    void _writeImpl(::Ice::OutputStream*) const override;

    void _readImpl(::Ice::InputStream*) override;
};

class MyClass : public ::Ice::Value
{
public:

    MyClass() = default;

    /**
     * One-shot constructor to initialize all data members.
     */
    explicit MyClass(::std::int32_t i) :
        i(i)
    {
    }

    /**
     * Obtains the Slice type ID of this value.
     * @return The fully-scoped type ID.
     */
    static ::std::string_view ice_staticId() noexcept;

    ::std::string ice_id() const override;

    /**
     * Obtains a tuple containing all of the value's data members.
     * @return The data members in a tuple.
     */
    std::tuple<const ::std::int32_t&> ice_tuple() const
    {
        return std::tie(i);
    }

    /**
     * Creates a shallow polymorphic copy of this instance.
     * @return The cloned value.
     */
    MyClassPtr ice_clone() const { return ::std::static_pointer_cast <MyClass>(_iceCloneImpl()); }

    ::std::int32_t i;

protected:

    MyClass(const MyClass&) = default;

    ::Ice::ValuePtr _iceCloneImpl() const override;
    void _iceWriteImpl(::Ice::OutputStream*) const override;

    void _iceReadImpl(::Ice::InputStream*) override;
};

class PSUnknown : public Preserved
{
public:

    PSUnknown() = default;

    /**
     * One-shot constructor to initialize all data members.
     */
    PSUnknown(::std::int32_t pi, ::std::string ps, ::std::string psu, ::Test::PNodePtr graph, ::Test::MyClassPtr cl) :
        Preserved(pi, ::std::move(ps)),
        psu(::std::move(psu)),
        graph(::std::move(graph)),
        cl(::std::move(cl))
    {
    }

    /**
     * Obtains the Slice type ID of this value.
     * @return The fully-scoped type ID.
     */
    static ::std::string_view ice_staticId() noexcept;

    ::std::string ice_id() const override;

    /**
     * Obtains a tuple containing all of the value's data members.
     * @return The data members in a tuple.
     */
    std::tuple<const ::std::int32_t&, const ::std::string&, const ::std::string&, const ::Test::PNodePtr&, const ::Test::MyClassPtr&> ice_tuple() const
    {
        return std::tie(pi, ps, psu, graph, cl);
    }

    /**
     * Creates a shallow polymorphic copy of this instance.
     * @return The cloned value.
     */
    PSUnknownPtr ice_clone() const { return ::std::static_pointer_cast <PSUnknown>(_iceCloneImpl()); }

    ::std::string psu;
    ::Test::PNodePtr graph;
    ::Test::MyClassPtr cl;

protected:

    PSUnknown(const PSUnknown&) = default;

    ::Ice::ValuePtr _iceCloneImpl() const override;
    void _iceWriteImpl(::Ice::OutputStream*) const override;

    void _iceReadImpl(::Ice::InputStream*) override;
};

class PSUnknown2 : public Preserved
{
public:

    PSUnknown2() = default;

    /**
     * One-shot constructor to initialize all data members.
     */
    PSUnknown2(::std::int32_t pi, ::std::string ps, ::Test::PBasePtr pb) :
        Preserved(pi, ::std::move(ps)),
        pb(::std::move(pb))
    {
    }

    /**
     * Obtains the Slice type ID of this value.
     * @return The fully-scoped type ID.
     */
    static ::std::string_view ice_staticId() noexcept;

    ::std::string ice_id() const override;

    /**
     * Obtains a tuple containing all of the value's data members.
     * @return The data members in a tuple.
     */
    std::tuple<const ::std::int32_t&, const ::std::string&, const ::Test::PBasePtr&> ice_tuple() const
    {
        return std::tie(pi, ps, pb);
    }

    /**
     * Creates a shallow polymorphic copy of this instance.
     * @return The cloned value.
     */
    PSUnknown2Ptr ice_clone() const { return ::std::static_pointer_cast <PSUnknown2>(_iceCloneImpl()); }

    ::Test::PBasePtr pb;

protected:

    PSUnknown2(const PSUnknown2&) = default;

    ::Ice::ValuePtr _iceCloneImpl() const override;
    void _iceWriteImpl(::Ice::OutputStream*) const override;

    void _iceReadImpl(::Ice::InputStream*) override;
};

}

/// \cond STREAM
namespace Ice
{

template<>
struct StreamWriter<::Test::SBSUnknownDerived>
{
    static void write(OutputStream* ostr, const ::Test::SBSUnknownDerived& v)
    {
        ostr->writeAll(v.sbsud);
    }
};

template<>
struct StreamReader<::Test::SBSUnknownDerived>
{
    static void read(InputStream* istr, ::Test::SBSUnknownDerived& v)
    {
        istr->readAll(v.sbsud);
    }
};

template<>
struct StreamReader<::Test::SUnknown>
{
    static void read(InputStream* istr, ::Test::SUnknown& v)
    {
        istr->readAll(v.su, v.cycle);
    }
};

template<>
struct StreamWriter<::Test::D2>
{
    static void write(OutputStream* ostr, const ::Test::D2& v)
    {
        ostr->writeAll(v.sd2, v.pd2);
    }
};

template<>
struct StreamReader<::Test::D2>
{
    static void read(InputStream* istr, ::Test::D2& v)
    {
        istr->readAll(v.sd2, v.pd2);
    }
};

template<>
struct StreamWriter<::Test::D4>
{
    static void write(OutputStream* ostr, const ::Test::D4& v)
    {
        ostr->writeAll(v.p1, v.p2);
    }
};

template<>
struct StreamReader<::Test::D4>
{
    static void read(InputStream* istr, ::Test::D4& v)
    {
        istr->readAll(v.p1, v.p2);
    }
};

template<>
struct StreamWriter<::Test::UnknownDerivedException>
{
    static void write(OutputStream* ostr, const ::Test::UnknownDerivedException& v)
    {
        ostr->writeAll(v.sude, v.pd2);
    }
};

template<>
struct StreamReader<::Test::UnknownDerivedException>
{
    static void read(InputStream* istr, ::Test::UnknownDerivedException& v)
    {
        istr->readAll(v.sude, v.pd2);
    }
};

template<>
struct StreamReader<::Test::MyClass>
{
    static void read(InputStream* istr, ::Test::MyClass& v)
    {
        istr->readAll(v.i);
    }
};

template<>
struct StreamWriter<::Test::PSUnknown>
{
    static void write(OutputStream* ostr, const ::Test::PSUnknown& v)
    {
        ostr->writeAll(v.psu, v.graph, v.cl);
    }
};

template<>
struct StreamReader<::Test::PSUnknown>
{
    static void read(InputStream* istr, ::Test::PSUnknown& v)
    {
        istr->readAll(v.psu, v.graph, v.cl);
    }
};

template<>
struct StreamWriter<::Test::PSUnknown2>
{
    static void write(OutputStream* ostr, const ::Test::PSUnknown2& v)
    {
        ostr->writeAll(v.pb);
    }
};

template<>
struct StreamReader<::Test::PSUnknown2>
{
    static void read(InputStream* istr, ::Test::PSUnknown2& v)
    {
        istr->readAll(v.pb);
    }
};

}
/// \endcond

#include <IceUtil/PopDisableWarnings.h>
#endif
