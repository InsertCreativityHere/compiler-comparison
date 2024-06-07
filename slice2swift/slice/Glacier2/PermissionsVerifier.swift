//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `PermissionsVerifier.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

import Foundation
import Ice
import PromiseKit

/// :nodoc:
public class PermissionDeniedException_TypeResolver: Ice.UserExceptionTypeResolver {
    public override func type() -> Ice.UserException.Type {
        return PermissionDeniedException.self
    }
}

public extension Ice.ClassResolver {
    @objc static func Glacier2_PermissionDeniedException() -> Ice.UserExceptionTypeResolver {
        return PermissionDeniedException_TypeResolver()
    }
}

/// This exception is raised if a client is denied the ability to create a session with the router.
open class PermissionDeniedException: Ice.UserException {
    /// The reason why permission was denied.
    public var reason: Swift.String = ""

    public required init() {}

    public init(reason: Swift.String) {
        self.reason = reason
    }

    /// Returns the Slice type ID of this exception.
    ///
    /// - returns: `Swift.String` - the Slice type ID of this exception.
    open override class func ice_staticId() -> Swift.String {
        return "::Glacier2::PermissionDeniedException"
    }

    open override func _iceWriteImpl(to ostr: Ice.OutputStream) {
        ostr.startSlice(typeId: PermissionDeniedException.ice_staticId(), compactId: -1, last: true)
        ostr.write(self.reason)
        ostr.endSlice()
    }

    open override func _iceReadImpl(from istr: Ice.InputStream) throws {
        _ = try istr.startSlice()
        self.reason = try istr.read()
        try istr.endSlice()
    }
}

/// Traits for Slice interface`PermissionsVerifier`.
public struct PermissionsVerifierTraits: Ice.SliceTraits {
    public static let staticIds = ["::Glacier2::PermissionsVerifier", "::Ice::Object"]
    public static let staticId = "::Glacier2::PermissionsVerifier"
}

/// Traits for Slice interface`SSLPermissionsVerifier`.
public struct SSLPermissionsVerifierTraits: Ice.SliceTraits {
    public static let staticIds = ["::Glacier2::SSLPermissionsVerifier", "::Ice::Object"]
    public static let staticId = "::Glacier2::SSLPermissionsVerifier"
}

/// The Glacier2 permissions verifier. This is called through the process of establishing a session.
///
/// PermissionsVerifierPrx Methods:
///
///  - checkPermissions: Check whether a user has permission to access the router.
///
///  - checkPermissionsAsync: Check whether a user has permission to access the router.
public protocol PermissionsVerifierPrx: Ice.ObjectPrx {}

private final class PermissionsVerifierPrxI: Ice.ObjectPrxI, PermissionsVerifierPrx {
    public override class func ice_staticId() -> Swift.String {
        return PermissionsVerifierTraits.staticId
    }
}

/// Makes a new proxy from a communicator and a proxy string.
///
/// - Parameters:
///    - communicator: The communicator of the new proxy.
///    - proxyString: The proxy string to parse.
///    - type: The type of the new proxy.
/// - Throws: `Ice.ProxyParseException` if the proxy string is invalid.
/// - Returns: A new proxy with the requested type.
public func makeProxy(communicator: Ice.Communicator, proxyString: String, type: PermissionsVerifierPrx.Protocol) throws -> PermissionsVerifierPrx {
    try communicator.makeProxyImpl(proxyString) as PermissionsVerifierPrxI
}

/// Casts a proxy to the requested type. This call contacts the server and verifies that the object
/// implements this type.
///
/// It will throw a local exception if a communication error occurs. You can optionally supply a
/// facet name and a context map.
///
/// - parameter prx: `Ice.ObjectPrx` - The proxy to be cast.
///
/// - parameter type: `PermissionsVerifierPrx.Protocol` - The proxy type to cast to.
///
/// - parameter facet: `String` - The optional name of the desired facet.
///
/// - parameter context: `Ice.Context` The optional context dictionary for the remote invocation.
///
/// - returns: `PermissionsVerifierPrx` - A proxy with the requested type or nil if the objet does not
///   support this type.
///
/// - throws: `Ice.LocalException` if a communication error occurs.
public func checkedCast(prx: Ice.ObjectPrx, type: PermissionsVerifierPrx.Protocol, facet: Swift.String? = nil, context: Ice.Context? = nil) throws -> PermissionsVerifierPrx? {
    return try PermissionsVerifierPrxI.checkedCast(prx: prx, facet: facet, context: context) as PermissionsVerifierPrxI?
}

