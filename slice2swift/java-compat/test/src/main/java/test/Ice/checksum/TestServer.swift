//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.7.9
//
// <auto-generated>
//
// Generated from file `TestServer.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

import Foundation
import Ice
import PromiseKit

/// Traits for Slice interface `Checksum`.
public struct ChecksumTraits: Ice.SliceTraits {
    public static let staticIds = ["::Ice::Object", "::Test::Checksum"]
    public static let staticId = "::Test::Checksum"
}

/// ChecksumPrx overview.
///
/// ChecksumPrx Methods:
///
///  - getSliceChecksums: 
///
///  - getSliceChecksumsAsync: 
///
///  - shutdown: 
///
///  - shutdownAsync: 
public protocol ChecksumPrx: Ice.ObjectPrx {}

private final class ChecksumPrxI: Ice.ObjectPrxI, ChecksumPrx {
    public override class func ice_staticId() -> Swift.String {
        return ChecksumTraits.staticId
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
/// - parameter type: `ChecksumPrx.Protocol` - The proxy type to cast to.
///
/// - parameter facet: `String` - The optional name of the desired facet.
///
/// - parameter context: `Ice.Context` The optional context dictionary for the remote invocation.
///
/// - returns: `ChecksumPrx` - A proxy with the requested type or nil if the objet does not
///   support this type.
///
/// - throws: `Ice.LocalException` if a communication error occurs.
public func checkedCast(prx: Ice.ObjectPrx, type: ChecksumPrx.Protocol, facet: Swift.String? = nil, context: Ice.Context? = nil) throws -> ChecksumPrx? {
    return try ChecksumPrxI.checkedCast(prx: prx, facet: facet, context: context) as ChecksumPrxI?
}

/// Downcasts the given proxy to this type without contacting the remote server.
///
/// - parameter prx: `Ice.ObjectPrx` The proxy to be cast.
///
/// - parameter type: `ChecksumPrx.Protocol` - The proxy type to cast to.
///
/// - parameter facet: `String` - The optional name of the desired facet
///
/// - returns: `ChecksumPrx` - A proxy with the requested type
public func uncheckedCast(prx: Ice.ObjectPrx, type: ChecksumPrx.Protocol, facet: Swift.String? = nil) -> ChecksumPrx {
    return ChecksumPrxI.uncheckedCast(prx: prx, facet: facet) as ChecksumPrxI
}

/// Returns the Slice type id of the interface or class associated with this proxy type.
///
/// parameter type: `ChecksumPrx.Protocol` -  The proxy type to retrieve the type id.
///
/// returns: `String` - The type id of the interface or class associated with this proxy type.
public func ice_staticId(_ type: ChecksumPrx.Protocol) -> Swift.String {
    return ChecksumTraits.staticId
}

/// Extension to `Ice.InputStream` class to support reading proxy of type
/// `ChecksumPrx`.
public extension Ice.InputStream {
    /// Extracts a proxy from the stream. The stream must have been initialized with a communicator.
    ///
    /// - parameter type: `ChecksumPrx.Protocol` - The type of the proxy to be extracted.
    ///
    /// - returns: `ChecksumPrx?` - The extracted proxy
    func read(_ type: ChecksumPrx.Protocol) throws -> ChecksumPrx? {
        return try read() as ChecksumPrxI?
    }
    /// Extracts a proxy from the stream. The stream must have been initialized with a communicator.
    ///
    /// - parameter tag: `Int32` - The numeric tag associated with the value.
    ///
    /// - parameter type: `ChecksumPrx.Protocol` - The type of the proxy to be extracted.
    ///
    /// - returns: `ChecksumPrx` - The extracted proxy.
    func read(tag: Swift.Int32, type: ChecksumPrx.Protocol) throws -> ChecksumPrx? {
        return try read(tag: tag) as ChecksumPrxI?
    }
}

/// ChecksumPrx overview.
///
/// ChecksumPrx Methods:
///
///  - getSliceChecksums: 
///
///  - getSliceChecksumsAsync: 
///
///  - shutdown: 
///
///  - shutdownAsync: 
public extension ChecksumPrx {
    ///
    /// - parameter context: `Ice.Context` - Optional request context.
    ///
    /// - returns: `Ice.SliceChecksumDict`
    func getSliceChecksums(context: Ice.Context? = nil) throws -> Ice.SliceChecksumDict {
        return try _impl._invoke(operation: "getSliceChecksums",
                                 mode: .Idempotent,
                                 read: { istr in
                                     let iceP_returnValue: Ice.SliceChecksumDict = try Ice.SliceChecksumDictHelper.read(from: istr)
                                     return iceP_returnValue
                                 },
                                 context: context)
    }

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
    /// - returns: `PromiseKit.Promise<Ice.SliceChecksumDict>` - The result of the operation
    func getSliceChecksumsAsync(context: Ice.Context? = nil, sentOn: Dispatch.DispatchQueue? = nil, sentFlags: Dispatch.DispatchWorkItemFlags? = nil, sent: ((Swift.Bool) -> Swift.Void)? = nil) -> PromiseKit.Promise<Ice.SliceChecksumDict> {
        return _impl._invokeAsync(operation: "getSliceChecksums",
                                  mode: .Idempotent,
                                  read: { istr in
                                      let iceP_returnValue: Ice.SliceChecksumDict = try Ice.SliceChecksumDictHelper.read(from: istr)
                                      return iceP_returnValue
                                  },
                                  context: context,
                                  sentOn: sentOn,
                                  sentFlags: sentFlags,
                                  sent: sent)
    }

    ///
    /// - parameter context: `Ice.Context` - Optional request context.
    func shutdown(context: Ice.Context? = nil) throws {
        try _impl._invoke(operation: "shutdown",
                          mode: .Normal,
                          context: context)
    }

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


/// Dispatcher for `Checksum` servants.
public struct ChecksumDisp: Ice.Disp {
    public let servant: Checksum
    private static let defaultObject = Ice.ObjectI<ChecksumTraits>()

    public init(_ servant: Checksum) {
        self.servant = servant
    }

    public func dispatch(request: Ice.Request, current: Ice.Current) throws -> PromiseKit.Promise<Ice.OutputStream>? {
        request.startOver()
        switch current.operation {
        case "getSliceChecksums":
            return try servant._iceD_getSliceChecksums(incoming: request, current: current)
        case "ice_id":
            return try (servant as? Object ?? ChecksumDisp.defaultObject)._iceD_ice_id(incoming: request, current: current)
        case "ice_ids":
            return try (servant as? Object ?? ChecksumDisp.defaultObject)._iceD_ice_ids(incoming: request, current: current)
        case "ice_isA":
            return try (servant as? Object ?? ChecksumDisp.defaultObject)._iceD_ice_isA(incoming: request, current: current)
        case "ice_ping":
            return try (servant as? Object ?? ChecksumDisp.defaultObject)._iceD_ice_ping(incoming: request, current: current)
        case "shutdown":
            return try servant._iceD_shutdown(incoming: request, current: current)
        default:
            throw Ice.OperationNotExistException(id: current.id, facet: current.facet, operation: current.operation)
        }
    }
}

public protocol Checksum {
    ///
    /// - parameter current: `Ice.Current` - The Current object for the dispatch.
    ///
    /// - returns: `Ice.SliceChecksumDict`
    func getSliceChecksums(current: Ice.Current) throws -> Ice.SliceChecksumDict

    ///
    /// - parameter current: `Ice.Current` - The Current object for the dispatch.
    func shutdown(current: Ice.Current) throws
}

/// Checksum overview.
///
/// Checksum Methods:
///
///  - getSliceChecksums: 
///
///  - shutdown: 
public extension Checksum {
    func _iceD_getSliceChecksums(incoming inS: Ice.Incoming, current: Ice.Current) throws -> PromiseKit.Promise<Ice.OutputStream>? {
        try inS.readEmptyParams()

        let iceP_returnValue = try self.getSliceChecksums(current: current)

        return inS.setResult{ ostr in
            Ice.SliceChecksumDictHelper.write(to: ostr, value: iceP_returnValue)
        }
    }

    func _iceD_shutdown(incoming inS: Ice.Incoming, current: Ice.Current) throws -> PromiseKit.Promise<Ice.OutputStream>? {
        try inS.readEmptyParams()

        try self.shutdown(current: current)

        return inS.setResult()
    }
}
