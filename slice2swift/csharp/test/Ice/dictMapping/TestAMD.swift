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

public typealias NV = [Swift.Int32: Swift.Int32]

/// Helper class to read and write `NV` dictionary values from
/// `Ice.InputStream` and `Ice.OutputStream`.
public struct NVHelper {
    /// Read a `NV` dictionary from the stream.
    ///
    /// - Parameter istr: The stream to read from.
    ///
    /// - Returns: The dictionary read from the stream.
    public static func read(from istr: Ice.InputStream) throws -> NV {
        let sz = try Swift.Int(istr.readSize())
        var v = NV()
        for _ in 0 ..< sz {
            let key: Swift.Int32 = try istr.read()
            let value: Swift.Int32 = try istr.read()
            v[key] = value
        }
        return v
    }

    /// Read an optional `NV?` dictionary from the stream.
    ///
    /// - Parameter istr: The stream to read from.
    /// - Parameter tag: The numeric tag associated with the value.
    ///
    /// - Returns: The dictionary read from the stream.
    public static func read(from istr: Ice.InputStream, tag: Swift.Int32) throws -> NV? {
        guard try istr.readOptional(tag: tag, expectedFormat: .VSize) else {
            return nil
        }
        try istr.skipSize()
        return try read(from: istr)
    }

    /// Write a `NV` dictionary to the stream.
    ///
    /// - Parameter ostr: The stream to write to.
    /// - Parameter value: The dictionary value to write to the stream.
    public static func write(to ostr: Ice.OutputStream, value v: NV) {
        ostr.write(size: v.count)
        for (key, value) in v {
            ostr.write(key)
            ostr.write(value)
        }
    }

    /// Write an optional `NV?` dictionary to the stream.
    ///
    /// - Parameters:
    ///   - ostr: The stream to write to.
    ///   - tag: The numeric tag associated with the value.
    ///   - value: The dictionary value to write to the stream.
    public static func write(to ostr: Ice.OutputStream, tag: Swift.Int32, value v: NV?) {
        guard let val = v else {
            return
        }
        if ostr.writeOptionalVSize(tag: tag, len: val.count, elemSize: 8) {
            write(to: ostr, value: val)
        }
    }
}

public typealias NR = [Swift.String: Swift.String]

/// Helper class to read and write `NR` dictionary values from
/// `Ice.InputStream` and `Ice.OutputStream`.
public struct NRHelper {
    /// Read a `NR` dictionary from the stream.
    ///
    /// - Parameter istr: The stream to read from.
    ///
    /// - Returns: The dictionary read from the stream.
    public static func read(from istr: Ice.InputStream) throws -> NR {
        let sz = try Swift.Int(istr.readSize())
        var v = NR()
        for _ in 0 ..< sz {
            let key: Swift.String = try istr.read()
            let value: Swift.String = try istr.read()
            v[key] = value
        }
        return v
    }

    /// Read an optional `NR?` dictionary from the stream.
    ///
    /// - Parameter istr: The stream to read from.
    /// - Parameter tag: The numeric tag associated with the value.
    ///
    /// - Returns: The dictionary read from the stream.
    public static func read(from istr: Ice.InputStream, tag: Swift.Int32) throws -> NR? {
        guard try istr.readOptional(tag: tag, expectedFormat: .FSize) else {
            return nil
        }
        try istr.skip(4)
        return try read(from: istr)
    }

    /// Write a `NR` dictionary to the stream.
    ///
    /// - Parameter ostr: The stream to write to.
    /// - Parameter value: The dictionary value to write to the stream.
    public static func write(to ostr: Ice.OutputStream, value v: NR) {
        ostr.write(size: v.count)
        for (key, value) in v {
            ostr.write(key)
            ostr.write(value)
        }
    }

    /// Write an optional `NR?` dictionary to the stream.
    ///
    /// - Parameters:
    ///   - ostr: The stream to write to.
    ///   - tag: The numeric tag associated with the value.
    ///   - value: The dictionary value to write to the stream.
    public static func write(to ostr: Ice.OutputStream, tag: Swift.Int32, value v: NR?) {
        guard let val = v else {
            return
        }
        if ostr.writeOptional(tag: tag, format: .FSize) {
            let pos = ostr.startSize()
            write(to: ostr, value: val)
            ostr.endSize(position: pos)
        }
    }
}

