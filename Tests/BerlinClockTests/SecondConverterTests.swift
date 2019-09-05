import XCTest
@testable import BerlinClock

class SecondConverteTests: XCTestCase {
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
    
    static var allTests = [
        ("test_should_return_Y_when_input_is_multiple_2", test_should_return_Y_when_input_is_multiple_2),
        ("test_should_return_O_when_input_is_not_multiple_2", test_should_return_O_when_input_is_not_multiple_2),
    ]
}
