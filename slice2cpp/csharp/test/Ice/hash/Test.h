//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.7.9
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
#include <Ice/ProxyF.h>
#include <Ice/ObjectF.h>
#include <Ice/ValueF.h>
#include <Ice/Exception.h>
#include <Ice/LocalObject.h>
#include <Ice/StreamHelpers.h>
#include <Ice/Comparable.h>
#include <Ice/Proxy.h>
#include <Ice/Object.h>
#include <Ice/GCObject.h>
#include <Ice/Value.h>
#include <Ice/Incoming.h>
#include <Ice/FactoryTableInit.h>
#include <IceUtil/ScopedArray.h>
#include <Ice/Optional.h>
#include <Ice/ExceptionHelpers.h>
#include <IceUtil/UndefSysMacros.h>

#ifndef ICE_IGNORE_VERSION
#   if ICE_INT_VERSION / 100 != 307
#       error Ice version mismatch!
#   endif
#   if ICE_INT_VERSION % 100 >= 50
#       error Beta header file detected
#   endif
#   if ICE_INT_VERSION % 100 < 9
#       error Ice patch level mismatch!
#   endif
#endif

#ifdef ICE_CPP11_MAPPING // C++11 mapping

namespace Test
{

class Pen;

}

namespace Test
{

class BaseException : public ::Ice::UserExceptionHelper<BaseException, ::Ice::UserException>
{
public:

    virtual ~BaseException();

    BaseException(const BaseException&) = default;

    BaseException() = default;

    /**
     * Obtains a tuple containing all of the exception's data members.
     * @return The data members in a tuple.
     */
    std::tuple<> ice_tuple() const
    {
        return std::tie();
    }

    /**
     * Obtains the Slice type ID of this exception.
     * @return The fully-scoped type ID.
     */
    static const ::std::string& ice_staticId();
};

/// \cond INTERNAL
static BaseException _iceS_BaseException_init;
/// \endcond

class InvalidPointException : public ::Ice::UserExceptionHelper<InvalidPointException, BaseException>
{
public:

    virtual ~InvalidPointException();

    InvalidPointException(const InvalidPointException&) = default;

    InvalidPointException() = default;

    /**
     * One-shot constructor to initialize all data members.
     */
    InvalidPointException(int index) :
        index(index)
    {
    }

    /**
     * Obtains a tuple containing all of the exception's data members.
     * @return The data members in a tuple.
     */
    std::tuple<const int&> ice_tuple() const
    {
        return std::tie(index);
    }

    /**
     * Obtains the Slice type ID of this exception.
     * @return The fully-scoped type ID.
     */
    static const ::std::string& ice_staticId();

    int index;
};

class InvalidLengthException : public ::Ice::UserExceptionHelper<InvalidLengthException, BaseException>
{
public:

    virtual ~InvalidLengthException();

    InvalidLengthException(const InvalidLengthException&) = default;

    InvalidLengthException() = default;

    /**
     * One-shot constructor to initialize all data members.
     */
    InvalidLengthException(int length) :
        length(length)
    {
    }

    /**
     * Obtains a tuple containing all of the exception's data members.
     * @return The data members in a tuple.
     */
    std::tuple<const int&> ice_tuple() const
    {
        return std::tie(length);
    }

    /**
     * Obtains the Slice type ID of this exception.
     * @return The fully-scoped type ID.
     */
    static const ::std::string& ice_staticId();

    int length;
};

class OtherException : public ::Ice::UserExceptionHelper<OtherException, ::Ice::UserException>
{
public:

    virtual ~OtherException();

    OtherException(const OtherException&) = default;

    OtherException() = default;

    /**
     * One-shot constructor to initialize all data members.
     */
    OtherException(int x, int y, int z, bool b) :
        x(x),
        y(y),
        z(z),
        b(b)
    {
    }

    /**
     * Obtains a tuple containing all of the exception's data members.
     * @return The data members in a tuple.
     */
    std::tuple<const int&, const int&, const int&, const bool&> ice_tuple() const
    {
        return std::tie(x, y, z, b);
    }

    /**
     * Obtains the Slice type ID of this exception.
     * @return The fully-scoped type ID.
     */
    static const ::std::string& ice_staticId();

    int x;
    int y;
    int z;
    bool b;
};

struct PointF
{
    float x;
    float y;
    float z;

