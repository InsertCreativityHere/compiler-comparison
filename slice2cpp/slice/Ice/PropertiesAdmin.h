// Copyright (c) ZeroC, Inc.
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file 'PropertiesAdmin.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>

// clang-format off

#ifndef PropertiesAdmin_h_
#define PropertiesAdmin_h_

#include <Ice/PushDisableWarnings.h>
#include <Ice/Ice.h>
#include "PropertyDict.h"

#ifndef ICE_IGNORE_VERSION
#   if ICE_INT_VERSION  != 30850
#       error Ice version mismatch: an exact match is required for beta generated code
#   endif
#endif

// NOLINTBEGIN(modernize-concat-nested-namespaces)

namespace Ice
{
    class PropertiesAdminPrx;
}

namespace Ice
{
    /// The PropertiesAdmin interface provides remote access to the properties of a communicator.
    class ICE_API PropertiesAdminPrx : public Ice::Proxy<PropertiesAdminPrx, Ice::ObjectPrx>
    {
    public:
        /// Get a property by key. If the property is not set, an empty string is returned.
        /// @param key The property key.
        /// @param context The Context map to send with the invocation.
        /// @return The property value.
        std::string getProperty(std::string_view key, const Ice::Context& context = Ice::noExplicitContext) const; // NOLINT(modernize-use-nodiscard)

        /// Get a property by key. If the property is not set, an empty string is returned.
        /// @param key The property key.
        /// @param context The Context map to send with the invocation.
        /// @return The future object for the invocation.
        [[nodiscard]] std::future<std::string> getPropertyAsync(std::string_view key, const Ice::Context& context = Ice::noExplicitContext) const;

        /// Get a property by key. If the property is not set, an empty string is returned.
        /// @param key The property key.
        /// @param response The response callback.
        /// @param exception The exception callback.
        /// @param sent The sent callback.
        /// @param context The Context map to send with the invocation.
        /// @return A function that can be called to cancel the invocation locally.
        // NOLINTNEXTLINE(modernize-use-nodiscard)
        std::function<void()> getPropertyAsync(std::string_view key, std::function<void(std::string)> response, std::function<void(std::exception_ptr)> exception = nullptr, std::function<void(bool)> sent = nullptr, const Ice::Context& context = Ice::noExplicitContext) const;

        /// \cond INTERNAL
        void _iceI_getProperty(const std::shared_ptr<IceInternal::OutgoingAsyncT<std::string>>&, std::string_view, const Ice::Context&) const;
        /// \endcond

        /// Get all properties whose keys begin with <em>prefix</em>. If <em>prefix</em> is an empty string then all
        /// properties are returned.
        /// @param prefix The prefix to search for (empty string if none).
        /// @param context The Context map to send with the invocation.
        /// @return The matching property set.
        PropertyDict getPropertiesForPrefix(std::string_view prefix, const Ice::Context& context = Ice::noExplicitContext) const; // NOLINT(modernize-use-nodiscard)

        /// Get all properties whose keys begin with <em>prefix</em>. If <em>prefix</em> is an empty string then all
        /// properties are returned.
        /// @param prefix The prefix to search for (empty string if none).
        /// @param context The Context map to send with the invocation.
        /// @return The future object for the invocation.
        [[nodiscard]] std::future<PropertyDict> getPropertiesForPrefixAsync(std::string_view prefix, const Ice::Context& context = Ice::noExplicitContext) const;

        /// Get all properties whose keys begin with <em>prefix</em>. If <em>prefix</em> is an empty string then all
        /// properties are returned.
        /// @param prefix The prefix to search for (empty string if none).
        /// @param response The response callback.
        /// @param exception The exception callback.
        /// @param sent The sent callback.
        /// @param context The Context map to send with the invocation.
        /// @return A function that can be called to cancel the invocation locally.
        // NOLINTNEXTLINE(modernize-use-nodiscard)
        std::function<void()> getPropertiesForPrefixAsync(std::string_view prefix, std::function<void(::Ice::PropertyDict)> response, std::function<void(std::exception_ptr)> exception = nullptr, std::function<void(bool)> sent = nullptr, const Ice::Context& context = Ice::noExplicitContext) const;

        /// \cond INTERNAL
        void _iceI_getPropertiesForPrefix(const std::shared_ptr<IceInternal::OutgoingAsyncT<PropertyDict>>&, std::string_view, const Ice::Context&) const;
        /// \endcond

        /// Update the communicator's properties with the given property set. If an entry in <em>newProperties</em>
        /// matches the name of an existing property, that property's value is replaced with the new value. If the new
        /// value is an empty string, the property is removed. Any existing properties that are not modified or removed
        /// by the entries in newProperties are retained with their original values.
        /// @param newProperties Properties to be added, changed, or removed.
        /// @param context The Context map to send with the invocation.
        void setProperties(const PropertyDict& newProperties, const Ice::Context& context = Ice::noExplicitContext) const;

        /// Update the communicator's properties with the given property set. If an entry in <em>newProperties</em>
        /// matches the name of an existing property, that property's value is replaced with the new value. If the new
        /// value is an empty string, the property is removed. Any existing properties that are not modified or removed
        /// by the entries in newProperties are retained with their original values.
        /// @param newProperties Properties to be added, changed, or removed.
        /// @param context The Context map to send with the invocation.
        /// @return The future object for the invocation.
        [[nodiscard]] std::future<void> setPropertiesAsync(const PropertyDict& newProperties, const Ice::Context& context = Ice::noExplicitContext) const;

