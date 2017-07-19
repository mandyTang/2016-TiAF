//
//  SponsorViewController.swift
//  2016 TiAF
//
//  Created by Pei Yun on 2017/7/10.
//  Copyright © 2017年 Pei Yun. All rights reserved.
//

import UIKit

class SponsorViewController: UIViewController {


    @IBOutlet weak var logoImg: UIImageView!
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    @IBOutlet weak var contentView: UIView!
    
    @IBOutlet weak var sponsors: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scrollView.contentSize.width = 275.0
        scrollView.contentSize.height = 1700.0
        scrollView.minimumZoomScale = 1.0
        scrollView.maximumZoomScale = 5.0
        scrollView.layer.cornerRadius = 10
        
    }

    override var prefersStatusBarHidden: Bool {
        return true
    }

}
