//
//  ViewController.swift
//  AbsenceRecorder
//
//  Created by Hayden Kua on 29/01/2020.
//  Copyright © 2020 Hayden Kua. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var divisions: [Division] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        addDummyData()
        for division in divisions {
            print(division.code)
            for student in division.students {
                print(student.forename, student.surname)
            }
        }
        //iterate over every division
        //for each division, output its name and the number of students in it to the console
        //for each division, output each of its students names
    }

    func addDummyData() {
        divisions.append(DivisionFactory.createDivision(code: "BY-1", of: 8))
        divisions.append(DivisionFactory.createDivision(code: "BY-2", of: 9))
        divisions.append(DivisionFactory.createDivision(code: "BY-3", of: 10))
    }

}

