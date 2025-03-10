// Copyright (c) ZeroC, Inc.
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file 'RemoteLogger.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>

// clang-format off

#ifndef RemoteLogger_h_
#define RemoteLogger_h_

#include <Ice/PushDisableWarnings.h>
#include <Ice/Ice.h>
#include "BuiltinSequences.h"
#include <list>

#ifndef ICE_IGNORE_VERSION
#   if ICE_INT_VERSION  != 30850
#       error Ice version mismatch: an exact match is required for beta generated code
#   endif
#endif

// NOLINTBEGIN(modernize-concat-nested-namespaces)

namespace Ice
{
    /// An enumeration representing the different types of log messages.
    enum class LogMessageType : std::uint8_t
    {
        /// The ::Ice::RemoteLogger received a print message.
        PrintMessage,
        /// The ::Ice::RemoteLogger received a trace message.
        TraceMessage,
        /// The ::Ice::RemoteLogger received a warning message.
        WarningMessage,
        /// The ::Ice::RemoteLogger received an error message.
        ErrorMessage
    };

    ICE_API std::ostream& operator<<(std::ostream&, LogMessageType);

    /// A sequence of LogMessageType.
    using LogMessageTypeSeq = std::vector<LogMessageType>;

    struct LogMessage;

    /// A sequence of LogMessage.
    using LogMessageSeq = std::list<LogMessage>;

    class RemoteLoggerPrx;

    class LoggerAdminPrx;
}

namespace Ice
{
    /// The Ice remote logger interface. An application can implement a RemoteLogger to receive the log messages sent
    /// to the local RemoteLogger of another Ice application.
    class ICE_API RemoteLoggerPrx : public Ice::Proxy<RemoteLoggerPrx, Ice::ObjectPrx>
    {
    public:
        /// init is called by attachRemoteLogger when a RemoteLogger proxy is attached.
        /// @param prefix The prefix of the associated local Logger.
        /// @param logMessages Old log messages generated before "now".
        /// @param context The Context map to send with the invocation.
        void init(std::string_view prefix, const LogMessageSeq& logMessages, const Ice::Context& context = Ice::noExplicitContext) const;

        /// init is called by attachRemoteLogger when a RemoteLogger proxy is attached.
        /// @param prefix The prefix of the associated local Logger.
        /// @param logMessages Old log messages generated before "now".
        /// @param context The Context map to send with the invocation.
        /// @return The future object for the invocation.
        [[nodiscard]] std::future<void> initAsync(std::string_view prefix, const LogMessageSeq& logMessages, const Ice::Context& context = Ice::noExplicitContext) const;

        /// init is called by attachRemoteLogger when a RemoteLogger proxy is attached.
        /// @param prefix The prefix of the associated local Logger.
        /// @param logMessages Old log messages generated before "now".
        /// @param response The response callback.
        /// @param exception The exception callback.
        /// @param sent The sent callback.
        /// @param context The Context map to send with the invocation.
        /// @return A function that can be called to cancel the invocation locally.
        // NOLINTNEXTLINE(modernize-use-nodiscard)
        std::function<void()> initAsync(std::string_view prefix, const LogMessageSeq& logMessages, std::function<void()> response, std::function<void(std::exception_ptr)> exception = nullptr, std::function<void(bool)> sent = nullptr, const Ice::Context& context = Ice::noExplicitContext) const;

        /// \cond INTERNAL
        void _iceI_init(const std::shared_ptr<IceInternal::OutgoingAsyncT<void>>&, std::string_view, const LogMessageSeq&, const Ice::Context&) const;
        /// \endcond

        /// Log a LogMessage. Note that log may be called by LoggerAdmin before init.
        /// @param message The message to log.
        /// @param context The Context map to send with the invocation.
        void log(const LogMessage& message, const Ice::Context& context = Ice::noExplicitContext) const;

        /// Log a LogMessage. Note that log may be called by LoggerAdmin before init.
        /// @param message The message to log.
        /// @param context The Context map to send with the invocation.
        /// @return The future object for the invocation.
        [[nodiscard]] std::future<void> logAsync(const LogMessage& message, const Ice::Context& context = Ice::noExplicitContext) const;

