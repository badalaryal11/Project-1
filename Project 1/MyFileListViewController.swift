//
//  MyFileListViewController.swift
//  Project 1
//  Created by Badal  Aryal on 16/08/2023.
//

import UIKit

class MyFileListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var myUplodFiles: UIButton!
    
    @IBOutlet weak var sendUploadLinks: UIButton!
    
    @IBOutlet weak var tableView: UITableView!
    
    //var cellModels: [CellModel] = CellModel.fetchData()
    var sessionManager = SessionManager()
    var dataSource: [DataModel] = [] // Your array of DataModel instances
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        let nib = UINib(nibName: "MainTableViewCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "MainTableViewCell")
        tableView.reloadData()
        sessionManager.fetchData()
        
        
        
        
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSource.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MainTableViewCell", for: indexPath) as! MainTableViewCell
        
        let dataItem = dataSource[indexPath.row]
        cell.status.setTitle(dataItem.doc_status, for: .normal)
        cell.fileName.text = dataItem.file_title
        cell.uploadBy.text = dataItem.uploaded_by
        cell.date.text = dataItem.doc_date
        cell.fileNote.text = dataItem.doc_notes
        cell.attachedName.text = dataItem.file_title
        cell.attachedType.text = dataItem.doc_type
        
        return cell
    }
    
    
    
    
    
}







