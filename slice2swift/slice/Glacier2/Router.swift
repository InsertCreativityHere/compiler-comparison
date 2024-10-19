//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `Router.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

import Foundation
import Ice

/// :nodoc:
public class SessionNotExistException_TypeResolver: Ice.UserExceptionTypeResolver {
    public override func type() -> Ice.UserException.Type {
        return SessionNotExistException.self
    }
}

public extension Ice.ClassResolver {
    @objc static func Glacier2_SessionNotExistException() -> Ice.UserExceptionTypeResolver {
        return SessionNotExistException_TypeResolver()
    }
}

/// This exception is raised if a client tries to destroy a session with a router, but no session exists for the
/// client.
open class SessionNotExistException: Ice.UserException, @unchecked Sendable {
    /// Returns the Slice type ID of this exception.
    ///
    /// - returns: `Swift.String` - the Slice type ID of this exception.
    open override class func ice_staticId() -> Swift.String { "::Glacier2::SessionNotExistException" }

    open override func _iceWriteImpl(to ostr: Ice.OutputStream) {
        ostr.startSlice(typeId: SessionNotExistException.ice_staticId(), compactId: -1, last: true)
        ostr.endSlice()
    }

    open override func _iceReadImpl(from istr: Ice.InputStream) throws {
        _ = try istr.startSlice()
        try istr.endSlice()
    }
}

/// Traits for Slice interface`Router`.
public struct RouterTraits: Ice.SliceTraits {
    public static let staticIds = ["::Glacier2::Router", "::Ice::Object", "::Ice::Router"]
    public static let staticId = "::Glacier2::Router"
}

/// The Glacier2 specialization of the Ice::Router interface.
///
/// RouterPrx Methods:
///
///  - getCategoryForClient: This category must be used in the identities of all of the client's callback objects.
///
///  - getCategoryForClientAsync: This category must be used in the identities of all of the client's callback objects.
///
///  - createSession: Create a per-client session with the router.
///
///  - createSessionAsync: Create a per-client session with the router.
///
///  - createSessionFromSecureConnection: Create a per-client session with the router.
///
///  - createSessionFromSecureConnectionAsync: Create a per-client session with the router.
///
///  - refreshSession: Keep the session with this router alive.
///
///  - refreshSessionAsync: Keep the session with this router alive.
///
///  - destroySession: Destroy the calling client's session with this router.
///
///  - destroySessionAsync: Destroy the calling client's session with this router.
///
///  - getSessionTimeout: Get the idle timeout used by the server-side of the connection.
///
///  - getSessionTimeoutAsync: Get the idle timeout used by the server-side of the connection.
///
///  - getACMTimeout: Get the idle timeout used by the server-side of the connection.
///
///  - getACMTimeoutAsync: Get the idle timeout used by the server-side of the connection.
public protocol RouterPrx: Ice.RouterPrx {}

private final class RouterPrxI: Ice.ObjectPrxI, RouterPrx {
    public override class func ice_staticId() -> Swift.String {
        return RouterTraits.staticId
    }
}

/// Makes a new proxy from a communicator and a proxy string.
///
/// - Parameters:
///    - communicator: The communicator of the new proxy.
///    - proxyString: The proxy string to parse.
///    - type: The type of the new proxy.
/// - Throws: `Ice.ParseException` if the proxy string is invalid.
/// - Returns: A new proxy with the requested type.
public func makeProxy(communicator: Ice.Communicator, proxyString: String, type: RouterPrx.Protocol) throws -> RouterPrx {
    try communicator.makeProxyImpl(proxyString) as RouterPrxI
}

