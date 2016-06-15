//
//  IGCHeaderTests.swift
//  Iguazu
//
//  Created by Engin Kurutepe on 15/06/2016.
//  Copyright © 2016 Fifteen Jugglers Software. All rights reserved.
//

import XCTest
@testable import Iguazu

class IGCHeaderTests: XCTestCase {
    
    let dateHeaderString = "HFDTE250809"
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testDateHeader() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        if let dateHeader = IGCHeaderField.parseHLine(hLine: dateHeaderString) {
            switch dateHeader {
            case .date(let d):
                print("date \(d)")
                XCTAssertTrue(d.timeIntervalSinceReferenceDate == 272851200.0)
            default:
                XCTFail("expecting a date header but got something else")
            }
        } else {
            XCTFail("failed to parse a non-nil header from \(dateHeaderString)")
        }
        return
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
