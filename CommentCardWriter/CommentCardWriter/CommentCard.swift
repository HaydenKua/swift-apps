//
//  CommentCard.swift
//  CommentCardWriter
//
//  Created by Kua, Hayden (NA) on 11/02/2020.
//  Copyright © 2020 Kua, Hayden (NA). All rights reserved.
//

import Foundation

class CommentCard {
    
    var subject: String
    var teacher: String
    var comment: String?
    var commentGenerator: Comment
    var everything: [String] = []
    
    init (subject: String, teacher: String, commentGen: Comment) {
        self.subject = subject
        self.teacher = teacher
        self.commentGenerator = commentGen
    }
    
    func getSubject() -> String {
        return subject
    }
    
    func createComment() {
        self.comment = commentGenerator.writeComment()
    }
    
    func getEverything() -> [String] {
        self.everything.append(subject)
        self.everything.append(teacher)
        self.everything.append(comment!)
        return everything
        
        
    }
    

    
    
}
