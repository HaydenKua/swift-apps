//
//  Main.swift
//  Tamagotchi
//
//  Created by Kua, Hayden (NA) on 21/11/2019.
//  Copyright © 2019 Kua, Hayden (NA). All rights reserved.
//

import Foundation


func menu() {
    print("Do you want to hatch your tamagotchi? Y or N" )
    if let request = readLine() {
        if request == "Y" || request == "y" {
            print("What do you want to name your tamagotchi?")
            if let chosenName = readLine() {
                let tamagotchi = Tamagotchi(name: chosenName)
                print(tamagotchi.displayStats())
            }
            print("What do you want to do?: feed snacks(1), heal(2)")
            if let userChoice = readLine() {
                if userChoice == "1" {
                    print(tamagotchi.getHealth())
                }
            }

            
        }
    }
}

menu()
