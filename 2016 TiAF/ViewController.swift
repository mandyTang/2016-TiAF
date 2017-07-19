//
//  ViewController.swift
//  2016 TiAF
//
//  Created by Pei Yun on 2017/7/10.
//  Copyright © 2017年 Pei Yun. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var home: UIImageView!
    
    @IBAction func back (segue: UIStoryboardSegue) {
        print("Back")
    }
    
    @IBAction func about(_ sender: Any) {
        if let aboutVC = storyboard?.instantiateViewController(withIdentifier: "AboutVC") {
            show(aboutVC, sender: self)
        }

    }
    
    @IBAction func event(_ sender: Any) {
        if let eventVC = storyboard?.instantiateViewController(withIdentifier: "EventVC") {
            show(eventVC, sender: self)
        }
    }
    
    @IBAction func contact(_ sender: Any) {
        if let contactVC = storyboard?.instantiateViewController(withIdentifier: "ContactVC") {
            show(contactVC, sender: self)
        }
        
    }
    
    @IBAction func ticket(_sender: Any) {
//        if let ticketVC = storyboard?.instantiateViewController(withIdentifier: "TicketVC") {
//            show(ticketVC, sender: self)
//        }
    
    }
    
    @IBAction func rank(_sender: Any) {
        if let rankVC = storyboard?.instantiateViewController(withIdentifier: "RankVC") {
            show(rankVC, sender: self)
        }
        
    }
    
    @IBAction func sponsor(_sender: Any) {
        if let sponsorVC = storyboard?.instantiateViewController(withIdentifier: "SponsorVC") {
            show(sponsorVC, sender: self)
        }
        
    }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print("prepare")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
}