        /// Update the communicator's properties with the given property set. If an entry in <em>newProperties</em>
        /// matches the name of an existing property, that property's value is replaced with the new value. If the new
        /// value is an empty string, the property is removed. Any existing properties that are not modified or removed
        /// by the entries in newProperties are retained with their original values.
        /// @param newProperties Properties to be added, changed, or removed.
        /// @param response The response callback.
        /// @param exception The exception callback.
        /// @param sent The sent callback.
        /// @param context The Context map to send with the invocation.
        /// @return A function that can be called to cancel the invocation locally.
        // NOLINTNEXTLINE(modernize-use-nodiscard)
        std::function<void()> setPropertiesAsync(const PropertyDict& newProperties, std::function<void()> response, std::function<void(std::exception_ptr)> exception = nullptr, std::function<void(bool)> sent = nullptr, const Ice::Context& context = Ice::noExplicitContext) const;

        /// \cond INTERNAL
        void _iceI_setProperties(const std::shared_ptr<IceInternal::OutgoingAsyncT<void>>&, const PropertyDict&, const Ice::Context&) const;
        /// \endcond

        /// Obtains the Slice type ID of this interface.
        /// @return The fully-scoped type ID.
        static const char* ice_staticId() noexcept;

        PropertiesAdminPrx(const PropertiesAdminPrx& other) noexcept : Ice::ObjectPrx(other) {} // NOLINT(modernize-use-equals-default)

        PropertiesAdminPrx(PropertiesAdminPrx&& other) noexcept : Ice::ObjectPrx(std::move(other)) {} // NOLINT(modernize-use-equals-default)

        PropertiesAdminPrx(const Ice::CommunicatorPtr& communicator, std::string_view proxyString) : Ice::ObjectPrx(communicator, proxyString) {} // NOLINT(modernize-use-equals-default)

        ~PropertiesAdminPrx() override;

        PropertiesAdminPrx& operator=(const PropertiesAdminPrx& rhs) noexcept
        {
            if (this != &rhs)
            {
                Ice::ObjectPrx::operator=(rhs);
            }
            return *this;
        }

        PropertiesAdminPrx& operator=(PropertiesAdminPrx&& rhs) noexcept
        {
            if (this != &rhs)
            {
                Ice::ObjectPrx::operator=(std::move(rhs));
            }
            return *this;
        }

        /// \cond INTERNAL
        static PropertiesAdminPrx _fromReference(IceInternal::ReferencePtr ref) { return PropertiesAdminPrx(std::move(ref)); }

    protected:
        PropertiesAdminPrx() = default;

        explicit PropertiesAdminPrx(IceInternal::ReferencePtr&& ref) : Ice::ObjectPrx(std::move(ref))
        {
        }
        /// \endcond
    };
}

namespace Ice
{
    /// The PropertiesAdmin interface provides remote access to the properties of a communicator.
    class ICE_API PropertiesAdmin : public virtual Ice::Object
    {
    public:
        using ProxyType = PropertiesAdminPrx;

        /// Obtains a list of the Slice type IDs representing the interfaces supported by this object.
        /// @param current The Current object for the invocation.
        /// @return A list of fully-scoped type IDs.
        [[nodiscard]] std::vector<std::string> ice_ids(const Ice::Current& current) const override;

        /// Obtains a Slice type ID representing the most-derived interface supported by this object.
        /// @param current The Current object for the invocation.
        /// @return A fully-scoped type ID.
        [[nodiscard]] std::string ice_id(const Ice::Current& current) const override;

        /// Obtains the Slice type ID corresponding to this interface.
        /// @return A fully-scoped type ID.
        static const char* ice_staticId() noexcept;

        /// Get a property by key. If the property is not set, an empty string is returned.
        /// @param key The property key.
        /// @param current The Current object for the invocation.
        /// @return The property value.
        virtual std::string getProperty(std::string key, const Ice::Current& current) = 0;

        /// \cond INTERNAL
        void _iceD_getProperty(Ice::IncomingRequest&, std::function<void(Ice::OutgoingResponse)>);
        /// \endcond

        /// Get all properties whose keys begin with <em>prefix</em>. If <em>prefix</em> is an empty string then all
        /// properties are returned.
        /// @param prefix The prefix to search for (empty string if none).
        /// @param current The Current object for the invocation.
        /// @return The matching property set.
        virtual PropertyDict getPropertiesForPrefix(std::string prefix, const Ice::Current& current) = 0;

        /// \cond INTERNAL
        void _iceD_getPropertiesForPrefix(Ice::IncomingRequest&, std::function<void(Ice::OutgoingResponse)>);
        /// \endcond

        /// Update the communicator's properties with the given property set. If an entry in <em>newProperties</em>
        /// matches the name of an existing property, that property's value is replaced with the new value. If the new
        /// value is an empty string, the property is removed. Any existing properties that are not modified or removed
        /// by the entries in newProperties are retained with their original values.
        /// @param newProperties Properties to be added, changed, or removed.
        /// @param current The Current object for the invocation.
        virtual void setProperties(PropertyDict newProperties, const Ice::Current& current) = 0;

        /// \cond INTERNAL
        void _iceD_setProperties(Ice::IncomingRequest&, std::function<void(Ice::OutgoingResponse)>);
        /// \endcond

        void dispatch(Ice::IncomingRequest&, std::function<void(Ice::OutgoingResponse)>) override;
    };

    using PropertiesAdminPtr = std::shared_ptr<PropertiesAdmin>;
}

// NOLINTEND(modernize-concat-nested-namespaces)

#include <Ice/PopDisableWarnings.h>
#endif