        /// Log a LogMessage. Note that log may be called by LoggerAdmin before init.
        /// @param message The message to log.
        /// @param response The response callback.
        /// @param exception The exception callback.
        /// @param sent The sent callback.
        /// @param context The Context map to send with the invocation.
        /// @return A function that can be called to cancel the invocation locally.
        // NOLINTNEXTLINE(modernize-use-nodiscard)
        std::function<void()> logAsync(const LogMessage& message, std::function<void()> response, std::function<void(std::exception_ptr)> exception = nullptr, std::function<void(bool)> sent = nullptr, const Ice::Context& context = Ice::noExplicitContext) const;

        /// \cond INTERNAL
        void _iceI_log(const std::shared_ptr<IceInternal::OutgoingAsyncT<void>>&, const LogMessage&, const Ice::Context&) const;
        /// \endcond

        /// Obtains the Slice type ID of this interface.
        /// @return The fully-scoped type ID.
        static const char* ice_staticId() noexcept;

        RemoteLoggerPrx(const RemoteLoggerPrx& other) noexcept : Ice::ObjectPrx(other) {} // NOLINT(modernize-use-equals-default)

        RemoteLoggerPrx(RemoteLoggerPrx&& other) noexcept : Ice::ObjectPrx(std::move(other)) {} // NOLINT(modernize-use-equals-default)

        RemoteLoggerPrx(const Ice::CommunicatorPtr& communicator, std::string_view proxyString) : Ice::ObjectPrx(communicator, proxyString) {} // NOLINT(modernize-use-equals-default)

        ~RemoteLoggerPrx() override;

        RemoteLoggerPrx& operator=(const RemoteLoggerPrx& rhs) noexcept
        {
            if (this != &rhs)
            {
                Ice::ObjectPrx::operator=(rhs);
            }
            return *this;
        }

        RemoteLoggerPrx& operator=(RemoteLoggerPrx&& rhs) noexcept
        {
            if (this != &rhs)
            {
                Ice::ObjectPrx::operator=(std::move(rhs));
            }
            return *this;
        }

        /// \cond INTERNAL
        static RemoteLoggerPrx _fromReference(IceInternal::ReferencePtr ref) { return RemoteLoggerPrx(std::move(ref)); }

    protected:
        RemoteLoggerPrx() = default;

        explicit RemoteLoggerPrx(IceInternal::ReferencePtr&& ref) : Ice::ObjectPrx(std::move(ref))
        {
        }
        /// \endcond
    };

    /// The interface of the admin object that allows an Ice application the attach its
    /// RemoteLogger to the RemoteLogger of this admin object's Ice communicator.
    class ICE_API LoggerAdminPrx : public Ice::Proxy<LoggerAdminPrx, Ice::ObjectPrx>
    {
    public:
        /// Attaches a RemoteLogger object to the local logger. attachRemoteLogger calls init on the provided
        /// RemoteLogger proxy.
        /// @param prx A proxy to the remote logger.
        /// @param messageTypes The list of message types that the remote logger wishes to receive. An empty list means
        /// no filtering (send all message types).
        /// @param traceCategories The categories of traces that the remote logger wishes to receive. This parameter is
        /// ignored if messageTypes is not empty and does not include trace. An empty list means no filtering (send all
        /// trace categories).
        /// @param messageMax The maximum number of log messages (of all types) to be provided to init. A negative
        /// value requests all messages available.
        /// @param context The Context map to send with the invocation.
        /// @throws Ice::RemoteLoggerAlreadyAttachedException Raised if this remote logger is already attached to this admin
        /// object.
        void attachRemoteLogger(const std::optional<RemoteLoggerPrx>& prx, const LogMessageTypeSeq& messageTypes, const StringSeq& traceCategories, std::int32_t messageMax, const Ice::Context& context = Ice::noExplicitContext) const;

