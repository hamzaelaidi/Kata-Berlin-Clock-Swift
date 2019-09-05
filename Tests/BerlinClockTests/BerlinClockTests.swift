import XCTest
@testable import BerlinClock

class MockedBerlinClock: BerlinClockProtocole {
    func convertToBerlinTime(timeStr: String) throws -> String {
        enum CustomError: Error {
            case validTimeException(String)
        }
        let calendar = Calendar.current
        let formatter = DateFormatter()
        formatter.dateFormat = "HH:mm:ss"
        guard let time = formatter.date(from: timeStr) else {
            throw CustomError.validTimeException("Time is not in correct format")
        }
        
        let hourConverter   = HourConverter(hour: calendar.component(.hour, from: time))
        let minuteConverter = MinuteConverter(minute: calendar.component(.minute, from: time))
        let secondConverter = SecondConverter(second: calendar.component(.second, from: time))
        
        return "\(secondConverter.convert())\n\(hourConverter.convert())\n\(minuteConverter.convert())"
    }
}

final class BerlinClockTests: XCTestCase {
    
    let mockedBerlinClock = MockedBerlinClock()
    
    func test_should_return_Y_OOOO_OOOO_OOOOOOOOOOO_OOOO_when_time_is_00_00_00() {
        XCTAssertEqual(try mockedBerlinClock.convertToBerlinTime(timeStr: "00:00:00"), "Y\nOOOO\nOOOO\nOOOOOOOOOOO\nOOOO")
    }
    
    func test_should_throw_exception_when_time_is_not_in_correct_format() {
        XCTAssertThrowsError(try mockedBerlinClock.convertToBerlinTime(timeStr: "24:00:00"))
    }
    func test_should_not_throw_when_time_is_in_correct_format() {
        XCTAssertNoThrow(try mockedBerlinClock.convertToBerlinTime(timeStr: "20:17:34"))
    }
    
    func test_should_return_O_RROO_RRRO_YYROOOOOOOO_YYOO_when_time_is_13_17_01() {
        XCTAssertEqual(try mockedBerlinClock.convertToBerlinTime(timeStr: "13:17:01"), "O\nRROO\nRRRO\nYYROOOOOOOO\nYYOO")
    }
    
    static var allTests = [
        ("test_should_return_Y_OOOO_OOOO_OOOOOOOOOOO_OOOO_when_time_is_00_00_00", test_should_return_Y_OOOO_OOOO_OOOOOOOOOOO_OOOO_when_time_is_00_00_00),
        ("test_should_throw_exception_when_time_is_not_in_correct_format", test_should_throw_exception_when_time_is_not_in_correct_format),
        ("test_should_not_throw_when_time_is_in_correct_format", test_should_not_throw_when_time_is_in_correct_format),
        ("test_should_return_O_RROO_RRRO_YYROOOOOOOO_YYOO_when_time_is_13_17_01", test_should_return_O_RROO_RRRO_YYROOOOOOOO_YYOO_when_time_is_13_17_01),
        ]
}