/// Casts a proxy to the requested type. This call contacts the server and verifies that the object
/// implements this type.
///
/// It will throw a local exception if a communication error occurs. You can optionally supply a
/// facet name and a context map.
///
/// - parameter prx: `Ice.ObjectPrx` - The proxy to be cast.
///
/// - parameter type: `RouterPrx.Protocol` - The proxy type to cast to.
///
/// - parameter facet: `String` - The optional name of the desired facet.
///
/// - parameter context: `Ice.Context` The optional context dictionary for the remote invocation.
///
/// - returns: `RouterPrx` - A proxy with the requested type or nil if the objet does not
///   support this type.
///
/// - throws: `Ice.LocalException` if a communication error occurs.
public func checkedCast(prx: Ice.ObjectPrx, type: RouterPrx.Protocol, facet: Swift.String? = nil, context: Ice.Context? = nil) async throws -> RouterPrx? {
    return try await RouterPrxI.checkedCast(prx: prx, facet: facet, context: context) as RouterPrxI?
}

/// Downcasts the given proxy to this type without contacting the remote server.
///
/// - parameter prx: `Ice.ObjectPrx` The proxy to be cast.
///
/// - parameter type: `RouterPrx.Protocol` - The proxy type to cast to.
///
/// - parameter facet: `String` - The optional name of the desired facet
///
/// - returns: `RouterPrx` - A proxy with the requested type
public func uncheckedCast(prx: Ice.ObjectPrx, type: RouterPrx.Protocol, facet: Swift.String? = nil) -> RouterPrx {
    return RouterPrxI.uncheckedCast(prx: prx, facet: facet) as RouterPrxI
}

/// Returns the Slice type id of the interface associated with this proxy type.
///
/// parameter type: `RouterPrx.Protocol` -  The proxy type to retrieve the type id.
///
/// returns: `String` - The type id of the interface associated with this proxy type.
public func ice_staticId(_ type: RouterPrx.Protocol) -> Swift.String {
    return RouterTraits.staticId
}

/// Extension to `Ice.InputStream` class to support reading proxy of type
/// `RouterPrx`.
public extension Ice.InputStream {
    /// Extracts a proxy from the stream. The stream must have been initialized with a communicator.
    ///
    /// - parameter type: `RouterPrx.Protocol` - The type of the proxy to be extracted.
    ///
    /// - returns: `RouterPrx?` - The extracted proxy
    func read(_ type: RouterPrx.Protocol) throws -> RouterPrx? {
        return try read() as RouterPrxI?
    }
    /// Extracts a proxy from the stream. The stream must have been initialized with a communicator.
    ///
    /// - parameter tag: `Int32` - The numeric tag associated with the value.
    ///
    /// - parameter type: `RouterPrx.Protocol` - The type of the proxy to be extracted.
    ///
    /// - returns: `RouterPrx` - The extracted proxy.
    func read(tag: Swift.Int32, type: RouterPrx.Protocol) throws -> RouterPrx? {
        return try read(tag: tag) as RouterPrxI?
    }
}

/// The Glacier2 specialization of the Ice::Router interface.
///
/// RouterPrx Methods:
///
///  - getCategoryForClient: This category must be used in the identities of all of the client's callback objects.
///
///  - getCategoryForClientAsync: This category must be used in the identities of all of the client's callback objects.
///
///  - createSession: Create a per-client session with the router.
///
///  - createSessionAsync: Create a per-client session with the router.
///
///  - createSessionFromSecureConnection: Create a per-client session with the router.
///
///  - createSessionFromSecureConnectionAsync: Create a per-client session with the router.
///
///  - refreshSession: Keep the session with this router alive.
///
///  - refreshSessionAsync: Keep the session with this router alive.
///
///  - destroySession: Destroy the calling client's session with this router.
///
///  - destroySessionAsync: Destroy the calling client's session with this router.
///
///  - getSessionTimeout: Get the idle timeout used by the server-side of the connection.
///
///  - getSessionTimeoutAsync: Get the idle timeout used by the server-side of the connection.
///
///  - getACMTimeout: Get the idle timeout used by the server-side of the connection.
///
///  - getACMTimeoutAsync: Get the idle timeout used by the server-side of the connection.
public extension RouterPrx {
    /// This category must be used in the identities of all of the client's callback objects. This is necessary in
    /// order for the router to forward callback requests to the intended client. If the Glacier2 server endpoints
    /// are not set, the returned category is an empty string.
    ///
    /// - parameter context: `Ice.Context` - Optional request context.
    ///
    /// - returns: `Swift.String` - The category.
    func getCategoryForClient(context: Ice.Context? = nil) async throws -> Swift.String {
        return try await _impl._invoke(operation: "getCategoryForClient",
                                       mode: .Idempotent,
                                       read: { istr in
                                           let iceP_returnValue: Swift.String = try istr.read()
                                           return iceP_returnValue
                                       },
                                       context: context)
    }

