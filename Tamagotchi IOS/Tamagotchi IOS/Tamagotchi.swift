//
//  Tamagotchi.swift
//  Tamagotchi IOS
//
//  Created by Kua, Hayden (NA) on 14/01/2020.
//  Copyright © 2020 Kua, Hayden (NA). All rights reserved.
//

import Foundation

class Tamagotchi {
    
    private var name: String
    private var gender: String
    private var age: Int
    private var hungry: Bool
    private var happy: Int
    private var healthy: Int
    
    init(name: String, gender: String, age: Int, hungry: Bool, happy: Int, healthy: Int) {
        
        self.name = name
        self.gender = gender
        self.age = age
        self.hungry = hungry
        self.happy = happy
        self.healthy = healthy
    }
    
    func displayStats() -> String{
        return """
        Name: \(name)
        Gender: \(gender)
        Age: \(age)
        Hungry?: \(hungry)
        Happy?: \(happy)
        Healthy?: \(healthy)
        """
    }

    func feedMeals() {
        hungry = false
        if happy != 10 {
            happy += 1
        }
    }
    
    func feedSnack() {
        hungry = false
        if healthy != 0{
            healthy -= 1
        }
        if happy != 10 {
            happy += 1
        }
    }
    
    func playGame() {
        if happy != 10 {
            happy += 1
        }
    }
    
    func aging() {
        if age != 10 {
            age += 1
        }
    }

}

