//
//  SecondConverter.swift
//  
//
//  Created by Hamza EL AIDI on 02/09/2019.
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