    /**
     * Obtains a tuple containing all of the struct's data members.
     * @return The data members in a tuple.
     */
    std::tuple<const float&, const float&, const float&> ice_tuple() const
    {
        return std::tie(x, y, z);
    }
};

struct PointD
{
    double x;
    double y;
    double z;

    /**
     * Obtains a tuple containing all of the struct's data members.
     * @return The data members in a tuple.
     */
    std::tuple<const double&, const double&, const double&> ice_tuple() const
    {
        return std::tie(x, y, z);
    }
};

struct Point
{
    int x;
    int y;

    /**
     * Obtains a tuple containing all of the struct's data members.
     * @return The data members in a tuple.
     */
    std::tuple<const int&, const int&> ice_tuple() const
    {
        return std::tie(x, y);
    }
};

using Points = ::std::vector<Point>;

struct Polyline
{
    ::Test::Points vertices;

    /**
     * Obtains a tuple containing all of the struct's data members.
     * @return The data members in a tuple.
     */
    std::tuple<const ::Test::Points&> ice_tuple() const
    {
        return std::tie(vertices);
    }
};

struct Color
{
    int r;
    int g;
    int b;
    int a;

    /**
     * Obtains a tuple containing all of the struct's data members.
     * @return The data members in a tuple.
     */
    std::tuple<const int&, const int&, const int&, const int&> ice_tuple() const
    {
        return std::tie(r, g, b, a);
    }
};

using StringColorMap = ::std::map<int, Color>;

struct ColorPalette
{
    ::Test::StringColorMap colors;

    /**
     * Obtains a tuple containing all of the struct's data members.
     * @return The data members in a tuple.
     */
    std::tuple<const ::Test::StringColorMap&> ice_tuple() const
    {
        return std::tie(colors);
    }
};

struct Draw
{
    ::Test::Color backgroundColor;
    ::std::shared_ptr<::Test::Pen> pen;
    bool shared;

