//
//  StudentCellTableViewCell.swift
//  AbsenceRecorder
//
//  Created by Hayden Kua on 06/02/2020.
//  Copyright © 2020 Hayden Kua. All rights reserved.
//

import UIKit

class StudentCell: UITableViewCell {


    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        self.accessoryType = selected ? .checkmark : .none

    }

}