public typealias NDV = [Swift.String: NV]

/// Helper class to read and write `NDV` dictionary values from
/// `Ice.InputStream` and `Ice.OutputStream`.
public struct NDVHelper {
    /// Read a `NDV` dictionary from the stream.
    ///
    /// - Parameter istr: The stream to read from.
    ///
    /// - Returns: The dictionary read from the stream.
    public static func read(from istr: Ice.InputStream) throws -> NDV {
        let sz = try Swift.Int(istr.readSize())
        var v = NDV()
        for _ in 0 ..< sz {
            let key: Swift.String = try istr.read()
            let value: NV = try NVHelper.read(from: istr)
            v[key] = value
        }
        return v
    }

    /// Read an optional `NDV?` dictionary from the stream.
    ///
    /// - Parameter istr: The stream to read from.
    /// - Parameter tag: The numeric tag associated with the value.
    ///
    /// - Returns: The dictionary read from the stream.
    public static func read(from istr: Ice.InputStream, tag: Swift.Int32) throws -> NDV? {
        guard try istr.readOptional(tag: tag, expectedFormat: .FSize) else {
            return nil
        }
        try istr.skip(4)
        return try read(from: istr)
    }

    /// Write a `NDV` dictionary to the stream.
    ///
    /// - Parameter ostr: The stream to write to.
    /// - Parameter value: The dictionary value to write to the stream.
    public static func write(to ostr: Ice.OutputStream, value v: NDV) {
        ostr.write(size: v.count)
        for (key, value) in v {
            ostr.write(key)
            NVHelper.write(to: ostr, value: value)
        }
    }

    /// Write an optional `NDV?` dictionary to the stream.
    ///
    /// - Parameters:
    ///   - ostr: The stream to write to.
    ///   - tag: The numeric tag associated with the value.
    ///   - value: The dictionary value to write to the stream.
    public static func write(to ostr: Ice.OutputStream, tag: Swift.Int32, value v: NDV?) {
        guard let val = v else {
            return
        }
        if ostr.writeOptional(tag: tag, format: .FSize) {
            let pos = ostr.startSize()
            write(to: ostr, value: val)
            ostr.endSize(position: pos)
        }
    }
}

public typealias NDR = [Swift.String: NR]

/// Helper class to read and write `NDR` dictionary values from
/// `Ice.InputStream` and `Ice.OutputStream`.
public struct NDRHelper {
    /// Read a `NDR` dictionary from the stream.
    ///
    /// - Parameter istr: The stream to read from.
    ///
    /// - Returns: The dictionary read from the stream.
    public static func read(from istr: Ice.InputStream) throws -> NDR {
        let sz = try Swift.Int(istr.readSize())
        var v = NDR()
        for _ in 0 ..< sz {
            let key: Swift.String = try istr.read()
            let value: NR = try NRHelper.read(from: istr)
            v[key] = value
        }
        return v
    }

    /// Read an optional `NDR?` dictionary from the stream.
    ///
    /// - Parameter istr: The stream to read from.
    /// - Parameter tag: The numeric tag associated with the value.
    ///
    /// - Returns: The dictionary read from the stream.
    public static func read(from istr: Ice.InputStream, tag: Swift.Int32) throws -> NDR? {
        guard try istr.readOptional(tag: tag, expectedFormat: .FSize) else {
            return nil
        }
        try istr.skip(4)
        return try read(from: istr)
    }

    /// Write a `NDR` dictionary to the stream.
    ///
    /// - Parameter ostr: The stream to write to.
    /// - Parameter value: The dictionary value to write to the stream.
    public static func write(to ostr: Ice.OutputStream, value v: NDR) {
        ostr.write(size: v.count)
        for (key, value) in v {
            ostr.write(key)
            NRHelper.write(to: ostr, value: value)
        }
    }

    /// Write an optional `NDR?` dictionary to the stream.
    ///
    /// - Parameters:
    ///   - ostr: The stream to write to.
    ///   - tag: The numeric tag associated with the value.
    ///   - value: The dictionary value to write to the stream.
    public static func write(to ostr: Ice.OutputStream, tag: Swift.Int32, value v: NDR?) {
        guard let val = v else {
            return
        }
        if ostr.writeOptional(tag: tag, format: .FSize) {
            let pos = ostr.startSize()
            write(to: ostr, value: val)
            ostr.endSize(position: pos)
        }
    }
}