    /**
     * Obtains a tuple containing all of the struct's data members.
     * @return The data members in a tuple.
     */
    std::tuple<const ::Test::Color&, const ::std::shared_ptr<::Test::Pen>&, const bool&> ice_tuple() const
    {
        return std::tie(backgroundColor, pen, shared);
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

class Pen : public ::Ice::ValueHelper<Pen, ::Ice::Value>
{
public:

    virtual ~Pen();

    Pen() = default;

    Pen(const Pen&) = default;
    Pen(Pen&&) = default;
    Pen& operator=(const Pen&) = default;
    Pen& operator=(Pen&&) = default;

    /**
     * One-shot constructor to initialize all data members.
     */
    Pen(int thickness, const ::Test::Color& color) :
        thickness(thickness),
        color(color)
    {
    }

    /**
     * Obtains a tuple containing all of the value's data members.
     * @return The data members in a tuple.
     */
    std::tuple<const int&, const ::Test::Color&> ice_tuple() const
    {
        return std::tie(thickness, color);
    }

    /**
     * Obtains the Slice type ID of this value.
     * @return The fully-scoped type ID.
     */
    static const ::std::string& ice_staticId();

    int thickness;
    ::Test::Color color;
};

/// \cond INTERNAL
static Pen _iceS_Pen_init;
/// \endcond

}

namespace Test
{

}

/// \cond STREAM
namespace Ice
{

template<typename S>
struct StreamReader<::Test::InvalidPointException, S>
{
    static void read(S* istr, ::Test::InvalidPointException& v)
    {
        istr->readAll(v.index);
    }
};

template<typename S>
struct StreamReader<::Test::InvalidLengthException, S>
{
    static void read(S* istr, ::Test::InvalidLengthException& v)
    {
        istr->readAll(v.length);
    }
};

template<typename S>
struct StreamReader<::Test::OtherException, S>
{
    static void read(S* istr, ::Test::OtherException& v)
    {
        istr->readAll(v.x, v.y, v.z, v.b);
    }
};

template<>
struct StreamableTraits<::Test::PointF>
{
    static const StreamHelperCategory helper = StreamHelperCategoryStruct;
    static const int minWireSize = 12;
    static const bool fixedLength = true;
};

template<typename S>
struct StreamReader<::Test::PointF, S>
{
    static void read(S* istr, ::Test::PointF& v)
    {
        istr->readAll(v.x, v.y, v.z);
    }
};

template<>
struct StreamableTraits<::Test::PointD>
{
    static const StreamHelperCategory helper = StreamHelperCategoryStruct;
    static const int minWireSize = 24;
    static const bool fixedLength = true;
};

template<typename S>
struct StreamReader<::Test::PointD, S>
{
    static void read(S* istr, ::Test::PointD& v)
    {
        istr->readAll(v.x, v.y, v.z);
    }
};

template<>
struct StreamableTraits<::Test::Point>
{
    static const StreamHelperCategory helper = StreamHelperCategoryStruct;
    static const int minWireSize = 8;
    static const bool fixedLength = true;
};

template<typename S>
struct StreamReader<::Test::Point, S>
{
    static void read(S* istr, ::Test::Point& v)
    {
        istr->readAll(v.x, v.y);
    }
};

template<>
struct StreamableTraits<::Test::Polyline>
{
    static const StreamHelperCategory helper = StreamHelperCategoryStruct;
    static const int minWireSize = 1;
    static const bool fixedLength = false;
};

template<typename S>
struct StreamReader<::Test::Polyline, S>
{
    static void read(S* istr, ::Test::Polyline& v)
    {
        istr->readAll(v.vertices);
    }
};

template<>
struct StreamableTraits<::Test::Color>
{
    static const StreamHelperCategory helper = StreamHelperCategoryStruct;
    static const int minWireSize = 16;
    static const bool fixedLength = true;
};

template<typename S>
struct StreamReader<::Test::Color, S>
{
    static void read(S* istr, ::Test::Color& v)
    {
        istr->readAll(v.r, v.g, v.b, v.a);
    }
};

template<>
struct StreamableTraits<::Test::ColorPalette>
{
    static const StreamHelperCategory helper = StreamHelperCategoryStruct;
    static const int minWireSize = 1;
    static const bool fixedLength = false;
};

template<typename S>
struct StreamReader<::Test::ColorPalette, S>
{
    static void read(S* istr, ::Test::ColorPalette& v)
    {
        istr->readAll(v.colors);
    }
};

template<typename S>
struct StreamReader<::Test::Pen, S>
{
    static void read(S* istr, ::Test::Pen& v)
    {
        istr->readAll(v.thickness, v.color);
    }
};

template<>
struct StreamableTraits<::Test::Draw>
{
    static const StreamHelperCategory helper = StreamHelperCategoryStruct;
    static const int minWireSize = 18;
    static const bool fixedLength = false;
};

template<typename S>
struct StreamReader<::Test::Draw, S>
{
    static void read(S* istr, ::Test::Draw& v)
    {
        istr->readAll(v.backgroundColor, v.pen, v.shared);
    }
};

}
/// \endcond

/// \cond INTERNAL
namespace Test
{

using PenPtr = ::std::shared_ptr<Pen>;

}
/// \endcond

#else // C++98 mapping

namespace IceProxy
{

namespace Test
{

class Pen;
/// \cond INTERNAL
void _readProxy(::Ice::InputStream*, ::IceInternal::ProxyHandle< Pen>&);
::IceProxy::Ice::Object* upCast(Pen*);
/// \endcond

}

}

namespace Test
{

class Pen;
/// \cond INTERNAL
::Ice::Object* upCast(Pen*);
/// \endcond
typedef ::IceInternal::Handle< Pen> PenPtr;
typedef ::IceInternal::ProxyHandle< ::IceProxy::Test::Pen> PenPrx;
typedef PenPrx PenPrxPtr;
/// \cond INTERNAL
void _icePatchObjectPtr(PenPtr&, const ::Ice::ObjectPtr&);
/// \endcond

}

namespace Test
{

class BaseException : public ::Ice::UserException
{
public:

    BaseException() {}

#ifdef ICE_CPP11_COMPILER
    BaseException(const BaseException&) = default;
    virtual ~BaseException();
#else
    virtual ~BaseException() throw();
#endif

    /**
     * Obtains the Slice type ID of this exception.
     * @return The fully-scoped type ID.
     */
    virtual ::std::string ice_id() const;
    /**
     * Polymorphically clones this exception.
     * @return A shallow copy of this exception.
     */
    virtual BaseException* ice_clone() const;
    /**
     * Throws this exception.
     */
    virtual void ice_throw() const;

protected:

