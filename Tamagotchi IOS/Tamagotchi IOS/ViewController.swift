//
//  ViewController.swift
//  Tamagotchi IOS
//
//  Created by Kua, Hayden (NA) on 14/01/2020.
//  Copyright © 2020 Kua, Hayden (NA). All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var tamagotchiStats: UILabel!
    @IBOutlet var feedMeal: UIButton!
    @IBOutlet var feedSnack: UIButton!
    @IBOutlet var playGame: UIButton!
    @IBOutlet var cleanUp: UIButton!
    @IBOutlet var timePassedDisplay: UILabel!
    var timer: Timer?
    
    var timePassed = 0
    var tamagotchi:Tamagotchi?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tamagotchi = Tamagotchi(name: "Sbeve", gender: "Female", hungry: false, happy: 5, healthy: 5, clean: 5)
        tamagotchiStats.text = tamagotchi?.displayStats()
        timer = Timer.scheduledTimer(timeInterval: 5.0, target: self, selector: #selector(countdown), userInfo: nil, repeats: true)
        timePassedDisplay.text = "Age: 0 Months"
        
    }
    
    @IBAction func feedMealButton(_ sender: Any) {
        tamagotchi?.feedMeals()
        tamagotchiStats.text = tamagotchi?.displayStats()
    }
    
    @IBAction func feedSnackButton(_ sender: Any) {
        tamagotchi?.feedSnack()
        tamagotchiStats.text = tamagotchi?.displayStats()
    }
    
    @IBAction func playGameButton(_ sender: Any) {
        tamagotchi?.playGame()
        tamagotchiStats.text = tamagotchi?.displayStats()
    }
    
    @IBAction func cleanUpButton(_ sender: Any) {
        tamagotchi?.cleanUp()
        tamagotchiStats.text = tamagotchi?.displayStats()
    }
    
    @objc func countdown() {
        if timePassed != 16 {
            timePassedDisplay.text = "Age: \(timePassed) Months"
            timePassed += 1
            tamagotchi?.getHunger() -= 1
            
        } else {
            timer?.invalidate()
        }
    }
    
    
}