public typealias AIS = [Swift.Int32]

public typealias GIS = [Swift.Int32]

public typealias ASS = [Swift.String]

public typealias GSS = [Swift.String]

public typealias NDAIS = [Swift.String: AIS]

/// Helper class to read and write `NDAIS` dictionary values from
/// `Ice.InputStream` and `Ice.OutputStream`.
public struct NDAISHelper {
    /// Read a `NDAIS` dictionary from the stream.
    ///
    /// - Parameter istr: The stream to read from.
    ///
    /// - Returns: The dictionary read from the stream.
    public static func read(from istr: Ice.InputStream) throws -> NDAIS {
        let sz = try Swift.Int(istr.readSize())
        var v = NDAIS()
        for _ in 0 ..< sz {
            let key: Swift.String = try istr.read()
            let value: AIS = try istr.read()
            v[key] = value
        }
        return v
    }

    /// Read an optional `NDAIS?` dictionary from the stream.
    ///
    /// - Parameter istr: The stream to read from.
    /// - Parameter tag: The numeric tag associated with the value.
    ///
    /// - Returns: The dictionary read from the stream.
    public static func read(from istr: Ice.InputStream, tag: Swift.Int32) throws -> NDAIS? {
        guard try istr.readOptional(tag: tag, expectedFormat: .FSize) else {
            return nil
        }
        try istr.skip(4)
        return try read(from: istr)
    }

    /// Write a `NDAIS` dictionary to the stream.
    ///
    /// - Parameter ostr: The stream to write to.
    /// - Parameter value: The dictionary value to write to the stream.
    public static func write(to ostr: Ice.OutputStream, value v: NDAIS) {
        ostr.write(size: v.count)
        for (key, value) in v {
            ostr.write(key)
            ostr.write(value)
        }
    }

    /// Write an optional `NDAIS?` dictionary to the stream.
    ///
    /// - Parameters:
    ///   - ostr: The stream to write to.
    ///   - tag: The numeric tag associated with the value.
    ///   - value: The dictionary value to write to the stream.
    public static func write(to ostr: Ice.OutputStream, tag: Swift.Int32, value v: NDAIS?) {
        guard let val = v else {
            return
        }
        if ostr.writeOptional(tag: tag, format: .FSize) {
            let pos = ostr.startSize()
            write(to: ostr, value: val)
            ostr.endSize(position: pos)
        }
    }
}

public typealias NDGIS = [Swift.String: GIS]

/// Helper class to read and write `NDGIS` dictionary values from
/// `Ice.InputStream` and `Ice.OutputStream`.
public struct NDGISHelper {
    /// Read a `NDGIS` dictionary from the stream.
    ///
    /// - Parameter istr: The stream to read from.
    ///
    /// - Returns: The dictionary read from the stream.
    public static func read(from istr: Ice.InputStream) throws -> NDGIS {
        let sz = try Swift.Int(istr.readSize())
        var v = NDGIS()
        for _ in 0 ..< sz {
            let key: Swift.String = try istr.read()
            let value: GIS = try istr.read()
            v[key] = value
        }
        return v
    }

    /// Read an optional `NDGIS?` dictionary from the stream.
    ///
    /// - Parameter istr: The stream to read from.
    /// - Parameter tag: The numeric tag associated with the value.
    ///
    /// - Returns: The dictionary read from the stream.
    public static func read(from istr: Ice.InputStream, tag: Swift.Int32) throws -> NDGIS? {
        guard try istr.readOptional(tag: tag, expectedFormat: .FSize) else {
            return nil
        }
        try istr.skip(4)
        return try read(from: istr)
    }

    /// Write a `NDGIS` dictionary to the stream.
    ///
    /// - Parameter ostr: The stream to write to.
    /// - Parameter value: The dictionary value to write to the stream.
    public static func write(to ostr: Ice.OutputStream, value v: NDGIS) {
        ostr.write(size: v.count)
        for (key, value) in v {
            ostr.write(key)
            ostr.write(value)
        }
    }

