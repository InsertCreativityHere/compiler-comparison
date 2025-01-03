//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `TestAMD.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

import Foundation
import Ice

@_documentation(visibility: internal)
public class TestIntfUserException_TypeResolver: Ice.UserExceptionTypeResolver {
    public override func type() -> Ice.UserException.Type {
        return TestIntfUserException.self
    }
}

public extension Ice.ClassResolver {
    @objc static func Test_TestIntfUserException() -> Ice.UserExceptionTypeResolver {
        return TestIntfUserException_TypeResolver()
    }
}

open class TestIntfUserException: Ice.UserException, @unchecked Sendable {
    /// - Returns: The Slice type ID of this exception.
    open override class func ice_staticId() -> Swift.String { "::Test::TestIntfUserException" }

    open override func _iceWriteImpl(to ostr: Ice.OutputStream) {
        ostr.startSlice(typeId: TestIntfUserException.ice_staticId(), compactId: -1, last: true)
        ostr.endSlice()
    }

    open override func _iceReadImpl(from istr: Ice.InputStream) throws {
        _ = try istr.startSlice()
        try istr.endSlice()
    }
}

@_documentation(visibility: internal)
public class TestImpossibleException_TypeResolver: Ice.UserExceptionTypeResolver {
    public override func type() -> Ice.UserException.Type {
        return TestImpossibleException.self
    }
}

public extension Ice.ClassResolver {
    @objc static func Test_TestImpossibleException() -> Ice.UserExceptionTypeResolver {
        return TestImpossibleException_TypeResolver()
    }
}

open class TestImpossibleException: Ice.UserException, @unchecked Sendable {
    /// - Returns: The Slice type ID of this exception.
    open override class func ice_staticId() -> Swift.String { "::Test::TestImpossibleException" }

    open override func _iceWriteImpl(to ostr: Ice.OutputStream) {
        ostr.startSlice(typeId: TestImpossibleException.ice_staticId(), compactId: -1, last: true)
        ostr.endSlice()
    }

    open override func _iceReadImpl(from istr: Ice.InputStream) throws {
        _ = try istr.startSlice()
        try istr.endSlice()
    }
}

/// Traits for Slice interface `TestIntf`.
public struct TestIntfTraits: Ice.SliceTraits {
    public static let staticIds = ["::Ice::Object", "::Test::TestIntf"]
    public static let staticId = "::Test::TestIntf"
}

/// Traits for Slice interface `TestActivation`.
public struct TestActivationTraits: Ice.SliceTraits {
    public static let staticIds = ["::Ice::Object", "::Test::TestActivation"]
    public static let staticId = "::Test::TestActivation"
}

public protocol TestIntfPrx: Ice.ObjectPrx {}

private final class TestIntfPrxI: Ice.ObjectPrxI, TestIntfPrx {
    public override class func ice_staticId() -> Swift.String {
        return TestIntfTraits.staticId
    }
}

/// Makes a new proxy from a communicator and a proxy string.
///
/// - Parameters:
///    - communicator: The communicator of the new proxy.
///    - proxyString: The proxy string to parse.
///    - type: The type of the new proxy.
///
/// - Throws: `Ice.ParseException` if the proxy string is invalid.
///
/// - Returns: A new proxy with the requested type.
public func makeProxy(communicator: Ice.Communicator, proxyString: String, type: TestIntfPrx.Protocol) throws -> TestIntfPrx {
    try communicator.makeProxyImpl(proxyString) as TestIntfPrxI
}

/// Casts a proxy to the requested type. This call contacts the server and verifies that the object
/// implements this type.
///
/// It will throw a local exception if a communication error occurs. You can optionally supply a
/// facet name and a context map.
///
/// - Parameters:
///   - prx: The proxy to be cast.
///   - type: The proxy type to cast to.
///   - facet: The optional name of the desired facet.
///   - context: The optional context dictionary for the remote invocation.
///
/// - Returns: A proxy with the requested type or nil if the objet does not support this type.
///
/// - Throws: `Ice.LocalException` if a communication error occurs.
public func checkedCast(prx: Ice.ObjectPrx, type: TestIntfPrx.Protocol, facet: Swift.String? = nil, context: Ice.Context? = nil) async throws -> TestIntfPrx? {
    return try await TestIntfPrxI.checkedCast(prx: prx, facet: facet, context: context) as TestIntfPrxI?
}

