//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `ServiceManager.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

import Foundation
import Ice
import PromiseKit

/// :nodoc:
public class AlreadyStartedException_TypeResolver: Ice.UserExceptionTypeResolver {
    public override func type() -> Ice.UserException.Type {
        return AlreadyStartedException.self
    }
}

public extension Ice.ClassResolver {
    @objc static func IceBox_AlreadyStartedException() -> Ice.UserExceptionTypeResolver {
        return AlreadyStartedException_TypeResolver()
    }
}

/// This exception is thrown if an attempt is made to start an already-started service.
open class AlreadyStartedException: Ice.UserException {
    public required init() {}

    /// Returns the Slice type ID of this exception.
    ///
    /// - returns: `Swift.String` - the Slice type ID of this exception.
    open override class func ice_staticId() -> Swift.String {
        return "::IceBox::AlreadyStartedException"
    }

    open override func _iceWriteImpl(to ostr: Ice.OutputStream) {
        ostr.startSlice(typeId: AlreadyStartedException.ice_staticId(), compactId: -1, last: true)
        ostr.endSlice()
    }

    open override func _iceReadImpl(from istr: Ice.InputStream) throws {
        _ = try istr.startSlice()
        try istr.endSlice()
    }
}

/// :nodoc:
public class AlreadyStoppedException_TypeResolver: Ice.UserExceptionTypeResolver {
    public override func type() -> Ice.UserException.Type {
        return AlreadyStoppedException.self
    }
}

public extension Ice.ClassResolver {
    @objc static func IceBox_AlreadyStoppedException() -> Ice.UserExceptionTypeResolver {
        return AlreadyStoppedException_TypeResolver()
    }
}

/// This exception is thrown if an attempt is made to stop an already-stopped service.
open class AlreadyStoppedException: Ice.UserException {
    public required init() {}

    /// Returns the Slice type ID of this exception.
    ///
    /// - returns: `Swift.String` - the Slice type ID of this exception.
    open override class func ice_staticId() -> Swift.String {
        return "::IceBox::AlreadyStoppedException"
    }

    open override func _iceWriteImpl(to ostr: Ice.OutputStream) {
        ostr.startSlice(typeId: AlreadyStoppedException.ice_staticId(), compactId: -1, last: true)
        ostr.endSlice()
    }

    open override func _iceReadImpl(from istr: Ice.InputStream) throws {
        _ = try istr.startSlice()
        try istr.endSlice()
    }
}

/// :nodoc:
public class NoSuchServiceException_TypeResolver: Ice.UserExceptionTypeResolver {
    public override func type() -> Ice.UserException.Type {
        return NoSuchServiceException.self
    }
}

public extension Ice.ClassResolver {
    @objc static func IceBox_NoSuchServiceException() -> Ice.UserExceptionTypeResolver {
        return NoSuchServiceException_TypeResolver()
    }
}

/// This exception is thrown if a service name does not refer to an existing service.
open class NoSuchServiceException: Ice.UserException {
    public required init() {}

    /// Returns the Slice type ID of this exception.
    ///
    /// - returns: `Swift.String` - the Slice type ID of this exception.
    open override class func ice_staticId() -> Swift.String {
        return "::IceBox::NoSuchServiceException"
    }

    open override func _iceWriteImpl(to ostr: Ice.OutputStream) {
        ostr.startSlice(typeId: NoSuchServiceException.ice_staticId(), compactId: -1, last: true)
        ostr.endSlice()
    }

    open override func _iceReadImpl(from istr: Ice.InputStream) throws {
        _ = try istr.startSlice()
        try istr.endSlice()
    }
}

/// Traits for Slice interface`ServiceObserver`.
public struct ServiceObserverTraits: Ice.SliceTraits {
    public static let staticIds = ["::Ice::Object", "::IceBox::ServiceObserver"]
    public static let staticId = "::IceBox::ServiceObserver"
}

/// Traits for Slice interface`ServiceManager`.
public struct ServiceManagerTraits: Ice.SliceTraits {
    public static let staticIds = ["::Ice::Object", "::IceBox::ServiceManager"]
    public static let staticId = "::IceBox::ServiceManager"
}