    /// Write an optional `NDGIS?` dictionary to the stream.
    ///
    /// - Parameters:
    ///   - ostr: The stream to write to.
    ///   - tag: The numeric tag associated with the value.
    ///   - value: The dictionary value to write to the stream.
    public static func write(to ostr: Ice.OutputStream, tag: Swift.Int32, value v: NDGIS?) {
        guard let val = v else {
            return
        }
        if ostr.writeOptional(tag: tag, format: .FSize) {
            let pos = ostr.startSize()
            write(to: ostr, value: val)
            ostr.endSize(position: pos)
        }
    }
}

public typealias NDASS = [Swift.String: ASS]

/// Helper class to read and write `NDASS` dictionary values from
/// `Ice.InputStream` and `Ice.OutputStream`.
public struct NDASSHelper {
    /// Read a `NDASS` dictionary from the stream.
    ///
    /// - Parameter istr: The stream to read from.
    ///
    /// - Returns: The dictionary read from the stream.
    public static func read(from istr: Ice.InputStream) throws -> NDASS {
        let sz = try Swift.Int(istr.readSize())
        var v = NDASS()
        for _ in 0 ..< sz {
            let key: Swift.String = try istr.read()
            let value: ASS = try istr.read()
            v[key] = value
        }
        return v
    }

    /// Read an optional `NDASS?` dictionary from the stream.
    ///
    /// - Parameter istr: The stream to read from.
    /// - Parameter tag: The numeric tag associated with the value.
    ///
    /// - Returns: The dictionary read from the stream.
    public static func read(from istr: Ice.InputStream, tag: Swift.Int32) throws -> NDASS? {
        guard try istr.readOptional(tag: tag, expectedFormat: .FSize) else {
            return nil
        }
        try istr.skip(4)
        return try read(from: istr)
    }

    /// Write a `NDASS` dictionary to the stream.
    ///
    /// - Parameter ostr: The stream to write to.
    /// - Parameter value: The dictionary value to write to the stream.
    public static func write(to ostr: Ice.OutputStream, value v: NDASS) {
        ostr.write(size: v.count)
        for (key, value) in v {
            ostr.write(key)
            ostr.write(value)
        }
    }

    /// Write an optional `NDASS?` dictionary to the stream.
    ///
    /// - Parameters:
    ///   - ostr: The stream to write to.
    ///   - tag: The numeric tag associated with the value.
    ///   - value: The dictionary value to write to the stream.
    public static func write(to ostr: Ice.OutputStream, tag: Swift.Int32, value v: NDASS?) {
        guard let val = v else {
            return
        }
        if ostr.writeOptional(tag: tag, format: .FSize) {
            let pos = ostr.startSize()
            write(to: ostr, value: val)
            ostr.endSize(position: pos)
        }
    }
}

public typealias NDGSS = [Swift.String: GSS]

/// Helper class to read and write `NDGSS` dictionary values from
/// `Ice.InputStream` and `Ice.OutputStream`.
public struct NDGSSHelper {
    /// Read a `NDGSS` dictionary from the stream.
    ///
    /// - Parameter istr: The stream to read from.
    ///
    /// - Returns: The dictionary read from the stream.
    public static func read(from istr: Ice.InputStream) throws -> NDGSS {
        let sz = try Swift.Int(istr.readSize())
        var v = NDGSS()
        for _ in 0 ..< sz {
            let key: Swift.String = try istr.read()
            let value: GSS = try istr.read()
            v[key] = value
        }
        return v
    }

    /// Read an optional `NDGSS?` dictionary from the stream.
    ///
    /// - Parameter istr: The stream to read from.
    /// - Parameter tag: The numeric tag associated with the value.
    ///
    /// - Returns: The dictionary read from the stream.
    public static func read(from istr: Ice.InputStream, tag: Swift.Int32) throws -> NDGSS? {
        guard try istr.readOptional(tag: tag, expectedFormat: .FSize) else {
            return nil
        }
        try istr.skip(4)
        return try read(from: istr)
    }

    /// Write a `NDGSS` dictionary to the stream.
    ///
    /// - Parameter ostr: The stream to write to.
    /// - Parameter value: The dictionary value to write to the stream.
    public static func write(to ostr: Ice.OutputStream, value v: NDGSS) {
        ostr.write(size: v.count)
        for (key, value) in v {
            ostr.write(key)
            ostr.write(value)
        }
    }

