import XCTest
@testable import BerlinClock

class MinuteConveterTest: XCTestCase {
    func test_should_return_OOOOOOOO_OOOO_when_minute_is_00() {
        let minuteConverter = MinuteConverter(minute: 00)
        XCTAssertEqual(minuteConverter.convert(), "OOOOOOOOOOO\nOOOO")
    }
    
    func test_should_return_OOOOOOOO_OOOO_when_minute_is_17() {
        let minuteConverter = MinuteConverter(minute: 17)
        XCTAssertEqual(minuteConverter.convert(), "YYROOOOOOOO\nYYOO")
    }
    
    static var allTests = [
        ("test_should_return_OOOOOOOO_OOOO_when_minute_is_00", test_should_return_OOOOOOOO_OOOO_when_minute_is_00),
        ("test_should_return_OOOOOOOO_OOOO_when_minute_is_17", test_should_return_OOOOOOOO_OOOO_when_minute_is_17),
    ]
}
