//
//  EventViewController.swift
//  2016 TiAF
//
//  Created by Pei Yun on 2017/7/12.
//  Copyright © 2017年 Pei Yun. All rights reserved.
//

import UIKit


class EventViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var eventTableView: UITableView!
    var arrayOfeventData = [eventData]()
    var rect: CGRect!
    override func viewDidLoad() {
        super.viewDidLoad()
        
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
        // 載入CustomTableViewCell.xib
        let nib = UINib(nibName: "CustomTableViewCell", bundle: nil)
        let view = nib.instantiate(withOwner: self, options: nil).first as! UIView
        rect = view.frame
        
        // rergister xib & tableview
        eventTableView.register(nib, forCellReuseIdentifier: "eventIndexCell")
        
        // set separator color
        self.eventTableView.separatorColor = UIColor(red: 255, green: 255, blue: 255, alpha: 0.5)
        
        //get event info from AppDelegate.swift
        let app = UIApplication.shared.delegate as! AppDelegate
        let string = app.echo("Event")
        print(string)
    }
    
    public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let event2VC = storyboard?.instantiateViewController(withIdentifier: "Event2VC") {
            show(event2VC, sender: self)
        }
    }
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayOfeventData.count
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = eventTableView.dequeueReusableCell(withIdentifier: "eventIndexCell") as! CustomTableViewCell
        cell.dayButton.setTitle(arrayOfeventData[indexPath.row].dayText, for: .normal)
        cell.dateTitle.text = arrayOfeventData[indexPath.row].date
        cell.timeText.text = arrayOfeventData[indexPath.row].time
        cell.filmText.text = arrayOfeventData[indexPath.row].filmTitle
        return cell
    }
    
    public func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return rect.size.height
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }


}
