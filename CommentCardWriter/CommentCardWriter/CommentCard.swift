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
    
    func getTeacher() -> String {
        return teacher
    }
    
    func createComment() -> String {
        let comment = commentGenerator.writeComment()
        self.everything.append(comment)
        return comment
    }
    
    
    
    
}