/// Downcasts the given proxy to this type without contacting the remote server.
///
/// - parameter prx: `Ice.ObjectPrx` The proxy to be cast.
///
/// - parameter type: `PermissionsVerifierPrx.Protocol` - The proxy type to cast to.
///
/// - parameter facet: `String` - The optional name of the desired facet
///
/// - returns: `PermissionsVerifierPrx` - A proxy with the requested type
public func uncheckedCast(prx: Ice.ObjectPrx, type: PermissionsVerifierPrx.Protocol, facet: Swift.String? = nil) -> PermissionsVerifierPrx {
    return PermissionsVerifierPrxI.uncheckedCast(prx: prx, facet: facet) as PermissionsVerifierPrxI
}

/// Returns the Slice type id of the interface or class associated with this proxy type.
///
/// parameter type: `PermissionsVerifierPrx.Protocol` -  The proxy type to retrieve the type id.
///
/// returns: `String` - The type id of the interface or class associated with this proxy type.
public func ice_staticId(_ type: PermissionsVerifierPrx.Protocol) -> Swift.String {
    return PermissionsVerifierTraits.staticId
}

/// Extension to `Ice.InputStream` class to support reading proxy of type
/// `PermissionsVerifierPrx`.
public extension Ice.InputStream {
    /// Extracts a proxy from the stream. The stream must have been initialized with a communicator.
    ///
    /// - parameter type: `PermissionsVerifierPrx.Protocol` - The type of the proxy to be extracted.
    ///
    /// - returns: `PermissionsVerifierPrx?` - The extracted proxy
    func read(_ type: PermissionsVerifierPrx.Protocol) throws -> PermissionsVerifierPrx? {
        return try read() as PermissionsVerifierPrxI?
    }
    /// Extracts a proxy from the stream. The stream must have been initialized with a communicator.
    ///
    /// - parameter tag: `Int32` - The numeric tag associated with the value.
    ///
    /// - parameter type: `PermissionsVerifierPrx.Protocol` - The type of the proxy to be extracted.
    ///
    /// - returns: `PermissionsVerifierPrx` - The extracted proxy.
    func read(tag: Swift.Int32, type: PermissionsVerifierPrx.Protocol) throws -> PermissionsVerifierPrx? {
        return try read(tag: tag) as PermissionsVerifierPrxI?
    }
}

/// The Glacier2 permissions verifier. This is called through the process of establishing a session.
///
/// PermissionsVerifierPrx Methods:
///
///  - checkPermissions: Check whether a user has permission to access the router.
///
///  - checkPermissionsAsync: Check whether a user has permission to access the router.
public extension PermissionsVerifierPrx {
    /// Check whether a user has permission to access the router.
    ///
    /// - parameter userId: `Swift.String` The user id for which to check permission.
    ///
    /// - parameter password: `Swift.String` The user's password.
    ///
    /// - parameter context: `Ice.Context` - Optional request context.
    ///
    /// - returns: `(returnValue: Swift.Bool, reason: Swift.String)`:
    ///
    ///   - returnValue: `Swift.Bool` - True if access is granted, or false otherwise.
    ///
    ///   - reason: `Swift.String` - The reason why access was denied.
    ///
    /// - throws:
    ///
    ///   - PermissionDeniedException - Raised if the user access is denied. This can be raised in place of
    ///     returning false with a reason set in the reason out parameter.
    func checkPermissions(userId iceP_userId: Swift.String, password iceP_password: Swift.String, context: Ice.Context? = nil) throws -> (returnValue: Swift.Bool, reason: Swift.String) {
        return try _impl._invoke(operation: "checkPermissions",
                                 mode: .Idempotent,
                                 format: .SlicedFormat,
                                 write: { ostr in
                                     ostr.write(iceP_userId)
                                     ostr.write(iceP_password)
                                 },
                                 read: { istr in
                                     let iceP_reason: Swift.String = try istr.read()
                                     let iceP_returnValue: Swift.Bool = try istr.read()
                                     return (iceP_returnValue, iceP_reason)
                                 },
                                 userException:{ ex in
                                     do  {
                                         throw ex
                                     } catch let error as PermissionDeniedException {
                                         throw error
                                     } catch is Ice.UserException {}
                                 },
                                 context: context)
    }

