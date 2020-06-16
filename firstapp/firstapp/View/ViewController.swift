//
//  ViewController.swift
//  firstapp
//
//  Created by Muhammad Elsaied on 6/2/20.
//  Copyright © 2020 Muhammad Elsaied. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var deviceName: UILabel!
    @IBOutlet weak var deviceColor: UILabel!
    @IBOutlet weak var devicePrice: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        let newProduct = AppleProduct(name: "iphone x", color: "space grey", price: 999.90)
        deviceName.text = newProduct.name
        deviceColor.text = newProduct.color
        devicePrice.text = "$\(newProduct.price)"
    }


}

