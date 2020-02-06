//
//  mainTableViewCell.swift
//  demo
//
//  Created by chirag2 on 04/01/20.
//  Copyright © 2020 chirag2. All rights reserved.
//

import UIKit

class mainTableViewCell: UITableViewCell {

    @IBOutlet weak var morebtn: UIButton!
    @IBOutlet weak var Lblmain: UILabel!
    @IBOutlet weak var txt2: UITextField!
    @IBOutlet weak var txt1: UITextField!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