/// Downcasts the given proxy to this type without contacting the remote server.
///
/// - Parameters:
///   - prx: The proxy to be cast.
///   - type: The proxy type to cast to.
///   - facet: The optional name of the desired facet.
///
/// - Returns: A proxy with the requested type.
public func uncheckedCast(prx: Ice.ObjectPrx, type: TestIntfPrx.Protocol, facet: Swift.String? = nil) -> TestIntfPrx {
    return TestIntfPrxI.uncheckedCast(prx: prx, facet: facet) as TestIntfPrxI
}

/// Returns the Slice type id of the interface associated with this proxy type.
///
/// - Parameter type:  The proxy type to retrieve the type id.
///
/// - Returns: The type id of the interface associated with this proxy type.
public func ice_staticId(_ type: TestIntfPrx.Protocol) -> Swift.String {
    return TestIntfTraits.staticId
}

/// Extension to `Ice.InputStream` class to support reading proxies of type
/// `TestIntfPrx`.
public extension Ice.InputStream {
    /// Extracts a proxy from the stream. The stream must have been initialized with a communicator.
    ///
    /// - Parameter type: The type of the proxy to be extracted.
    ///
    /// - Returns: The extracted proxy.
    func read(_ type: TestIntfPrx.Protocol) throws -> TestIntfPrx? {
        return try read() as TestIntfPrxI?
    }
    /// Extracts a proxy from the stream. The stream must have been initialized with a communicator.
    ///
    /// - Parameter tag:  The numeric tag associated with the value.
    /// - Parameter type: The type of the proxy to be extracted.
    ///
    /// - Returns: The extracted proxy.
    func read(tag: Swift.Int32, type: TestIntfPrx.Protocol) throws -> TestIntfPrx? {
        return try read(tag: tag) as TestIntfPrxI?
    }
}

public extension TestIntfPrx {
    func requestFailedException(context: Ice.Context? = nil) async throws -> Swift.Void {
        return try await _impl._invoke(operation: "requestFailedException",
                                       mode: .Normal,
                                       context: context)
    }

    func unknownUserException(context: Ice.Context? = nil) async throws -> Swift.Void {
        return try await _impl._invoke(operation: "unknownUserException",
                                       mode: .Normal,
                                       context: context)
    }

    func unknownLocalException(context: Ice.Context? = nil) async throws -> Swift.Void {
        return try await _impl._invoke(operation: "unknownLocalException",
                                       mode: .Normal,
                                       context: context)
    }

    func unknownException(context: Ice.Context? = nil) async throws -> Swift.Void {
        return try await _impl._invoke(operation: "unknownException",
                                       mode: .Normal,
                                       context: context)
    }

    func localException(context: Ice.Context? = nil) async throws -> Swift.Void {
        return try await _impl._invoke(operation: "localException",
                                       mode: .Normal,
                                       context: context)
    }

    func javaException(context: Ice.Context? = nil) async throws -> Swift.Void {
        return try await _impl._invoke(operation: "javaException",
                                       mode: .Normal,
                                       context: context)
    }

    func unknownExceptionWithServantException(context: Ice.Context? = nil) async throws -> Swift.Void {
        return try await _impl._invoke(operation: "unknownExceptionWithServantException",
                                       mode: .Normal,
                                       context: context)
    }

    func impossibleException(_ iceP_throw: Swift.Bool, context: Ice.Context? = nil) async throws -> Swift.String {
        return try await _impl._invoke(operation: "impossibleException",
                                       mode: .Normal,
                                       write: { ostr in
                                           ostr.write(iceP_throw)
                                       },
                                       read: { istr in
                                           let iceP_returnValue: Swift.String = try istr.read()
                                           return iceP_returnValue
                                       },
                                       userException:{ ex in
                                           do  {
                                               throw ex
                                           } catch let error as TestImpossibleException {
                                               throw error
                                           } catch is Ice.UserException {}
                                       },
                                       context: context)
    }

    func intfUserException(_ iceP_throw: Swift.Bool, context: Ice.Context? = nil) async throws -> Swift.String {
        return try await _impl._invoke(operation: "intfUserException",
                                       mode: .Normal,
                                       write: { ostr in
                                           ostr.write(iceP_throw)
                                       },
                                       read: { istr in
                                           let iceP_returnValue: Swift.String = try istr.read()
                                           return iceP_returnValue
                                       },
                                       userException:{ ex in
                                           do  {
                                               throw ex
                                           } catch let error as TestIntfUserException {
                                               throw error
                                           } catch let error as TestImpossibleException {
                                               throw error
                                           } catch is Ice.UserException {}
                                       },
                                       context: context)
    }

