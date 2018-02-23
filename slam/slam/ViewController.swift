//
//  ViewController.swift
//  slam
//
//  Created by Sherbaz Hashmi on 23/2/18.
//  Copyright © 2018 Sherbaz Hashmi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var bgImg: UIImageView!
    @IBOutlet weak var logo: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        logo.frame = CGRect(x: view.frame.size.width / 2 - logo.frame.size.width / 2, y: 50, width: logo.frame.size.width, height: logo.frame.size.width)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