        /// Attaches a RemoteLogger object to the local logger. attachRemoteLogger calls init on the provided
        /// RemoteLogger proxy.
        /// @param prx A proxy to the remote logger.
        /// @param messageTypes The list of message types that the remote logger wishes to receive. An empty list means
        /// no filtering (send all message types).
        /// @param traceCategories The categories of traces that the remote logger wishes to receive. This parameter is
        /// ignored if messageTypes is not empty and does not include trace. An empty list means no filtering (send all
        /// trace categories).
        /// @param messageMax The maximum number of log messages (of all types) to be provided to init. A negative
        /// value requests all messages available.
        /// @param context The Context map to send with the invocation.
        /// @return The future object for the invocation.
        [[nodiscard]] std::future<void> attachRemoteLoggerAsync(const std::optional<RemoteLoggerPrx>& prx, const LogMessageTypeSeq& messageTypes, const StringSeq& traceCategories, std::int32_t messageMax, const Ice::Context& context = Ice::noExplicitContext) const;

        /// Attaches a RemoteLogger object to the local logger. attachRemoteLogger calls init on the provided
        /// RemoteLogger proxy.
        /// @param prx A proxy to the remote logger.
        /// @param messageTypes The list of message types that the remote logger wishes to receive. An empty list means
        /// no filtering (send all message types).
        /// @param traceCategories The categories of traces that the remote logger wishes to receive. This parameter is
        /// ignored if messageTypes is not empty and does not include trace. An empty list means no filtering (send all
        /// trace categories).
        /// @param messageMax The maximum number of log messages (of all types) to be provided to init. A negative
        /// value requests all messages available.
        /// @param response The response callback.
        /// @param exception The exception callback.
        /// @param sent The sent callback.
        /// @param context The Context map to send with the invocation.
        /// @return A function that can be called to cancel the invocation locally.
        // NOLINTNEXTLINE(modernize-use-nodiscard)
        std::function<void()> attachRemoteLoggerAsync(const std::optional<RemoteLoggerPrx>& prx, const LogMessageTypeSeq& messageTypes, const StringSeq& traceCategories, std::int32_t messageMax, std::function<void()> response, std::function<void(std::exception_ptr)> exception = nullptr, std::function<void(bool)> sent = nullptr, const Ice::Context& context = Ice::noExplicitContext) const;

        /// \cond INTERNAL
        void _iceI_attachRemoteLogger(const std::shared_ptr<IceInternal::OutgoingAsyncT<void>>&, const std::optional<RemoteLoggerPrx>&, const LogMessageTypeSeq&, const StringSeq&, std::int32_t, const Ice::Context&) const;
        /// \endcond

        /// Detaches a RemoteLogger object from the local logger.
        /// @param prx A proxy to the remote logger.
        /// @param context The Context map to send with the invocation.
        /// @return True if the provided remote logger proxy was detached, and false otherwise.
        bool detachRemoteLogger(const std::optional<RemoteLoggerPrx>& prx, const Ice::Context& context = Ice::noExplicitContext) const; // NOLINT(modernize-use-nodiscard)

        /// Detaches a RemoteLogger object from the local logger.
        /// @param prx A proxy to the remote logger.
        /// @param context The Context map to send with the invocation.
        /// @return The future object for the invocation.
        [[nodiscard]] std::future<bool> detachRemoteLoggerAsync(const std::optional<RemoteLoggerPrx>& prx, const Ice::Context& context = Ice::noExplicitContext) const;

        /// Detaches a RemoteLogger object from the local logger.
        /// @param prx A proxy to the remote logger.
        /// @param response The response callback.
        /// @param exception The exception callback.
        /// @param sent The sent callback.
        /// @param context The Context map to send with the invocation.
        /// @return A function that can be called to cancel the invocation locally.
        // NOLINTNEXTLINE(modernize-use-nodiscard)
        std::function<void()> detachRemoteLoggerAsync(const std::optional<RemoteLoggerPrx>& prx, std::function<void(bool)> response, std::function<void(std::exception_ptr)> exception = nullptr, std::function<void(bool)> sent = nullptr, const Ice::Context& context = Ice::noExplicitContext) const;

        /// \cond INTERNAL
        void _iceI_detachRemoteLogger(const std::shared_ptr<IceInternal::OutgoingAsyncT<bool>>&, const std::optional<RemoteLoggerPrx>&, const Ice::Context&) const;
        /// \endcond

