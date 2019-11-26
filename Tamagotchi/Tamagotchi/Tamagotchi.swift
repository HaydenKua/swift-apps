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
    private var hungry: Bool
    private var happy: Int
    private var needsAttention: Bool
    private var health: Int
    
    init(name: String) {
        
        self.name = name
        gender = "Male"
        age = 0
        weight = 5
        discipline = 0
        hungry = false
        happy = 0
        needsAttention = false
        health = 5
    }
    
    func displayStats() -> String {
        var all: String = name
        all.append(",")
        all.append(gender)
        return all
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
    
    func getHealth() -> Int {
        return self.health
    }
    
    func feedSnacks(data: Bool) -> Bool {
        var hungry = data
        if hungry == false {
            return hungry
        }else {
            hungry = false
            return hungry
        }
        
    }
    
    func heal() -> Int {
        var healthChange = self.health
        if healthChange == 5{
            return healthChange
        }else{
            healthChange = 5
            return healthChange
        }
    }
    
}