/// An Observer interface implemented by admin clients interested in the status of services.
///
/// ServiceObserverPrx Methods:
///
///  - servicesStarted: Receives the names of the services that were started.
///
///  - servicesStartedAsync: Receives the names of the services that were started.
///
///  - servicesStopped: Receives the names of the services that were stopped.
///
///  - servicesStoppedAsync: Receives the names of the services that were stopped.
public protocol ServiceObserverPrx: Ice.ObjectPrx {}

private final class ServiceObserverPrxI: Ice.ObjectPrxI, ServiceObserverPrx {
    public override class func ice_staticId() -> Swift.String {
        return ServiceObserverTraits.staticId
    }
}

/// Casts a proxy to the requested type. This call contacts the server and verifies that the object
/// implements this type.
///
/// It will throw a local exception if a communication error occurs. You can optionally supply a
/// facet name and a context map.
///
/// - parameter prx: `Ice.ObjectPrx` - The proxy to be cast.
///
/// - parameter type: `ServiceObserverPrx.Protocol` - The proxy type to cast to.
///
/// - parameter facet: `String` - The optional name of the desired facet.
///
/// - parameter context: `Ice.Context` The optional context dictionary for the remote invocation.
///
/// - returns: `ServiceObserverPrx` - A proxy with the requested type or nil if the objet does not
///   support this type.
///
/// - throws: `Ice.LocalException` if a communication error occurs.
public func checkedCast(prx: Ice.ObjectPrx, type: ServiceObserverPrx.Protocol, facet: Swift.String? = nil, context: Ice.Context? = nil) throws -> ServiceObserverPrx? {
    return try ServiceObserverPrxI.checkedCast(prx: prx, facet: facet, context: context) as ServiceObserverPrxI?
}

/// Downcasts the given proxy to this type without contacting the remote server.
///
/// - parameter prx: `Ice.ObjectPrx` The proxy to be cast.
///
/// - parameter type: `ServiceObserverPrx.Protocol` - The proxy type to cast to.
///
/// - parameter facet: `String` - The optional name of the desired facet
///
/// - returns: `ServiceObserverPrx` - A proxy with the requested type
public func uncheckedCast(prx: Ice.ObjectPrx, type: ServiceObserverPrx.Protocol, facet: Swift.String? = nil) -> ServiceObserverPrx {
    return ServiceObserverPrxI.uncheckedCast(prx: prx, facet: facet) as ServiceObserverPrxI
}

/// Returns the Slice type id of the interface or class associated with this proxy type.
///
/// parameter type: `ServiceObserverPrx.Protocol` -  The proxy type to retrieve the type id.
///
/// returns: `String` - The type id of the interface or class associated with this proxy type.
public func ice_staticId(_ type: ServiceObserverPrx.Protocol) -> Swift.String {
    return ServiceObserverTraits.staticId
}

/// Extension to `Ice.InputStream` class to support reading proxy of type
/// `ServiceObserverPrx`.
public extension Ice.InputStream {
    /// Extracts a proxy from the stream. The stream must have been initialized with a communicator.
    ///
    /// - parameter type: `ServiceObserverPrx.Protocol` - The type of the proxy to be extracted.
    ///
    /// - returns: `ServiceObserverPrx?` - The extracted proxy
    func read(_ type: ServiceObserverPrx.Protocol) throws -> ServiceObserverPrx? {
        return try read() as ServiceObserverPrxI?
    }
    /// Extracts a proxy from the stream. The stream must have been initialized with a communicator.
    ///
    /// - parameter tag: `Int32` - The numeric tag associated with the value.
    ///
    /// - parameter type: `ServiceObserverPrx.Protocol` - The type of the proxy to be extracted.
    ///
    /// - returns: `ServiceObserverPrx` - The extracted proxy.
    func read(tag: Swift.Int32, type: ServiceObserverPrx.Protocol) throws -> ServiceObserverPrx? {
        return try read(tag: tag) as ServiceObserverPrxI?
    }
}

