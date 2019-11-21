//
//  Main.swift
//  Tamagotchi
//
//  Created by Kua, Hayden (NA) on 21/11/2019.
//  Copyright © 2019 Kua, Hayden (NA). All rights reserved.
//

import Foundation



print("Do you want to hatch your tamagotchi? Y or N" )
if let request = readLine() {
    if request == "Y" || request == "y" {
        print("What do you want to name your tamagotchi?")
        if let chosenName = readLine() {
            let tamagotchi = Tamagotchi(name: chosenName)
            print(tamagotchi)
        }

        
    }
}

