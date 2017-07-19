//
//  RoundButton.swift
//  2016 TiAF
//
//  Created by Pei Yun on 2017/7/10.
//  Copyright © 2017年 Pei Yun. All rights reserved.
//

import UIKit


@IBDesignable
class RoundButton: UIButton {
    @IBInspectable var conerRaduis: CGFloat = 0 {
        didSet{
            self.layer.cornerRadius = conerRaduis
        }
    }
    @IBInspectable var borderWidth: CGFloat = 0 {
        didSet{
            self.layer.borderWidth = borderWidth
        }
    }
    
    @IBInspectable var borderColor: UIColor = UIColor.clear {
        didSet{
            self.layer.borderColor = borderColor.cgColor
        }
    }
    
}
