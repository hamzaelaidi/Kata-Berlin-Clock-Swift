//
//  MinuteConverterTests.swift
//  Kata-BerlinClockTests
//
//  Created by Hamza EL AIDI on 18/09/2019.
//  Copyright © 2019 Hamza EL AIDI. All rights reserved.
//

import XCTest
@testable import Kata_BerlinClock

class MinuteConverterTests: XCTestCase {

    func test_should_return_OOOOOOOO_OOOO_when_minute_is_00() {
        let minuteConverter = MinuteConverter(minute: 00)
        XCTAssertEqual(minuteConverter.convert(), "OOOOOOOOOOO\nOOOO")
    }
    
    func test_should_return_OOOOOOOO_OOOO_when_minute_is_17() {
        let minuteConverter = MinuteConverter(minute: 17)
        XCTAssertEqual(minuteConverter.convert(), "YYROOOOOOOO\nYYOO")
    }

}