    /// Write an optional `NDGSS?` dictionary to the stream.
    ///
    /// - Parameters:
    ///   - ostr: The stream to write to.
    ///   - tag: The numeric tag associated with the value.
    ///   - value: The dictionary value to write to the stream.
    public static func write(to ostr: Ice.OutputStream, tag: Swift.Int32, value v: NDGSS?) {
        guard let val = v else {
            return
        }
        if ostr.writeOptional(tag: tag, format: .FSize) {
            let pos = ostr.startSize()
            write(to: ostr, value: val)
            ostr.endSize(position: pos)
        }
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
    func shutdown(context: Ice.Context? = nil) async throws -> Swift.Void {
        return try await _impl._invoke(operation: "shutdown",
                                       mode: .Normal,
                                       context: context)
    }

    func opNV(_ iceP_i: NV, context: Ice.Context? = nil) async throws -> (returnValue: NV, o: NV) {
        return try await _impl._invoke(operation: "opNV",
                                       mode: .Normal,
                                       write: { ostr in
                                           NVHelper.write(to: ostr, value: iceP_i)
                                       },
                                       read: { istr in
                                           let iceP_o: NV = try NVHelper.read(from: istr)
                                           let iceP_returnValue: NV = try NVHelper.read(from: istr)
                                           return (iceP_returnValue, iceP_o)
                                       },
                                       context: context)
    }

    func opNR(_ iceP_i: NR, context: Ice.Context? = nil) async throws -> (returnValue: NR, o: NR) {
        return try await _impl._invoke(operation: "opNR",
                                       mode: .Normal,
                                       write: { ostr in
                                           NRHelper.write(to: ostr, value: iceP_i)
                                       },
                                       read: { istr in
                                           let iceP_o: NR = try NRHelper.read(from: istr)
                                           let iceP_returnValue: NR = try NRHelper.read(from: istr)
                                           return (iceP_returnValue, iceP_o)
                                       },
                                       context: context)
    }

    func opNDV(_ iceP_i: NDV, context: Ice.Context? = nil) async throws -> (returnValue: NDV, o: NDV) {
        return try await _impl._invoke(operation: "opNDV",
                                       mode: .Normal,
                                       write: { ostr in
                                           NDVHelper.write(to: ostr, value: iceP_i)
                                       },
                                       read: { istr in
                                           let iceP_o: NDV = try NDVHelper.read(from: istr)
                                           let iceP_returnValue: NDV = try NDVHelper.read(from: istr)
                                           return (iceP_returnValue, iceP_o)
                                       },
                                       context: context)
    }

    func opNDR(_ iceP_i: NDR, context: Ice.Context? = nil) async throws -> (returnValue: NDR, o: NDR) {
        return try await _impl._invoke(operation: "opNDR",
                                       mode: .Normal,
                                       write: { ostr in
                                           NDRHelper.write(to: ostr, value: iceP_i)
                                       },
                                       read: { istr in
                                           let iceP_o: NDR = try NDRHelper.read(from: istr)
                                           let iceP_returnValue: NDR = try NDRHelper.read(from: istr)
                                           return (iceP_returnValue, iceP_o)
                                       },
                                       context: context)
    }

    func opNDAIS(_ iceP_i: NDAIS, context: Ice.Context? = nil) async throws -> (returnValue: NDAIS, o: NDAIS) {
        return try await _impl._invoke(operation: "opNDAIS",
                                       mode: .Normal,
                                       write: { ostr in
                                           NDAISHelper.write(to: ostr, value: iceP_i)
                                       },
                                       read: { istr in
                                           let iceP_o: NDAIS = try NDAISHelper.read(from: istr)
                                           let iceP_returnValue: NDAIS = try NDAISHelper.read(from: istr)
                                           return (iceP_returnValue, iceP_o)
                                       },
                                       context: context)
    }

    func opNDGIS(_ iceP_i: NDGIS, context: Ice.Context? = nil) async throws -> (returnValue: NDGIS, o: NDGIS) {
        return try await _impl._invoke(operation: "opNDGIS",
                                       mode: .Normal,
                                       write: { ostr in
                                           NDGISHelper.write(to: ostr, value: iceP_i)
                                       },
                                       read: { istr in
                                           let iceP_o: NDGIS = try NDGISHelper.read(from: istr)
                                           let iceP_returnValue: NDGIS = try NDGISHelper.read(from: istr)
                                           return (iceP_returnValue, iceP_o)
                                       },
                                       context: context)
    }

    func opNDASS(_ iceP_i: NDASS, context: Ice.Context? = nil) async throws -> (returnValue: NDASS, o: NDASS) {
        return try await _impl._invoke(operation: "opNDASS",
                                       mode: .Normal,
                                       write: { ostr in
                                           NDASSHelper.write(to: ostr, value: iceP_i)
                                       },
                                       read: { istr in
                                           let iceP_o: NDASS = try NDASSHelper.read(from: istr)
                                           let iceP_returnValue: NDASS = try NDASSHelper.read(from: istr)
                                           return (iceP_returnValue, iceP_o)
                                       },
                                       context: context)
    }

    func opNDGSS(_ iceP_i: NDGSS, context: Ice.Context? = nil) async throws -> (returnValue: NDGSS, o: NDGSS) {
        return try await _impl._invoke(operation: "opNDGSS",
                                       mode: .Normal,
                                       write: { ostr in
                                           NDGSSHelper.write(to: ostr, value: iceP_i)
                                       },
                                       read: { istr in
                                           let iceP_o: NDGSS = try NDGSSHelper.read(from: istr)
                                           let iceP_returnValue: NDGSS = try NDGSSHelper.read(from: istr)
                                           return (iceP_returnValue, iceP_o)
                                       },
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
        case "opNDAIS":
            try await servant._iceD_opNDAIS(request)
        case "opNDASS":
            try await servant._iceD_opNDASS(request)
        case "opNDGIS":
            try await servant._iceD_opNDGIS(request)
        case "opNDGSS":
            try await servant._iceD_opNDGSS(request)
        case "opNDR":
            try await servant._iceD_opNDR(request)
        case "opNDV":
            try await servant._iceD_opNDV(request)
        case "opNR":
            try await servant._iceD_opNR(request)
        case "opNV":
            try await servant._iceD_opNV(request)
        case "shutdown":
            try await servant._iceD_shutdown(request)
        default:
            throw Ice.OperationNotExistException()
        }
    }
}

public protocol MyClass {
    func shutdown(current: Ice.Current) async throws