/// An Observer interface implemented by admin clients interested in the status of services.
///
/// ServiceObserverPrx Methods:
///
///  - servicesStarted: Receives the names of the services that were started.
///
///  - servicesStartedAsync: Receives the names of the services that were started.
///
///  - servicesStopped: Receives the names of the services that were stopped.
///
///  - servicesStoppedAsync: Receives the names of the services that were stopped.
public extension ServiceObserverPrx {
    /// Receives the names of the services that were started.
    ///
    /// - parameter _: `Ice.StringSeq` The names of the services.
    ///
    /// - parameter context: `Ice.Context` - Optional request context.
    func servicesStarted(_ iceP_services: Ice.StringSeq, context: Ice.Context? = nil) throws {
        try _impl._invoke(operation: "servicesStarted",
                          mode: .Normal,
                          write: { ostr in
                              ostr.write(iceP_services)
                          },
                          context: context)
    }

    /// Receives the names of the services that were started.
    ///
    /// - parameter _: `Ice.StringSeq` The names of the services.
    ///
    /// - parameter context: `Ice.Context` - Optional request context.
    ///
    /// - parameter sentOn: `Dispatch.DispatchQueue?` - Optional dispatch queue used to
    ///   dispatch the sent callback.
    ///
    /// - parameter sentFlags: `Dispatch.DispatchWorkItemFlags?` - Optional dispatch flags used
    ///   to dispatch the sent callback
    ///
    /// - parameter sent: `((Swift.Bool) -> Swift.Void)` - Optional sent callback.
    ///
    /// - returns: `PromiseKit.Promise<>` - The result of the operation
    func servicesStartedAsync(_ iceP_services: Ice.StringSeq, context: Ice.Context? = nil, sentOn: Dispatch.DispatchQueue? = nil, sentFlags: Dispatch.DispatchWorkItemFlags? = nil, sent: ((Swift.Bool) -> Swift.Void)? = nil) -> PromiseKit.Promise<Swift.Void> {
        return _impl._invokeAsync(operation: "servicesStarted",
                                  mode: .Normal,
                                  write: { ostr in
                                      ostr.write(iceP_services)
                                  },
                                  context: context,
                                  sentOn: sentOn,
                                  sentFlags: sentFlags,
                                  sent: sent)
    }

    /// Receives the names of the services that were stopped.
    ///
    /// - parameter _: `Ice.StringSeq` The names of the services.
    ///
    /// - parameter context: `Ice.Context` - Optional request context.
    func servicesStopped(_ iceP_services: Ice.StringSeq, context: Ice.Context? = nil) throws {
        try _impl._invoke(operation: "servicesStopped",
                          mode: .Normal,
                          write: { ostr in
                              ostr.write(iceP_services)
                          },
                          context: context)
    }

    /// Receives the names of the services that were stopped.
    ///
    /// - parameter _: `Ice.StringSeq` The names of the services.
    ///
    /// - parameter context: `Ice.Context` - Optional request context.
    ///
    /// - parameter sentOn: `Dispatch.DispatchQueue?` - Optional dispatch queue used to
    ///   dispatch the sent callback.
    ///
    /// - parameter sentFlags: `Dispatch.DispatchWorkItemFlags?` - Optional dispatch flags used
    ///   to dispatch the sent callback
    ///
    /// - parameter sent: `((Swift.Bool) -> Swift.Void)` - Optional sent callback.
    ///
    /// - returns: `PromiseKit.Promise<>` - The result of the operation
    func servicesStoppedAsync(_ iceP_services: Ice.StringSeq, context: Ice.Context? = nil, sentOn: Dispatch.DispatchQueue? = nil, sentFlags: Dispatch.DispatchWorkItemFlags? = nil, sent: ((Swift.Bool) -> Swift.Void)? = nil) -> PromiseKit.Promise<Swift.Void> {
        return _impl._invokeAsync(operation: "servicesStopped",
                                  mode: .Normal,
                                  write: { ostr in
                                      ostr.write(iceP_services)
                                  },
                                  context: context,
                                  sentOn: sentOn,
                                  sentFlags: sentFlags,
                                  sent: sent)
    }
}

