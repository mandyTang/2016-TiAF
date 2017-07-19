//
//  Custom3TableViewCell.swift
//  2016 TiAF
//
//  Created by Pei Yun on 2017/7/12.
//  Copyright © 2017年 Pei Yun. All rights reserved.
//

import UIKit

class Custom3TableViewCell: UITableViewCell {


    @IBOutlet weak var youtubePlayer: YTPlayerView!
    @IBOutlet weak var rank: UILabel!
    @IBOutlet weak var filmTitle: UILabel!
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        youtubePlayer.load(withVideoId: "YVVmdUud9iE")
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
