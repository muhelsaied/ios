//
//  AppleProduct.swift
//  firstapp
//
//  Created by Muhammad Elsaied on 6/2/20.
//  Copyright © 2020 Muhammad Elsaied. All rights reserved.
//

import Foundation
//
//  appleProduct.swift
//  test
//
//  Created by Muhammad Elsaied on 6/2/20.
//  Copyright © 2020 Muhammad Elsaied. All rights reserved.
//

import Foundation

class AppleProduct {
    public private(set)  var name :String
    public private(set)  var color : String
    public private(set)  var price : Double
    init(name :String , color : String , price : Double ) {
        self.name = name
        self.color = color
        self.price = price
    }
}

