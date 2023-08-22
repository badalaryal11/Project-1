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
    
    
    
    func takeDataFromModel(model: CellModel) {
        
        
        status.setTitle(model.status, for: .normal)
        
        fileName.text = model.filename
        
        uploadBy.text = model.uploadBy
        
        date.text = model.date
        
        fileNote.text = model.fileNote
        
        attachedName.text = model.attachedName
        
        attachedType.text = model.attachedType
        
        link.image = UIImage(named: model.link!)
        
        attachedFileImage.image = UIImage(named: model.attachedFileImage)
        
        
    }
    
    
    

    
    
    

    
}

