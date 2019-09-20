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

    let minuteConverter = MinuteConverter()
    
    func test_should_return_OOOOOOOO_OOOO_when_minute_is_00() {
        XCTAssertEqual(minuteConverter.convert(minute: 0), "OOOOOOOOOOO\nOOOO")
    }
    
    func test_should_return_OOOOOOOO_OOOO_when_minute_is_17() {
        XCTAssertEqual(minuteConverter.convert(minute: 17), "YYROOOOOOOO\nYYOO")
    }

}