/// Administers a set of IceBox Service instances.
///
/// ServiceManagerPrx Methods:
///
///  - startService: Start an individual service.
///
///  - startServiceAsync: Start an individual service.
///
///  - stopService: Stop an individual service.
///
///  - stopServiceAsync: Stop an individual service.
///
///  - addObserver: Registers a new observer with the ServiceManager.
///
///  - addObserverAsync: Registers a new observer with the ServiceManager.
///
///  - shutdown: Shut down all services.
///
///  - shutdownAsync: Shut down all services.
public protocol ServiceManagerPrx: Ice.ObjectPrx {}

private final class ServiceManagerPrxI: Ice.ObjectPrxI, ServiceManagerPrx {
    public override class func ice_staticId() -> Swift.String {
        return ServiceManagerTraits.staticId
    }
}

/// Casts a proxy to the requested type. This call contacts the server and verifies that the object
/// implements this type.
///
/// It will throw a local exception if a communication error occurs. You can optionally supply a
/// facet name and a context map.
///
/// - parameter prx: `Ice.ObjectPrx` - The proxy to be cast.
///
/// - parameter type: `ServiceManagerPrx.Protocol` - The proxy type to cast to.
///
/// - parameter facet: `String` - The optional name of the desired facet.
///
/// - parameter context: `Ice.Context` The optional context dictionary for the remote invocation.
///
/// - returns: `ServiceManagerPrx` - A proxy with the requested type or nil if the objet does not
///   support this type.
///
/// - throws: `Ice.LocalException` if a communication error occurs.
public func checkedCast(prx: Ice.ObjectPrx, type: ServiceManagerPrx.Protocol, facet: Swift.String? = nil, context: Ice.Context? = nil) throws -> ServiceManagerPrx? {
    return try ServiceManagerPrxI.checkedCast(prx: prx, facet: facet, context: context) as ServiceManagerPrxI?
}

/// Downcasts the given proxy to this type without contacting the remote server.
///
/// - parameter prx: `Ice.ObjectPrx` The proxy to be cast.
///
/// - parameter type: `ServiceManagerPrx.Protocol` - The proxy type to cast to.
///
/// - parameter facet: `String` - The optional name of the desired facet
///
/// - returns: `ServiceManagerPrx` - A proxy with the requested type
public func uncheckedCast(prx: Ice.ObjectPrx, type: ServiceManagerPrx.Protocol, facet: Swift.String? = nil) -> ServiceManagerPrx {
    return ServiceManagerPrxI.uncheckedCast(prx: prx, facet: facet) as ServiceManagerPrxI
}

/// Returns the Slice type id of the interface or class associated with this proxy type.
///
/// parameter type: `ServiceManagerPrx.Protocol` -  The proxy type to retrieve the type id.
///
/// returns: `String` - The type id of the interface or class associated with this proxy type.
public func ice_staticId(_ type: ServiceManagerPrx.Protocol) -> Swift.String {
    return ServiceManagerTraits.staticId
}

/// Extension to `Ice.InputStream` class to support reading proxy of type
/// `ServiceManagerPrx`.
public extension Ice.InputStream {
    /// Extracts a proxy from the stream. The stream must have been initialized with a communicator.
    ///
    /// - parameter type: `ServiceManagerPrx.Protocol` - The type of the proxy to be extracted.
    ///
    /// - returns: `ServiceManagerPrx?` - The extracted proxy
    func read(_ type: ServiceManagerPrx.Protocol) throws -> ServiceManagerPrx? {
        return try read() as ServiceManagerPrxI?
    }
    /// Extracts a proxy from the stream. The stream must have been initialized with a communicator.
    ///
    /// - parameter tag: `Int32` - The numeric tag associated with the value.
    ///
    /// - parameter type: `ServiceManagerPrx.Protocol` - The type of the proxy to be extracted.
    ///
    /// - returns: `ServiceManagerPrx` - The extracted proxy.
    func read(tag: Swift.Int32, type: ServiceManagerPrx.Protocol) throws -> ServiceManagerPrx? {
        return try read(tag: tag) as ServiceManagerPrxI?
    }
}

