//
//  BorderButton.swift
//  slam
//
//  Created by Sherbaz Hashmi on 23/2/18.
//  Copyright © 2018 Sherbaz Hashmi. All rights reserved.
//

import UIKit

class BorderButton: UIButton {

    override func awakeFromNib() {
        // Super calls the code from awakeFromNib function (from parent class)
        super.awakeFromNib()
        layer.borderWidth = 3.0
        layer.borderColor = UIColor.white.cgColor
    }
    
    

}
