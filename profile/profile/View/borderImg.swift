//
//  TableViewCell.swift
//  profile
//
//  Created by Muhammad Elsaied on 6/7/20.
//  Copyright © 2020 Muhammad Elsaied. All rights reserved.
//

import UIKit

class borderImg: UIImageView {

    override func awakeFromNib() {
        super.awakeFromNib()
        layer.cornerRadius = 5.0
        self.clipsToBounds = true
    }

}
