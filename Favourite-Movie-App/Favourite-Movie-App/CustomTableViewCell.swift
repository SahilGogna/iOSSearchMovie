//
//  CustomTableViewCell.swift
//  Favourite-Movie-App
//
//  Created by Sahil Gogna on 2019-02-04.
//  Copyright © 2019 Sahil Gogna. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    
    @IBOutlet var movieImageView: UIImageView!
    @IBOutlet var movieTitleLabel: UILabel!
    @IBOutlet var movieDateLabel: UILabel!
    @IBOutlet var favButton: UIButton!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
