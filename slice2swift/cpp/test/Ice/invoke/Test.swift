//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `Test.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

import Foundation
import Ice

@_documentation(visibility: internal)
public class MyException_TypeResolver: Ice.UserExceptionTypeResolver {
    public override func type() -> Ice.UserException.Type {
        return MyException.self
    }
}

public extension Ice.ClassResolver {
    @objc static func Test_MyException() -> Ice.UserExceptionTypeResolver {
        return MyException_TypeResolver()
    }
}

open class MyException: Ice.UserException, @unchecked Sendable {
    /// - Returns: The Slice type ID of this exception.
    open override class func ice_staticId() -> Swift.String { "::Test::MyException" }

    open override func _iceWriteImpl(to ostr: Ice.OutputStream) {
        ostr.startSlice(typeId: MyException.ice_staticId(), compactId: -1, last: true)
        ostr.endSlice()
    }

    open override func _iceReadImpl(from istr: Ice.InputStream) throws {
        _ = try istr.startSlice()
        try istr.endSlice()
    }
}

/// Traits for Slice interface `MyClass`.
public struct MyClassTraits: Ice.SliceTraits {
    public static let staticIds = ["::Ice::Object", "::Test::MyClass"]
    public static let staticId = "::Test::MyClass"
}

public protocol MyClassPrx: Ice.ObjectPrx {}

