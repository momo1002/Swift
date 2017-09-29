//
//  CustomTableViewCell.swift
//  MyTableViewController
//
//  Created by Momoko Nakada on 2017-09-27.
//  Copyright © 2017 Momoko Nakada. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet weak var myImageView: UIImageView!
    @IBOutlet weak var myTitleLabel: UILabel!
    @IBOutlet weak var myDescriptionLabel: UILabel!
    @IBOutlet weak var myRateStar: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
}
