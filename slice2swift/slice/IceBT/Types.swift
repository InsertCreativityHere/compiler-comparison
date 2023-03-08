//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.7.9
//
// <auto-generated>
//
// Generated from file `Types.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

import Foundation
import Ice

/// Indicates a failure in the Bluetooth plug-in.
open class BluetoothException: Ice.LocalException {
    /// Provides more information about the failure.
    public var reason: Swift.String = ""

    public required init() {
        super.init()
    }

    public init(reason: Swift.String, file: Swift.String = #file, line: Swift.Int = #line) {
        self.reason = reason
        super.init(file: file, line: line)
    }

    /// Returns the Slice type ID of this exception.
    ///
    /// - returns: `Swift.String` - the Slice type ID of this exception.
    open override class func ice_staticId() -> Swift.String {
        return "::IceBT::BluetoothException"
    }

    /// Returns a string representation of this exception
    ///
    /// - returns: `Swift.String` - The string representaton of this exception.
    open override func ice_print() -> Swift.String {
        return _BluetoothExceptionDescription
    }
}
