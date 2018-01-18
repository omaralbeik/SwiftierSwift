//
//  URLExtensionsTests.swift
//  SwifterSwift
//
//  Created by Omar Albeik on 03/02/2017.
//  Copyright © 2017 SwifterSwift
//

import XCTest
@testable import SwifterSwift

final class URLExtensionsTests: XCTestCase {
	
	var url = URL(string: "https://www.google.com")!
	let params = ["q": "swifter swift"]
	let queryUrl = URL(string: "https://www.google.com?q=swifter%20swift")!

	override func setUp() {
		super.setUp()
		// Put setup code here. This method is called before the invocation of each test method in the class.
	}
	
	override func tearDown() {
		// Put teardown code here. This method is called after the invocation of each test method in the class.
		super.tearDown()
	}
	
	func testAppendingQueryParameters() {
		XCTAssertEqual(url.appendingQueryParameters(params), queryUrl)
	}
	
	func testAppendQueryParameters() {
		url.appendQueryParameters(params)
		XCTAssertEqual(url, queryUrl)
	}
    
    func testQueryItemsVar() {
        let url = URL(string: "https://www.google.com?q=swifter%20swift&steve=jobs")!
        guard let parameters = url.queryParameters, let qValue = parameters["q"], let steveValue = parameters["steve"] else {
            XCTAssert(false)
            return
        }
        
        XCTAssertEqual(parameters.count, 2)
        XCTAssertEqual(qValue, "swifter swift")
        XCTAssertEqual(steveValue, "jobs")
    }
	
}
