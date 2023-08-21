//
//  MyFileListViewController.swift
//  Project 1
//
//  Created by Badal  Aryal on 16/08/2023.
//

import UIKit

class MyFileListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var myUplodFiles: UIButton!
    
    @IBOutlet weak var sendUploadLinks: UIButton!
    
    @IBOutlet weak var tableView: UITableView!
    
    var cellModels: [CellModel] = CellModel.fetchData()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        let nib = UINib(nibName: "MainTableViewCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "MainTableViewCell")
        tableView.reloadData()
        
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cellModels.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MainTableViewCell", for: indexPath) as! MainTableViewCell
        let data = cellModels[indexPath.row]
        cell.takeDataFromModel(model: data)
        
        return cell
    }
    
    
    
}




