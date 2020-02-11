//
//  Sentiment.swift
//  CommentCardWriter
//
//  Created by Kua, Hayden (NA) on 11/02/2020.
//  Copyright © 2020 Kua, Hayden (NA). All rights reserved.
//

import Foundation

class Sentiment {
    
    var effort: Int
    var enjoyment: Int
    var weakness: Int
    var strength: Int
    
    init (effort: Int, enjoyment: Int, weakness: Int, strength: Int) {
        self.effort = effort
        self.enjoyment = enjoyment
        self.weakness = weakness
        self.strength = strength
    }
    
    func getEffort () -> Int {
        return effort
    }
    
    func getEnjoyment () -> Int {
        return enjoyment
    }
    
    func getWeakness () -> Int {
        return weakness
    }
    
    func getStrength () -> Int {
        return strength
    }
}
