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
    

    
    
}
