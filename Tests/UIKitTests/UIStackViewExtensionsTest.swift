//
//  UIStackViewExtensionsTest.swift
//  SwifterSwift
//
//  Created by Benjamin Meyer on 2/18/18.
//


#if os(iOS) || os(tvOS)
    
import XCTest
@testable import SwifterSwift

class UIStackViewExtensionsTest: XCTestCase {
    
    // MARK: - Initializers
    func testInitWithViews() {
        let view1 = UIView()
        let view2 = UIView()
        var stack = UIStackView(views: [view1, view2])
        
        XCTAssertEqual(stack.arrangedSubviews.count, 2)
        XCTAssertTrue(stack.arrangedSubviews[0] === view1)
        XCTAssertTrue(stack.arrangedSubviews[1] === view2)
        //defaults
        XCTAssertEqual(stack.axis, .horizontal)
        XCTAssertEqual(stack.alignment, .fill)
        XCTAssertEqual(stack.distribution, .fill)
        XCTAssertEqual(stack.spacing, 0.0)
        
        XCTAssertEqual(UIStackView(views: [view1, view2], orientation: .vertical).axis, .vertical)
        XCTAssertEqual(UIStackView(views: [view1, view2], alignment: .center).alignment, .center)
        XCTAssertEqual(UIStackView(views: [view1, view2], distribution: .fillEqually).distribution, .fillEqually)
        XCTAssertEqual(UIStackView(views: [view1, view2], spacing: 16.0).spacing, 16.0)
        
        stack = UIStackView(views: [view1, view2], orientation: .vertical, spacing: 16.0,
                                  alignment: .center, distribution: .fillEqually)
        
        XCTAssertEqual(stack.axis, .vertical)
        XCTAssertEqual(stack.alignment, .center)
        XCTAssertEqual(stack.distribution, .fillEqually)
        XCTAssertEqual(stack.spacing, 16.0)
    }
}
#endif
