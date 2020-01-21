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
    private var hungry: Bool
    private var happy: Int
    private var healthy: Int
    private var clean: Int
    
    init(name: String, gender: String, hungry: Bool, happy: Int, healthy: Int, clean: Int) {
        
        self.name = name
        self.gender = gender
        self.hungry = hungry
        self.happy = happy
        self.healthy = healthy
        self.clean = clean
    }
    
    func displayStats() -> String{
        return """
        Name: \(name)
        Gender: \(gender)
        Hungriness: \(hungry)
        Happiness: \(happy)
        Health: \(healthy)
        Cleaniness: \(clean)
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
        if healthy != 10 {
            healthy += 1
        }
    }
    
    func cleanUp() {
        if clean != 0 {
            clean += 1
        }
    }
    

}

