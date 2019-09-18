//
//  SecondConverter.swift
//  Kata-BerlinClock
//
//  Created by Hamza EL AIDI on 17/09/2019.
//  Copyright © 2019 Hamza EL AIDI. All rights reserved.
//

import Foundation

class SecondConverter {
    
    private var second: Int!
    
    init(second: Int) {
        self.second = second
    }
    
    func convert() -> String {
        if second.isMultiple(of: 2) {
            return "Y"
        }
        return "O"
    }
    
}
