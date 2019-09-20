//
//  SecondConverter.swift
//  Kata-BerlinClock
//
//  Created by Hamza EL AIDI on 17/09/2019.
//  Copyright © 2019 Hamza EL AIDI. All rights reserved.
//

import Foundation

class SecondConverter {
    
    func convert(second: Int) -> String {
        if second.isMultiple(of: 2) {
            return "Y"
        }
        return "O"
    }
    
}
