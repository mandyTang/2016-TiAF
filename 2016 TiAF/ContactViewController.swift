//
//  ContactViewController.swift
//  2016 TiAF
//
//  Created by Pei Yun on 2017/7/10.
//  Copyright © 2017年 Pei Yun. All rights reserved.
//

import UIKit

class ContactViewController: UIViewController {
    
    @IBOutlet weak var conatctNav: UINavigationBar!
    
    @IBOutlet weak var logo: UIImageView!
    
    @IBOutlet weak var mouse: UIImageView!
    
    @IBOutlet weak var text: UITextView!
    
    @IBAction func back(_ sender: Any) {
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override var prefersStatusBarHidden: Bool {
        return true
    }

}
