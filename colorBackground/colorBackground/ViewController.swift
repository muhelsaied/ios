//
//  ViewController.swift
//  colorBackground
//
//  Created by Muhammad Elsaied on 6/3/20.
//  Copyright © 2020 Muhammad Elsaied. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var isBlue = false
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func button(_ sender: Any) {
        if (isBlue){
        view.backgroundColor = UIColor.red
            isBlue = false
    }
        else{
        view.backgroundColor = UIColor.green
            isBlue = true
        }
    
}

}