    /// Create a per-client session with the router. If a SessionManager has been installed, a proxy to a
    /// Session object is returned to the client. Otherwise, null is returned and only an internal session
    /// (i.e., not visible to the client) is created.
    /// If a session proxy is returned, it must be configured to route through the router that created it. This will
    /// happen automatically if the router is configured as the client's default router at the time the session
    /// proxy is created in the client process, otherwise the client must configure the session proxy explicitly.
    ///
    /// - parameter userId: `Swift.String` The user id for which to check the password.
    ///
    /// - parameter password: `Swift.String` The password for the given user id.
    ///
    /// - parameter context: `Ice.Context` - Optional request context.
    ///
    /// - returns: `SessionPrx?` - A proxy for the newly created session, or null if no SessionManager has been installed.
    ///
    /// - throws:
    ///
    ///   - CannotCreateSessionException - Raised if the session cannot be created.
    ///
    ///   - PermissionDeniedException - Raised if the password for the given user id is not correct, or if the
    ///     user is not allowed access.
    func createSession(userId iceP_userId: Swift.String, password iceP_password: Swift.String, context: Ice.Context? = nil) async throws -> SessionPrx? {
        return try await _impl._invoke(operation: "createSession",
                                       mode: .Normal,
                                       write: { ostr in
                                           ostr.write(iceP_userId)
                                           ostr.write(iceP_password)
                                       },
                                       read: { istr in
                                           let iceP_returnValue: SessionPrx? = try istr.read(SessionPrx.self)
                                           return iceP_returnValue
                                       },
                                       userException:{ ex in
                                           do  {
                                               throw ex
                                           } catch let error as CannotCreateSessionException {
                                               throw error
                                           } catch let error as PermissionDeniedException {
                                               throw error
                                           } catch is Ice.UserException {}
                                       },
                                       context: context)
    }

    /// Create a per-client session with the router. The user is authenticated through the SSL certificates that
    /// have been associated with the connection. If a SessionManager has been installed, a proxy to a
    /// Session object is returned to the client. Otherwise, null is returned and only an internal session
    /// (i.e., not visible to the client) is created.
    /// If a session proxy is returned, it must be configured to route through the router that created it. This will
    /// happen automatically if the router is configured as the client's default router at the time the session
    /// proxy is created in the client process, otherwise the client must configure the session proxy explicitly.
    ///
    /// - parameter context: `Ice.Context` - Optional request context.
    ///
    /// - returns: `SessionPrx?` - A proxy for the newly created session, or null if no SessionManager has been installed.
    ///
    /// - throws:
    ///
    ///   - CannotCreateSessionException - Raised if the session cannot be created.
    ///
    ///   - PermissionDeniedException - Raised if the user cannot be authenticated or if the user is not allowed
    ///     access.
    func createSessionFromSecureConnection(context: Ice.Context? = nil) async throws -> SessionPrx? {
        return try await _impl._invoke(operation: "createSessionFromSecureConnection",
                                       mode: .Normal,
                                       read: { istr in
                                           let iceP_returnValue: SessionPrx? = try istr.read(SessionPrx.self)
                                           return iceP_returnValue
                                       },
                                       userException:{ ex in
                                           do  {
                                               throw ex
                                           } catch let error as CannotCreateSessionException {
                                               throw error
                                           } catch let error as PermissionDeniedException {
                                               throw error
                                           } catch is Ice.UserException {}
                                       },
                                       context: context)
    }