    func opNV(i: NV, current: Ice.Current) async throws -> (returnValue: NV, o: NV)

    func opNR(i: NR, current: Ice.Current) async throws -> (returnValue: NR, o: NR)

    func opNDV(i: NDV, current: Ice.Current) async throws -> (returnValue: NDV, o: NDV)

    func opNDR(i: NDR, current: Ice.Current) async throws -> (returnValue: NDR, o: NDR)

    func opNDAIS(i: NDAIS, current: Ice.Current) async throws -> (returnValue: NDAIS, o: NDAIS)

    func opNDGIS(i: NDGIS, current: Ice.Current) async throws -> (returnValue: NDGIS, o: NDGIS)

    func opNDASS(i: NDASS, current: Ice.Current) async throws -> (returnValue: NDASS, o: NDASS)

    func opNDGSS(i: NDGSS, current: Ice.Current) async throws -> (returnValue: NDGSS, o: NDGSS)
}

extension MyClass {
    public func _iceD_shutdown(_ request: Ice.IncomingRequest) async throws -> Ice.OutgoingResponse {
        
        _ = try request.inputStream.skipEmptyEncapsulation()
        try await self.shutdown(current: request.current)
        return request.current.makeEmptyOutgoingResponse()
    }

    public func _iceD_opNV(_ request: Ice.IncomingRequest) async throws -> Ice.OutgoingResponse {
        
        let istr = request.inputStream
        _ = try istr.startEncapsulation()
        let iceP_i: NV = try NVHelper.read(from: istr)
        let result = try await self.opNV(i: iceP_i, current: request.current)
        return request.current.makeOutgoingResponse(result, formatType: nil) { ostr, value in 
            let (iceP_returnValue, iceP_o) = value
            NVHelper.write(to: ostr, value: iceP_o)
            NVHelper.write(to: ostr, value: iceP_returnValue)
        }
    }

