import XCTest
@testable import BerlinClock

class HourConverterTest: XCTestCase {
    func test_should_return_OOOO_OOOO_when_hour_is_00() {
        let hourConverter = HourConverter(hour: 00)
        XCTAssertEqual(hourConverter.convert(), "OOOO\nOOOO")
    }
    
    func test_should_return_OOOO_OOOO_when_hour_is_13() {
        let hourConverter = HourConverter(hour: 13)
        XCTAssertEqual(hourConverter.convert(), "RROO\nRRRO")
    }
    
    static var allTests = [
        ("test_should_return_OOOO_OOOO_when_hour_is_00", test_should_return_OOOO_OOOO_when_hour_is_00),
        ("test_should_return_OOOO_OOOO_when_hour_is_13", test_should_return_OOOO_OOOO_when_hour_is_13),
    ]
}
