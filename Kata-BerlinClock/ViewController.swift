//
//  ViewController.swift
//  Kata-BerlinClock
//
//  Created by Hamza EL AIDI on 17/09/2019.
//  Copyright © 2019 Hamza EL AIDI. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print(berlinClockConverter())
    }

    func berlinClockConverter() -> String{
        let berlinClock = BerlinClock()
        return berlinClock.startConvert(timeStr: "22:15:40")
    }

}

