//
//  Tamagotchi.swift
//  Tamagotchi IOS
//
//  Created by Kua, Hayden (NA) on 14/01/2020.
//  Copyright © 2020 Kua, Hayden (NA). All rights reserved.
//

import Foundation

struct Tamagotchi {
    var name: String
    var gender: String
    var hunger: Int
    var happiness: Int
    var age: Int
    var weight: Double
    
    func displayAttributes() -> String {
        return """
        Name: \(name)
        Gender: \(gender)
        Hunger: \(hunger)
        Happiness: \(happiness)
        Age: \(age)
        Weight: \(weight)
        """
    }
}
