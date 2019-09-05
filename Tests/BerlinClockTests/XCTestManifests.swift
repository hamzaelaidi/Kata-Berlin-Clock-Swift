import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(BerlinClockTests.allTests),
        testCase(SecondConverterTests.allTests),
        testCase(MinuteConverterTests.allTests),
        testCase(HourConverterTests.allTests),
    ]
}
#endif
