//
//  DivisionCell.swift
//  AbsenceRecorder
//
//  Created by Hayden Kua on 10/02/2020.
//  Copyright © 2020 Hayden Kua. All rights reserved.
//

import UIKit

class DivisionCell: UITableViewCell {

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
        self.accessoryType = selected ? .checkmark : .none
    }

}
