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

// - MARK: Mocked class HourConverter
class HourConverterMock: HourConverter, MockDelegate {
    
    private let mock = Mock()
    
    var it: Mock {
        return mock
    }
    
    override func convert(hour: Int) -> String {
        return mock.call(Arg.eq(hour))!
    }
}

// - MARK: Mocked class HourConverter
class MinuteConverterMock: MinuteConverter, MockDelegate {
    
    private let mock = Mock()
    
    var it: Mock {
        return mock
    }
    
    override func convert(minute: Int) -> String {
        return mock.call(Arg.eq(minute))!
    }
}

// - MARK: Mocked class SecondConverter
class SecondConverterMock: SecondConverter, MockDelegate {
    
    private let mock = Mock()
    
    var it: Mock {
        return mock
    }
    
    override func convert(second: Int) -> String {
        return mock.call(Arg.eq(second))!
    }
}

// - MARK: Tests
class Kata_BerlinClockTests: XCTestCase {
    
    let hourConvertermock = HourConverterMock()
    let minuteConvertermock = MinuteConverterMock()
    let secondConvertermock = SecondConverterMock()
    
    func test_should_return_Y_OOOO_OOOO_OOOOOOOOOOO_OOOO_when_time_is_00_00_00() {
        
        secondConvertermock.it.expect().call(secondConvertermock.convert(second: 0)).andReturn("Y")
        hourConvertermock.it.expect().call(hourConvertermock.convert(hour: 0)).andReturn("OOOO\nOOOO")
        minuteConvertermock.it.expect().call(minuteConvertermock.convert(minute: 0)).andReturn("OOOOOOOOOOO\nOOOO")
        
        let berlinClock = BerlinClock(hourConverter: hourConvertermock, minuteConverter: minuteConvertermock, secondConverter: secondConvertermock)
        
        XCTAssertEqual(berlinClock.convertToBerlinTime(timeStr: "00:00:00"), "Y\nOOOO\nOOOO\nOOOOOOOOOOO\nOOOO")
    }

}
