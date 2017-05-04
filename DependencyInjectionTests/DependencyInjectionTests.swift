//
//  DependencyInjectionTests.swift
//  DependencyInjectionTests
//
//  Created by Jason Gresh on 5/3/17.
//  Copyright © 2017 C4Q. All rights reserved.
//

import XCTest
@testable import DependencyInjection

class DependencyInjectionTests: XCTestCase {
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testDataSource() {
        let vc = ViewController(with: TestDataSource())
        
        let expectedRows = 3;
        XCTAssertTrue(vc.tableView.numberOfRows(inSection: 0) == expectedRows)
        
        let cell = vc.tableView.dataSource?.tableView(vc.tableView, cellForRowAt: IndexPath(row: 0, section: 0))
        XCTAssertNotNil(cell)
        
        XCTAssertEqual(cell?.textLabel?.text, "Row 0")
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
