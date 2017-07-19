//
//  AboutViewController.swift
//  2016 TiAF
//
//  Created by Pei Yun on 2017/7/10.
//  Copyright © 2017年 Pei Yun. All rights reserved.
//

import UIKit

class AboutViewController: UIViewController {
    
    @IBOutlet weak var aboutNavBar: UINavigationBar!
    @IBOutlet weak var aboutText: UITextView!
    
    @IBAction func back(_ sender: Any) {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let style = NSMutableParagraphStyle()
        style.lineSpacing = 5
        style.paragraphSpacing = 8
        let attributes = [NSParagraphStyleAttributeName : style]
        aboutText.attributedText = NSAttributedString(string: aboutText.text, attributes:attributes)
        aboutText.textColor = UIColor(colorLiteralRed: 255, green: 255, blue: 255, alpha: 0.8)
        aboutText.font = UIFont(name: "Roboto 300", size: CGFloat(15))
    }

    override var prefersStatusBarHidden: Bool {
        return true
    }

}
