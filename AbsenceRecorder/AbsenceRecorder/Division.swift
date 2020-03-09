//
//  Division.swift
//  AbsenceRecorder
//
//  Created by Hayden Kua on 29/01/2020.
//  Copyright © 2020 Hayden Kua. All rights reserved.
//

import Foundation

class Division: Codable {
    
    let code: String
    var students: [Student] = []
    var absences: [Absence] = []
    
    init(code: String) {
        self.code = code
    }
    
    func getAbsence(for date: Date) -> Absence? {
        return absences.first {
            let comparison = Calendar.current.compare($0.takenOn, to: date, toGranularity: .day)
            return comparison == .orderedSame
        }
    }
    
    func removeAbsence(for date: Date) {
        absences.removeAll {
            let comparison = Calendar.current.compare($0.takenOn, to: date, toGranularity: .day)
            return comparison == .orderedSame
        }
    }
    
}
