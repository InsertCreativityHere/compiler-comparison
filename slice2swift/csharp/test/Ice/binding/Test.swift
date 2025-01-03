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

/// Traits for Slice interface `TestIntf`.
public struct TestIntfTraits: Ice.SliceTraits {
    public static let staticIds = ["::Ice::Object", "::Test::TestIntf"]
    public static let staticId = "::Test::TestIntf"
}

/// Traits for Slice interface `RemoteObjectAdapter`.
public struct RemoteObjectAdapterTraits: Ice.SliceTraits {
    public static let staticIds = ["::Ice::Object", "::Test::RemoteObjectAdapter"]
    public static let staticId = "::Test::RemoteObjectAdapter"
}

/// Traits for Slice interface `RemoteCommunicator`.
public struct RemoteCommunicatorTraits: Ice.SliceTraits {
    public static let staticIds = ["::Ice::Object", "::Test::RemoteCommunicator"]
    public static let staticId = "::Test::RemoteCommunicator"
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
    func getAdapterName(context: Ice.Context? = nil) async throws -> Swift.String {
        return try await _impl._invoke(operation: "getAdapterName",
                                       mode: .Normal,
                                       read: { istr in
                                           let iceP_returnValue: Swift.String = try istr.read()
                                           return iceP_returnValue
                                       },
                                       context: context)
    }
}

public protocol RemoteObjectAdapterPrx: Ice.ObjectPrx {}

