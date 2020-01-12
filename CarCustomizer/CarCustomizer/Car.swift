//
//  Car.swift
//  CarCustomizer
//
//  Created by Hayden Kua on 12/01/2020.
//  Copyright © 2020 Hayden Kua. All rights reserved.
//

import Foundation

struct Car {
    var make: String
    var model: String
    var topSpeed: Int
    var acceleration: Double
    var handling: Int
    
    func displayStats() -> String {
        return """
            Make: \(make)
            Model: \(model)
            Top Speed: \(topSpeed)
            Acceleration (0-60): \(acceleration)s
            Handling: \(handling)
            """
    }

    
}
