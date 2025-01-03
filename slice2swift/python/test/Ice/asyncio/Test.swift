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
public class TestException_TypeResolver: Ice.UserExceptionTypeResolver {
    public override func type() -> Ice.UserException.Type {
        return TestException.self
    }
}

public extension Ice.ClassResolver {
    @objc static func Test_TestException() -> Ice.UserExceptionTypeResolver {
        return TestException_TypeResolver()
    }
}

open class TestException: Ice.UserException, @unchecked Sendable {
    /// - Returns: The Slice type ID of this exception.
    open override class func ice_staticId() -> Swift.String { "::Test::TestException" }

    open override func _iceWriteImpl(to ostr: Ice.OutputStream) {
        ostr.startSlice(typeId: TestException.ice_staticId(), compactId: -1, last: true)
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
    func op(context: Ice.Context? = nil) async throws -> Swift.Int32 {
        return try await _impl._invoke(operation: "op",
                                       mode: .Normal,
                                       read: { istr in
                                           let iceP_returnValue: Swift.Int32 = try istr.read()
                                           return iceP_returnValue
                                       },
                                       context: context)
    }

    func callOpOn(_ iceP_proxy: TestIntfPrx?, context: Ice.Context? = nil) async throws -> Swift.Int32 {
        return try await _impl._invoke(operation: "callOpOn",
                                       mode: .Normal,
                                       write: { ostr in
                                           ostr.write(iceP_proxy)
                                       },
                                       read: { istr in
                                           let iceP_returnValue: Swift.Int32 = try istr.read()
                                           return iceP_returnValue
                                       },
                                       context: context)
    }

    func throwUserException1(context: Ice.Context? = nil) async throws -> Swift.Void {
        return try await _impl._invoke(operation: "throwUserException1",
                                       mode: .Normal,
                                       userException:{ ex in
                                           do  {
                                               throw ex
                                           } catch let error as TestException {
                                               throw error
                                           } catch is Ice.UserException {}
                                       },
                                       context: context)
    }

    func throwUserException2(context: Ice.Context? = nil) async throws -> Swift.Void {
        return try await _impl._invoke(operation: "throwUserException2",
                                       mode: .Normal,
                                       userException:{ ex in
                                           do  {
                                               throw ex
                                           } catch let error as TestException {
                                               throw error
                                           } catch is Ice.UserException {}
                                       },
                                       context: context)
    }

    func throwUnhandledException1(context: Ice.Context? = nil) async throws -> Swift.Void {
        return try await _impl._invoke(operation: "throwUnhandledException1",
                                       mode: .Normal,
                                       context: context)
    }

    func throwUnhandledException2(context: Ice.Context? = nil) async throws -> Swift.Void {
        return try await _impl._invoke(operation: "throwUnhandledException2",
                                       mode: .Normal,
                                       context: context)
    }

    func sleep(_ iceP_ms: Swift.Int32, context: Ice.Context? = nil) async throws -> Swift.Void {
        return try await _impl._invoke(operation: "sleep",
                                       mode: .Normal,
                                       write: { ostr in
                                           ostr.write(iceP_ms)
                                       },
                                       context: context)
    }

    func shutdown(context: Ice.Context? = nil) async throws -> Swift.Void {
        return try await _impl._invoke(operation: "shutdown",
                                       mode: .Normal,
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
        case "callOpOn":
            try await servant._iceD_callOpOn(request)
        case "ice_id":
            try await (servant as? Ice.Object ?? TestIntfDisp.defaultObject)._iceD_ice_id(request)
        case "ice_ids":
            try await (servant as? Ice.Object ?? TestIntfDisp.defaultObject)._iceD_ice_ids(request)
        case "ice_isA":
            try await (servant as? Ice.Object ?? TestIntfDisp.defaultObject)._iceD_ice_isA(request)
        case "ice_ping":
            try await (servant as? Ice.Object ?? TestIntfDisp.defaultObject)._iceD_ice_ping(request)
        case "op":
            try await servant._iceD_op(request)
        case "shutdown":
            try await servant._iceD_shutdown(request)
        case "sleep":
            try await servant._iceD_sleep(request)
        case "throwUnhandledException1":
            try await servant._iceD_throwUnhandledException1(request)
        case "throwUnhandledException2":
            try await servant._iceD_throwUnhandledException2(request)
        case "throwUserException1":
            try await servant._iceD_throwUserException1(request)
        case "throwUserException2":
            try await servant._iceD_throwUserException2(request)
        default:
            throw Ice.OperationNotExistException()
        }
    }
}

public protocol TestIntf {
    func op(current: Ice.Current) async throws -> Swift.Int32

