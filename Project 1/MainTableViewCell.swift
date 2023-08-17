//
//  MainTableViewCell.swift
//  Project 1
//
//  Created by Badal  Aryal on 15/08/2023.
//

import UIKit

class MainTableViewCell: UITableViewCell {
    
    @IBOutlet weak var status: UIButton!
    
    @IBOutlet weak var fileName: UILabel!
    
    @IBOutlet weak var uploadBy: UILabel!
    
    @IBOutlet weak var date: UILabel!
    
    @IBOutlet weak var fileNote: UILabel!
    
    @IBOutlet weak var attachedName: UILabel!
    
    @IBOutlet weak var attachedType: UILabel!
    
    @IBOutlet weak var link: UIImageView!
    
    @IBOutlet weak var attachedFileImage : UIImageView!
    
    
   
    
  

   
    
    override func awakeFromNib() {
        super.awakeFromNib()
       
    }
    
    var data: Data!{
        didSet{
            updateUI()
        }
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
       
        
        // Configure the view for the selected state
    }
    
    

}
