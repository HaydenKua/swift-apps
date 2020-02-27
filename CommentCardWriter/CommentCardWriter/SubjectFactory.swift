//
//  SubjectFactory.swift
//  CommentCardWriter
//
//  Created by Kua, Hayden (NA) on 25/02/2020.
//  Copyright © 2020 Kua, Hayden (NA). All rights reserved.
//

import Foundation

class SubjectFactory {
    
    static func createSubjects(subject: String, teacher: String, effort: Int, enjoyment: Int, weakness: Int, strength: Int) -> CommentCard {
        let comment = Comment(sentimentPhrases: SentimentPhrases(sentiment: Sentiment(effort: effort, enjoyment: enjoyment, weakness: weakness, strength: strength)))
        let oneSubject = CommentCard(subject: subject, teacher: teacher, commentGen: comment)
        return oneSubject
        
    }
    
}
