//
//  Comment.swift
//  CommentCardWriter
//
//  Created by Kua, Hayden (NA) on 11/02/2020.
//  Copyright © 2020 Kua, Hayden (NA). All rights reserved.
//

import Foundation

class Comment {
    
    var sentimentPhrases: SentimentPhrases
    var maxLength = 250
    
    init (sentimentPhrases: SentimentPhrases) {
        self.sentimentPhrases = sentimentPhrases
    }
    
    func writeComment () -> String {
        let effort = sentimentPhrases.getEffortComment()
//        let enjoyment = sentimentPhrases.getEnjoymentComment()
        let weakness = sentimentPhrases.getWeaknessComment()
        let strength = sentimentPhrases.getStrengthComment()
        let comment = strength + ". " + effort + ". " + weakness + "."
        
        return comment
    }
}
