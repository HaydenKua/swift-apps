//
//  DivisionFactory.swift
//  AbsenceRecorder
//
//  Created by Hayden Kua on 29/01/2020.
//  Copyright © 2020 Hayden Kua. All rights reserved.
//

import Foundation

class DivisionFactory {
    static func createDivision(code: String, of size: Int) -> Division {
        let division = Division(code: code)
        
        for i in 1...size {
            division.students.append(Student(forename: "FirstName\(i)", surname: "Surname\(i)", birthday: Date.init()))
        }
        
        
        return division
    }
}