private final class RemoteObjectAdapterPrxI: Ice.ObjectPrxI, RemoteObjectAdapterPrx {
    public override class func ice_staticId() -> Swift.String {
        return RemoteObjectAdapterTraits.staticId
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
public func makeProxy(communicator: Ice.Communicator, proxyString: String, type: RemoteObjectAdapterPrx.Protocol) throws -> RemoteObjectAdapterPrx {
    try communicator.makeProxyImpl(proxyString) as RemoteObjectAdapterPrxI
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
public func checkedCast(prx: Ice.ObjectPrx, type: RemoteObjectAdapterPrx.Protocol, facet: Swift.String? = nil, context: Ice.Context? = nil) async throws -> RemoteObjectAdapterPrx? {
    return try await RemoteObjectAdapterPrxI.checkedCast(prx: prx, facet: facet, context: context) as RemoteObjectAdapterPrxI?
}

/// Downcasts the given proxy to this type without contacting the remote server.
///
/// - Parameters:
///   - prx: The proxy to be cast.
///   - type: The proxy type to cast to.
///   - facet: The optional name of the desired facet.
///
/// - Returns: A proxy with the requested type.
public func uncheckedCast(prx: Ice.ObjectPrx, type: RemoteObjectAdapterPrx.Protocol, facet: Swift.String? = nil) -> RemoteObjectAdapterPrx {
    return RemoteObjectAdapterPrxI.uncheckedCast(prx: prx, facet: facet) as RemoteObjectAdapterPrxI
}

/// Returns the Slice type id of the interface associated with this proxy type.
///
/// - Parameter type:  The proxy type to retrieve the type id.
///
/// - Returns: The type id of the interface associated with this proxy type.
public func ice_staticId(_ type: RemoteObjectAdapterPrx.Protocol) -> Swift.String {
    return RemoteObjectAdapterTraits.staticId
}

/// Extension to `Ice.InputStream` class to support reading proxies of type
/// `RemoteObjectAdapterPrx`.
public extension Ice.InputStream {
    /// Extracts a proxy from the stream. The stream must have been initialized with a communicator.
    ///
    /// - Parameter type: The type of the proxy to be extracted.
    ///
    /// - Returns: The extracted proxy.
    func read(_ type: RemoteObjectAdapterPrx.Protocol) throws -> RemoteObjectAdapterPrx? {
        return try read() as RemoteObjectAdapterPrxI?
    }
    /// Extracts a proxy from the stream. The stream must have been initialized with a communicator.
    ///
    /// - Parameter tag:  The numeric tag associated with the value.
    /// - Parameter type: The type of the proxy to be extracted.
    ///
    /// - Returns: The extracted proxy.
    func read(tag: Swift.Int32, type: RemoteObjectAdapterPrx.Protocol) throws -> RemoteObjectAdapterPrx? {
        return try read(tag: tag) as RemoteObjectAdapterPrxI?
    }
}

public extension RemoteObjectAdapterPrx {
    func getTestIntf(context: Ice.Context? = nil) async throws -> TestIntfPrx? {
        return try await _impl._invoke(operation: "getTestIntf",
                                       mode: .Normal,
                                       read: { istr in
                                           let iceP_returnValue: TestIntfPrx? = try istr.read(TestIntfPrx.self)
                                           return iceP_returnValue
                                       },
                                       context: context)
    }

    func deactivate(context: Ice.Context? = nil) async throws -> Swift.Void {
        return try await _impl._invoke(operation: "deactivate",
                                       mode: .Normal,
                                       context: context)
    }
}

public protocol RemoteCommunicatorPrx: Ice.ObjectPrx {}

private final class RemoteCommunicatorPrxI: Ice.ObjectPrxI, RemoteCommunicatorPrx {
    public override class func ice_staticId() -> Swift.String {
        return RemoteCommunicatorTraits.staticId
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
public func makeProxy(communicator: Ice.Communicator, proxyString: String, type: RemoteCommunicatorPrx.Protocol) throws -> RemoteCommunicatorPrx {
    try communicator.makeProxyImpl(proxyString) as RemoteCommunicatorPrxI
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
public func checkedCast(prx: Ice.ObjectPrx, type: RemoteCommunicatorPrx.Protocol, facet: Swift.String? = nil, context: Ice.Context? = nil) async throws -> RemoteCommunicatorPrx? {
    return try await RemoteCommunicatorPrxI.checkedCast(prx: prx, facet: facet, context: context) as RemoteCommunicatorPrxI?
}

/// Downcasts the given proxy to this type without contacting the remote server.
///
/// - Parameters:
///   - prx: The proxy to be cast.
///   - type: The proxy type to cast to.
///   - facet: The optional name of the desired facet.
///
/// - Returns: A proxy with the requested type.
public func uncheckedCast(prx: Ice.ObjectPrx, type: RemoteCommunicatorPrx.Protocol, facet: Swift.String? = nil) -> RemoteCommunicatorPrx {
    return RemoteCommunicatorPrxI.uncheckedCast(prx: prx, facet: facet) as RemoteCommunicatorPrxI
}

/// Returns the Slice type id of the interface associated with this proxy type.
///
/// - Parameter type:  The proxy type to retrieve the type id.
///
/// - Returns: The type id of the interface associated with this proxy type.
public func ice_staticId(_ type: RemoteCommunicatorPrx.Protocol) -> Swift.String {
    return RemoteCommunicatorTraits.staticId
}

/// Extension to `Ice.InputStream` class to support reading proxies of type
/// `RemoteCommunicatorPrx`.
public extension Ice.InputStream {
    /// Extracts a proxy from the stream. The stream must have been initialized with a communicator.
    ///
    /// - Parameter type: The type of the proxy to be extracted.
    ///
    /// - Returns: The extracted proxy.
    func read(_ type: RemoteCommunicatorPrx.Protocol) throws -> RemoteCommunicatorPrx? {
        return try read() as RemoteCommunicatorPrxI?
    }
    /// Extracts a proxy from the stream. The stream must have been initialized with a communicator.
    ///
    /// - Parameter tag:  The numeric tag associated with the value.
    /// - Parameter type: The type of the proxy to be extracted.
    ///
    /// - Returns: The extracted proxy.
    func read(tag: Swift.Int32, type: RemoteCommunicatorPrx.Protocol) throws -> RemoteCommunicatorPrx? {
        return try read(tag: tag) as RemoteCommunicatorPrxI?
    }
}

public extension RemoteCommunicatorPrx {
    func createObjectAdapter(name iceP_name: Swift.String, endpoints iceP_endpoints: Swift.String, context: Ice.Context? = nil) async throws -> RemoteObjectAdapterPrx? {
        return try await _impl._invoke(operation: "createObjectAdapter",
                                       mode: .Normal,
                                       write: { ostr in
                                           ostr.write(iceP_name)
                                           ostr.write(iceP_endpoints)
                                       },
                                       read: { istr in
                                           let iceP_returnValue: RemoteObjectAdapterPrx? = try istr.read(RemoteObjectAdapterPrx.self)
                                           return iceP_returnValue
                                       },
                                       context: context)
    }

    func deactivateObjectAdapter(_ iceP_adapter: RemoteObjectAdapterPrx?, context: Ice.Context? = nil) async throws -> Swift.Void {
        return try await _impl._invoke(operation: "deactivateObjectAdapter",
                                       mode: .Normal,
                                       write: { ostr in
                                           ostr.write(iceP_adapter)
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
        case "getAdapterName":
            try await servant._iceD_getAdapterName(request)
        case "ice_id":
            try await (servant as? Ice.Object ?? TestIntfDisp.defaultObject)._iceD_ice_id(request)
        case "ice_ids":
            try await (servant as? Ice.Object ?? TestIntfDisp.defaultObject)._iceD_ice_ids(request)
        case "ice_isA":
            try await (servant as? Ice.Object ?? TestIntfDisp.defaultObject)._iceD_ice_isA(request)
        case "ice_ping":
            try await (servant as? Ice.Object ?? TestIntfDisp.defaultObject)._iceD_ice_ping(request)
        default:
            throw Ice.OperationNotExistException()
        }
    }
}

public protocol TestIntf {
    func getAdapterName(current: Ice.Current) async throws -> Swift.String
}


/// Dispatcher for `RemoteObjectAdapter` servants.
public struct RemoteObjectAdapterDisp: Ice.Dispatcher {
    public let servant: RemoteObjectAdapter
    private static let defaultObject = Ice.ObjectI<RemoteObjectAdapterTraits>()

    public init(_ servant: RemoteObjectAdapter) {
        self.servant = servant
    }

    public func dispatch(_ request: Ice.IncomingRequest) async throws -> Ice.OutgoingResponse {
        switch request.current.operation {
        case "deactivate":
            try await servant._iceD_deactivate(request)
        case "getTestIntf":
            try await servant._iceD_getTestIntf(request)
        case "ice_id":
            try await (servant as? Ice.Object ?? RemoteObjectAdapterDisp.defaultObject)._iceD_ice_id(request)
        case "ice_ids":
            try await (servant as? Ice.Object ?? RemoteObjectAdapterDisp.defaultObject)._iceD_ice_ids(request)
        case "ice_isA":
            try await (servant as? Ice.Object ?? RemoteObjectAdapterDisp.defaultObject)._iceD_ice_isA(request)
        case "ice_ping":
            try await (servant as? Ice.Object ?? RemoteObjectAdapterDisp.defaultObject)._iceD_ice_ping(request)
        default:
            throw Ice.OperationNotExistException()
        }
    }
}

public protocol RemoteObjectAdapter {
    func getTestIntf(current: Ice.Current) async throws -> TestIntfPrx?

    func deactivate(current: Ice.Current) async throws
}


/// Dispatcher for `RemoteCommunicator` servants.
public struct RemoteCommunicatorDisp: Ice.Dispatcher {
    public let servant: RemoteCommunicator
    private static let defaultObject = Ice.ObjectI<RemoteCommunicatorTraits>()

    public init(_ servant: RemoteCommunicator) {
        self.servant = servant
    }

    public func dispatch(_ request: Ice.IncomingRequest) async throws -> Ice.OutgoingResponse {
        switch request.current.operation {
        case "createObjectAdapter":
            try await servant._iceD_createObjectAdapter(request)
        case "deactivateObjectAdapter":
            try await servant._iceD_deactivateObjectAdapter(request)
        case "ice_id":
            try await (servant as? Ice.Object ?? RemoteCommunicatorDisp.defaultObject)._iceD_ice_id(request)
        case "ice_ids":
            try await (servant as? Ice.Object ?? RemoteCommunicatorDisp.defaultObject)._iceD_ice_ids(request)
        case "ice_isA":
            try await (servant as? Ice.Object ?? RemoteCommunicatorDisp.defaultObject)._iceD_ice_isA(request)
        case "ice_ping":
            try await (servant as? Ice.Object ?? RemoteCommunicatorDisp.defaultObject)._iceD_ice_ping(request)
        case "shutdown":
            try await servant._iceD_shutdown(request)
        default:
            throw Ice.OperationNotExistException()
        }
    }
}

public protocol RemoteCommunicator {
    func createObjectAdapter(name: Swift.String, endpoints: Swift.String, current: Ice.Current) async throws -> RemoteObjectAdapterPrx?

    func deactivateObjectAdapter(adapter: RemoteObjectAdapterPrx?, current: Ice.Current) async throws

    func shutdown(current: Ice.Current) async throws
}

extension TestIntf {
    public func _iceD_getAdapterName(_ request: Ice.IncomingRequest) async throws -> Ice.OutgoingResponse {
        
        _ = try request.inputStream.skipEmptyEncapsulation()
        let result = try await self.getAdapterName(current: request.current)
        return request.current.makeOutgoingResponse(result, formatType: nil) { ostr, value in 
            let iceP_returnValue = value
            ostr.write(iceP_returnValue)
        }
    }
}

extension RemoteObjectAdapter {
    public func _iceD_getTestIntf(_ request: Ice.IncomingRequest) async throws -> Ice.OutgoingResponse {
        
        _ = try request.inputStream.skipEmptyEncapsulation()
        let result = try await self.getTestIntf(current: request.current)
        return request.current.makeOutgoingResponse(result, formatType: nil) { ostr, value in 
            let iceP_returnValue = value
            ostr.write(iceP_returnValue)
        }
    }

    public func _iceD_deactivate(_ request: Ice.IncomingRequest) async throws -> Ice.OutgoingResponse {
        
        _ = try request.inputStream.skipEmptyEncapsulation()
        try await self.deactivate(current: request.current)
        return request.current.makeEmptyOutgoingResponse()
    }
}

extension RemoteCommunicator {
    public func _iceD_createObjectAdapter(_ request: Ice.IncomingRequest) async throws -> Ice.OutgoingResponse {
        
        let istr = request.inputStream
        _ = try istr.startEncapsulation()
        let iceP_name: Swift.String = try istr.read()
        let iceP_endpoints: Swift.String = try istr.read()
        let result = try await self.createObjectAdapter(name: iceP_name, endpoints: iceP_endpoints, current: request.current)
        return request.current.makeOutgoingResponse(result, formatType: nil) { ostr, value in 
            let iceP_returnValue = value
            ostr.write(iceP_returnValue)
        }
    }

    public func _iceD_deactivateObjectAdapter(_ request: Ice.IncomingRequest) async throws -> Ice.OutgoingResponse {
        
        let istr = request.inputStream
        _ = try istr.startEncapsulation()
        let iceP_adapter: RemoteObjectAdapterPrx? = try istr.read(RemoteObjectAdapterPrx.self)
        try await self.deactivateObjectAdapter(adapter: iceP_adapter, current: request.current)
        return request.current.makeEmptyOutgoingResponse()
    }

    public func _iceD_shutdown(_ request: Ice.IncomingRequest) async throws -> Ice.OutgoingResponse {
        
        _ = try request.inputStream.skipEmptyEncapsulation()
        try await self.shutdown(current: request.current)
        return request.current.makeEmptyOutgoingResponse()
    }
}
