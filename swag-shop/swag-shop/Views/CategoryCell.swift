//
//  CategoryCell.swift
//  swag-shop
//
//  Created by Muhammad Elsaied on 6/13/20.
//  Copyright © 2020 Muhammad Elsaied. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {
    @IBOutlet weak var CategoryBackground : UIImageView!
    @IBOutlet weak var CategoryTitle : UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