    /// \cond STREAM
    virtual void _writeImpl(::Ice::OutputStream*) const;
    virtual void _readImpl(::Ice::InputStream*);
    /// \endcond
};

/// \cond INTERNAL
static BaseException _iceS_BaseException_init;
/// \endcond

class InvalidPointException : public BaseException
{
public:

    InvalidPointException() {}
    /**
     * One-shot constructor to initialize all data members.
     */
    explicit InvalidPointException(::Ice::Int index);

#ifdef ICE_CPP11_COMPILER
    InvalidPointException(const InvalidPointException&) = default;
    virtual ~InvalidPointException();
#else
    virtual ~InvalidPointException() throw();
#endif

    /**
     * Obtains the Slice type ID of this exception.
     * @return The fully-scoped type ID.
     */
    virtual ::std::string ice_id() const;
    /**
     * Polymorphically clones this exception.
     * @return A shallow copy of this exception.
     */
    virtual InvalidPointException* ice_clone() const;
    /**
     * Throws this exception.
     */
    virtual void ice_throw() const;

    ::Ice::Int index;

protected:

    /// \cond STREAM
    virtual void _writeImpl(::Ice::OutputStream*) const;
    virtual void _readImpl(::Ice::InputStream*);
    /// \endcond
};

class InvalidLengthException : public BaseException
{
public:

    InvalidLengthException() {}
    /**
     * One-shot constructor to initialize all data members.
     */
    explicit InvalidLengthException(::Ice::Int length);

#ifdef ICE_CPP11_COMPILER
    InvalidLengthException(const InvalidLengthException&) = default;
    virtual ~InvalidLengthException();
#else
    virtual ~InvalidLengthException() throw();
#endif

    /**
     * Obtains the Slice type ID of this exception.
     * @return The fully-scoped type ID.
     */
    virtual ::std::string ice_id() const;
    /**
     * Polymorphically clones this exception.
     * @return A shallow copy of this exception.
     */
    virtual InvalidLengthException* ice_clone() const;
    /**
     * Throws this exception.
     */
    virtual void ice_throw() const;

    ::Ice::Int length;

protected:

    /// \cond STREAM
    virtual void _writeImpl(::Ice::OutputStream*) const;
    virtual void _readImpl(::Ice::InputStream*);
    /// \endcond
};

class OtherException : public ::Ice::UserException
{
public:

    OtherException() {}
    /**
     * One-shot constructor to initialize all data members.
     */
    OtherException(::Ice::Int x, ::Ice::Int y, ::Ice::Int z, bool b);

#ifdef ICE_CPP11_COMPILER
    OtherException(const OtherException&) = default;
    virtual ~OtherException();
#else
    virtual ~OtherException() throw();
#endif

    /**
     * Obtains the Slice type ID of this exception.
     * @return The fully-scoped type ID.
     */
    virtual ::std::string ice_id() const;
    /**
     * Polymorphically clones this exception.
     * @return A shallow copy of this exception.
     */
    virtual OtherException* ice_clone() const;
    /**
     * Throws this exception.
     */
    virtual void ice_throw() const;

    ::Ice::Int x;
    ::Ice::Int y;
    ::Ice::Int z;
    bool b;

protected:

    /// \cond STREAM
    virtual void _writeImpl(::Ice::OutputStream*) const;
    virtual void _readImpl(::Ice::InputStream*);
    /// \endcond
};

struct PointF
{
    ::Ice::Float x;
    ::Ice::Float y;
    ::Ice::Float z;
};

struct PointD
{
    ::Ice::Double x;
    ::Ice::Double y;
    ::Ice::Double z;
};

struct Point
{
    ::Ice::Int x;
    ::Ice::Int y;

    bool operator==(const Point& rhs_) const
    {
        if(this == &rhs_)
        {
            return true;
        }
        if(x != rhs_.x)
        {
            return false;
        }
        if(y != rhs_.y)
        {
            return false;
        }
        return true;
    }

    bool operator<(const Point& rhs_) const
    {
        if(this == &rhs_)
        {
            return false;
        }
        if(x < rhs_.x)
        {
            return true;
        }
        else if(rhs_.x < x)
        {
            return false;
        }
        if(y < rhs_.y)
        {
            return true;
        }
        else if(rhs_.y < y)
        {
            return false;
        }
        return false;
    }

