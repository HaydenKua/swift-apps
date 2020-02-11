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
    var comment: Comment
    
    init (subject: String, teacher: String, comment: Comment) {
        self.subject = subject
        self.teacher = teacher
        self.comment = comment
    }
    
    func getSubject() -> String {
        return subject
    }
    
}