    /// Check whether a user has permission to access the router.
    ///
    /// - parameter userId: `Swift.String` The user id for which to check permission.
    ///
    /// - parameter password: `Swift.String` The user's password.
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
    /// - returns: `PromiseKit.Promise<(returnValue: Swift.Bool, reason: Swift.String)>` - The result of the operation
    func checkPermissionsAsync(userId iceP_userId: Swift.String, password iceP_password: Swift.String, context: Ice.Context? = nil, sentOn: Dispatch.DispatchQueue? = nil, sentFlags: Dispatch.DispatchWorkItemFlags? = nil, sent: ((Swift.Bool) -> Swift.Void)? = nil) -> PromiseKit.Promise<(returnValue: Swift.Bool, reason: Swift.String)> {
        return _impl._invokeAsync(operation: "checkPermissions",
                                  mode: .Idempotent,
                                  format: .SlicedFormat,
                                  write: { ostr in
                                      ostr.write(iceP_userId)
                                      ostr.write(iceP_password)
                                  },
                                  read: { istr in
                                      let iceP_reason: Swift.String = try istr.read()
                                      let iceP_returnValue: Swift.Bool = try istr.read()
                                      return (iceP_returnValue, iceP_reason)
                                  },
                                  userException:{ ex in
                                      do  {
                                          throw ex
                                      } catch let error as PermissionDeniedException {
                                          throw error
                                      } catch is Ice.UserException {}
                                  },
                                  context: context,
                                  sentOn: sentOn,
                                  sentFlags: sentFlags,
                                  sent: sent)
    }
}

/// The SSL Glacier2 permissions verifier. This is called through the process of establishing a session.
///
/// SSLPermissionsVerifierPrx Methods:
///
///  - authorize: Check whether a user has permission to access the router.
///
///  - authorizeAsync: Check whether a user has permission to access the router.
public protocol SSLPermissionsVerifierPrx: Ice.ObjectPrx {}

private final class SSLPermissionsVerifierPrxI: Ice.ObjectPrxI, SSLPermissionsVerifierPrx {
    public override class func ice_staticId() -> Swift.String {
        return SSLPermissionsVerifierTraits.staticId
    }
}

/// Makes a new proxy from a communicator and a proxy string.
///
/// - Parameters:
///    - communicator: The communicator of the new proxy.
///    - proxyString: The proxy string to parse.
///    - type: The type of the new proxy.
/// - Throws: `Ice.ProxyParseException` if the proxy string is invalid.
/// - Returns: A new proxy with the requested type.
public func makeProxy(communicator: Ice.Communicator, proxyString: String, type: SSLPermissionsVerifierPrx.Protocol) throws -> SSLPermissionsVerifierPrx {
    try communicator.makeProxyImpl(proxyString) as SSLPermissionsVerifierPrxI
}

/// Casts a proxy to the requested type. This call contacts the server and verifies that the object
/// implements this type.
///
/// It will throw a local exception if a communication error occurs. You can optionally supply a
/// facet name and a context map.
///
/// - parameter prx: `Ice.ObjectPrx` - The proxy to be cast.
///
/// - parameter type: `SSLPermissionsVerifierPrx.Protocol` - The proxy type to cast to.
///
/// - parameter facet: `String` - The optional name of the desired facet.
///
/// - parameter context: `Ice.Context` The optional context dictionary for the remote invocation.
///
/// - returns: `SSLPermissionsVerifierPrx` - A proxy with the requested type or nil if the objet does not
///   support this type.
///
/// - throws: `Ice.LocalException` if a communication error occurs.
public func checkedCast(prx: Ice.ObjectPrx, type: SSLPermissionsVerifierPrx.Protocol, facet: Swift.String? = nil, context: Ice.Context? = nil) throws -> SSLPermissionsVerifierPrx? {
    return try SSLPermissionsVerifierPrxI.checkedCast(prx: prx, facet: facet, context: context) as SSLPermissionsVerifierPrxI?
}

