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
    private var sick: Bool
    
    
    init(name: String, gender: String, hungry: Bool, happy: Int, healthy: Int, clean: Int, sick: Bool) {
        
        self.name = name
        self.gender = gender
        self.hungry = hungry
        self.happy = happy
        self.healthy = healthy
        self.clean = clean
        self.sick = sick
    }
    
    func displayStats() -> String{
        return """
        Name: \(name)
        Gender: \(gender)
        Hungriness: \(hungry)
        Happiness: \(happy)
        Health: \(healthy)
        Cleaniness: \(clean)
        Sick: \(sick)
        """
    }
    
    func getHunger() -> Bool {
        return self.hungry
    }
    
    func getHappiness() -> Int {
        return self.happy
    }


    func feedMeals() {
        hungry = false
        if happy != 10 && happy != 0{
            happy += 1
        }
    }
    
    func feedSnack() {
        hungry = false
        if healthy != 0 && healthy != 10{
            healthy -= 1
        }
        if happy != 10 && happy != 0{
            happy += 1
        }
    }
    
    func playGame() {
        if happy != 10 && happy != 0 {
            happy += 1
        
        }
        if healthy != 10 && healthy != 0{
            healthy += 1
        }
    }
    
    func cleanUp() {
        if clean != 0 && clean != 10 {
            clean += 1
        }
    }
    
    func feedMedicine() {
            sick = false
    }
    
    func isSick() {
            sick = true
    }
    
    var counter = 1
    
    func statsDegeneration() {
        hungry = true
        if happy != 0 && happy != 10 {
            happy -= 1
        }

        if counter.isMultiple(of: 2) {
            if healthy != 0 && healthy != 10 {
                healthy -= 1
            }
            if clean != 0 && clean != 10 {
                clean -= 1
            }
        }
        counter += 1
    }
    
    var deathCounter = 0
    
    func death() -> Bool{
        if hungry == true || happy == 0 || healthy == 0 || clean == 0 || sick == true {
            deathCounter += 1
            if deathCounter == 2 && (hungry == true || happy == 0 || healthy == 0 || clean == 0 || sick == true ) {
                return true
            }
        }
        return false
        
    }
    
    func deathConfirmed() -> String {
        return """
        Your tamagotchi has died!
        Shame, Shame, Shame!

        """
    }
    

}