        /// Retrieves log messages recently logged.
        /// @param messageTypes The list of message types that the caller wishes to receive. An empty list means no
        /// filtering (send all message types).
        /// @param traceCategories The categories of traces that caller wish to receive. This parameter is ignored if
        /// messageTypes is not empty and does not include trace. An empty list means no filtering (send all trace
        /// categories).
        /// @param messageMax The maximum number of log messages (of all types) to be returned. A negative value
        /// requests all messages available.
        /// @param prefix The prefix of the associated local logger.
        /// @param context The Context map to send with the invocation.
        /// @return The Log messages.
        LogMessageSeq getLog(const LogMessageTypeSeq& messageTypes, const StringSeq& traceCategories, std::int32_t messageMax, std::string& prefix, const Ice::Context& context = Ice::noExplicitContext) const;

        /// Retrieves log messages recently logged.
        /// @param messageTypes The list of message types that the caller wishes to receive. An empty list means no
        /// filtering (send all message types).
        /// @param traceCategories The categories of traces that caller wish to receive. This parameter is ignored if
        /// messageTypes is not empty and does not include trace. An empty list means no filtering (send all trace
        /// categories).
        /// @param messageMax The maximum number of log messages (of all types) to be returned. A negative value
        /// requests all messages available.
        /// @param context The Context map to send with the invocation.
        /// @return The future object for the invocation.
        [[nodiscard]] std::future<std::tuple<LogMessageSeq, std::string>> getLogAsync(const LogMessageTypeSeq& messageTypes, const StringSeq& traceCategories, std::int32_t messageMax, const Ice::Context& context = Ice::noExplicitContext) const;

        /// Retrieves log messages recently logged.
        /// @param messageTypes The list of message types that the caller wishes to receive. An empty list means no
        /// filtering (send all message types).
        /// @param traceCategories The categories of traces that caller wish to receive. This parameter is ignored if
        /// messageTypes is not empty and does not include trace. An empty list means no filtering (send all trace
        /// categories).
        /// @param messageMax The maximum number of log messages (of all types) to be returned. A negative value
        /// requests all messages available.
        /// @param response The response callback.
        /// @param exception The exception callback.
        /// @param sent The sent callback.
        /// @param context The Context map to send with the invocation.
        /// @return A function that can be called to cancel the invocation locally.
        // NOLINTNEXTLINE(modernize-use-nodiscard)
        std::function<void()> getLogAsync(const LogMessageTypeSeq& messageTypes, const StringSeq& traceCategories, std::int32_t messageMax, std::function<void(::Ice::LogMessageSeq, std::string)> response, std::function<void(std::exception_ptr)> exception = nullptr, std::function<void(bool)> sent = nullptr, const Ice::Context& context = Ice::noExplicitContext) const;

        /// \cond INTERNAL
        void _iceI_getLog(const std::shared_ptr<IceInternal::OutgoingAsyncT<std::tuple<LogMessageSeq, std::string>>>&, const LogMessageTypeSeq&, const StringSeq&, std::int32_t, const Ice::Context&) const;
        /// \endcond

        /// Obtains the Slice type ID of this interface.
        /// @return The fully-scoped type ID.
        static const char* ice_staticId() noexcept;

        LoggerAdminPrx(const LoggerAdminPrx& other) noexcept : Ice::ObjectPrx(other) {} // NOLINT(modernize-use-equals-default)

        LoggerAdminPrx(LoggerAdminPrx&& other) noexcept : Ice::ObjectPrx(std::move(other)) {} // NOLINT(modernize-use-equals-default)

        LoggerAdminPrx(const Ice::CommunicatorPtr& communicator, std::string_view proxyString) : Ice::ObjectPrx(communicator, proxyString) {} // NOLINT(modernize-use-equals-default)

        ~LoggerAdminPrx() override;

        LoggerAdminPrx& operator=(const LoggerAdminPrx& rhs) noexcept
        {
            if (this != &rhs)
            {
                Ice::ObjectPrx::operator=(rhs);
            }
            return *this;
        }

