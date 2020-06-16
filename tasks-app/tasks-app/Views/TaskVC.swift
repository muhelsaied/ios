//
//  TaskVC.swift
//  tasks-app
//
//  Created by Muhammad Elsaied on 6/13/20.
//  Copyright © 2020 Muhammad Elsaied. All rights reserved.
//

import UIKit

class TaskVC: UIViewController {
    @IBOutlet var DeleteLabel : UILabel!
    var task : String?
//    var upadate :(()->Void)?
    override func viewDidLoad() {
        super.viewDidLoad()
        DeleteLabel.text = task
        navigationItem.rightBarButtonItem = UIBarButtonItem(title:"Delete",style:.done,target: self,action: #selector(deleteTask))

     }
    @objc func deleteTask(){
        guard let count = UserDefaults().value(forKey: "count") as?  Int else {
            return
        }
        let newCount = count - 1
        UserDefaults.setValue(newCount,forKey: "count")
//        UserDefaults.setValue(nil,forKey: "task_\(currentPosition)")
        navigationController?.popViewController(animated: true)
        
    }
    

}
