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
    
    
    func takeDataFromApi(model: DataModel) {
        
       
        
        status.setTitle(model.doc_status, for: .normal)
        
        fileName.text = model.file_title
        
        uploadBy.text = model.uploaded_by
        
        date.text = model.doc_date
        
        fileNote.text = model.doc_notes
        
        attachedName.text = model.file_title
        
        attachedType.text = model.doc_type
        
        link.isHighlighted = (model.doc_url != nil)
       
        
        
        
        
    }
    
    
    
    
    
    
    
    
    
    
    
}

