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
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        let nib = UINib(nibName: "MainTableViewCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "MainTableViewCell")

        
    
    
    
  }
    
   
     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
         return 5
    }
    // MARK: - Navigation
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MainTableViewCell", for: indexPath)
        
        return cell
    }
    

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        /* Instead of: */
        

    }
    

}
