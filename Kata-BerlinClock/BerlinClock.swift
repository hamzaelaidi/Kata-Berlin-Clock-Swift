//
//  BerlinClock.swift
//  Kata-BerlinClock
//
//  Created by Hamza EL AIDI on 17/09/2019.
//  Copyright © 2019 Hamza EL AIDI. All rights reserved.
//

import Foundation

class BerlinClock {
    
    func startConvert(timeStr: String) -> String {
        
        let splitTime = timeStr.components(separatedBy: ":")
        
        let hourConverter   = HourConverter(hour: Int(splitTime[0])!)
        let minuteConverter = MinuteConverter(minute: Int(splitTime[1])!)
        let secondConverter = SecondConverter(second: Int(splitTime[2])!)
        
        return convertToBerlinTime(ConvertedHour: hourConverter.convert(), convertedMinute: minuteConverter.convert(), convertedSecond: secondConverter.convert())
    }
    
    func convertToBerlinTime(ConvertedHour: String, convertedMinute: String, convertedSecond: String) -> String {
        
        return "\(convertedSecond)\n\(ConvertedHour)\n\(convertedMinute)"
        
    }
    
}
