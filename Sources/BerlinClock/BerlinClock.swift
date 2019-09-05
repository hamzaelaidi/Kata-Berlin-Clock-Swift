import Foundation

protocol BerlinClockProtocole {
    func convertToBerlinTime(timeStr: String) throws -> String
}

class BerlinClock: BerlinClockProtocole {
    
    enum CustomError: Error {
        case validTimeException(String)
    }
    
    let formatter = DateFormatter()
    let calendar = Calendar.current
    
    init() {
        formatter.dateFormat = "HH:mm:ss"
    }
    
    func convertToBerlinTime(timeStr: String) throws -> String {
        
        guard let time = formatter.date(from: timeStr) else {
            throw CustomError.validTimeException("Time is not in correct format")
        }
        
        let hourConverter   = HourConverter(hour: calendar.component(.hour, from: time))
        let minuteConverter = MinuteConverter(minute: calendar.component(.minute, from: time))
        let secondConverter = SecondConverter(second: calendar.component(.second, from: time))
        
        return "\(secondConverter.convert())\n\(hourConverter.convert())\n\(minuteConverter.convert())"
        
    }
    
}
