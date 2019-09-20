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


protocol converterProtocol {
    func convertHour() -> String
    func convertMinute() -> String
    func convertSecond() -> String
}

class converterMock: Mock, converterProtocol {
    func convertHour() -> String {
        return super.call()!
    }
    
    func convertMinute() -> String {
        return super.call()!
    }
    
    func convertSecond() -> String {
        return super.call()!
    }
    
}

// Tests
class Kata_BerlinClockTests: XCTestCase {
    
    func test_should_return_Y_OOOO_OOOO_OOOOOOOOOOO_OOOO_when_time_is_00_00_00() {
        let berlinClock = BerlinClock()
        
        let mock = converterMock()
        mock.expect().call(mock.convertSecond()).andReturn("Y")
        mock.expect().call(mock.convertHour()).andReturn("OOOO\nOOOO")
        mock.expect().call(mock.convertMinute()).andReturn("OOOOOOOOOOO\nOOOO")
        
        XCTAssertEqual(berlinClock.convertToBerlinTime(ConvertedHour: mock.convertHour(), convertedMinute: mock.convertMinute(), convertedSecond: mock.convertSecond()), "Y\nOOOO\nOOOO\nOOOOOOOOOOO\nOOOO")
    }

}
