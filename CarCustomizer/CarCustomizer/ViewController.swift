//
//  ViewController.swift
//  CarCustomizer
//
//  Created by Hayden Kua on 12/01/2020.
//  Copyright © 2020 Hayden Kua. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var engineAndExhaustPackage: UISwitch!
    
    @IBOutlet weak var tiresPackage: UISwitch!
    
    @IBOutlet weak var aerodynamicsPackage: UISwitch!
    
    @IBOutlet weak var theMysteryPackage: UISwitch!
    
    @IBOutlet weak var carStatistics: UILabel!
    
    @IBOutlet weak var remainingFundsDisplay: UILabel!
    
    var remainingFunds = 0 {
        didSet {
            remainingFundsDisplay.text = "Remaining Funds: \(remainingFunds)"
        }
    }
    var count = 0
    var starterCars = StarterCars()
    var car:Car? {
        didSet {
            carStatistics.text = car?.displayStats()
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        car = starterCars.cars[0]
        remainingFunds = 1000

    }
    
    
    @IBAction func cycleCars(_ sender: Any) {
        if count == starterCars.cars.count {
            count = 0
        }
        car = starterCars.cars[count]
        count += 1
    }
    
    
    @IBAction func engineAndExhaustToggle(_ sender: Any) {
        if engineAndExhaustPackage.isOn {
            car?.topSpeed += 5
            remainingFunds -= 500
        } else {
            car?.topSpeed -= 5
            remainingFunds += 500
        }
        disable()
    }
    
    
    @IBAction func tiresPackageToggle(_ sender: Any) {
        if tiresPackage.isOn {
            car?.handling += 1
            remainingFunds -= 500
        } else {
            car?.handling -= 1
            remainingFunds += 500
        }
        disable()
    }
    
    @IBAction func aerodynamicsPackageToggle(_ sender: Any) {
        if aerodynamicsPackage.isOn {
            car?.topSpeed += 5
            car?.acceleration += 0.5
            remainingFunds -= 1000
        } else {
            car?.topSpeed -= 5
            car?.acceleration -= 0.5
            remainingFunds += 1000
        }
        disable()
    }
    
    
    @IBAction func theMysteryPackageToggle(_ sender: Any) {
        if theMysteryPackage.isOn {
            car?.topSpeed += 2
            car?.acceleration += 1
            car?.handling += 1
            remainingFunds -= 1000
        } else {
            car?.topSpeed -= 2
            car?.acceleration -= 1.0
            car?.handling -= 1
            remainingFunds += 1000
        }
        disable()
    }
    
    func disable() {
        if remainingFunds < 1000 && theMysteryPackage.isOn == false {
            theMysteryPackage.isEnabled = false
        } else {
            theMysteryPackage.isEnabled = true
        }
        
        if remainingFunds < 1000 && aerodynamicsPackage.isOn == false {
            aerodynamicsPackage.isEnabled = false
        } else {
            aerodynamicsPackage.isEnabled = true
        }
        
        if remainingFunds < 500 && tiresPackage.isOn == false {
            tiresPackage.isEnabled = false
        } else {
            tiresPackage.isEnabled = true
        }
        
        if remainingFunds < 500 && engineAndExhaustPackage.isOn == false {
            engineAndExhaustPackage.isEnabled = false
        } else {
            engineAndExhaustPackage.isEnabled = true
        }
    }
    
}

