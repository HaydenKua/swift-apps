//
//  Tamagotchi.swift
//  Tamagotchi
//
//  Created by Kua, Hayden (NA) on 21/11/2019.
//  Copyright © 2019 Kua, Hayden (NA). All rights reserved.
//

import Foundation

class Tamagotchi {
    
    private var name: String
    private var gender: String
    private var age: Int
    private var weight: Double
    private var discipline: Int
    private var hungry: Int
    private var happy: Int
    private var needsAttention: Bool
    
    init(name: String) {
        
        self.name = name
        gender = "Male"
        age = 0
        weight = 5
        discipline = 0
        hungry = 0
        happy = 0
        needsAttention = false
    }
    
    func getAge() -> Int {
        return self.age
    }
    
    func getName() -> String {
        return self.name
    }
    
    func getGender() -> String {
        return self.gender
    }
    
    
    
}
