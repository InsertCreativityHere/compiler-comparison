// Copyright (c) ZeroC, Inc.
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file 'ServerPrivate.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>

#define ICE_BUILDING_GENERATED_CODE
#include "ServerPrivate.h"
#include <Ice/AsyncResponseHandler.h>
#include <Ice/FactoryTable.h>
#include <Ice/OutgoingAsync.h>
#include <algorithm>
#include <array>

#if defined(_MSC_VER)
#   pragma warning(disable : 4458) // declaration of ... hides class member
#   pragma warning(disable : 4996) // ... was declared deprecated
#elif defined(__clang__)
#   pragma clang diagnostic ignored "-Wshadow"
#   pragma clang diagnostic ignored "-Wdeprecated-declarations"
#elif defined(__GNUC__)
#   pragma GCC diagnostic ignored "-Wshadow"
#   pragma GCC diagnostic ignored "-Wdeprecated-declarations"
#endif

#ifndef ICE_IGNORE_VERSION
#   if ICE_INT_VERSION  != 30850
#       error Ice version mismatch: an exact match is required for beta generated code
#   endif
#endif

namespace
{
    const IceInternal::FactoryTableInit iceC_factoryTableInit;
    const IceInternal::DefaultUserExceptionFactoryInit<::Test::UnknownDerived> iceC_Test_UnknownDerived_init("::Test::UnknownDerived");
    const IceInternal::DefaultUserExceptionFactoryInit<::Test::UnknownIntermediate> iceC_Test_UnknownIntermediate_init("::Test::UnknownIntermediate");
    const IceInternal::DefaultUserExceptionFactoryInit<::Test::UnknownMostDerived1> iceC_Test_UnknownMostDerived1_init("::Test::UnknownMostDerived1");
    const IceInternal::DefaultUserExceptionFactoryInit<::Test::UnknownMostDerived2> iceC_Test_UnknownMostDerived2_init("::Test::UnknownMostDerived2");
}

void
Test::UnknownDerived::ice_printFields(std::ostream& os) const
{
    Base::ice_printFields(os);
    Ice::print(os << ", ud = ", this->ud);
}

const char*
Test::UnknownDerived::ice_staticId() noexcept
{
    return "::Test::UnknownDerived";
}

const char*
Test::UnknownDerived::ice_id() const noexcept
{
    return ice_staticId();
}

void
Test::UnknownDerived::ice_throw() const
{
    throw *this;
}

void
Test::UnknownDerived::_writeImpl(Ice::OutputStream* ostr) const
{
    ostr->startSlice(ice_staticId(), -1, false);
    ostr->writeAll(this->ud);
    ostr->endSlice();
    Base::_writeImpl(ostr);
}

void
Test::UnknownDerived::_readImpl(Ice::InputStream* istr)
{
    istr->startSlice();
    istr->readAll(this->ud);
    istr->endSlice();
    Base::_readImpl(istr);
}

void
Test::UnknownIntermediate::ice_printFields(std::ostream& os) const
{
    Base::ice_printFields(os);
    Ice::print(os << ", ui = ", this->ui);
}

const char*
Test::UnknownIntermediate::ice_staticId() noexcept
{
    return "::Test::UnknownIntermediate";
}

const char*
Test::UnknownIntermediate::ice_id() const noexcept
{
    return ice_staticId();
}

void
Test::UnknownIntermediate::ice_throw() const
{
    throw *this;
}

void
Test::UnknownIntermediate::_writeImpl(Ice::OutputStream* ostr) const
{
    ostr->startSlice(ice_staticId(), -1, false);
    ostr->writeAll(this->ui);
    ostr->endSlice();
    Base::_writeImpl(ostr);
}

void
Test::UnknownIntermediate::_readImpl(Ice::InputStream* istr)
{
    istr->startSlice();
    istr->readAll(this->ui);
    istr->endSlice();
    Base::_readImpl(istr);
}

void
Test::UnknownMostDerived1::ice_printFields(std::ostream& os) const
{
    KnownIntermediate::ice_printFields(os);
    Ice::print(os << ", umd1 = ", this->umd1);
}

const char*
Test::UnknownMostDerived1::ice_staticId() noexcept
{
    return "::Test::UnknownMostDerived1";
}

const char*
Test::UnknownMostDerived1::ice_id() const noexcept
{
    return ice_staticId();
}

void
Test::UnknownMostDerived1::ice_throw() const
{
    throw *this;
}

void
Test::UnknownMostDerived1::_writeImpl(Ice::OutputStream* ostr) const
{
    ostr->startSlice(ice_staticId(), -1, false);
    ostr->writeAll(this->umd1);
    ostr->endSlice();
    KnownIntermediate::_writeImpl(ostr);
}

void
Test::UnknownMostDerived1::_readImpl(Ice::InputStream* istr)
{
    istr->startSlice();
    istr->readAll(this->umd1);
    istr->endSlice();
    KnownIntermediate::_readImpl(istr);
}

void
Test::UnknownMostDerived2::ice_printFields(std::ostream& os) const
{
    UnknownIntermediate::ice_printFields(os);
    Ice::print(os << ", umd2 = ", this->umd2);
}

const char*
Test::UnknownMostDerived2::ice_staticId() noexcept
{
    return "::Test::UnknownMostDerived2";
}

const char*
Test::UnknownMostDerived2::ice_id() const noexcept
{
    return ice_staticId();
}

void
Test::UnknownMostDerived2::ice_throw() const
{
    throw *this;
}

void
Test::UnknownMostDerived2::_writeImpl(Ice::OutputStream* ostr) const
{
    ostr->startSlice(ice_staticId(), -1, false);
    ostr->writeAll(this->umd2);
    ostr->endSlice();
    UnknownIntermediate::_writeImpl(ostr);
}

void
Test::UnknownMostDerived2::_readImpl(Ice::InputStream* istr)
{
    istr->startSlice();
    istr->readAll(this->umd2);
    istr->endSlice();
    UnknownIntermediate::_readImpl(istr);
}
