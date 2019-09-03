import Foundation

class BerlinClock {
    
    enum CustomError: Error {
        case validTimeException(String)
    }
    
    let formatter = DateFormatter()
    let caledar = Calendar.current
    
    init() {
        formatter.dateFormat = "HH:mm:ss"
    }
    
    func convertToBerlinTime(timeStr: String) throws -> String {
        
        guard let time = formatter.date(from: timeStr) else {
            throw CustomError.validTimeException("Time is not in correct format")
        }
        
        let hourConverter   = HourConverter(hour: caledar.component(.hour, from: time))
        let minuteConverter = MinuteConverter(minute: caledar.component(.minute, from: time))
        let secondConverter = SecondConverter(second: caledar.component(.second, from: time))
        
        return "\(secondConverter.convert())\n\(hourConverter.convert())\n\(minuteConverter.convert())"
        
    }
    
}
