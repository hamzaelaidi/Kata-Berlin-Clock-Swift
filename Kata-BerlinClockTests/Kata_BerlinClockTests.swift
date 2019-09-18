//
//  Kata_BerlinClockTests.swift
//  Kata-BerlinClockTests
//
//  Created by Hamza EL AIDI on 17/09/2019.
//  Copyright © 2019 Hamza EL AIDI. All rights reserved.
//

import XCTest
import InstantMock
@testable import Kata_BerlinClock


// Class BerlinClock Mocked
class BerlinClockMock: BerlinClock, MockDelegate {
    private let mock = Mock()
    
    var it: Mock {
        return mock
    }
    
    override func convertToBerlinTime(timeStr: String) throws -> String {
        return try super.convertToBerlinTime(timeStr: timeStr)
    }
}


// Tests
class Kata_BerlinClockTests: XCTestCase {
    
    let mock = BerlinClockMock()
    
    func test_should_return_Y_OOOO_OOOO_OOOOOOOOOOO_OOOO_when_time_is_00_00_00() {
        XCTAssertEqual(try mock.convertToBerlinTime(timeStr: "00:00:00"), "Y\nOOOO\nOOOO\nOOOOOOOOOOO\nOOOO")
    }

    func test_should_throw_exception_when_time_is_not_in_correct_format() {
        XCTAssertThrowsError(try mock.convertToBerlinTime(timeStr: "24:00:00"))
    }
    func test_should_not_throw_when_time_is_in_correct_format() {
        XCTAssertNoThrow(try mock.convertToBerlinTime(timeStr: "20:17:34"))
    }

    func test_should_return_O_RROO_RRRO_YYROOOOOOOO_YYOO_when_time_is_13_17_01() {
        XCTAssertEqual(try mock.convertToBerlinTime(timeStr: "13:17:01"), "O\nRROO\nRRRO\nYYROOOOOOOO\nYYOO")
    }

}
