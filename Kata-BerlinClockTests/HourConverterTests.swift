//
//  HourConverterTests.swift
//  Kata-BerlinClockTests
//
//  Created by Hamza EL AIDI on 18/09/2019.
//  Copyright © 2019 Hamza EL AIDI. All rights reserved.
//

import XCTest
@testable import Kata_BerlinClock

class HourConverterTests: XCTestCase {

    func test_should_return_OOOO_OOOO_when_hour_is_00() {
        let hourConverter = HourConverter(hour: 00)
        XCTAssertEqual(hourConverter.convert(), "OOOO\nOOOO")
    }
    
    func test_should_return_OOOO_OOOO_when_hour_is_13() {
        let hourConverter = HourConverter(hour: 13)
        XCTAssertEqual(hourConverter.convert(), "RROO\nRRRO")
    }

}
