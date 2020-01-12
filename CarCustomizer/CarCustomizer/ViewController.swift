//
//  ViewController.swift
//  CarCustomizer
//
//  Created by Hayden Kua on 12/01/2020.
//  Copyright © 2020 Hayden Kua. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var carStatistics: UILabel!
    
    var car = Car(make: "Mazda", model: "MX-5", topSpeed: 125, acceleration: 7.7, handling: 5)

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        carStatistics.text = car.displayStats()
    }


}