/// Downcasts the given proxy to this type without contacting the remote server.
///
/// - parameter prx: `Ice.ObjectPrx` The proxy to be cast.
///
/// - parameter type: `SSLPermissionsVerifierPrx.Protocol` - The proxy type to cast to.
///
/// - parameter facet: `String` - The optional name of the desired facet
///
/// - returns: `SSLPermissionsVerifierPrx` - A proxy with the requested type
public func uncheckedCast(prx: Ice.ObjectPrx, type: SSLPermissionsVerifierPrx.Protocol, facet: Swift.String? = nil) -> SSLPermissionsVerifierPrx {
    return SSLPermissionsVerifierPrxI.uncheckedCast(prx: prx, facet: facet) as SSLPermissionsVerifierPrxI
}

/// Returns the Slice type id of the interface or class associated with this proxy type.
///
/// parameter type: `SSLPermissionsVerifierPrx.Protocol` -  The proxy type to retrieve the type id.
///
/// returns: `String` - The type id of the interface or class associated with this proxy type.
public func ice_staticId(_ type: SSLPermissionsVerifierPrx.Protocol) -> Swift.String {
    return SSLPermissionsVerifierTraits.staticId
}

/// Extension to `Ice.InputStream` class to support reading proxy of type
/// `SSLPermissionsVerifierPrx`.
public extension Ice.InputStream {
    /// Extracts a proxy from the stream. The stream must have been initialized with a communicator.
    ///
    /// - parameter type: `SSLPermissionsVerifierPrx.Protocol` - The type of the proxy to be extracted.
    ///
    /// - returns: `SSLPermissionsVerifierPrx?` - The extracted proxy
    func read(_ type: SSLPermissionsVerifierPrx.Protocol) throws -> SSLPermissionsVerifierPrx? {
        return try read() as SSLPermissionsVerifierPrxI?
    }
    /// Extracts a proxy from the stream. The stream must have been initialized with a communicator.
    ///
    /// - parameter tag: `Int32` - The numeric tag associated with the value.
    ///
    /// - parameter type: `SSLPermissionsVerifierPrx.Protocol` - The type of the proxy to be extracted.
    ///
    /// - returns: `SSLPermissionsVerifierPrx` - The extracted proxy.
    func read(tag: Swift.Int32, type: SSLPermissionsVerifierPrx.Protocol) throws -> SSLPermissionsVerifierPrx? {
        return try read(tag: tag) as SSLPermissionsVerifierPrxI?
    }
}

/// The SSL Glacier2 permissions verifier. This is called through the process of establishing a session.
///
/// SSLPermissionsVerifierPrx Methods:
///
///  - authorize: Check whether a user has permission to access the router.
///
///  - authorizeAsync: Check whether a user has permission to access the router.
public extension SSLPermissionsVerifierPrx {
    /// Check whether a user has permission to access the router.
    ///
    /// - parameter _: `SSLInfo` The SSL information.
    ///
    /// - parameter context: `Ice.Context` - Optional request context.
    ///
    /// - returns: `(returnValue: Swift.Bool, reason: Swift.String)`:
    ///
    ///   - returnValue: `Swift.Bool` - True if access is granted, or false otherwise.
    ///
    ///   - reason: `Swift.String` - The reason why access was denied.
    ///
    /// - throws:
    ///
    ///   - PermissionDeniedException - Raised if the user access is denied. This can be raised in place of
    ///     returning false with a reason set in the reason out parameter.
    func authorize(_ iceP_info: SSLInfo, context: Ice.Context? = nil) throws -> (returnValue: Swift.Bool, reason: Swift.String) {
        return try _impl._invoke(operation: "authorize",
                                 mode: .Idempotent,
                                 format: .SlicedFormat,
                                 write: { ostr in
                                     ostr.write(iceP_info)
                                 },
                                 read: { istr in
                                     let iceP_reason: Swift.String = try istr.read()
                                     let iceP_returnValue: Swift.Bool = try istr.read()
                                     return (iceP_returnValue, iceP_reason)
                                 },
                                 userException:{ ex in
                                     do  {
                                         throw ex
                                     } catch let error as PermissionDeniedException {
                                         throw error
                                     } catch is Ice.UserException {}
                                 },
                                 context: context)
    }

