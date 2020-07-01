//
//  UIRefreshControlExntesionsTests.swift
//  SwifterSwift
//
//  Created by ratul sharker on 7/24/18.
//  Copyright © 2018 SwifterSwift
//

import XCTest
@testable import SwifterSwift

#if canImport(UIKit) && os(iOS)
import UIKit

final class UIRefreshControlExtensionTests: XCTestCase {

    func testBeginRefreshAsRefreshControlSubview() {
        let tableView = UITableView()
        XCTAssertEqual(tableView.contentOffset, .zero)
        let refreshControl = UIRefreshControl()
        tableView.addSubview(refreshControl)
        refreshControl.beginRefreshing(in: tableView, animated: true)

        XCTAssert(refreshControl.isRefreshing)
        XCTAssertEqual(tableView.contentOffset.y, -refreshControl.frame.height)

        let anotherTableview = UITableView()
        XCTAssertEqual(anotherTableview.contentOffset, .zero)
        anotherTableview.refreshControl = UIRefreshControl()
        anotherTableview.refreshControl?.beginRefreshing(in: anotherTableview, animated: true, sendAction: true)

        XCTAssert(anotherTableview.refreshControl!.isRefreshing)
        XCTAssertEqual(anotherTableview.contentOffset.y, -anotherTableview.refreshControl!.frame.height)
    }

}

#endif
