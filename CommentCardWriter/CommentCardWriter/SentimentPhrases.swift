//
//  SentimentPhrases.swift
//  CommentCardWriter
//
//  Created by Kua, Hayden (NA) on 11/02/2020.
//  Copyright © 2020 Kua, Hayden (NA). All rights reserved.
//

import Foundation

class SentimentPhrases {
    
    var effortPhrases = ["I work very hard", "I work hard", "I could work harder", "I don't work hard"]
    var enjoymentPhrases = ["Love", "Enjoy", "Don't enjoy", "Dislike"]
    var weaknessPhrases = ["Work Harder", "Contribute more", "More time on EW", "Don't know content", "Find it difficult"]
    var strengthPhrases = ["Do well in EWs", "Do well in tests", "Pay close attention in divs"]
    var sentiment: Sentiment
//    var commentCard: CommentCard

    
    init (sentiment: Sentiment) {
        self.sentiment = sentiment
//        self.commentCard = commentCard
    }
    
    func getEffortComment() -> String {
        let i = sentiment.getEffort()
        var effortComment =  ["I work very hard in divs and for my EWs", "I work hard in divs and for my EWs", "I could work harder in divs and for my EWs", "I don't work hard in divs and for my EWs"]
        return effortComment[i]
    }
    
//    func getEnjoymentComment() -> String {
//        let i = sentiment.getEnjoyment()
//        let subject = commentCard.getSubject()
//        var enjoymentComment = ["I love \(subject)", "I enjoy \(subject)", "I don't enjoy \(subject)", "I dislike \(subject)"]
//        return enjoymentComment[i]
//    }
    
    func getWeaknessComment() -> String {
        let i = sentiment.getWeakness()
        var weaknessComment = ["I think I need to work harder in divs, and put more effort and pride into my work", "I've been too quiet in class - I need to contribute more in class discussions and answer more questions", "I don't think my EW quality has been up to par so far. For the rest of the school year, I want to spend more time and effort on EWs", "Honestly, I'm struggling with the content that we are going through in class. I don't know the content that we've gone through", "I'm finding divs difficult, and I don't feel secure with what we're doing in divs."]
        return weaknessComment[i]
    }
    
    func getStrengthComment() -> String {
        let i = sentiment.getStrength()
        var strengthComment = ["I'm doing well in EWs", "I do well in tests in divs", "I pay close attention in divs"]
        return strengthComment[i]
    }
    
    
}
