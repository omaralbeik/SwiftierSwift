//
//  DoubleExtensions.swift
//  SwifterSwift
//
//  Created by Omar Albeik on 8/6/16.
//  Copyright © 2016 Omar Albeik. All rights reserved.
//

import Foundation

public extension Double {
    /// Return absolute of double value.
    public var abs: Double {
        return Swift.abs(self)
    }
    
    /// Return ceil of double value.
    public var ceil: Double {
        return Foundation.ceil(self)
    }
    
    /// Return radian value of degree input.
    public var degreesToRadians: Double {
        return Double(M_PI) * self / 180.0
    }
    
    /// Return random double value between two double values.
    public static func randomBetween(min: Double, max: Double) -> Double {
        let delta = max - min
        return min + Double(arc4random_uniform(UInt32(delta)))
    }
}

/// Return value of exponentiation.
infix operator ^
public func ^ (left: Double, right: Double) -> Double {
    // http://nshipster.com/swift-operators/
    return pow(left, right)
}

public extension Double {
    /// Return floor of double value.
    public var floor: Double {
        return Foundation.floor(self)
    }
    
    /// Return degree value of radian input.
    public var radiansToDegrees: Double {
        return self * 180 / Double(M_PI)
    }
}

/// Return tuple of plus-minus operation.
infix operator ±
public func ± (left: Double, right: Double) -> (Double, Double) {
    // http://nshipster.com/swift-operators/
    return (left + right, left - right)
}

// Return tuple of plus-minus operation.
prefix operator ±
public prefix func ± (value: Double) -> (Double, Double) {
    // http://nshipster.com/swift-operators/
    return 0 ± value
}

/// Return square root of value.
prefix operator √
public prefix func √ (number: Double) -> Double {
    // http://nshipster.com/swift-operators/
    return sqrt(number)
}
