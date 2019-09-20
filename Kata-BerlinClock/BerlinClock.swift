//
//  BerlinClock.swift
//  Kata-BerlinClock
//
//  Created by Hamza EL AIDI on 17/09/2019.
//  Copyright © 2019 Hamza EL AIDI. All rights reserved.
//

import Foundation

class BerlinClock {
    
    private var hourConverter: HourConverter!
    private var minuteConverter: MinuteConverter!
    private var secondConverter: SecondConverter!
    
    init(hourConverter: HourConverter, minuteConverter: MinuteConverter, secondConverter: SecondConverter) {
        
        self.hourConverter   = hourConverter
        self.minuteConverter = minuteConverter
        self.secondConverter = secondConverter
    }
    
    func convertToBerlinTime(timeStr: String) -> String {
        let splitTime = timeStr.components(separatedBy: ":")
        
        return "\(secondConverter.convert(second: Int(splitTime[2])!))\n\(hourConverter.convert(hour: Int(splitTime[0])!))\n\(minuteConverter.convert(minute: Int(splitTime[1])!))"
        
    }
    
}