private final class MyClassPrxI: Ice.ObjectPrxI, MyClassPrx {
    public override class func ice_staticId() -> Swift.String {
        return MyClassTraits.staticId
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
public func makeProxy(communicator: Ice.Communicator, proxyString: String, type: MyClassPrx.Protocol) throws -> MyClassPrx {
    try communicator.makeProxyImpl(proxyString) as MyClassPrxI
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
public func checkedCast(prx: Ice.ObjectPrx, type: MyClassPrx.Protocol, facet: Swift.String? = nil, context: Ice.Context? = nil) async throws -> MyClassPrx? {
    return try await MyClassPrxI.checkedCast(prx: prx, facet: facet, context: context) as MyClassPrxI?
}

/// Downcasts the given proxy to this type without contacting the remote server.
///
/// - Parameters:
///   - prx: The proxy to be cast.
///   - type: The proxy type to cast to.
///   - facet: The optional name of the desired facet.
///
/// - Returns: A proxy with the requested type.
public func uncheckedCast(prx: Ice.ObjectPrx, type: MyClassPrx.Protocol, facet: Swift.String? = nil) -> MyClassPrx {
    return MyClassPrxI.uncheckedCast(prx: prx, facet: facet) as MyClassPrxI
}

/// Returns the Slice type id of the interface associated with this proxy type.
///
/// - Parameter type:  The proxy type to retrieve the type id.
///
/// - Returns: The type id of the interface associated with this proxy type.
public func ice_staticId(_ type: MyClassPrx.Protocol) -> Swift.String {
    return MyClassTraits.staticId
}

/// Extension to `Ice.InputStream` class to support reading proxies of type
/// `MyClassPrx`.
public extension Ice.InputStream {
    /// Extracts a proxy from the stream. The stream must have been initialized with a communicator.
    ///
    /// - Parameter type: The type of the proxy to be extracted.
    ///
    /// - Returns: The extracted proxy.
    func read(_ type: MyClassPrx.Protocol) throws -> MyClassPrx? {
        return try read() as MyClassPrxI?
    }
    /// Extracts a proxy from the stream. The stream must have been initialized with a communicator.
    ///
    /// - Parameter tag:  The numeric tag associated with the value.
    /// - Parameter type: The type of the proxy to be extracted.
    ///
    /// - Returns: The extracted proxy.
    func read(tag: Swift.Int32, type: MyClassPrx.Protocol) throws -> MyClassPrx? {
        return try read(tag: tag) as MyClassPrxI?
    }
}

public extension MyClassPrx {
    func opOneway(context: Ice.Context? = nil) async throws -> Swift.Void {
        return try await _impl._invoke(operation: "opOneway",
                                       mode: .Normal,
                                       context: context)
    }

    func opString(_ iceP_s1: Swift.String, context: Ice.Context? = nil) async throws -> (returnValue: Swift.String, s2: Swift.String) {
        return try await _impl._invoke(operation: "opString",
                                       mode: .Normal,
                                       write: { ostr in
                                           ostr.write(iceP_s1)
                                       },
                                       read: { istr in
                                           let iceP_s2: Swift.String = try istr.read()
                                           let iceP_returnValue: Swift.String = try istr.read()
                                           return (iceP_returnValue, iceP_s2)
                                       },
                                       context: context)
    }

    func opException(context: Ice.Context? = nil) async throws -> Swift.Void {
        return try await _impl._invoke(operation: "opException",
                                       mode: .Normal,
                                       userException:{ ex in
                                           do  {
                                               throw ex
                                           } catch let error as MyException {
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


/// Dispatcher for `MyClass` servants.
public struct MyClassDisp: Ice.Dispatcher {
    public let servant: MyClass
    private static let defaultObject = Ice.ObjectI<MyClassTraits>()

    public init(_ servant: MyClass) {
        self.servant = servant
    }

    public func dispatch(_ request: Ice.IncomingRequest) async throws -> Ice.OutgoingResponse {
        switch request.current.operation {
        case "ice_id":
            try await (servant as? Ice.Object ?? MyClassDisp.defaultObject)._iceD_ice_id(request)
        case "ice_ids":
            try await (servant as? Ice.Object ?? MyClassDisp.defaultObject)._iceD_ice_ids(request)
        case "ice_isA":
            try await (servant as? Ice.Object ?? MyClassDisp.defaultObject)._iceD_ice_isA(request)
        case "ice_ping":
            try await (servant as? Ice.Object ?? MyClassDisp.defaultObject)._iceD_ice_ping(request)
        case "opException":
            try await servant._iceD_opException(request)
        case "opOneway":
            try await servant._iceD_opOneway(request)
        case "opString":
            try await servant._iceD_opString(request)
        case "shutdown":
            try await servant._iceD_shutdown(request)
        default:
            throw Ice.OperationNotExistException()
        }
    }
}

public protocol MyClass {
    func opOneway(current: Ice.Current) async throws

    func opString(s1: Swift.String, current: Ice.Current) async throws -> (returnValue: Swift.String, s2: Swift.String)

    func opException(current: Ice.Current) async throws

    func shutdown(current: Ice.Current) async throws
}

extension MyClass {
    public func _iceD_opOneway(_ request: Ice.IncomingRequest) async throws -> Ice.OutgoingResponse {
        
        _ = try request.inputStream.skipEmptyEncapsulation()
        try await self.opOneway(current: request.current)
        return request.current.makeEmptyOutgoingResponse()
    }

    public func _iceD_opString(_ request: Ice.IncomingRequest) async throws -> Ice.OutgoingResponse {
        
        let istr = request.inputStream
        _ = try istr.startEncapsulation()
        let iceP_s1: Swift.String = try istr.read()
        let result = try await self.opString(s1: iceP_s1, current: request.current)
        return request.current.makeOutgoingResponse(result, formatType: nil) { ostr, value in 
            let (iceP_returnValue, iceP_s2) = value
            ostr.write(iceP_s2)
            ostr.write(iceP_returnValue)
        }
    }

    public func _iceD_opException(_ request: Ice.IncomingRequest) async throws -> Ice.OutgoingResponse {
        
        _ = try request.inputStream.skipEmptyEncapsulation()
        try await self.opException(current: request.current)
        return request.current.makeEmptyOutgoingResponse()
    }

    public func _iceD_shutdown(_ request: Ice.IncomingRequest) async throws -> Ice.OutgoingResponse {
        
        _ = try request.inputStream.skipEmptyEncapsulation()
        try await self.shutdown(current: request.current)
        return request.current.makeEmptyOutgoingResponse()
    }
}