/// Administers a set of IceBox Service instances.
///
/// ServiceManagerPrx Methods:
///
///  - startService: Start an individual service.
///
///  - startServiceAsync: Start an individual service.
///
///  - stopService: Stop an individual service.
///
///  - stopServiceAsync: Stop an individual service.
///
///  - addObserver: Registers a new observer with the ServiceManager.
///
///  - addObserverAsync: Registers a new observer with the ServiceManager.
///
///  - shutdown: Shut down all services.
///
///  - shutdownAsync: Shut down all services.
public extension ServiceManagerPrx {
    /// Start an individual service.
    ///
    /// - parameter _: `Swift.String` The service name.
    ///
    /// - parameter context: `Ice.Context` - Optional request context.
    ///
    /// - throws:
    ///
    ///   - AlreadyStartedException - If the service is already running.
    ///
    ///   - NoSuchServiceException - If no service could be found with the given name.
    func startService(_ iceP_service: Swift.String, context: Ice.Context? = nil) throws {
        try _impl._invoke(operation: "startService",
                          mode: .Normal,
                          write: { ostr in
                              ostr.write(iceP_service)
                          },
                          userException:{ ex in
                              do  {
                                  throw ex
                              } catch let error as AlreadyStartedException {
                                  throw error
                              } catch let error as NoSuchServiceException {
                                  throw error
                              } catch is Ice.UserException {}
                          },
                          context: context)
    }

    /// Start an individual service.
    ///
    /// - parameter _: `Swift.String` The service name.
    ///
    /// - parameter context: `Ice.Context` - Optional request context.
    ///
    /// - parameter sentOn: `Dispatch.DispatchQueue?` - Optional dispatch queue used to
    ///   dispatch the sent callback.
    ///
    /// - parameter sentFlags: `Dispatch.DispatchWorkItemFlags?` - Optional dispatch flags used
    ///   to dispatch the sent callback
    ///
    /// - parameter sent: `((Swift.Bool) -> Swift.Void)` - Optional sent callback.
    ///
    /// - returns: `PromiseKit.Promise<>` - The result of the operation
    func startServiceAsync(_ iceP_service: Swift.String, context: Ice.Context? = nil, sentOn: Dispatch.DispatchQueue? = nil, sentFlags: Dispatch.DispatchWorkItemFlags? = nil, sent: ((Swift.Bool) -> Swift.Void)? = nil) -> PromiseKit.Promise<Swift.Void> {
        return _impl._invokeAsync(operation: "startService",
                                  mode: .Normal,
                                  write: { ostr in
                                      ostr.write(iceP_service)
                                  },
                                  userException:{ ex in
                                      do  {
                                          throw ex
                                      } catch let error as AlreadyStartedException {
                                          throw error
                                      } catch let error as NoSuchServiceException {
                                          throw error
                                      } catch is Ice.UserException {}
                                  },
                                  context: context,
                                  sentOn: sentOn,
                                  sentFlags: sentFlags,
                                  sent: sent)
    }

    /// Stop an individual service.
    ///
    /// - parameter _: `Swift.String` The service name.
    ///
    /// - parameter context: `Ice.Context` - Optional request context.
    ///
    /// - throws:
    ///
    ///   - AlreadyStoppedException - If the service is already stopped.
    ///
    ///   - NoSuchServiceException - If no service could be found with the given name.
    func stopService(_ iceP_service: Swift.String, context: Ice.Context? = nil) throws {
        try _impl._invoke(operation: "stopService",
                          mode: .Normal,
                          write: { ostr in
                              ostr.write(iceP_service)
                          },
                          userException:{ ex in
                              do  {
                                  throw ex
                              } catch let error as AlreadyStoppedException {
                                  throw error
                              } catch let error as NoSuchServiceException {
                                  throw error
                              } catch is Ice.UserException {}
                          },
                          context: context)
    }

