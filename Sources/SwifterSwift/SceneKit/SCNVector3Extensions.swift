//
//  SCNVector3Extensions.swift
//  SwifterSwift
//
//  Created by Max Härtwig on 04.04.19.
//  Copyright © 2019 SwifterSwift
//

#if canImport(SceneKit)
import SceneKit

// MARK: - Methods
public extension SCNVector3 {

    /// SwifterSwift: Returns the absolute values of the vector's components.
    ///
    ///         SCNVector3(2, -3, -6).abs -> SCNVector3(2, 3, 6)
    ///
    var absolute: SCNVector3 {
        return SCNVector3(abs(x), abs(y), abs(z))
    }

    /// SwifterSwift: Returns the length of the vector.
    ///
    ///         SCNVector3(2, 3, 6).length -> 7
    ///
    var length: Float {
        return sqrt(pow(x, 2) + pow(y, 2) + pow(z, 2))
    }

}

// MARK: - Operators
public extension SCNVector3 {

    /// SwifterSwift: Add two SCNVector3s.
    ///
    ///     SCNVector3(10, 10, 10) + SCNVector3(10, 20, -30) -> SCNVector3(20, 30, -20)
    ///
    /// - Parameters:
    ///   - lhs: SCNVector3 to add to.
    ///   - rhs: SCNVector3 to add.
    /// - Returns: result of addition of the two given SCNVector3s.
    static func + (lhs: SCNVector3, rhs: SCNVector3) -> SCNVector3 {
        return SCNVector3(lhs.x + rhs.x, lhs.y + rhs.y, lhs.z + rhs.z)
    }

    /// SwifterSwift: Add a SCNVector3 to self.
    ///
    ///     SCNVector3(10, 10, 10) += SCNVector3(10, 20, -30) -> SCNVector3(20, 30, -20)
    ///
    /// - Parameters:
    ///   - lhs: self
    ///   - rhs: SCNVector3 to add.
    static func += (lhs: inout SCNVector3, rhs: SCNVector3) {
        // swiftlint:disable:next shorthand_operator
        lhs = lhs + rhs
    }

    /// SwifterSwift: Subtract two SCNVector3s.
    ///
    ///     SCNVector3(10, 10, 10) - SCNVector3(10, 20, -30) -> SCNVector3(0, -10, 40)
    ///
    /// - Parameters:
    ///   - lhs: SCNVector3 to subtract from.
    ///   - rhs: SCNVector3 to subtract.
    /// - Returns: result of subtract of the two given SCNVector3s.
    static func - (lhs: SCNVector3, rhs: SCNVector3) -> SCNVector3 {
        return SCNVector3(lhs.x - rhs.x, lhs.y - rhs.y, lhs.z - rhs.z)
    }

    /// SwifterSwift: Subtract a SCNVector3 from self.
    ///
    ///     SCNVector3(10, 10, 10) -= SCNVector3(10, 20, -30) -> SCNVector3(0, -10, 40)
    ///
    /// - Parameters:
    ///   - lhs: self
    ///   - rhs: SCNVector3 to subtract.
    static func -= (lhs: inout SCNVector3, rhs: SCNVector3) {
        // swiftlint:disable:next shorthand_operator
        lhs = lhs - rhs
    }

    /// SwifterSwift: Multiply a SCNVector3 with a scalar
    ///
    ///     SCNVector3(10, 20, -30) * 3 -> SCNVector3(30, 60, -90)
    ///
    /// - Parameters:
    ///   - vector: SCNVector3 to multiply.
    ///   - scalar: scalar value.
    /// - Returns: result of multiplication of the given SCNVector3 with the scalar.
    static func * (vector: SCNVector3, scalar: Float) -> SCNVector3 {
        return SCNVector3(vector.x * scalar, vector.y * scalar, vector.z * scalar)
    }

    /// SwifterSwift: Multiply self with a scalar
    ///
    ///     SCNVector3(10, 20, -30) *= 3 -> SCNVector3(30, 60, -90)
    ///
    /// - Parameters:
    ///   - vector: self.
    ///   - scalar: scalar value.
    /// - Returns: result of multiplication of the given CGPoint with the scalar.
    static func *= (point: inout SCNVector3, scalar: Float) {
        // swiftlint:disable:next shorthand_operator
        point = point * scalar
    }

    /// SwifterSwift: Multiply a scalar with a SCNVector3
    ///
    ///     3 * SCNVector3(10, 20, -30) -> SCNVector3(30, 60, -90)
    ///
    /// - Parameters:
    ///   - scalar: scalar value.
    ///   - vector: SCNVector3 to multiply.
    /// - Returns: result of multiplication of the given CGPoint with the scalar.
    static func * (scalar: Float, vector: SCNVector3) -> SCNVector3 {
        return SCNVector3(vector.x * scalar, vector.y * scalar, vector.z * scalar)
    }

}

#endif
