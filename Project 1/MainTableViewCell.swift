//
//  MainTableViewCell.swift
//  Project 1
//
//  Created by Badal  Aryal on 15/08/2023.
//

import UIKit

class MainTableViewCell: UITableViewCell {

    @IBOutlet weak var circularImageView:UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        circularImageView.layer.cornerRadius = circularImageView.frame.width / 2
              circularImageView.clipsToBounds = true
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
       

        // Configure the view for the selected state
    }

}
