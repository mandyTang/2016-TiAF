//
//  Event2ViewController.swift
//  2016 TiAF
//
//  Created by Pei Yun on 2017/7/12.
//  Copyright © 2017年 Pei Yun. All rights reserved.
//

import UIKit

class Event2ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var navBar: UINavigationBar!
    
    @IBAction func list(_ sender: Any) {
        
    }
    
    @IBOutlet weak var dateLable: UILabel!
    
    @IBOutlet weak var event2TableView: UITableView!
    
    var arrayOfeventData = [eventData]()
    var arrayOfDay01 = [event]()
    var arrayOfDay02 = [event]()
    var arrayOfDay03 = [event]()
    var arrayOfDay04 = [event]()
    var arrayOfDay05 = [event]()
    var arrayOfDay06 = [event]()
    var arrayOfDay07 = [event]()
    var arrayOfDay08 = [event]()
    var arrayOfDay09 = [event]()
    
    var rect: CGRect!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //call echo function from AppDelegate.swift to print name of view controller
        let app = UIApplication.shared.delegate as! AppDelegate
        let string = app.echo("Films of Each Day")
        print(string)
        
        // event 資料
        arrayOfeventData = [
            eventData(dayText: "DAY 01", date: "THU. 10.13", time: "10:30 - 11:51", filmTitle: "McDull: Me & My Mum"),
            eventData(dayText: "DAY 02", date: "FRI. 10.14", time: "10:30 - 11:59", filmTitle: "Aardman Animations: 40th Anniversary (Family Version)"),
            eventData(dayText: "DAY 03", date: "SAT. 10.15", time: "10:30 - 11:56", filmTitle: "China Academy of Art"),
            eventData(dayText: "DAY 04", date: "SUN. 10.16", time: "10:30 - 11:59", filmTitle: "Aardman Animations: 40th Anniversary (Family Version)"),
            eventData(dayText: "DAY 05", date: "MON. 10.17", time: "10:30 - 11:35", filmTitle: "TIAF Picks 1"),
            eventData(dayText: "DAY 06", date: "TUE. 10.18", time: "10:30 - 11:45", filmTitle: "Psiconautas"),
            eventData(dayText: "DAY 07", date: "WED. 10.19", time: "10:30 - 11:51", filmTitle: "TIAF Picks 2"),
            eventData(dayText: "DAY 08", date: "THU. 10.20", time: "10:30 - 11:57", filmTitle: "Manang Biring"),
            eventData(dayText: "DAY 09", date: "FRI. 10.21", time: "10:30 - 12:00", filmTitle: "Miss Hokusai"),
        ]
        arrayOfDay01 = [
            event(num: 0, hall: "HALL 7", img: "McDull", time: "10:30 - 11:51", filmTitle: "McDull: Me & My Mum"),
            event(num: 1, hall: "HALL 7", img: "2016", time: "13:30 - 14:39", filmTitle: "2016 Best of Annecy"),
            event(num: 2, hall: "HALL 7", img: "onfnfb", time: "15:30 - 16:53", filmTitle: "Selected Shorts from National Film Board of Canada (NFB)"),
            event(num: 3, hall: "HALL 7", img: "ottawa", time: "17:30 - 18:43", filmTitle: "2015 Best of Ottawa"),
            event(num: 4, hall: "HALL 7", img: "psiconautas", time: "19:30 - 20:45", filmTitle: "Psiconautas"),
        
        ]
        
        
        // 載入CustomTableViewCell.xib
        let nib = UINib(nibName: "Custom2TableViewCell", bundle: nil)
        let view = nib.instantiate(withOwner: self, options: nil).first as! UIView
        rect = view.frame
        
        // rergister xib & tableview
        event2TableView.register(nib, forCellReuseIdentifier: "dayIndexCell")
        
        // set separator color
        self.event2TableView.separatorColor = UIColor(red: 255, green: 255, blue: 255, alpha: 0.5)
        
        
        
    }
    
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayOfDay01.count
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = event2TableView.dequeueReusableCell(withIdentifier: "dayIndexCell") as! Custom2TableViewCell
        navBar.topItem?.title = arrayOfeventData[0].dayText
        dateLable.text = arrayOfeventData[0].date
        cell.title.text = arrayOfeventData[indexPath.row].filmTitle
        cell.eventImg.image = UIImage(named:String(arrayOfDay01[indexPath.row].img))
        return cell
    }
    
    public func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return rect.size.height
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    
    

}