    func asyncResponse(context: Ice.Context? = nil) async throws -> Swift.Void {
        return try await _impl._invoke(operation: "asyncResponse",
                                       mode: .Normal,
                                       userException:{ ex in
                                           do  {
                                               throw ex
                                           } catch let error as TestIntfUserException {
                                               throw error
                                           } catch let error as TestImpossibleException {
                                               throw error
                                           } catch is Ice.UserException {}
                                       },
                                       context: context)
    }

    func asyncException(context: Ice.Context? = nil) async throws -> Swift.Void {
        return try await _impl._invoke(operation: "asyncException",
                                       mode: .Normal,
                                       userException:{ ex in
                                           do  {
                                               throw ex
                                           } catch let error as TestIntfUserException {
                                               throw error
                                           } catch let error as TestImpossibleException {
                                               throw error
                                           } catch is Ice.UserException {}
                                       },
                                       context: context)
    }

    func shutdown(context: Ice.Context? = nil) async throws -> Swift.Void {
        return try await _impl._invoke(operation: "shutdown",
                                       mode: .Normal,
                                       context: context)
    }
}

public protocol TestActivationPrx: Ice.ObjectPrx {}

private final class TestActivationPrxI: Ice.ObjectPrxI, TestActivationPrx {
    public override class func ice_staticId() -> Swift.String {
        return TestActivationTraits.staticId
    }
}

/// Makes a new proxy from a communicator and a proxy string.
///
/// - Parameters:
///    - communicator: The communicator of the new proxy.
///    - proxyString: The proxy string to parse.
///    - type: The type of the new proxy.
///
/// - Throws: `Ice.ParseException` if the proxy string is invalid.
///
/// - Returns: A new proxy with the requested type.
public func makeProxy(communicator: Ice.Communicator, proxyString: String, type: TestActivationPrx.Protocol) throws -> TestActivationPrx {
    try communicator.makeProxyImpl(proxyString) as TestActivationPrxI
}

/// Casts a proxy to the requested type. This call contacts the server and verifies that the object
/// implements this type.
///
/// It will throw a local exception if a communication error occurs. You can optionally supply a
/// facet name and a context map.
///
/// - Parameters:
///   - prx: The proxy to be cast.
///   - type: The proxy type to cast to.
///   - facet: The optional name of the desired facet.
///   - context: The optional context dictionary for the remote invocation.
///
/// - Returns: A proxy with the requested type or nil if the objet does not support this type.
///
/// - Throws: `Ice.LocalException` if a communication error occurs.
public func checkedCast(prx: Ice.ObjectPrx, type: TestActivationPrx.Protocol, facet: Swift.String? = nil, context: Ice.Context? = nil) async throws -> TestActivationPrx? {
    return try await TestActivationPrxI.checkedCast(prx: prx, facet: facet, context: context) as TestActivationPrxI?
}

/// Downcasts the given proxy to this type without contacting the remote server.
///
/// - Parameters:
///   - prx: The proxy to be cast.
///   - type: The proxy type to cast to.
///   - facet: The optional name of the desired facet.
///
/// - Returns: A proxy with the requested type.
public func uncheckedCast(prx: Ice.ObjectPrx, type: TestActivationPrx.Protocol, facet: Swift.String? = nil) -> TestActivationPrx {
    return TestActivationPrxI.uncheckedCast(prx: prx, facet: facet) as TestActivationPrxI
}

/// Returns the Slice type id of the interface associated with this proxy type.
///
/// - Parameter type:  The proxy type to retrieve the type id.
///
/// - Returns: The type id of the interface associated with this proxy type.
public func ice_staticId(_ type: TestActivationPrx.Protocol) -> Swift.String {
    return TestActivationTraits.staticId
}

/// Extension to `Ice.InputStream` class to support reading proxies of type
/// `TestActivationPrx`.
public extension Ice.InputStream {
    /// Extracts a proxy from the stream. The stream must have been initialized with a communicator.
    ///
    /// - Parameter type: The type of the proxy to be extracted.
    ///
    /// - Returns: The extracted proxy.
    func read(_ type: TestActivationPrx.Protocol) throws -> TestActivationPrx? {
        return try read() as TestActivationPrxI?
    }
    /// Extracts a proxy from the stream. The stream must have been initialized with a communicator.
    ///
    /// - Parameter tag:  The numeric tag associated with the value.
    /// - Parameter type: The type of the proxy to be extracted.
    ///
    /// - Returns: The extracted proxy.
    func read(tag: Swift.Int32, type: TestActivationPrx.Protocol) throws -> TestActivationPrx? {
        return try read(tag: tag) as TestActivationPrxI?
    }
}