    /// Check whether a user has permission to access the router.
    ///
    /// - parameter _: `SSLInfo` The SSL information.
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
    /// - returns: `PromiseKit.Promise<(returnValue: Swift.Bool, reason: Swift.String)>` - The result of the operation
    func authorizeAsync(_ iceP_info: SSLInfo, context: Ice.Context? = nil, sentOn: Dispatch.DispatchQueue? = nil, sentFlags: Dispatch.DispatchWorkItemFlags? = nil, sent: ((Swift.Bool) -> Swift.Void)? = nil) -> PromiseKit.Promise<(returnValue: Swift.Bool, reason: Swift.String)> {
        return _impl._invokeAsync(operation: "authorize",
                                  mode: .Idempotent,
                                  format: .SlicedFormat,
                                  write: { ostr in
                                      ostr.write(iceP_info)
                                  },
                                  read: { istr in
                                      let iceP_reason: Swift.String = try istr.read()
                                      let iceP_returnValue: Swift.Bool = try istr.read()
                                      return (iceP_returnValue, iceP_reason)
                                  },
                                  userException:{ ex in
                                      do  {
                                          throw ex
                                      } catch let error as PermissionDeniedException {
                                          throw error
                                      } catch is Ice.UserException {}
                                  },
                                  context: context,
                                  sentOn: sentOn,
                                  sentFlags: sentFlags,
                                  sent: sent)
    }
}


/// Dispatcher for `PermissionsVerifier` servants.
public struct PermissionsVerifierDisp: Ice.Dispatcher {
    public let servant: PermissionsVerifier
    private static let defaultObject = Ice.ObjectI<PermissionsVerifierTraits>()

    public init(_ servant: PermissionsVerifier) {
        self.servant = servant
    }

    public func dispatch(_ request: Ice.IncomingRequest) -> PromiseKit.Promise<Ice.OutgoingResponse> {
        switch request.current.operation {
        case "checkPermissions":
            servant._iceD_checkPermissions(request)
        case "ice_id":
            (servant as? Ice.Object ?? PermissionsVerifierDisp.defaultObject)._iceD_ice_id(request)
        case "ice_ids":
            (servant as? Ice.Object ?? PermissionsVerifierDisp.defaultObject)._iceD_ice_ids(request)
        case "ice_isA":
            (servant as? Ice.Object ?? PermissionsVerifierDisp.defaultObject)._iceD_ice_isA(request)
        case "ice_ping":
            (servant as? Ice.Object ?? PermissionsVerifierDisp.defaultObject)._iceD_ice_ping(request)
        default:
            PromiseKit.Promise(error: Ice.OperationNotExistException())
        }
    }
}

/// The Glacier2 permissions verifier. This is called through the process of establishing a session.
public protocol PermissionsVerifier {
    /// Check whether a user has permission to access the router.
    ///
    /// - parameter userId: `Swift.String` The user id for which to check permission.
    ///
    /// - parameter password: `Swift.String` The user's password.
    ///
    /// - parameter current: `Ice.Current` - The Current object for the dispatch.
    ///
    /// - returns: `(returnValue: Swift.Bool, reason: Swift.String)`:
    ///
    ///   - returnValue: `Swift.Bool` - True if access is granted, or false otherwise.
    ///
    ///   - reason: `Swift.String` - The reason why access was denied.
    ///
    /// - throws:
    ///
    ///   - PermissionDeniedException - Raised if the user access is denied. This can be raised in place of
    ///     returning false with a reason set in the reason out parameter.
    func checkPermissions(userId: Swift.String, password: Swift.String, current: Ice.Current) throws -> (returnValue: Swift.Bool, reason: Swift.String)
}


/// Dispatcher for `SSLPermissionsVerifier` servants.
public struct SSLPermissionsVerifierDisp: Ice.Dispatcher {
    public let servant: SSLPermissionsVerifier
    private static let defaultObject = Ice.ObjectI<SSLPermissionsVerifierTraits>()

