//
//  DataExtensions.swift
//  SwifterSwift
//
//  Created by Omar Albeik on 07/12/2016.
//  Copyright © 2016 SwifterSwift
//

import Foundation

// MARK: - Properties
public extension Data {
	
	/// SwifterSwift: Return data as an array of bytes.
	public var bytes: [UInt8] {
		// http://stackoverflow.com/questions/38097710/swift-3-changes-for-getbytes-method
		return [UInt8](self)
	}
    
    /// SwifterSwift: Return data.bytes as a hex string.
    ///
    ///     let data = Data(bytes: [0x30, 0x31, 0x32, 0x33])
    ///     let hexString = data.hexString -> "0123"
    public var hexString: String {
        return bytes.reduce("", {
            $0 + String(format:"%02X", $1)
        })
    }
}

// MARK: - Methods
public extension Data {
	
	/// SwifterSwift: String by encoding Data using the given encoding (if applicable).
	///
	/// - Parameter encoding: encoding.
	/// - Returns: String by encoding Data using the given encoding (if applicable).
	public func string(encoding: String.Encoding) -> String? {
		return String(data: self, encoding: encoding)
	}
	
}
