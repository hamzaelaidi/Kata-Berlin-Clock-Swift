//
//  SecondConverterTests.swift
//  Kata-BerlinClockTests
//
//  Created by Hamza EL AIDI on 18/09/2019.
//  Copyright © 2019 Hamza EL AIDI. All rights reserved.
//

import XCTest
@testable import Kata_BerlinClock

class SecondConverterTests: XCTestCase {
    
    let secondConverter = SecondConverter()

    func test_should_return_Y_when_input_is_multiple_2() {
        XCTAssertEqual(secondConverter.convert(second: 2),  "Y")
        XCTAssertEqual(secondConverter.convert(second: 4), "Y")
        XCTAssertEqual(secondConverter.convert(second: 6),  "Y")
        XCTAssertEqual(secondConverter.convert(second: 10), "Y")
    }
    
    func test_should_return_O_when_input_is_not_multiple_2() {
        XCTAssertEqual(secondConverter.convert(second: 3),  "O")
        XCTAssertEqual(secondConverter.convert(second: 9),  "O")
        XCTAssertEqual(secondConverter.convert(second: 15), "O")
        XCTAssertEqual(secondConverter.convert(second: 21), "O")
    }

}
