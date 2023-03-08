//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.7.9
//
// <auto-generated>
//
// Generated from file `Plugin.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

#ifndef __Plugin_h__
#define __Plugin_h__

#include <IceUtil/PushDisableWarnings.h>
#include <Ice/ProxyF.h>
#include <Ice/ObjectF.h>
#include <Ice/ValueF.h>
#include <Ice/Exception.h>
#include <Ice/LocalObject.h>
#include <Ice/StreamHelpers.h>
#include <Ice/Comparable.h>
#include <IceUtil/ScopedArray.h>
#include <Ice/Optional.h>
#include <LoggerF.h>
#include <BuiltinSequences.h>
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

#ifndef ICE_API
#   if defined(ICE_STATIC_LIBS)
#       define ICE_API /**/
#   elif defined(ICE_API_EXPORTS)
#       define ICE_API ICE_DECLSPEC_EXPORT
#   else
#       define ICE_API ICE_DECLSPEC_IMPORT
#   endif
#endif

#ifdef ICE_CPP11_MAPPING // C++11 mapping

namespace Ice
{

class Plugin;
class PluginManager;

}

namespace Ice
{

/**
 * A communicator plug-in. A plug-in generally adds a feature to a
 * communicator, such as support for a protocol.
 *
 * The communicator loads its plug-ins in two stages: the first stage
 * creates the plug-ins, and the second stage invokes {@link Plugin#initialize} on
 * each one.
 * \headerfile Ice/Ice.h
 */
class ICE_CLASS(ICE_API) Plugin
{
public:

    ICE_MEMBER(ICE_API) virtual ~Plugin();

    /**
     * Perform any necessary initialization steps.
     */
    virtual void initialize() = 0;

    /**
     * Called when the communicator is being destroyed.
     */
    virtual void destroy() = 0;
};

/**
 * Each communicator has a plug-in manager to administer the set of
 * plug-ins.
 * \headerfile Ice/Ice.h
 */
class ICE_CLASS(ICE_API) PluginManager
{
public:

    ICE_MEMBER(ICE_API) virtual ~PluginManager();

    /**
     * Initialize the configured plug-ins. The communicator automatically initializes
     * the plug-ins by default, but an application may need to interact directly with
     * a plug-in prior to initialization. In this case, the application must set
     * <code>Ice.InitPlugins=0</code> and then invoke {@link #initializePlugins}
     * manually. The plug-ins are initialized in the order in which they are loaded.
     * If a plug-in raises an exception during initialization, the communicator
     * invokes destroy on the plug-ins that have already been initialized.
     * @throws InitializationException Raised if the plug-ins have already been initialized.
     */
    virtual void initializePlugins() = 0;

    /**
     * Get a list of plugins installed.
     * @return The names of the plugins installed.
     * @see #getPlugin
     */
    virtual ::Ice::StringSeq getPlugins() noexcept = 0;

    /**
     * Obtain a plug-in by name.
     * @param name The plug-in's name.
     * @return The plug-in.
     * @throws NotRegisteredException Raised if no plug-in is found with the given name.
     */
    virtual ::std::shared_ptr<::Ice::Plugin> getPlugin(const ::std::string& name) = 0;

    /**
     * Install a new plug-in.
     * @param name The plug-in's name.
     * @param pi The plug-in.
     * @throws AlreadyRegisteredException Raised if a plug-in already exists with the given name.
     */
    virtual void addPlugin(const ::std::string& name, const ::std::shared_ptr<Plugin>& pi) = 0;

    /**
     * Called when the communicator is being destroyed.
     */
    virtual void destroy() noexcept = 0;
};

}

/// \cond STREAM
namespace Ice
{

}
/// \endcond

/// \cond INTERNAL
namespace Ice
{

using PluginPtr = ::std::shared_ptr<Plugin>;

using PluginManagerPtr = ::std::shared_ptr<PluginManager>;

}
/// \endcond

#else // C++98 mapping

