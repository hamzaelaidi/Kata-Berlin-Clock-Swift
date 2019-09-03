//
//  TimeIsOn.swift
//  
//
//  Created by Hamza EL AIDI on 02/09/2019.
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
