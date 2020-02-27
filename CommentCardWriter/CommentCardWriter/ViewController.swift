//
//  ViewController.swift
//  CommentCardWriter
//
//  Created by Kua, Hayden (NA) on 11/02/2020.
//  Copyright © 2020 Kua, Hayden (NA). All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var commentPerSubject: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        // Do any additional setup after loading the view.
    }
    
    func createSubject() {
        let subject1 = SubjectFactory.createSubjects(subject: "Maths", teacher: "MJS", effort: 1, enjoyment: 1, weakness: 1, strength: 1)
        print (subject1)
        for lines in subject1.getEverything() {
            print (lines)
        }
    }
    

}