namespace Ice
{

class Plugin;
/// \cond INTERNAL
ICE_API LocalObject* upCast(Plugin*);
/// \endcond
typedef ::IceInternal::Handle< Plugin> PluginPtr;

class PluginManager;
/// \cond INTERNAL
ICE_API LocalObject* upCast(PluginManager*);
/// \endcond
typedef ::IceInternal::Handle< PluginManager> PluginManagerPtr;

}

namespace Ice
{

/**
 * A communicator plug-in. A plug-in generally adds a feature to a
 * communicator, such as support for a protocol.
 *
 * The communicator loads its plug-ins in two stages: the first stage
 * creates the plug-ins, and the second stage invokes {@link Plugin#initialize} on
 * each one.
 * \headerfile Ice/Ice.h
 */
class ICE_API Plugin : public virtual LocalObject
{
public:

    typedef PluginPtr PointerType;

    virtual ~Plugin();

#ifdef ICE_CPP11_COMPILER
    Plugin() = default;
    Plugin(const Plugin&) = default;
    Plugin& operator=(const Plugin&) = default;
#endif

    /**
     * Perform any necessary initialization steps.
     */
    virtual void initialize() = 0;

    /**
     * Called when the communicator is being destroyed.
     */
    virtual void destroy() = 0;
};

/// \cond INTERNAL
inline bool operator==(const Plugin& lhs, const Plugin& rhs)
{
    return static_cast<const LocalObject&>(lhs) == static_cast<const LocalObject&>(rhs);
}

inline bool operator<(const Plugin& lhs, const Plugin& rhs)
{
    return static_cast<const LocalObject&>(lhs) < static_cast<const LocalObject&>(rhs);
}
/// \endcond

/**
 * Each communicator has a plug-in manager to administer the set of
 * plug-ins.
 * \headerfile Ice/Ice.h
 */
class ICE_API PluginManager : public virtual LocalObject
{
public:

    typedef PluginManagerPtr PointerType;

    virtual ~PluginManager();

#ifdef ICE_CPP11_COMPILER
    PluginManager() = default;
    PluginManager(const PluginManager&) = default;
    PluginManager& operator=(const PluginManager&) = default;
#endif

    /**
     * Initialize the configured plug-ins. The communicator automatically initializes
     * the plug-ins by default, but an application may need to interact directly with
     * a plug-in prior to initialization. In this case, the application must set
     * <code>Ice.InitPlugins=0</code> and then invoke {@link #initializePlugins}
     * manually. The plug-ins are initialized in the order in which they are loaded.
     * If a plug-in raises an exception during initialization, the communicator
     * invokes destroy on the plug-ins that have already been initialized.
     * @throws InitializationException Raised if the plug-ins have already been initialized.
     */
    virtual void initializePlugins() = 0;

    /**
     * Get a list of plugins installed.
     * @return The names of the plugins installed.
     * @see #getPlugin
     */
    virtual StringSeq getPlugins() ICE_NOEXCEPT = 0;

    /**
     * Obtain a plug-in by name.
     * @param name The plug-in's name.
     * @return The plug-in.
     * @throws NotRegisteredException Raised if no plug-in is found with the given name.
     */
    virtual PluginPtr getPlugin(const ::std::string& name) = 0;

    /**
     * Install a new plug-in.
     * @param name The plug-in's name.
     * @param pi The plug-in.
     * @throws AlreadyRegisteredException Raised if a plug-in already exists with the given name.
     */
    virtual void addPlugin(const ::std::string& name, const PluginPtr& pi) = 0;

    /**
     * Called when the communicator is being destroyed.
     */
    virtual void destroy() ICE_NOEXCEPT = 0;
};

/// \cond INTERNAL
inline bool operator==(const PluginManager& lhs, const PluginManager& rhs)
{
    return static_cast<const LocalObject&>(lhs) == static_cast<const LocalObject&>(rhs);
}

inline bool operator<(const PluginManager& lhs, const PluginManager& rhs)
{
    return static_cast<const LocalObject&>(lhs) < static_cast<const LocalObject&>(rhs);
}
/// \endcond

}

/// \cond STREAM
namespace Ice
{

}
/// \endcond

#endif

#include <IceUtil/PopDisableWarnings.h>
#endif