public extension TestActivationPrx {
    func activateServantLocator(_ iceP_activate: Swift.Bool, context: Ice.Context? = nil) async throws -> Swift.Void {
        return try await _impl._invoke(operation: "activateServantLocator",
                                       mode: .Normal,
                                       write: { ostr in
                                           ostr.write(iceP_activate)
                                       },
                                       context: context)
    }
}


/// Dispatcher for `TestIntf` servants.
public struct TestIntfDisp: Ice.Dispatcher {
    public let servant: TestIntf
    private static let defaultObject = Ice.ObjectI<TestIntfTraits>()

    public init(_ servant: TestIntf) {
        self.servant = servant
    }

    public func dispatch(_ request: Ice.IncomingRequest) async throws -> Ice.OutgoingResponse {
        switch request.current.operation {
        case "asyncException":
            try await servant._iceD_asyncException(request)
        case "asyncResponse":
            try await servant._iceD_asyncResponse(request)
        case "ice_id":
            try await (servant as? Ice.Object ?? TestIntfDisp.defaultObject)._iceD_ice_id(request)
        case "ice_ids":
            try await (servant as? Ice.Object ?? TestIntfDisp.defaultObject)._iceD_ice_ids(request)
        case "ice_isA":
            try await (servant as? Ice.Object ?? TestIntfDisp.defaultObject)._iceD_ice_isA(request)
        case "ice_ping":
            try await (servant as? Ice.Object ?? TestIntfDisp.defaultObject)._iceD_ice_ping(request)
        case "impossibleException":
            try await servant._iceD_impossibleException(request)
        case "intfUserException":
            try await servant._iceD_intfUserException(request)
        case "javaException":
            try await servant._iceD_javaException(request)
        case "localException":
            try await servant._iceD_localException(request)
        case "requestFailedException":
            try await servant._iceD_requestFailedException(request)
        case "shutdown":
            try await servant._iceD_shutdown(request)
        case "unknownException":
            try await servant._iceD_unknownException(request)
        case "unknownExceptionWithServantException":
            try await servant._iceD_unknownExceptionWithServantException(request)
        case "unknownLocalException":
            try await servant._iceD_unknownLocalException(request)
        case "unknownUserException":
            try await servant._iceD_unknownUserException(request)
        default:
            throw Ice.OperationNotExistException()
        }
    }
}

public protocol TestIntf {
    func requestFailedException(current: Ice.Current) async throws

    func unknownUserException(current: Ice.Current) async throws

    func unknownLocalException(current: Ice.Current) async throws

    func unknownException(current: Ice.Current) async throws

    func localException(current: Ice.Current) async throws

    func javaException(current: Ice.Current) async throws

    func unknownExceptionWithServantException(current: Ice.Current) async throws

    func impossibleException(throw: Swift.Bool, current: Ice.Current) async throws -> Swift.String

    func intfUserException(throw: Swift.Bool, current: Ice.Current) async throws -> Swift.String

    func asyncResponse(current: Ice.Current) async throws

    func asyncException(current: Ice.Current) async throws

    func shutdown(current: Ice.Current) async throws
}


/// Dispatcher for `TestActivation` servants.
public struct TestActivationDisp: Ice.Dispatcher {
    public let servant: TestActivation
    private static let defaultObject = Ice.ObjectI<TestActivationTraits>()

    public init(_ servant: TestActivation) {
        self.servant = servant
    }

    public func dispatch(_ request: Ice.IncomingRequest) async throws -> Ice.OutgoingResponse {
        switch request.current.operation {
        case "activateServantLocator":
            try await servant._iceD_activateServantLocator(request)
        case "ice_id":
            try await (servant as? Ice.Object ?? TestActivationDisp.defaultObject)._iceD_ice_id(request)
        case "ice_ids":
            try await (servant as? Ice.Object ?? TestActivationDisp.defaultObject)._iceD_ice_ids(request)
        case "ice_isA":
            try await (servant as? Ice.Object ?? TestActivationDisp.defaultObject)._iceD_ice_isA(request)
        case "ice_ping":
            try await (servant as? Ice.Object ?? TestActivationDisp.defaultObject)._iceD_ice_ping(request)
        default:
            throw Ice.OperationNotExistException()
        }
    }
}

public protocol TestActivation {
    func activateServantLocator(activate: Swift.Bool, current: Ice.Current) async throws
}

