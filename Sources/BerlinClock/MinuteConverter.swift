//
//  MinuteConverter.swift
//  
//
//  Created by Hamza EL AIDI on 02/09/2019.
//

import Foundation

class MinuteConverter {
    
    private var minute: Int!
    private var timeIsOn : TimeIsOn?
    
    init(minute: Int) {
        self.minute = minute
        timeIsOn = TimeIsOn()
    }
    
    func convert() -> String {
        return "\(topMinutes(number: minute))\n\(bottomMinutes(number: minute))"
    }
    
    private func topMinutes(number: Int) -> String {
        return timeIsOn!.isOn(lamps: 11, singsOn: timeIsOn!.topOnNumber(number: number), sign: "Y").replacingOccurrences(of: "YYY", with: "YYR")
    }
    
    private func bottomMinutes(number: Int) -> String {
        return timeIsOn!.isOn(lamps: 4, singsOn: number % 5, sign: "Y")
    }
    
}