    func callOpOn(proxy: TestIntfPrx?, current: Ice.Current) async throws -> Swift.Int32

    func throwUserException1(current: Ice.Current) async throws

    func throwUserException2(current: Ice.Current) async throws

    func throwUnhandledException1(current: Ice.Current) async throws

    func throwUnhandledException2(current: Ice.Current) async throws

    func sleep(ms: Swift.Int32, current: Ice.Current) async throws

    func shutdown(current: Ice.Current) async throws
}

extension TestIntf {
    public func _iceD_op(_ request: Ice.IncomingRequest) async throws -> Ice.OutgoingResponse {
        
        _ = try request.inputStream.skipEmptyEncapsulation()
        let result = try await self.op(current: request.current)
        return request.current.makeOutgoingResponse(result, formatType: nil) { ostr, value in 
            let iceP_returnValue = value
            ostr.write(iceP_returnValue)
        }
    }

    public func _iceD_callOpOn(_ request: Ice.IncomingRequest) async throws -> Ice.OutgoingResponse {
        
        let istr = request.inputStream
        _ = try istr.startEncapsulation()
        let iceP_proxy: TestIntfPrx? = try istr.read(TestIntfPrx.self)
        let result = try await self.callOpOn(proxy: iceP_proxy, current: request.current)
        return request.current.makeOutgoingResponse(result, formatType: nil) { ostr, value in 
            let iceP_returnValue = value
            ostr.write(iceP_returnValue)
        }
    }

    public func _iceD_throwUserException1(_ request: Ice.IncomingRequest) async throws -> Ice.OutgoingResponse {
        
        _ = try request.inputStream.skipEmptyEncapsulation()
        try await self.throwUserException1(current: request.current)
        return request.current.makeEmptyOutgoingResponse()
    }

    public func _iceD_throwUserException2(_ request: Ice.IncomingRequest) async throws -> Ice.OutgoingResponse {
        
        _ = try request.inputStream.skipEmptyEncapsulation()
        try await self.throwUserException2(current: request.current)
        return request.current.makeEmptyOutgoingResponse()
    }

    public func _iceD_throwUnhandledException1(_ request: Ice.IncomingRequest) async throws -> Ice.OutgoingResponse {
        
        _ = try request.inputStream.skipEmptyEncapsulation()
        try await self.throwUnhandledException1(current: request.current)
        return request.current.makeEmptyOutgoingResponse()
    }

    public func _iceD_throwUnhandledException2(_ request: Ice.IncomingRequest) async throws -> Ice.OutgoingResponse {
        
        _ = try request.inputStream.skipEmptyEncapsulation()
        try await self.throwUnhandledException2(current: request.current)
        return request.current.makeEmptyOutgoingResponse()
    }

    public func _iceD_sleep(_ request: Ice.IncomingRequest) async throws -> Ice.OutgoingResponse {
        
        let istr = request.inputStream
        _ = try istr.startEncapsulation()
        let iceP_ms: Swift.Int32 = try istr.read()
        try await self.sleep(ms: iceP_ms, current: request.current)
        return request.current.makeEmptyOutgoingResponse()
    }

    public func _iceD_shutdown(_ request: Ice.IncomingRequest) async throws -> Ice.OutgoingResponse {
        
        _ = try request.inputStream.skipEmptyEncapsulation()
        try await self.shutdown(current: request.current)
        return request.current.makeEmptyOutgoingResponse()
    }
}