extension TestIntf {
    public func _iceD_requestFailedException(_ request: Ice.IncomingRequest) async throws -> Ice.OutgoingResponse {
        
        _ = try request.inputStream.skipEmptyEncapsulation()
        try await self.requestFailedException(current: request.current)
        return request.current.makeEmptyOutgoingResponse()
    }

    public func _iceD_unknownUserException(_ request: Ice.IncomingRequest) async throws -> Ice.OutgoingResponse {
        
        _ = try request.inputStream.skipEmptyEncapsulation()
        try await self.unknownUserException(current: request.current)
        return request.current.makeEmptyOutgoingResponse()
    }

    public func _iceD_unknownLocalException(_ request: Ice.IncomingRequest) async throws -> Ice.OutgoingResponse {
        
        _ = try request.inputStream.skipEmptyEncapsulation()
        try await self.unknownLocalException(current: request.current)
        return request.current.makeEmptyOutgoingResponse()
    }

    public func _iceD_unknownException(_ request: Ice.IncomingRequest) async throws -> Ice.OutgoingResponse {
        
        _ = try request.inputStream.skipEmptyEncapsulation()
        try await self.unknownException(current: request.current)
        return request.current.makeEmptyOutgoingResponse()
    }

    public func _iceD_localException(_ request: Ice.IncomingRequest) async throws -> Ice.OutgoingResponse {
        
        _ = try request.inputStream.skipEmptyEncapsulation()
        try await self.localException(current: request.current)
        return request.current.makeEmptyOutgoingResponse()
    }

    public func _iceD_javaException(_ request: Ice.IncomingRequest) async throws -> Ice.OutgoingResponse {
        
        _ = try request.inputStream.skipEmptyEncapsulation()
        try await self.javaException(current: request.current)
        return request.current.makeEmptyOutgoingResponse()
    }

    public func _iceD_unknownExceptionWithServantException(_ request: Ice.IncomingRequest) async throws -> Ice.OutgoingResponse {
        
        _ = try request.inputStream.skipEmptyEncapsulation()
        try await self.unknownExceptionWithServantException(current: request.current)
        return request.current.makeEmptyOutgoingResponse()
    }

    public func _iceD_impossibleException(_ request: Ice.IncomingRequest) async throws -> Ice.OutgoingResponse {
        
        let istr = request.inputStream
        _ = try istr.startEncapsulation()
        let iceP_throw: Swift.Bool = try istr.read()
        let result = try await self.impossibleException(throw: iceP_throw, current: request.current)
        return request.current.makeOutgoingResponse(result, formatType: nil) { ostr, value in 
            let iceP_returnValue = value
            ostr.write(iceP_returnValue)
        }
    }

    public func _iceD_intfUserException(_ request: Ice.IncomingRequest) async throws -> Ice.OutgoingResponse {
        
        let istr = request.inputStream
        _ = try istr.startEncapsulation()
        let iceP_throw: Swift.Bool = try istr.read()
        let result = try await self.intfUserException(throw: iceP_throw, current: request.current)
        return request.current.makeOutgoingResponse(result, formatType: nil) { ostr, value in 
            let iceP_returnValue = value
            ostr.write(iceP_returnValue)
        }
    }

    public func _iceD_asyncResponse(_ request: Ice.IncomingRequest) async throws -> Ice.OutgoingResponse {
        
        _ = try request.inputStream.skipEmptyEncapsulation()
        try await self.asyncResponse(current: request.current)
        return request.current.makeEmptyOutgoingResponse()
    }

    public func _iceD_asyncException(_ request: Ice.IncomingRequest) async throws -> Ice.OutgoingResponse {
        
        _ = try request.inputStream.skipEmptyEncapsulation()
        try await self.asyncException(current: request.current)
        return request.current.makeEmptyOutgoingResponse()
    }

    public func _iceD_shutdown(_ request: Ice.IncomingRequest) async throws -> Ice.OutgoingResponse {
        
        _ = try request.inputStream.skipEmptyEncapsulation()
        try await self.shutdown(current: request.current)
        return request.current.makeEmptyOutgoingResponse()
    }
}

extension TestActivation {
    public func _iceD_activateServantLocator(_ request: Ice.IncomingRequest) async throws -> Ice.OutgoingResponse {
        
        let istr = request.inputStream
        _ = try istr.startEncapsulation()
        let iceP_activate: Swift.Bool = try istr.read()
        try await self.activateServantLocator(activate: iceP_activate, current: request.current)
        return request.current.makeEmptyOutgoingResponse()
    }
}
