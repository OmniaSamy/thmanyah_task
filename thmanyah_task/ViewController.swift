//
//  ViewController.swift
//  thmanyah_task
//
//  Created by Omnia Samy on 14/08/2025.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        getHomeList()
    }
    
    
    func getHomeList() {
        
        NetworkManager.shared.getHomeList(page: 1, completion: { [weak self] (result: Result<NetworkResponse, NetworkError>, _) in
            
            switch result {
            case .success(let data):
                print("data \(data)")
//                data.sections
                
            case .failure(let error):
                print("error \(error)")
               // AppAlertManager.showError(message: error.errorMessage())
                
            }
        })
    }
}

