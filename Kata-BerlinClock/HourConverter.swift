//
//  HourConverter.swift
//  Kata-BerlinClock
//
//  Created by Hamza EL AIDI on 17/09/2019.
//  Copyright © 2019 Hamza EL AIDI. All rights reserved.
//

import Foundation

class HourConverter {
    
    private var timeIsOn : TimeIsOn?
    
    init() {
        timeIsOn = TimeIsOn()
    }
    
    func convert(hour: Int) -> String {
        return "\(topHours(number: hour))\n\(bottomHours(number: hour))"
    }
    
    private func topHours(number: Int) -> String {
        return timeIsOn!.isOn(lamps: 4, singsOn: timeIsOn!.topOnNumber(number: number), sign: "R")
    }
    
    private func bottomHours(number: Int) -> String {
        return timeIsOn!.isOn(lamps: 4, singsOn: number % 5, sign: "R")
    }
    
}
