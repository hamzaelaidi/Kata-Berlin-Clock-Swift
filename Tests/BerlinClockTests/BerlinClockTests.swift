import XCTest
@testable import BerlinClock

final class BerlinClockTests: XCTestCase {
    
    let berlinClock = BerlinClock()
    
    // Test Class SecondConverter
    
    func test_should_return_Y_when_input_is_multiple_2() {
        let secondConverter_2 = SecondConverter(second: 2)
        let secondConverter_4 = SecondConverter(second: 4)
        let secondConverter_6 = SecondConverter(second: 6)
        let secondConverter_10 = SecondConverter(second: 10)
        XCTAssertEqual(secondConverter_2.convert(),  "Y")
        XCTAssertEqual(secondConverter_4.convert(), "Y")
        XCTAssertEqual(secondConverter_6.convert(),  "Y")
        XCTAssertEqual(secondConverter_10.convert(), "Y")
    }

    func test_should_return_O_when_input_is_not_multiple_2() {
        let secondConverter_3 = SecondConverter(second: 3)
        let secondConverter_9 = SecondConverter(second: 9)
        let secondConverter_15 = SecondConverter(second: 15)
        let secondConverter_21 = SecondConverter(second: 21)
        XCTAssertEqual(secondConverter_3.convert(),  "O")
        XCTAssertEqual(secondConverter_9.convert(),  "O")
        XCTAssertEqual(secondConverter_15.convert(), "O")
        XCTAssertEqual(secondConverter_21.convert(), "O")
    }
    
    func test_should_return_OOOO_OOOO_when_hour_is_00() {
        let hourConverter = HourConverter(hour: 00)
        XCTAssertEqual(hourConverter.convert(), "OOOO\nOOOO")
    }
    
    func test_should_return_OOOO_OOOO_when_hour_is_13() {
        let hourConverter = HourConverter(hour: 13)
        XCTAssertEqual(hourConverter.convert(), "RROO\nRRRO")
    }
    
    func test_should_return_OOOOOOOO_OOOO_when_minute_is_00() {
        let minuteConverter = MinuteConverter(minute: 00)
        XCTAssertEqual(minuteConverter.convert(), "OOOOOOOOOOO\nOOOO")
    }
    
    func test_should_return_OOOOOOOO_OOOO_when_minute_is_17() {
        let minuteConverter = MinuteConverter(minute: 17)
        XCTAssertEqual(minuteConverter.convert(), "YYROOOOOOOO\nYYOO")
    }
    
    func test_should_return_Y_OOOO_OOOO_OOOOOOOOOOO_OOOO_when_time_is_00_00_00() {
        XCTAssertEqual(try berlinClock.convertToBerlinTime(timeStr: "00:00:00"), "Y\nOOOO\nOOOO\nOOOOOOOOOOO\nOOOO")
    }
    
    func test_should_throw_exception_when_time_is_not_in_correct_format() {
        XCTAssertThrowsError(try berlinClock.convertToBerlinTime(timeStr: "24:00:00"))
    }
    func test_should_not_throw_when_time_is_in_correct_format() {
        XCTAssertNoThrow(try berlinClock.convertToBerlinTime(timeStr: "20:17:34"))
    }
    
    func test_should_return_O_RROO_RRRO_YYROOOOOOOO_YYOO_when_time_is_13_17_01() {
        XCTAssertEqual(try berlinClock.convertToBerlinTime(timeStr: "13:17:01"), "O\nRROO\nRRRO\nYYROOOOOOOO\nYYOO")
    }
    
    static var allTests = [
        ("test_should_return_Y_OOOO_OOOO_OOOOOOOOOOO_OOOO_when_time_is_00_00_00", test_should_return_Y_OOOO_OOOO_OOOOOOOOOOO_OOOO_when_time_is_00_00_00),
        ("test_should_return_OOOOOOOO_OOOO_when_minute_is_00", test_should_return_OOOOOOOO_OOOO_when_minute_is_00),
        ("test_should_return_OOOOOOOO_OOOO_when_minute_is_17", test_should_return_OOOOOOOO_OOOO_when_minute_is_17),
        ("test_should_return_OOOO_OOOO_when_hour_is_00", test_should_return_OOOO_OOOO_when_hour_is_00),
        ("test_should_return_OOOO_OOOO_when_hour_is_13", test_should_return_OOOO_OOOO_when_hour_is_13),
        ("test_should_return_Y_when_input_is_multiple_2", test_should_return_Y_when_input_is_multiple_2),
        ("test_should_return_O_when_input_is_not_multiple_2", test_should_return_O_when_input_is_not_multiple_2),
        ("test_should_throw_exception_when_time_is_not_in_correct_format", test_should_throw_exception_when_time_is_not_in_correct_format),
        ("test_should_not_throw_when_time_is_in_correct_format", test_should_not_throw_when_time_is_in_correct_format),
        ("test_should_return_O_RROO_RRRO_YYROOOOOOOO_YYOO_when_time_is_13_17_01", test_should_return_O_RROO_RRRO_YYROOOOOOOO_YYOO_when_time_is_13_17_01),
        ]
}