    /// Keep the session with this router alive. This operation is provided for backward compatibility with Ice 3.7
    /// and earlier and does nothing in newer versions of Glacier2.
    ///
    /// - parameter context: `Ice.Context` - Optional request context.
    ///
    /// - throws:
    ///
    ///   - SessionNotExistException - Raised if no session exists for the caller (client).
    func refreshSession(context: Ice.Context? = nil) async throws -> Swift.Void {
        return try await _impl._invoke(operation: "refreshSession",
                                       mode: .Normal,
                                       userException:{ ex in
                                           do  {
                                               throw ex
                                           } catch let error as SessionNotExistException {
                                               throw error
                                           } catch is Ice.UserException {}
                                       },
                                       context: context)
    }

    /// Destroy the calling client's session with this router.
    ///
    /// - parameter context: `Ice.Context` - Optional request context.
    ///
    /// - throws:
    ///
    ///   - SessionNotExistException - Raised if no session exists for the calling client.
    func destroySession(context: Ice.Context? = nil) async throws -> Swift.Void {
        return try await _impl._invoke(operation: "destroySession",
                                       mode: .Normal,
                                       userException:{ ex in
                                           do  {
                                               throw ex
                                           } catch let error as SessionNotExistException {
                                               throw error
                                           } catch is Ice.UserException {}
                                       },
                                       context: context)
    }

    /// Get the idle timeout used by the server-side of the connection.
    ///
    /// - parameter context: `Ice.Context` - Optional request context.
    ///
    /// - returns: `Swift.Int64` - The idle timeout (in seconds).
    func getSessionTimeout(context: Ice.Context? = nil) async throws -> Swift.Int64 {
        return try await _impl._invoke(operation: "getSessionTimeout",
                                       mode: .Idempotent,
                                       read: { istr in
                                           let iceP_returnValue: Swift.Int64 = try istr.read()
                                           return iceP_returnValue
                                       },
                                       context: context)
    }

    /// Get the idle timeout used by the server-side of the connection.
    ///
    /// - parameter context: `Ice.Context` - Optional request context.
    ///
    /// - returns: `Swift.Int32` - The idle timeout (in seconds).
    func getACMTimeout(context: Ice.Context? = nil) async throws -> Swift.Int32 {
        return try await _impl._invoke(operation: "getACMTimeout",
                                       mode: .Idempotent,
                                       read: { istr in
                                           let iceP_returnValue: Swift.Int32 = try istr.read()
                                           return iceP_returnValue
                                       },
                                       context: context)
    }
}


/// Dispatcher for `Router` servants.
public struct RouterDisp: Ice.Dispatcher {
    public let servant: Router
    private static let defaultObject = Ice.ObjectI<RouterTraits>()

    public init(_ servant: Router) {
        self.servant = servant
    }

    public func dispatch(_ request: Ice.IncomingRequest) async throws -> Ice.OutgoingResponse {
        switch request.current.operation {
        case "addProxies":
            try await servant._iceD_addProxies(request)
        case "createSession":
            try await servant._iceD_createSession(request)
        case "createSessionFromSecureConnection":
            try await servant._iceD_createSessionFromSecureConnection(request)
        case "destroySession":
            try await servant._iceD_destroySession(request)
        case "getACMTimeout":
            try await servant._iceD_getACMTimeout(request)
        case "getCategoryForClient":
            try await servant._iceD_getCategoryForClient(request)
        case "getClientProxy":
            try await servant._iceD_getClientProxy(request)
        case "getServerProxy":
            try await servant._iceD_getServerProxy(request)
        case "getSessionTimeout":
            try await servant._iceD_getSessionTimeout(request)
        case "ice_id":
            try await (servant as? Ice.Object ?? RouterDisp.defaultObject)._iceD_ice_id(request)
        case "ice_ids":
            try await (servant as? Ice.Object ?? RouterDisp.defaultObject)._iceD_ice_ids(request)
        case "ice_isA":
            try await (servant as? Ice.Object ?? RouterDisp.defaultObject)._iceD_ice_isA(request)
        case "ice_ping":
            try await (servant as? Ice.Object ?? RouterDisp.defaultObject)._iceD_ice_ping(request)
        case "refreshSession":
            try await servant._iceD_refreshSession(request)
        default:
            throw Ice.OperationNotExistException()
        }
    }
}

