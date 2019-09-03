//
//  HourConverter.swift
//  
//
//  Created by Hamza EL AIDI on 02/09/2019.
//

import Foundation

class HourConverter {
    
    private var hour : Int!
    private var timeIsOn : TimeIsOn?
    
    init(hour: Int) {
        self.hour = hour
        timeIsOn = TimeIsOn()
    }
    
    func convert() -> String {
        return "\(topHours(number: hour))\n\(bottomHours(number: hour))"
    }
    
    private func topHours(number: Int) -> String {
        return timeIsOn!.isOn(lamps: 4, singsOn: timeIsOn!.topOnNumber(number: number), sign: "R")
    }
    
    private func bottomHours(number: Int) -> String {
        return timeIsOn!.isOn(lamps: 4, singsOn: number % 5, sign: "R")
    }
    
}
