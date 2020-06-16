//
//  EnteryVC.swift
//  tasks-app
//
//  Created by Muhammad Elsaied on 6/13/20.
//  Copyright © 2020 Muhammad Elsaied. All rights reserved.
//

import UIKit

class EnteryVC: UIViewController,UITextFieldDelegate {
    @IBOutlet var txtField : UITextField!
    var update : (()->Void)?
    override func viewDidLoad() {
        super.viewDidLoad()
        txtField.delegate = self
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Save", style: .done, target: self, action: #selector(saveTask))
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        saveTask()
        return true
    }
    @objc func saveTask() {
        
        //save feild content
        //check if field is empty
        guard let txt = txtField.text , !txt.isEmpty else{
            return
        }
        //save txt
        guard let count = UserDefaults().value(forKey: "count") as? Int else {
            return
        }
        let newCount = count + 1
        UserDefaults().set(newCount , forKey: "count")
        UserDefaults().set(txt, forKey: "task_\(newCount)")
        
        update?()
        navigationController?.popViewController(animated: true)
        
        
    }

}
