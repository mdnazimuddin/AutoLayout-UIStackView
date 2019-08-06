//
//  ViewController.swift
//  UIStackView
//
//  Created by Nazim Uddin on 6/8/19.
//  Copyright © 2019 Nazim Uddin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var img: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        img.layer.cornerRadius = img.layer.bounds.height / 2
        img.clipsToBounds = true;
        // Do any additional setup after loading the view.
    }


}

