//
//  RegisterTableViewCell.swift
//  interviewer
//
//  Created by Giritharan Sugumar on 6/27/17.
//  Copyright © 2017 giritharan. All rights reserved.
//

import UIKit

class RegisterTableViewCell: UITableViewCell {

    @IBOutlet weak var textFields: UITextField!
    @IBOutlet weak var lbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.lbl.font = Style.sectionHeaderTitleFont
    }

    func setUpView(){
        
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
