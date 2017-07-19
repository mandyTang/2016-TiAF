//
//  RankViewController.swift
//  2016 TiAF
//
//  Created by Pei Yun on 2017/7/12.
//  Copyright © 2017年 Pei Yun. All rights reserved.
//

import UIKit

class RankViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var rankTableView: UITableView!
    
    var arrayOfRankData = [rank]()
    var rect: CGRect!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // event 資料
        arrayOfRankData = [
            rank(num: "01", url: "YVVmdUud9iE", film: "20"),
            rank(num: "02", url: "Y010xLKUrTs", film: "An Eternal Vacation of Happiness"),
            rank(num: "03", url: "W0Vpgdi_4YE", film: "And Then"),
            rank(num: "04", url: "Dx4U2sO7ghg", film: "Crash testing"),
            rank(num: "05", url: "so7PeXPQJIU", film: "Subsurface Flow"),
            rank(num: "06", url: "JcHE5j0bLTU", film: "Red"),
            rank(num: "07", url: "sLkZitYrp4s", film: "Supermarket"),
            rank(num: "08", url: "4xRGfGbrhTE", film: " SOAR"),
        ]
        // 載入CustomTableViewCell.xib
        let nib = UINib(nibName: "Custom3TableViewCell", bundle: nil)
        let view = nib.instantiate(withOwner: self, options: nil).first as! UIView
        rect = view.frame
        
        // rergister xib & tableview
        rankTableView.register(nib, forCellReuseIdentifier: "rankIndexCell")
        
        // set separator color
        self.rankTableView.separatorColor = UIColor(red: 255, green: 255, blue: 255, alpha: 0.5)
        
    }
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayOfRankData.count
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = rankTableView.dequeueReusableCell(withIdentifier: "rankIndexCell") as! Custom3TableViewCell
        cell.rank.text = arrayOfRankData[indexPath.row].num
        cell.filmTitle.text = arrayOfRankData[indexPath.row].film
        cell.youtubePlayer.load(withVideoId: arrayOfRankData[indexPath.row].url)
        return cell
    }
    
    public func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return rect.size.height
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    
}