    /// Stop an individual service.
    ///
    /// - parameter _: `Swift.String` The service name.
    ///
    /// - parameter context: `Ice.Context` - Optional request context.
    ///
    /// - parameter sentOn: `Dispatch.DispatchQueue?` - Optional dispatch queue used to
    ///   dispatch the sent callback.
    ///
    /// - parameter sentFlags: `Dispatch.DispatchWorkItemFlags?` - Optional dispatch flags used
    ///   to dispatch the sent callback
    ///
    /// - parameter sent: `((Swift.Bool) -> Swift.Void)` - Optional sent callback.
    ///
    /// - returns: `PromiseKit.Promise<>` - The result of the operation
    func stopServiceAsync(_ iceP_service: Swift.String, context: Ice.Context? = nil, sentOn: Dispatch.DispatchQueue? = nil, sentFlags: Dispatch.DispatchWorkItemFlags? = nil, sent: ((Swift.Bool) -> Swift.Void)? = nil) -> PromiseKit.Promise<Swift.Void> {
        return _impl._invokeAsync(operation: "stopService",
                                  mode: .Normal,
                                  write: { ostr in
                                      ostr.write(iceP_service)
                                  },
                                  userException:{ ex in
                                      do  {
                                          throw ex
                                      } catch let error as AlreadyStoppedException {
                                          throw error
                                      } catch let error as NoSuchServiceException {
                                          throw error
                                      } catch is Ice.UserException {}
                                  },
                                  context: context,
                                  sentOn: sentOn,
                                  sentFlags: sentFlags,
                                  sent: sent)
    }

    /// Registers a new observer with the ServiceManager.
    ///
    /// - parameter _: `ServiceObserverPrx?` The new observer
    ///
    /// - parameter context: `Ice.Context` - Optional request context.
    func addObserver(_ iceP_observer: ServiceObserverPrx?, context: Ice.Context? = nil) throws {
        try _impl._invoke(operation: "addObserver",
                          mode: .Normal,
                          write: { ostr in
                              ostr.write(iceP_observer)
                          },
                          context: context)
    }

    /// Registers a new observer with the ServiceManager.
    ///
    /// - parameter _: `ServiceObserverPrx?` The new observer
    ///
    /// - parameter context: `Ice.Context` - Optional request context.
    ///
    /// - parameter sentOn: `Dispatch.DispatchQueue?` - Optional dispatch queue used to
    ///   dispatch the sent callback.
    ///
    /// - parameter sentFlags: `Dispatch.DispatchWorkItemFlags?` - Optional dispatch flags used
    ///   to dispatch the sent callback
    ///
    /// - parameter sent: `((Swift.Bool) -> Swift.Void)` - Optional sent callback.
    ///
    /// - returns: `PromiseKit.Promise<>` - The result of the operation
    func addObserverAsync(_ iceP_observer: ServiceObserverPrx?, context: Ice.Context? = nil, sentOn: Dispatch.DispatchQueue? = nil, sentFlags: Dispatch.DispatchWorkItemFlags? = nil, sent: ((Swift.Bool) -> Swift.Void)? = nil) -> PromiseKit.Promise<Swift.Void> {
        return _impl._invokeAsync(operation: "addObserver",
                                  mode: .Normal,
                                  write: { ostr in
                                      ostr.write(iceP_observer)
                                  },
                                  context: context,
                                  sentOn: sentOn,
                                  sentFlags: sentFlags,
                                  sent: sent)
    }

    /// Shut down all services. This causes stop to be invoked on all configured services.
    ///
    /// - parameter context: `Ice.Context` - Optional request context.
    func shutdown(context: Ice.Context? = nil) throws {
        try _impl._invoke(operation: "shutdown",
                          mode: .Normal,
                          context: context)
    }

    /// Shut down all services. This causes stop to be invoked on all configured services.
    ///
    /// - parameter context: `Ice.Context` - Optional request context.
    ///
    /// - parameter sentOn: `Dispatch.DispatchQueue?` - Optional dispatch queue used to
    ///   dispatch the sent callback.
    ///
    /// - parameter sentFlags: `Dispatch.DispatchWorkItemFlags?` - Optional dispatch flags used
    ///   to dispatch the sent callback
    ///
    /// - parameter sent: `((Swift.Bool) -> Swift.Void)` - Optional sent callback.
    ///
    /// - returns: `PromiseKit.Promise<>` - The result of the operation
    func shutdownAsync(context: Ice.Context? = nil, sentOn: Dispatch.DispatchQueue? = nil, sentFlags: Dispatch.DispatchWorkItemFlags? = nil, sent: ((Swift.Bool) -> Swift.Void)? = nil) -> PromiseKit.Promise<Swift.Void> {
        return _impl._invokeAsync(operation: "shutdown",
                                  mode: .Normal,
                                  context: context,
                                  sentOn: sentOn,
                                  sentFlags: sentFlags,
                                  sent: sent)
    }
}