        LoggerAdminPrx& operator=(LoggerAdminPrx&& rhs) noexcept
        {
            if (this != &rhs)
            {
                Ice::ObjectPrx::operator=(std::move(rhs));
            }
            return *this;
        }

        /// \cond INTERNAL
        static LoggerAdminPrx _fromReference(IceInternal::ReferencePtr ref) { return LoggerAdminPrx(std::move(ref)); }

    protected:
        LoggerAdminPrx() = default;

        explicit LoggerAdminPrx(IceInternal::ReferencePtr&& ref) : Ice::ObjectPrx(std::move(ref))
        {
        }
        /// \endcond
    };
}

namespace Ice
{
    /// A complete log message.
    struct LogMessage
    {
        /// The type of message sent to the ::Ice::RemoteLogger.
        ::Ice::LogMessageType type;
        /// The date and time when the ::Ice::RemoteLogger received this message, expressed as the number of microseconds
        /// since the Unix Epoch (00:00:00 UTC on 1 January 1970)
        std::int64_t timestamp;
        /// For a message of type trace, the trace category of this log message; otherwise, the empty string.
        std::string traceCategory;
        /// The log message itself.
        std::string message;

        /// Obtains a tuple containing all of the struct's data members.
        /// @return The data members in a tuple.
        [[nodiscard]] std::tuple<const ::Ice::LogMessageType&, const std::int64_t&, const std::string&, const std::string&> ice_tuple() const
        {
            return std::tie(type, timestamp, traceCategory, message);
        }

        /// Outputs the name and value of each field of this instance to the stream.
        /// @param os The output stream.
        ICE_API void ice_printFields(std::ostream& os) const;
    };

    ICE_API std::ostream& operator<<(std::ostream&, const LogMessage&);

    /// Thrown when the provided RemoteLogger was previously attached to a LoggerAdmin.
    class ICE_CLASS(ICE_API) RemoteLoggerAlreadyAttachedException : public Ice::UserException
    {
    public:
        /// Obtains the Slice type ID of this exception.
        /// @return The fully-scoped type ID.
        ICE_MEMBER(ICE_API) static const char* ice_staticId() noexcept;

        ICE_MEMBER(ICE_API) [[nodiscard]] const char* ice_id() const noexcept override;

        ICE_MEMBER(ICE_API) void ice_throw() const override;

    protected:
        ICE_MEMBER(ICE_API) void _writeImpl(Ice::OutputStream*) const override;

        ICE_MEMBER(ICE_API) void _readImpl(Ice::InputStream*) override;
    };

    using Ice::Tuple::operator<;
    using Ice::Tuple::operator<=;
    using Ice::Tuple::operator>;
    using Ice::Tuple::operator>=;
    using Ice::Tuple::operator==;
    using Ice::Tuple::operator!=;
}

namespace Ice
{
    /// The Ice remote logger interface. An application can implement a RemoteLogger to receive the log messages sent
    /// to the local RemoteLogger of another Ice application.
    class ICE_API RemoteLogger : public virtual Ice::Object
    {
    public:
        using ProxyType = RemoteLoggerPrx;

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

        /// init is called by attachRemoteLogger when a RemoteLogger proxy is attached.
        /// @param prefix The prefix of the associated local Logger.
        /// @param logMessages Old log messages generated before "now".
        /// @param current The Current object for the invocation.
        virtual void init(std::string prefix, LogMessageSeq logMessages, const Ice::Current& current) = 0;

        /// \cond INTERNAL
        void _iceD_init(Ice::IncomingRequest&, std::function<void(Ice::OutgoingResponse)>);
        /// \endcond

        /// Log a LogMessage. Note that log may be called by LoggerAdmin before init.
        /// @param message The message to log.
        /// @param current The Current object for the invocation.
        virtual void log(LogMessage message, const Ice::Current& current) = 0;

        /// \cond INTERNAL
        void _iceD_log(Ice::IncomingRequest&, std::function<void(Ice::OutgoingResponse)>);
        /// \endcond

        void dispatch(Ice::IncomingRequest&, std::function<void(Ice::OutgoingResponse)>) override;
    };

    using RemoteLoggerPtr = std::shared_ptr<RemoteLogger>;