/// The Glacier2 specialization of the Ice::Router interface.
public protocol Router: Ice.Router {
    /// This category must be used in the identities of all of the client's callback objects. This is necessary in
    /// order for the router to forward callback requests to the intended client. If the Glacier2 server endpoints
    /// are not set, the returned category is an empty string.
    ///
    /// - parameter current: `Ice.Current` - The Current object for the dispatch.
    ///
    /// - returns: `Swift.String` - The category.
    func getCategoryForClient(current: Ice.Current) async throws -> Swift.String

    /// Create a per-client session with the router. If a SessionManager has been installed, a proxy to a
    /// Session object is returned to the client. Otherwise, null is returned and only an internal session
    /// (i.e., not visible to the client) is created.
    /// If a session proxy is returned, it must be configured to route through the router that created it. This will
    /// happen automatically if the router is configured as the client's default router at the time the session
    /// proxy is created in the client process, otherwise the client must configure the session proxy explicitly.
    ///
    /// - parameter userId: `Swift.String` The user id for which to check the password.
    ///
    /// - parameter password: `Swift.String` The password for the given user id.
    ///
    /// - parameter current: `Ice.Current` - The Current object for the dispatch.
    ///
    /// - returns: `SessionPrx?` - A proxy for the newly created session, or null if no SessionManager has been installed.
    ///
    /// - throws:
    ///
    ///   - CannotCreateSessionException - Raised if the session cannot be created.
    ///
    ///   - PermissionDeniedException - Raised if the password for the given user id is not correct, or if the
    ///     user is not allowed access.
    func createSession(userId: Swift.String, password: Swift.String, current: Ice.Current) async throws -> SessionPrx?

    /// Create a per-client session with the router. The user is authenticated through the SSL certificates that
    /// have been associated with the connection. If a SessionManager has been installed, a proxy to a
    /// Session object is returned to the client. Otherwise, null is returned and only an internal session
    /// (i.e., not visible to the client) is created.
    /// If a session proxy is returned, it must be configured to route through the router that created it. This will
    /// happen automatically if the router is configured as the client's default router at the time the session
    /// proxy is created in the client process, otherwise the client must configure the session proxy explicitly.
    ///
    /// - parameter current: `Ice.Current` - The Current object for the dispatch.
    ///
    /// - returns: `SessionPrx?` - A proxy for the newly created session, or null if no SessionManager has been installed.
    ///
    /// - throws:
    ///
    ///   - CannotCreateSessionException - Raised if the session cannot be created.
    ///
    ///   - PermissionDeniedException - Raised if the user cannot be authenticated or if the user is not allowed
    ///     access.
    func createSessionFromSecureConnection(current: Ice.Current) async throws -> SessionPrx?

    /// Keep the session with this router alive. This operation is provided for backward compatibility with Ice 3.7
    /// and earlier and does nothing in newer versions of Glacier2.
    ///
    /// - parameter current: `Ice.Current` - The Current object for the dispatch.
    ///
    /// - throws:
    ///
    ///   - SessionNotExistException - Raised if no session exists for the caller (client).
    func refreshSession(current: Ice.Current) async throws

    /// Destroy the calling client's session with this router.
    ///
    /// - parameter current: `Ice.Current` - The Current object for the dispatch.
    ///
    /// - throws:
    ///
    ///   - SessionNotExistException - Raised if no session exists for the calling client.
    func destroySession(current: Ice.Current) async throws

    /// Get the idle timeout used by the server-side of the connection.
    ///
    /// - parameter current: `Ice.Current` - The Current object for the dispatch.
    ///
    /// - returns: `Swift.Int64` - The idle timeout (in seconds).
    func getSessionTimeout(current: Ice.Current) async throws -> Swift.Int64

