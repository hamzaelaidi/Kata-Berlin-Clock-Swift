import Foundation

class BerlinClock {
    
    let formatter = DateFormatter()
    let caledar = Calendar.current
    
    init() {
        formatter.dateFormat = "HH:mm:ss"
    }
    
    func convertToBerlinTime(timeStr: String) -> String {
        
        guard let time = formatter.date(from: timeStr) else {
            return "Time is not in correct format"
        }
        
        let hour   = caledar.component(.hour, from: time)
        let minute = caledar.component(.minute, from: time)
        let second = caledar.component(.second, from: time)
        
        return "\(seconds(number: second))\n\(topHours(number: hour))\n\(bottomHours(number: hour))\n\(topMinutes(number: minute))\n\(bottomMinutes(number: minute))"
        
    }
    
    func seconds(number: Int)  -> String {
        if number.isMultiple(of: 2) {
            return "Y"
        }
        return "O"
    }
    
    func topHours(number: Int) -> String {
        return isOn(lamps: 4, singsOn: topOnNumber(number: number), sign: "R")
    }
    
    func bottomHours(number: Int) -> String {
        return isOn(lamps: 4, singsOn: number % 5, sign: "R")
    }
    
    func topMinutes(number: Int) -> String {
        return isOn(lamps: 11, singsOn: topOnNumber(number: number), sign: "Y").replacingOccurrences(of: "YYY", with: "YYR")
    }
    
    func bottomMinutes(number: Int) -> String {
        return isOn(lamps: 4, singsOn: number % 5, sign: "Y")
    }
    
    func isOn(lamps: Int, singsOn: Int, sign: String) -> String {
        var result = ""
        for _ in 0..<singsOn {
            result += sign
        }
        for _ in 0..<(lamps - singsOn) {
            result += "O"
        }
        return result
    }
    
    func topOnNumber(number: Int)  -> Int  {
        return (number - (number % 5)) / 5
    }
    
}

let berlinClock = BerlinClock()
print(berlinClock.convertToBerlinTime(timeStr: "13:17:01"))