    public func _iceD_opNR(_ request: Ice.IncomingRequest) async throws -> Ice.OutgoingResponse {
        
        let istr = request.inputStream
        _ = try istr.startEncapsulation()
        let iceP_i: NR = try NRHelper.read(from: istr)
        let result = try await self.opNR(i: iceP_i, current: request.current)
        return request.current.makeOutgoingResponse(result, formatType: nil) { ostr, value in 
            let (iceP_returnValue, iceP_o) = value
            NRHelper.write(to: ostr, value: iceP_o)
            NRHelper.write(to: ostr, value: iceP_returnValue)
        }
    }

    public func _iceD_opNDV(_ request: Ice.IncomingRequest) async throws -> Ice.OutgoingResponse {
        
        let istr = request.inputStream
        _ = try istr.startEncapsulation()
        let iceP_i: NDV = try NDVHelper.read(from: istr)
        let result = try await self.opNDV(i: iceP_i, current: request.current)
        return request.current.makeOutgoingResponse(result, formatType: nil) { ostr, value in 
            let (iceP_returnValue, iceP_o) = value
            NDVHelper.write(to: ostr, value: iceP_o)
            NDVHelper.write(to: ostr, value: iceP_returnValue)
        }
    }

    public func _iceD_opNDR(_ request: Ice.IncomingRequest) async throws -> Ice.OutgoingResponse {
        
        let istr = request.inputStream
        _ = try istr.startEncapsulation()
        let iceP_i: NDR = try NDRHelper.read(from: istr)
        let result = try await self.opNDR(i: iceP_i, current: request.current)
        return request.current.makeOutgoingResponse(result, formatType: nil) { ostr, value in 
            let (iceP_returnValue, iceP_o) = value
            NDRHelper.write(to: ostr, value: iceP_o)
            NDRHelper.write(to: ostr, value: iceP_returnValue)
        }
    }

    public func _iceD_opNDAIS(_ request: Ice.IncomingRequest) async throws -> Ice.OutgoingResponse {
        
        let istr = request.inputStream
        _ = try istr.startEncapsulation()
        let iceP_i: NDAIS = try NDAISHelper.read(from: istr)
        let result = try await self.opNDAIS(i: iceP_i, current: request.current)
        return request.current.makeOutgoingResponse(result, formatType: nil) { ostr, value in 
            let (iceP_returnValue, iceP_o) = value
            NDAISHelper.write(to: ostr, value: iceP_o)
            NDAISHelper.write(to: ostr, value: iceP_returnValue)
        }
    }

    public func _iceD_opNDGIS(_ request: Ice.IncomingRequest) async throws -> Ice.OutgoingResponse {
        
        let istr = request.inputStream
        _ = try istr.startEncapsulation()
        let iceP_i: NDGIS = try NDGISHelper.read(from: istr)
        let result = try await self.opNDGIS(i: iceP_i, current: request.current)
        return request.current.makeOutgoingResponse(result, formatType: nil) { ostr, value in 
            let (iceP_returnValue, iceP_o) = value
            NDGISHelper.write(to: ostr, value: iceP_o)
            NDGISHelper.write(to: ostr, value: iceP_returnValue)
        }
    }

    public func _iceD_opNDASS(_ request: Ice.IncomingRequest) async throws -> Ice.OutgoingResponse {
        
        let istr = request.inputStream
        _ = try istr.startEncapsulation()
        let iceP_i: NDASS = try NDASSHelper.read(from: istr)
        let result = try await self.opNDASS(i: iceP_i, current: request.current)
        return request.current.makeOutgoingResponse(result, formatType: nil) { ostr, value in 
            let (iceP_returnValue, iceP_o) = value
            NDASSHelper.write(to: ostr, value: iceP_o)
            NDASSHelper.write(to: ostr, value: iceP_returnValue)
        }
    }

    public func _iceD_opNDGSS(_ request: Ice.IncomingRequest) async throws -> Ice.OutgoingResponse {
        
        let istr = request.inputStream
        _ = try istr.startEncapsulation()
        let iceP_i: NDGSS = try NDGSSHelper.read(from: istr)
        let result = try await self.opNDGSS(i: iceP_i, current: request.current)
        return request.current.makeOutgoingResponse(result, formatType: nil) { ostr, value in 
            let (iceP_returnValue, iceP_o) = value
            NDGSSHelper.write(to: ostr, value: iceP_o)
            NDGSSHelper.write(to: ostr, value: iceP_returnValue)
        }
    }
}