    /// The interface of the admin object that allows an Ice application the attach its
    /// RemoteLogger to the RemoteLogger of this admin object's Ice communicator.
    class ICE_API LoggerAdmin : public virtual Ice::Object
    {
    public:
        using ProxyType = LoggerAdminPrx;

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

        /// Attaches a RemoteLogger object to the local logger. attachRemoteLogger calls init on the provided
        /// RemoteLogger proxy.
        /// @param prx A proxy to the remote logger.
        /// @param messageTypes The list of message types that the remote logger wishes to receive. An empty list means
        /// no filtering (send all message types).
        /// @param traceCategories The categories of traces that the remote logger wishes to receive. This parameter is
        /// ignored if messageTypes is not empty and does not include trace. An empty list means no filtering (send all
        /// trace categories).
        /// @param messageMax The maximum number of log messages (of all types) to be provided to init. A negative
        /// value requests all messages available.
        /// @param current The Current object for the invocation.
        /// @throws Ice::RemoteLoggerAlreadyAttachedException Raised if this remote logger is already attached to this admin
        /// object.
        virtual void attachRemoteLogger(std::optional<RemoteLoggerPrx> prx, LogMessageTypeSeq messageTypes, StringSeq traceCategories, std::int32_t messageMax, const Ice::Current& current) = 0;

        /// \cond INTERNAL
        void _iceD_attachRemoteLogger(Ice::IncomingRequest&, std::function<void(Ice::OutgoingResponse)>);
        /// \endcond

        /// Detaches a RemoteLogger object from the local logger.
        /// @param prx A proxy to the remote logger.
        /// @param current The Current object for the invocation.
        /// @return True if the provided remote logger proxy was detached, and false otherwise.
        virtual bool detachRemoteLogger(std::optional<RemoteLoggerPrx> prx, const Ice::Current& current) = 0;

        /// \cond INTERNAL
        void _iceD_detachRemoteLogger(Ice::IncomingRequest&, std::function<void(Ice::OutgoingResponse)>);
        /// \endcond

        /// Retrieves log messages recently logged.
        /// @param messageTypes The list of message types that the caller wishes to receive. An empty list means no
        /// filtering (send all message types).
        /// @param traceCategories The categories of traces that caller wish to receive. This parameter is ignored if
        /// messageTypes is not empty and does not include trace. An empty list means no filtering (send all trace
        /// categories).
        /// @param messageMax The maximum number of log messages (of all types) to be returned. A negative value
        /// requests all messages available.
        /// @param prefix The prefix of the associated local logger.
        /// @param current The Current object for the invocation.
        /// @return The Log messages.
        virtual LogMessageSeq getLog(LogMessageTypeSeq messageTypes, StringSeq traceCategories, std::int32_t messageMax, std::string& prefix, const Ice::Current& current) = 0;

        /// \cond INTERNAL
        void _iceD_getLog(Ice::IncomingRequest&, std::function<void(Ice::OutgoingResponse)>);
        /// \endcond

        void dispatch(Ice::IncomingRequest&, std::function<void(Ice::OutgoingResponse)>) override;
    };

    using LoggerAdminPtr = std::shared_ptr<LoggerAdmin>;
}

/// \cond STREAM
namespace Ice
{
    template<>
    struct StreamableTraits<::Ice::LogMessageType>
    {
        static const StreamHelperCategory helper = StreamHelperCategoryEnum;
        static const int minValue = 0;
        static const int maxValue = 3;
        static const int minWireSize = 1;
        static const bool fixedLength = false;
    };

    template<>
    struct StreamableTraits<::Ice::LogMessage>
    {
        static const StreamHelperCategory helper = StreamHelperCategoryStruct;
        static const int minWireSize = 11;
        static const bool fixedLength = false;
    };
    
    template<>
    struct StreamReader<::Ice::LogMessage>
    {
        static void read(InputStream* istr, ::Ice::LogMessage& v)
        {
            istr->readAll(v.type, v.timestamp, v.traceCategory, v.message);
        }
    };
}
/// \endcond

// NOLINTEND(modernize-concat-nested-namespaces)

#include <Ice/PopDisableWarnings.h>
#endif
