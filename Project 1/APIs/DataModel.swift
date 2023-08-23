//
//  DataModel.swift
//  Project 1
//
//  Created by Badal  Aryal on 21/08/2023.
//

import Foundation
struct Response : Codable{
    var data:[DataModel]
}
struct DataModel: Codable{
    var doc_id: String?
    var doc_url: String?
    var doc_date: String?
    var doc_status: String?
    var doc_type: String?
    var file_title: String?
    var doc_notes: String?
    var uploaded_by: String?
   
    
}






