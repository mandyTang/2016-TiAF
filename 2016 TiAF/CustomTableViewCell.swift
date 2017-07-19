//
//  CustomTableViewCell.swift
//  2016 TiAF
//
//  Created by Pei Yun on 2017/7/12.
//  Copyright © 2017年 Pei Yun. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var dayButton: UIButton!
    @IBOutlet weak var lineImg: UIImageView!
    @IBOutlet weak var dateTitle: UILabel!
    @IBOutlet weak var timeText: UILabel!
    @IBOutlet weak var filmText: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
