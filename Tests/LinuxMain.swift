import XCTest

import BerlinClockTests

var tests = [XCTestCaseEntry]()
tests += BerlinClockTests.allTests()
tests += SecondConverterTests.allTests()
tests += MinuteConverterTests.allTests()
tests += HourConverterTests.allTests()
XCTMain(tests)
