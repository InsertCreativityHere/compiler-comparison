//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `Context.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

import Foundation

/// A string-string dictionary, used to transmit additional information with an Ice request. This context is only
/// transmitted with requests, from clients to servers; the Ice protocol does not provide response contexts.
public typealias Context = [Swift.String: Swift.String]

/// Helper class to read and write `Context` dictionary values from
/// `Ice.InputStream` and `Ice.OutputStream`.
public struct ContextHelper {
    /// Read a `Context` dictionary from the stream.
    ///
    /// - Parameter istr: The stream to read from.
    ///
    /// - Returns: The dictionary read from the stream.
    public static func read(from istr: InputStream) throws -> Context {
        let sz = try Swift.Int(istr.readSize())
        var v = Context()
        for _ in 0 ..< sz {
            let key: Swift.String = try istr.read()
            let value: Swift.String = try istr.read()
            v[key] = value
        }
        return v
    }

    /// Read an optional `Context?` dictionary from the stream.
    ///
    /// - Parameter istr: The stream to read from.
    /// - Parameter tag: The numeric tag associated with the value.
    ///
    /// - Returns: The dictionary read from the stream.
    public static func read(from istr: InputStream, tag: Swift.Int32) throws -> Context? {
        guard try istr.readOptional(tag: tag, expectedFormat: .FSize) else {
            return nil
        }
        try istr.skip(4)
        return try read(from: istr)
    }

    /// Write a `Context` dictionary to the stream.
    ///
    /// - Parameter ostr: The stream to write to.
    /// - Parameter value: The dictionary value to write to the stream.
    public static func write(to ostr: OutputStream, value v: Context) {
        ostr.write(size: v.count)
        for (key, value) in v {
            ostr.write(key)
            ostr.write(value)
        }
    }

    /// Write an optional `Context?` dictionary to the stream.
    ///
    /// - Parameters:
    ///   - ostr: The stream to write to.
    ///   - tag: The numeric tag associated with the value.
    ///   - value: The dictionary value to write to the stream.
    public static func write(to ostr: OutputStream, tag: Swift.Int32, value v: Context?) {
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