    bool operator!=(const Point& rhs_) const
    {
        return !operator==(rhs_);
    }
    bool operator<=(const Point& rhs_) const
    {
        return operator<(rhs_) || operator==(rhs_);
    }
    bool operator>(const Point& rhs_) const
    {
        return !operator<(rhs_) && !operator==(rhs_);
    }
    bool operator>=(const Point& rhs_) const
    {
        return !operator<(rhs_);
    }
};

typedef ::std::vector<Point> Points;

struct Polyline
{
    ::Test::Points vertices;
};

struct Color
{
    ::Ice::Int r;
    ::Ice::Int g;
    ::Ice::Int b;
    ::Ice::Int a;

    bool operator==(const Color& rhs_) const
    {
        if(this == &rhs_)
        {
            return true;
        }
        if(r != rhs_.r)
        {
            return false;
        }
        if(g != rhs_.g)
        {
            return false;
        }
        if(b != rhs_.b)
        {
            return false;
        }
        if(a != rhs_.a)
        {
            return false;
        }
        return true;
    }

    bool operator<(const Color& rhs_) const
    {
        if(this == &rhs_)
        {
            return false;
        }
        if(r < rhs_.r)
        {
            return true;
        }
        else if(rhs_.r < r)
        {
            return false;
        }
        if(g < rhs_.g)
        {
            return true;
        }
        else if(rhs_.g < g)
        {
            return false;
        }
        if(b < rhs_.b)
        {
            return true;
        }
        else if(rhs_.b < b)
        {
            return false;
        }
        if(a < rhs_.a)
        {
            return true;
        }
        else if(rhs_.a < a)
        {
            return false;
        }
        return false;
    }

    bool operator!=(const Color& rhs_) const
    {
        return !operator==(rhs_);
    }
    bool operator<=(const Color& rhs_) const
    {
        return operator<(rhs_) || operator==(rhs_);
    }
    bool operator>(const Color& rhs_) const
    {
        return !operator<(rhs_) && !operator==(rhs_);
    }
    bool operator>=(const Color& rhs_) const
    {
        return !operator<(rhs_);
    }
};

typedef ::std::map< ::Ice::Int, Color> StringColorMap;

struct ColorPalette
{
    ::Test::StringColorMap colors;
};

struct Draw
{
    ::Test::Color backgroundColor;
    ::Test::PenPtr pen;
    bool shared;
};

}

namespace Test
{

}

namespace IceProxy
{

namespace Test
{

class Pen : public virtual ::Ice::Proxy<Pen, ::IceProxy::Ice::Object>
{
public:

    /**
     * Obtains the Slice type ID corresponding to this class.
     * @return A fully-scoped type ID.
     */
    static const ::std::string& ice_staticId();

protected:
    /// \cond INTERNAL

    virtual ::IceProxy::Ice::Object* _newInstance() const;
    /// \endcond
};

}

}

namespace Test
{

class Pen : public virtual ::Ice::Object
{
public:

    typedef PenPrx ProxyType;
    typedef PenPtr PointerType;

    virtual ~Pen();

    Pen()
    {
    }

    /**
     * One-shot constructor to initialize all data members.
     */
    Pen(::Ice::Int thickness, const ::Test::Color& color) :
        thickness(thickness),
        color(color)
    {
    }

#ifdef ICE_CPP11_COMPILER
    Pen(const Pen&) = default;
    Pen& operator=(const Pen&) = default;
#endif

    /**
     * Polymorphically clones this object.
     * @return A shallow copy of this object.
     */
    virtual ::Ice::ObjectPtr ice_clone() const;

    /**
     * Determines whether this object supports an interface with the given Slice type ID.
     * @param id The fully-scoped Slice type ID.
     * @param current The Current object for the invocation.
     * @return True if this object supports the interface, false, otherwise.
     */
    virtual bool ice_isA(const ::std::string& id, const ::Ice::Current& current = ::Ice::emptyCurrent) const;

    /**
     * Obtains a list of the Slice type IDs representing the interfaces supported by this object.
     * @param current The Current object for the invocation.
     * @return A list of fully-scoped type IDs.
     */
    virtual ::std::vector< ::std::string> ice_ids(const ::Ice::Current& current = ::Ice::emptyCurrent) const;

