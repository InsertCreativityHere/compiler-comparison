//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `PropertiesAdmin.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

import Foundation
import PromiseKit

/// Traits for Slice interface`PropertiesAdmin`.
public struct PropertiesAdminTraits: SliceTraits {
    public static let staticIds = ["::Ice::Object", "::Ice::PropertiesAdmin"]
    public static let staticId = "::Ice::PropertiesAdmin"
}

/// The PropertiesAdmin interface provides remote access to the properties of a communicator.
///
/// PropertiesAdminPrx Methods:
///
///  - getProperty: Get a property by key.
///
///  - getPropertyAsync: Get a property by key.
///
///  - getPropertiesForPrefix: Get all properties whose keys begin with prefix.
///
///  - getPropertiesForPrefixAsync: Get all properties whose keys begin with prefix.
///
///  - setProperties: Update the communicator's properties with the given property set.
///
///  - setPropertiesAsync: Update the communicator's properties with the given property set.
public protocol PropertiesAdminPrx: ObjectPrx {}

internal final class PropertiesAdminPrxI: ObjectPrxI, PropertiesAdminPrx {
    public override class func ice_staticId() -> Swift.String {
        return PropertiesAdminTraits.staticId
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
public func makeProxy(communicator: Ice.Communicator, proxyString: String, type: PropertiesAdminPrx.Protocol) throws -> PropertiesAdminPrx {
    try communicator.makeProxyImpl(proxyString) as PropertiesAdminPrxI
}

/// Casts a proxy to the requested type. This call contacts the server and verifies that the object
/// implements this type.
///
/// It will throw a local exception if a communication error occurs. You can optionally supply a
/// facet name and a context map.
///
/// - parameter prx: `Ice.ObjectPrx` - The proxy to be cast.
///
/// - parameter type: `PropertiesAdminPrx.Protocol` - The proxy type to cast to.
///
/// - parameter facet: `String` - The optional name of the desired facet.
///
/// - parameter context: `Ice.Context` The optional context dictionary for the remote invocation.
///
/// - returns: `PropertiesAdminPrx` - A proxy with the requested type or nil if the objet does not
///   support this type.
///
/// - throws: `Ice.LocalException` if a communication error occurs.
public func checkedCast(prx: ObjectPrx, type: PropertiesAdminPrx.Protocol, facet: Swift.String? = nil, context: Context? = nil) throws -> PropertiesAdminPrx? {
    return try PropertiesAdminPrxI.checkedCast(prx: prx, facet: facet, context: context) as PropertiesAdminPrxI?
}

/// Downcasts the given proxy to this type without contacting the remote server.
///
/// - parameter prx: `Ice.ObjectPrx` The proxy to be cast.
///
/// - parameter type: `PropertiesAdminPrx.Protocol` - The proxy type to cast to.
///
/// - parameter facet: `String` - The optional name of the desired facet
///
/// - returns: `PropertiesAdminPrx` - A proxy with the requested type
public func uncheckedCast(prx: ObjectPrx, type: PropertiesAdminPrx.Protocol, facet: Swift.String? = nil) -> PropertiesAdminPrx {
    return PropertiesAdminPrxI.uncheckedCast(prx: prx, facet: facet) as PropertiesAdminPrxI
}

/// Returns the Slice type id of the interface or class associated with this proxy type.
///
/// parameter type: `PropertiesAdminPrx.Protocol` -  The proxy type to retrieve the type id.
///
/// returns: `String` - The type id of the interface or class associated with this proxy type.
public func ice_staticId(_ type: PropertiesAdminPrx.Protocol) -> Swift.String {
    return PropertiesAdminTraits.staticId
}

/// Extension to `Ice.InputStream` class to support reading proxy of type
/// `PropertiesAdminPrx`.
public extension InputStream {
    /// Extracts a proxy from the stream. The stream must have been initialized with a communicator.
    ///
    /// - parameter type: `PropertiesAdminPrx.Protocol` - The type of the proxy to be extracted.
    ///
    /// - returns: `PropertiesAdminPrx?` - The extracted proxy
    func read(_ type: PropertiesAdminPrx.Protocol) throws -> PropertiesAdminPrx? {
        return try read() as PropertiesAdminPrxI?
    }
    /// Extracts a proxy from the stream. The stream must have been initialized with a communicator.
    ///
    /// - parameter tag: `Int32` - The numeric tag associated with the value.
    ///
    /// - parameter type: `PropertiesAdminPrx.Protocol` - The type of the proxy to be extracted.
    ///
    /// - returns: `PropertiesAdminPrx` - The extracted proxy.
    func read(tag: Swift.Int32, type: PropertiesAdminPrx.Protocol) throws -> PropertiesAdminPrx? {
        return try read(tag: tag) as PropertiesAdminPrxI?
    }
}

/// The PropertiesAdmin interface provides remote access to the properties of a communicator.
///
/// PropertiesAdminPrx Methods:
///
///  - getProperty: Get a property by key.
///
///  - getPropertyAsync: Get a property by key.
///
///  - getPropertiesForPrefix: Get all properties whose keys begin with prefix.
///
///  - getPropertiesForPrefixAsync: Get all properties whose keys begin with prefix.
///
///  - setProperties: Update the communicator's properties with the given property set.
///
///  - setPropertiesAsync: Update the communicator's properties with the given property set.
public extension PropertiesAdminPrx {
    /// Get a property by key. If the property is not set, an empty string is returned.
    ///
    /// - parameter _: `Swift.String` The property key.
    ///
    /// - parameter context: `Ice.Context` - Optional request context.
    ///
    /// - returns: `Swift.String` - The property value.
    func getProperty(_ iceP_key: Swift.String, context: Context? = nil) throws -> Swift.String {
        return try _impl._invoke(operation: "getProperty",
                                 mode: .Normal,
                                 write: { ostr in
                                     ostr.write(iceP_key)
                                 },
                                 read: { istr in
                                     let iceP_returnValue: Swift.String = try istr.read()
                                     return iceP_returnValue
                                 },
                                 context: context)
    }

    /// Get a property by key. If the property is not set, an empty string is returned.
    ///
    /// - parameter _: `Swift.String` The property key.
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
    /// - returns: `PromiseKit.Promise<Swift.String>` - The result of the operation
    func getPropertyAsync(_ iceP_key: Swift.String, context: Context? = nil, sentOn: Dispatch.DispatchQueue? = nil, sentFlags: Dispatch.DispatchWorkItemFlags? = nil, sent: ((Swift.Bool) -> Swift.Void)? = nil) -> PromiseKit.Promise<Swift.String> {
        return _impl._invokeAsync(operation: "getProperty",
                                  mode: .Normal,
                                  write: { ostr in
                                      ostr.write(iceP_key)
                                  },
                                  read: { istr in
                                      let iceP_returnValue: Swift.String = try istr.read()
                                      return iceP_returnValue
                                  },
                                  context: context,
                                  sentOn: sentOn,
                                  sentFlags: sentFlags,
                                  sent: sent)
    }

    /// Get all properties whose keys begin with prefix. If prefix is an empty string then all
    /// properties are returned.
    ///
    /// - parameter _: `Swift.String` The prefix to search for (empty string if none).
    ///
    /// - parameter context: `Ice.Context` - Optional request context.
    ///
    /// - returns: `PropertyDict` - The matching property set.
    func getPropertiesForPrefix(_ iceP_prefix: Swift.String, context: Context? = nil) throws -> PropertyDict {
        return try _impl._invoke(operation: "getPropertiesForPrefix",
                                 mode: .Normal,
                                 write: { ostr in
                                     ostr.write(iceP_prefix)
                                 },
                                 read: { istr in
                                     let iceP_returnValue: PropertyDict = try PropertyDictHelper.read(from: istr)
                                     return iceP_returnValue
                                 },
                                 context: context)
    }

    /// Get all properties whose keys begin with prefix. If prefix is an empty string then all
    /// properties are returned.
    ///
    /// - parameter _: `Swift.String` The prefix to search for (empty string if none).
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
    /// - returns: `PromiseKit.Promise<PropertyDict>` - The result of the operation
    func getPropertiesForPrefixAsync(_ iceP_prefix: Swift.String, context: Context? = nil, sentOn: Dispatch.DispatchQueue? = nil, sentFlags: Dispatch.DispatchWorkItemFlags? = nil, sent: ((Swift.Bool) -> Swift.Void)? = nil) -> PromiseKit.Promise<PropertyDict> {
        return _impl._invokeAsync(operation: "getPropertiesForPrefix",
                                  mode: .Normal,
                                  write: { ostr in
                                      ostr.write(iceP_prefix)
                                  },
                                  read: { istr in
                                      let iceP_returnValue: PropertyDict = try PropertyDictHelper.read(from: istr)
                                      return iceP_returnValue
                                  },
                                  context: context,
                                  sentOn: sentOn,
                                  sentFlags: sentFlags,
                                  sent: sent)
    }

    /// Update the communicator's properties with the given property set. If an entry in newProperties
    /// matches the name of an existing property, that property's value is replaced with the new value. If the new
    /// value is an empty string, the property is removed. Any existing properties that are not modified or removed
    /// by the entries in newProperties are retained with their original values.
    ///
    /// - parameter _: `PropertyDict` Properties to be added, changed, or removed.
    ///
    /// - parameter context: `Ice.Context` - Optional request context.
    func setProperties(_ iceP_newProperties: PropertyDict, context: Context? = nil) throws {
        try _impl._invoke(operation: "setProperties",
                          mode: .Normal,
                          write: { ostr in
                              PropertyDictHelper.write(to: ostr, value: iceP_newProperties)
                          },
                          context: context)
    }

    /// Update the communicator's properties with the given property set. If an entry in newProperties
    /// matches the name of an existing property, that property's value is replaced with the new value. If the new
    /// value is an empty string, the property is removed. Any existing properties that are not modified or removed
    /// by the entries in newProperties are retained with their original values.
    ///
    /// - parameter _: `PropertyDict` Properties to be added, changed, or removed.
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
    func setPropertiesAsync(_ iceP_newProperties: PropertyDict, context: Context? = nil, sentOn: Dispatch.DispatchQueue? = nil, sentFlags: Dispatch.DispatchWorkItemFlags? = nil, sent: ((Swift.Bool) -> Swift.Void)? = nil) -> PromiseKit.Promise<Swift.Void> {
        return _impl._invokeAsync(operation: "setProperties",
                                  mode: .Normal,
                                  write: { ostr in
                                      PropertyDictHelper.write(to: ostr, value: iceP_newProperties)
                                  },
                                  context: context,
                                  sentOn: sentOn,
                                  sentFlags: sentFlags,
                                  sent: sent)
    }
}


/// Dispatcher for `PropertiesAdmin` servants.
public struct PropertiesAdminDisp: Ice.Dispatcher {
    public let servant: PropertiesAdmin
    private static let defaultObject = ObjectI<PropertiesAdminTraits>()

    public init(_ servant: PropertiesAdmin) {
        self.servant = servant
    }

    public func dispatch(_ request: Ice.IncomingRequest) -> PromiseKit.Promise<Ice.OutgoingResponse> {
        switch request.current.operation {
        case "getPropertiesForPrefix":
            servant._iceD_getPropertiesForPrefix(request)
        case "getProperty":
            servant._iceD_getProperty(request)
        case "ice_id":
            (servant as? Ice.Object ?? PropertiesAdminDisp.defaultObject)._iceD_ice_id(request)
        case "ice_ids":
            (servant as? Ice.Object ?? PropertiesAdminDisp.defaultObject)._iceD_ice_ids(request)
        case "ice_isA":
            (servant as? Ice.Object ?? PropertiesAdminDisp.defaultObject)._iceD_ice_isA(request)
        case "ice_ping":
            (servant as? Ice.Object ?? PropertiesAdminDisp.defaultObject)._iceD_ice_ping(request)
        case "setProperties":
            servant._iceD_setProperties(request)
        default:
            PromiseKit.Promise(error: Ice.OperationNotExistException())
        }
    }
}

/// The PropertiesAdmin interface provides remote access to the properties of a communicator.
public protocol PropertiesAdmin {
    /// Get a property by key. If the property is not set, an empty string is returned.
    ///
    /// - parameter key: `Swift.String` The property key.
    ///
    /// - parameter current: `Ice.Current` - The Current object for the dispatch.
    ///
    /// - returns: `Swift.String` - The property value.
    func getProperty(key: Swift.String, current: Current) throws -> Swift.String

    /// Get all properties whose keys begin with prefix. If prefix is an empty string then all
    /// properties are returned.
    ///
    /// - parameter prefix: `Swift.String` The prefix to search for (empty string if none).
    ///
    /// - parameter current: `Ice.Current` - The Current object for the dispatch.
    ///
    /// - returns: `PropertyDict` - The matching property set.
    func getPropertiesForPrefix(prefix: Swift.String, current: Current) throws -> PropertyDict

    /// Update the communicator's properties with the given property set. If an entry in newProperties
    /// matches the name of an existing property, that property's value is replaced with the new value. If the new
    /// value is an empty string, the property is removed. Any existing properties that are not modified or removed
    /// by the entries in newProperties are retained with their original values.
    ///
    /// - parameter newProperties: `PropertyDict` Properties to be added, changed, or removed.
    ///
    /// - parameter current: `Ice.Current` - The Current object for the dispatch.
    func setProperties(newProperties: PropertyDict, current: Current) throws
}

/// The PropertiesAdmin interface provides remote access to the properties of a communicator.
///
/// PropertiesAdmin Methods:
///
///  - getProperty: Get a property by key.
///
///  - getPropertiesForPrefix: Get all properties whose keys begin with prefix.
///
///  - setProperties: Update the communicator's properties with the given property set.
extension PropertiesAdmin {
    public func _iceD_getProperty(_ request: Ice.IncomingRequest) -> PromiseKit.Promise<Ice.OutgoingResponse> {
        do {
            let istr = request.inputStream
            _ = try istr.startEncapsulation()
            let iceP_key: Swift.String = try istr.read()

            let iceP_returnValue = try self.getProperty(key: iceP_key, current: request.current)
            let ostr = request.current.startReplyStream()
            ostr.startEncapsulation(encoding: request.current.encoding, format: .DefaultFormat)
            ostr.write(iceP_returnValue)
            ostr.endEncapsulation()
            return PromiseKit.Promise.value(Ice.OutgoingResponse(ostr))
        } catch {
            return PromiseKit.Promise(error: error)
        }
    }

    public func _iceD_getPropertiesForPrefix(_ request: Ice.IncomingRequest) -> PromiseKit.Promise<Ice.OutgoingResponse> {
        do {
            let istr = request.inputStream
            _ = try istr.startEncapsulation()
            let iceP_prefix: Swift.String = try istr.read()

            let iceP_returnValue = try self.getPropertiesForPrefix(prefix: iceP_prefix, current: request.current)
            let ostr = request.current.startReplyStream()
            ostr.startEncapsulation(encoding: request.current.encoding, format: .DefaultFormat)
            PropertyDictHelper.write(to: ostr, value: iceP_returnValue)
            ostr.endEncapsulation()
            return PromiseKit.Promise.value(Ice.OutgoingResponse(ostr))
        } catch {
            return PromiseKit.Promise(error: error)
        }
    }

    public func _iceD_setProperties(_ request: Ice.IncomingRequest) -> PromiseKit.Promise<Ice.OutgoingResponse> {
        do {
            let istr = request.inputStream
            _ = try istr.startEncapsulation()
            let iceP_newProperties: PropertyDict = try PropertyDictHelper.read(from: istr)

            try self.setProperties(newProperties: iceP_newProperties, current: request.current)
            return PromiseKit.Promise.value(request.current.makeEmptyOutgoingResponse())
        } catch {
            return PromiseKit.Promise(error: error)
        }
    }
}
