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
    
    var ownTamagotchi = OwnTamagotchi()
    var tamagotchi:Tamagotchi? {
        didSet{
            tamagotchiStats.text = tamagotchi?.displayAttributes()
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tamagotchi = ownTamagotchi.tamagotchiUnique[0]
    }


}

