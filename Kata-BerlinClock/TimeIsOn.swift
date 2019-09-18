//
//  TimeIsOn.swift
//  Kata-BerlinClock
//
//  Created by Hamza EL AIDI on 17/09/2019.
//  Copyright © 2019 Hamza EL AIDI. All rights reserved.
//

import Foundation

class TimeIsOn {
    
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
