//
//  NSImageExtensionsTests.swift
//  SwifterSwift-macOSTests
//
//  Created by BUDDAx2 on 20.10.2017.
//

#if os(macOS)
    
import XCTest
@testable import SwifterSwift

final class NSImageExtensionsTests: XCTestCase {
    
    func testScaledToMaxSize() {
        let bundle = Bundle.init(for: NSImageExtensionsTests.self)
        let image = bundle.image(forResource: NSImage.Name(rawValue: "TestImage"))
        XCTAssertNotNil(image)
        
        let scaledImage = image!.scaled(toMaxSize: NSSize(width: 150, height: 150))
        XCTAssertNotNil(scaledImage)
        if scaledImage.size.width > scaledImage.size.height {
            XCTAssertEqual(scaledImage.size.width, 150)
        } else {
            XCTAssertEqual(scaledImage.size.height, 150)
        }
    }
    
}

#endif
