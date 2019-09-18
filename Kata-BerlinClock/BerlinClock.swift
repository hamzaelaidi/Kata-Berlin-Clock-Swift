//
//  BerlinClock.swift
//  Kata-BerlinClock
//
//  Created by Hamza EL AIDI on 17/09/2019.
//  Copyright © 2019 Hamza EL AIDI. All rights reserved.
//

import Foundation

class BerlinClock {
    
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