    /**
     * Obtains a Slice type ID representing the most-derived interface supported by this object.
     * @param current The Current object for the invocation.
     * @return A fully-scoped type ID.
     */
    virtual const ::std::string& ice_id(const ::Ice::Current& current = ::Ice::emptyCurrent) const;

    /**
     * Obtains the Slice type ID corresponding to this class.
     * @return A fully-scoped type ID.
     */
    static const ::std::string& ice_staticId();

    /**
     * Obtains a value factory that instantiates this class.
     * @return The value factory.
     */
    static ::Ice::ValueFactoryPtr ice_factory();

protected:

    /// \cond STREAM
    virtual void _iceWriteImpl(::Ice::OutputStream*) const;
    virtual void _iceReadImpl(::Ice::InputStream*);
    /// \endcond

public:

    ::Ice::Int thickness;
    ::Test::Color color;
};
/// \cond INTERNAL
static ::Ice::ValueFactoryPtr _iceS_Pen_init = ::Test::Pen::ice_factory();
/// \endcond

/// \cond INTERNAL
inline bool operator==(const Pen& lhs, const Pen& rhs)
{
    return static_cast<const ::Ice::Object&>(lhs) == static_cast<const ::Ice::Object&>(rhs);
}

inline bool operator<(const Pen& lhs, const Pen& rhs)
{
    return static_cast<const ::Ice::Object&>(lhs) < static_cast<const ::Ice::Object&>(rhs);
}
/// \endcond

}

/// \cond STREAM
namespace Ice
{

template<>
struct StreamableTraits< ::Test::BaseException>
{
    static const StreamHelperCategory helper = StreamHelperCategoryUserException;
};

template<>
struct StreamableTraits< ::Test::InvalidPointException>
{
    static const StreamHelperCategory helper = StreamHelperCategoryUserException;
};

template<typename S>
struct StreamWriter< ::Test::InvalidPointException, S>
{
    static void write(S* ostr, const ::Test::InvalidPointException& v)
    {
        ostr->write(v.index);
    }
};

template<typename S>
struct StreamReader< ::Test::InvalidPointException, S>
{
    static void read(S* istr, ::Test::InvalidPointException& v)
    {
        istr->read(v.index);
    }
};

template<>
struct StreamableTraits< ::Test::InvalidLengthException>
{
    static const StreamHelperCategory helper = StreamHelperCategoryUserException;
};

template<typename S>
struct StreamWriter< ::Test::InvalidLengthException, S>
{
    static void write(S* ostr, const ::Test::InvalidLengthException& v)
    {
        ostr->write(v.length);
    }
};

template<typename S>
struct StreamReader< ::Test::InvalidLengthException, S>
{
    static void read(S* istr, ::Test::InvalidLengthException& v)
    {
        istr->read(v.length);
    }
};

template<>
struct StreamableTraits< ::Test::OtherException>
{
    static const StreamHelperCategory helper = StreamHelperCategoryUserException;
};

template<typename S>
struct StreamWriter< ::Test::OtherException, S>
{
    static void write(S* ostr, const ::Test::OtherException& v)
    {
        ostr->write(v.x);
        ostr->write(v.y);
        ostr->write(v.z);
        ostr->write(v.b);
    }
};

template<typename S>
struct StreamReader< ::Test::OtherException, S>
{
    static void read(S* istr, ::Test::OtherException& v)
    {
        istr->read(v.x);
        istr->read(v.y);
        istr->read(v.z);
        istr->read(v.b);
    }
};

template<>
struct StreamableTraits< ::Test::PointF>
{
    static const StreamHelperCategory helper = StreamHelperCategoryStruct;
    static const int minWireSize = 12;
    static const bool fixedLength = true;
};

template<typename S>
struct StreamWriter< ::Test::PointF, S>
{
    static void write(S* ostr, const ::Test::PointF& v)
    {
        ostr->write(v.x);
        ostr->write(v.y);
        ostr->write(v.z);
    }
};

template<typename S>
struct StreamReader< ::Test::PointF, S>
{
    static void read(S* istr, ::Test::PointF& v)
    {
        istr->read(v.x);
        istr->read(v.y);
        istr->read(v.z);
    }
};

template<>
struct StreamableTraits< ::Test::PointD>
{
    static const StreamHelperCategory helper = StreamHelperCategoryStruct;
    static const int minWireSize = 24;
    static const bool fixedLength = true;
};

template<typename S>
struct StreamWriter< ::Test::PointD, S>
{
    static void write(S* ostr, const ::Test::PointD& v)
    {
        ostr->write(v.x);
        ostr->write(v.y);
        ostr->write(v.z);
    }
};

template<typename S>
struct StreamReader< ::Test::PointD, S>
{
    static void read(S* istr, ::Test::PointD& v)
    {
        istr->read(v.x);
        istr->read(v.y);
        istr->read(v.z);
    }
};

template<>
struct StreamableTraits< ::Test::Point>
{
    static const StreamHelperCategory helper = StreamHelperCategoryStruct;
    static const int minWireSize = 8;
    static const bool fixedLength = true;
};

template<typename S>
struct StreamWriter< ::Test::Point, S>
{
    static void write(S* ostr, const ::Test::Point& v)
    {
        ostr->write(v.x);
        ostr->write(v.y);
    }
};

template<typename S>
struct StreamReader< ::Test::Point, S>
{
    static void read(S* istr, ::Test::Point& v)
    {
        istr->read(v.x);
        istr->read(v.y);
    }
};

template<>
struct StreamableTraits< ::Test::Polyline>
{
    static const StreamHelperCategory helper = StreamHelperCategoryStruct;
    static const int minWireSize = 1;
    static const bool fixedLength = false;
};

template<typename S>
struct StreamWriter< ::Test::Polyline, S>
{
    static void write(S* ostr, const ::Test::Polyline& v)
    {
        ostr->write(v.vertices);
    }
};

template<typename S>
struct StreamReader< ::Test::Polyline, S>
{
    static void read(S* istr, ::Test::Polyline& v)
    {
        istr->read(v.vertices);
    }
};

template<>
struct StreamableTraits< ::Test::Color>
{
    static const StreamHelperCategory helper = StreamHelperCategoryStruct;
    static const int minWireSize = 16;
    static const bool fixedLength = true;
};

template<typename S>
struct StreamWriter< ::Test::Color, S>
{
    static void write(S* ostr, const ::Test::Color& v)
    {
        ostr->write(v.r);
        ostr->write(v.g);
        ostr->write(v.b);
        ostr->write(v.a);
    }
};

template<typename S>
struct StreamReader< ::Test::Color, S>
{
    static void read(S* istr, ::Test::Color& v)
    {
        istr->read(v.r);
        istr->read(v.g);
        istr->read(v.b);
        istr->read(v.a);
    }
};

template<>
struct StreamableTraits< ::Test::ColorPalette>
{
    static const StreamHelperCategory helper = StreamHelperCategoryStruct;
    static const int minWireSize = 1;
    static const bool fixedLength = false;
};

template<typename S>
struct StreamWriter< ::Test::ColorPalette, S>
{
    static void write(S* ostr, const ::Test::ColorPalette& v)
    {
        ostr->write(v.colors);
    }
};

template<typename S>
struct StreamReader< ::Test::ColorPalette, S>
{
    static void read(S* istr, ::Test::ColorPalette& v)
    {
        istr->read(v.colors);
    }
};

template<typename S>
struct StreamWriter< ::Test::Pen, S>
{
    static void write(S* ostr, const ::Test::Pen& v)
    {
        ostr->write(v.thickness);
        ostr->write(v.color);
    }
};

template<typename S>
struct StreamReader< ::Test::Pen, S>
{
    static void read(S* istr, ::Test::Pen& v)
    {
        istr->read(v.thickness);
        istr->read(v.color);
    }
};

template<>
struct StreamableTraits< ::Test::Draw>
{
    static const StreamHelperCategory helper = StreamHelperCategoryStruct;
    static const int minWireSize = 18;
    static const bool fixedLength = false;
};

template<typename S>
struct StreamWriter< ::Test::Draw, S>
{
    static void write(S* ostr, const ::Test::Draw& v)
    {
        ostr->write(v.backgroundColor);
        ostr->write(v.pen);
        ostr->write(v.shared);
    }
};

template<typename S>
struct StreamReader< ::Test::Draw, S>
{
    static void read(S* istr, ::Test::Draw& v)
    {
        istr->read(v.backgroundColor);
        istr->read(v.pen);
        istr->read(v.shared);
    }
};

}
/// \endcond

namespace Test
{

}

#endif

#include <IceUtil/PopDisableWarnings.h>
#endif
