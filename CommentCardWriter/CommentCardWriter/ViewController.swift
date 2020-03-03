//
//  ViewController.swift
//  CommentCardWriter
//
//  Created by Kua, Hayden (NA) on 11/02/2020.
//  Copyright © 2020 Kua, Hayden (NA). All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var chooseSubject: UIButton!
    @IBOutlet var generateComment: UIButton!
    @IBOutlet var commentBox: UILabel!
    @IBOutlet var commentPerSubject: UILabel!
    
    var subject1 = SubjectFactory.createSubjects(subject: "Maths", teacher: "MJS", effort: 1, enjoyment: 1, weakness: 1, strength: 1)
    
    override func viewDidLoad() {
        super.viewDidLoad()

    
        // Do any additional setup after loading the view.
    }
    
    @IBAction func generateCommentButton(_ sender: Any) {
        commentBox.text = """
        \(subject1.getSubject()) \n
        \(subject1.getTeacher()) \n
        \(subject1.createComment())
        """
    
    }
    
    @IBAction func chooseSubjectButton(_ sender: Any) {
        addSubject()
    }
    
    func addSubject() {
        let ac = UIAlertController(title: "Choose the subject", message: nil, preferredStyle: .alert)
        ac.addTextField()
        
        let insertAction = UIAlertAction(title: "Choose", style: .default) { [unowned ac] _ in
            if let itemToAdd = ac.textFields![0].text {
                self.subject1.subject = itemToAdd
            }
        }
        ac.addAction(insertAction)
        present(ac, animated: true)
    }


    

}

