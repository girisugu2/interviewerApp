//
//  PeopleTableViewCell.swift
//  interviewer
//
//  Created by Giritharan Sugumar on 7/6/17.
//  Copyright © 2017 giritharan. All rights reserved.
//

import UIKit

class PeopleTableViewCell: UITableViewCell {

    @IBOutlet weak var CandidateName: UILabel!
    @IBOutlet weak var candidateDesignation: UILabel!
    @IBOutlet weak var candidateExperience: UILabel!
    @IBOutlet weak var color: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