/// Dispatcher for `ServiceObserver` servants.
public struct ServiceObserverDisp: Ice.Disp {
    public let servant: ServiceObserver
    private static let defaultObject = Ice.ObjectI<ServiceObserverTraits>()

    public init(_ servant: ServiceObserver) {
        self.servant = servant
    }

    public func dispatch(request: Ice.Request, current: Ice.Current) throws -> PromiseKit.Promise<Ice.OutputStream>? {
        request.startOver()
        switch current.operation {
        case "ice_id":
            return try (servant as? Object ?? ServiceObserverDisp.defaultObject)._iceD_ice_id(incoming: request, current: current)
        case "ice_ids":
            return try (servant as? Object ?? ServiceObserverDisp.defaultObject)._iceD_ice_ids(incoming: request, current: current)
        case "ice_isA":
            return try (servant as? Object ?? ServiceObserverDisp.defaultObject)._iceD_ice_isA(incoming: request, current: current)
        case "ice_ping":
            return try (servant as? Object ?? ServiceObserverDisp.defaultObject)._iceD_ice_ping(incoming: request, current: current)
        case "servicesStarted":
            return try servant._iceD_servicesStarted(incoming: request, current: current)
        case "servicesStopped":
            return try servant._iceD_servicesStopped(incoming: request, current: current)
        default:
            throw Ice.OperationNotExistException(id: current.id, facet: current.facet, operation: current.operation)
        }
    }
}

/// An Observer interface implemented by admin clients interested in the status of services.
public protocol ServiceObserver {
    /// Receives the names of the services that were started.
    ///
    /// - parameter services: `Ice.StringSeq` The names of the services.
    ///
    /// - parameter current: `Ice.Current` - The Current object for the dispatch.
    func servicesStarted(services: Ice.StringSeq, current: Ice.Current) throws

    /// Receives the names of the services that were stopped.
    ///
    /// - parameter services: `Ice.StringSeq` The names of the services.
    ///
    /// - parameter current: `Ice.Current` - The Current object for the dispatch.
    func servicesStopped(services: Ice.StringSeq, current: Ice.Current) throws
}


/// Dispatcher for `ServiceManager` servants.
public struct ServiceManagerDisp: Ice.Disp {
    public let servant: ServiceManager
    private static let defaultObject = Ice.ObjectI<ServiceManagerTraits>()

    public init(_ servant: ServiceManager) {
        self.servant = servant
    }

    public func dispatch(request: Ice.Request, current: Ice.Current) throws -> PromiseKit.Promise<Ice.OutputStream>? {
        request.startOver()
        switch current.operation {
        case "addObserver":
            return try servant._iceD_addObserver(incoming: request, current: current)
        case "ice_id":
            return try (servant as? Object ?? ServiceManagerDisp.defaultObject)._iceD_ice_id(incoming: request, current: current)
        case "ice_ids":
            return try (servant as? Object ?? ServiceManagerDisp.defaultObject)._iceD_ice_ids(incoming: request, current: current)
        case "ice_isA":
            return try (servant as? Object ?? ServiceManagerDisp.defaultObject)._iceD_ice_isA(incoming: request, current: current)
        case "ice_ping":
            return try (servant as? Object ?? ServiceManagerDisp.defaultObject)._iceD_ice_ping(incoming: request, current: current)
        case "shutdown":
            return try servant._iceD_shutdown(incoming: request, current: current)
        case "startService":
            return try servant._iceD_startService(incoming: request, current: current)
        case "stopService":
            return try servant._iceD_stopService(incoming: request, current: current)
        default:
            throw Ice.OperationNotExistException(id: current.id, facet: current.facet, operation: current.operation)
        }
    }
}

