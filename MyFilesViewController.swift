//
//  MyFilesViewController.swift
//  Project 1
//
//  Created by Badal  Aryal on 17/08/2023.
//

import UIKit

    
class MyFilesViewController: UIViewController {
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func myFilesButton(){
        
        let destinationVC = MyFileListViewController()
        
        guard let nvc = self.navigationController else { return }
        nvc.pushViewController(destinationVC, animated: true)
        
    }
}