    /// Get the idle timeout used by the server-side of the connection.
    ///
    /// - parameter current: `Ice.Current` - The Current object for the dispatch.
    ///
    /// - returns: `Swift.Int32` - The idle timeout (in seconds).
    func getACMTimeout(current: Ice.Current) async throws -> Swift.Int32
}

/// The Glacier2 specialization of the Ice::Router interface.
///
/// Router Methods:
///
///  - getCategoryForClient: This category must be used in the identities of all of the client's callback objects.
///
///  - createSession: Create a per-client session with the router.
///
///  - createSessionFromSecureConnection: Create a per-client session with the router.
///
///  - refreshSession: Keep the session with this router alive.
///
///  - destroySession: Destroy the calling client's session with this router.
///
///  - getSessionTimeout: Get the idle timeout used by the server-side of the connection.
///
///  - getACMTimeout: Get the idle timeout used by the server-side of the connection.
extension Router {
    public func _iceD_getCategoryForClient(_ request: Ice.IncomingRequest) async throws -> Ice.OutgoingResponse {
        
        _ = try request.inputStream.skipEmptyEncapsulation()
        let result = try await self.getCategoryForClient(current: request.current)
        return request.current.makeOutgoingResponse(result, formatType: nil) { ostr, value in 
            let iceP_returnValue = value
            ostr.write(iceP_returnValue)
        }
    }

    public func _iceD_createSession(_ request: Ice.IncomingRequest) async throws -> Ice.OutgoingResponse {
        
        let istr = request.inputStream
        _ = try istr.startEncapsulation()
        let iceP_userId: Swift.String = try istr.read()
        let iceP_password: Swift.String = try istr.read()
        let result = try await self.createSession(userId: iceP_userId, password: iceP_password, current: request.current)
        return request.current.makeOutgoingResponse(result, formatType: nil) { ostr, value in 
            let iceP_returnValue = value
            ostr.write(iceP_returnValue)
        }
    }

    public func _iceD_createSessionFromSecureConnection(_ request: Ice.IncomingRequest) async throws -> Ice.OutgoingResponse {
        
        _ = try request.inputStream.skipEmptyEncapsulation()
        let result = try await self.createSessionFromSecureConnection(current: request.current)
        return request.current.makeOutgoingResponse(result, formatType: nil) { ostr, value in 
            let iceP_returnValue = value
            ostr.write(iceP_returnValue)
        }
    }

    public func _iceD_refreshSession(_ request: Ice.IncomingRequest) async throws -> Ice.OutgoingResponse {
        
        _ = try request.inputStream.skipEmptyEncapsulation()
        try await self.refreshSession(current: request.current)
        return request.current.makeEmptyOutgoingResponse()
    }

    public func _iceD_destroySession(_ request: Ice.IncomingRequest) async throws -> Ice.OutgoingResponse {
        
        _ = try request.inputStream.skipEmptyEncapsulation()
        try await self.destroySession(current: request.current)
        return request.current.makeEmptyOutgoingResponse()
    }

    public func _iceD_getSessionTimeout(_ request: Ice.IncomingRequest) async throws -> Ice.OutgoingResponse {
        
        _ = try request.inputStream.skipEmptyEncapsulation()
        let result = try await self.getSessionTimeout(current: request.current)
        return request.current.makeOutgoingResponse(result, formatType: nil) { ostr, value in 
            let iceP_returnValue = value
            ostr.write(iceP_returnValue)
        }
    }

    public func _iceD_getACMTimeout(_ request: Ice.IncomingRequest) async throws -> Ice.OutgoingResponse {
        
        _ = try request.inputStream.skipEmptyEncapsulation()
        let result = try await self.getACMTimeout(current: request.current)
        return request.current.makeOutgoingResponse(result, formatType: nil) { ostr, value in 
            let iceP_returnValue = value
            ostr.write(iceP_returnValue)
        }
    }
}