/// Administers a set of IceBox Service instances.
public protocol ServiceManager {
    /// Start an individual service.
    ///
    /// - parameter service: `Swift.String` The service name.
    ///
    /// - parameter current: `Ice.Current` - The Current object for the dispatch.
    ///
    /// - throws:
    ///
    ///   - AlreadyStartedException - If the service is already running.
    ///
    ///   - NoSuchServiceException - If no service could be found with the given name.
    func startService(service: Swift.String, current: Ice.Current) throws

    /// Stop an individual service.
    ///
    /// - parameter service: `Swift.String` The service name.
    ///
    /// - parameter current: `Ice.Current` - The Current object for the dispatch.
    ///
    /// - throws:
    ///
    ///   - AlreadyStoppedException - If the service is already stopped.
    ///
    ///   - NoSuchServiceException - If no service could be found with the given name.
    func stopService(service: Swift.String, current: Ice.Current) throws

    /// Registers a new observer with the ServiceManager.
    ///
    /// - parameter observer: `ServiceObserverPrx?` The new observer
    ///
    /// - parameter current: `Ice.Current` - The Current object for the dispatch.
    func addObserver(observer: ServiceObserverPrx?, current: Ice.Current) throws

    /// Shut down all services. This causes stop to be invoked on all configured services.
    ///
    /// - parameter current: `Ice.Current` - The Current object for the dispatch.
    func shutdown(current: Ice.Current) throws
}

/// An Observer interface implemented by admin clients interested in the status of services.
///
/// ServiceObserver Methods:
///
///  - servicesStarted: Receives the names of the services that were started.
///
///  - servicesStopped: Receives the names of the services that were stopped.
public extension ServiceObserver {
    func _iceD_servicesStarted(incoming inS: Ice.Incoming, current: Ice.Current) throws -> PromiseKit.Promise<Ice.OutputStream>? {
        let iceP_services: Ice.StringSeq = try inS.read { istr in
            let iceP_services: Ice.StringSeq = try istr.read()
            return iceP_services
        }

        try self.servicesStarted(services: iceP_services, current: current)

        return inS.setResult()
    }

    func _iceD_servicesStopped(incoming inS: Ice.Incoming, current: Ice.Current) throws -> PromiseKit.Promise<Ice.OutputStream>? {
        let iceP_services: Ice.StringSeq = try inS.read { istr in
            let iceP_services: Ice.StringSeq = try istr.read()
            return iceP_services
        }

        try self.servicesStopped(services: iceP_services, current: current)

        return inS.setResult()
    }
}

/// Administers a set of IceBox Service instances.
///
/// ServiceManager Methods:
///
///  - startService: Start an individual service.
///
///  - stopService: Stop an individual service.
///
///  - addObserver: Registers a new observer with the ServiceManager.
///
///  - shutdown: Shut down all services.
public extension ServiceManager {
    func _iceD_startService(incoming inS: Ice.Incoming, current: Ice.Current) throws -> PromiseKit.Promise<Ice.OutputStream>? {
        let iceP_service: Swift.String = try inS.read { istr in
            let iceP_service: Swift.String = try istr.read()
            return iceP_service
        }

        try self.startService(service: iceP_service, current: current)

        return inS.setResult()
    }

    func _iceD_stopService(incoming inS: Ice.Incoming, current: Ice.Current) throws -> PromiseKit.Promise<Ice.OutputStream>? {
        let iceP_service: Swift.String = try inS.read { istr in
            let iceP_service: Swift.String = try istr.read()
            return iceP_service
        }

        try self.stopService(service: iceP_service, current: current)

        return inS.setResult()
    }

    func _iceD_addObserver(incoming inS: Ice.Incoming, current: Ice.Current) throws -> PromiseKit.Promise<Ice.OutputStream>? {
        let iceP_observer: ServiceObserverPrx? = try inS.read { istr in
            let iceP_observer: ServiceObserverPrx? = try istr.read(ServiceObserverPrx.self)
            return iceP_observer
        }

        try self.addObserver(observer: iceP_observer, current: current)

        return inS.setResult()
    }

    func _iceD_shutdown(incoming inS: Ice.Incoming, current: Ice.Current) throws -> PromiseKit.Promise<Ice.OutputStream>? {
        try inS.readEmptyParams()

        try self.shutdown(current: current)

        return inS.setResult()
    }
}