    public init(_ servant: SSLPermissionsVerifier) {
        self.servant = servant
    }

    public func dispatch(_ request: Ice.IncomingRequest) -> PromiseKit.Promise<Ice.OutgoingResponse> {
        switch request.current.operation {
        case "authorize":
            servant._iceD_authorize(request)
        case "ice_id":
            (servant as? Ice.Object ?? SSLPermissionsVerifierDisp.defaultObject)._iceD_ice_id(request)
        case "ice_ids":
            (servant as? Ice.Object ?? SSLPermissionsVerifierDisp.defaultObject)._iceD_ice_ids(request)
        case "ice_isA":
            (servant as? Ice.Object ?? SSLPermissionsVerifierDisp.defaultObject)._iceD_ice_isA(request)
        case "ice_ping":
            (servant as? Ice.Object ?? SSLPermissionsVerifierDisp.defaultObject)._iceD_ice_ping(request)
        default:
            PromiseKit.Promise(error: Ice.OperationNotExistException())
        }
    }
}

/// The SSL Glacier2 permissions verifier. This is called through the process of establishing a session.
public protocol SSLPermissionsVerifier {
    /// Check whether a user has permission to access the router.
    ///
    /// - parameter info: `SSLInfo` The SSL information.
    ///
    /// - parameter current: `Ice.Current` - The Current object for the dispatch.
    ///
    /// - returns: `(returnValue: Swift.Bool, reason: Swift.String)`:
    ///
    ///   - returnValue: `Swift.Bool` - True if access is granted, or false otherwise.
    ///
    ///   - reason: `Swift.String` - The reason why access was denied.
    ///
    /// - throws:
    ///
    ///   - PermissionDeniedException - Raised if the user access is denied. This can be raised in place of
    ///     returning false with a reason set in the reason out parameter.
    func authorize(info: SSLInfo, current: Ice.Current) throws -> (returnValue: Swift.Bool, reason: Swift.String)
}

/// The Glacier2 permissions verifier. This is called through the process of establishing a session.
///
/// PermissionsVerifier Methods:
///
///  - checkPermissions: Check whether a user has permission to access the router.
extension PermissionsVerifier {
    public func _iceD_checkPermissions(_ request: Ice.IncomingRequest) -> PromiseKit.Promise<Ice.OutgoingResponse> {
        do {
            let istr = request.inputStream
            _ = try istr.startEncapsulation()
            let iceP_userId: Swift.String = try istr.read()
            let iceP_password: Swift.String = try istr.read()

            let (iceP_returnValue, iceP_reason) = try self.checkPermissions(userId: iceP_userId, password: iceP_password, current: request.current)
            let ostr = request.current.startReplyStream()
            ostr.startEncapsulation(encoding: request.current.encoding, format: .SlicedFormat)
            ostr.write(iceP_reason)
            ostr.write(iceP_returnValue)
            ostr.endEncapsulation()
            return PromiseKit.Promise.value(Ice.OutgoingResponse(ostr))
        } catch {
            return PromiseKit.Promise(error: error)
        }
    }
}

/// The SSL Glacier2 permissions verifier. This is called through the process of establishing a session.
///
/// SSLPermissionsVerifier Methods:
///
///  - authorize: Check whether a user has permission to access the router.
extension SSLPermissionsVerifier {
    public func _iceD_authorize(_ request: Ice.IncomingRequest) -> PromiseKit.Promise<Ice.OutgoingResponse> {
        do {
            let istr = request.inputStream
            _ = try istr.startEncapsulation()
            let iceP_info: SSLInfo = try istr.read()

            let (iceP_returnValue, iceP_reason) = try self.authorize(info: iceP_info, current: request.current)
            let ostr = request.current.startReplyStream()
            ostr.startEncapsulation(encoding: request.current.encoding, format: .SlicedFormat)
            ostr.write(iceP_reason)
            ostr.write(iceP_returnValue)
            ostr.endEncapsulation()
            return PromiseKit.Promise.value(Ice.OutgoingResponse(ostr))
        } catch {
            return PromiseKit.Promise(error: error)
        }
    }
}
