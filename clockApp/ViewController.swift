//
//  ViewController.swift
//  clockApp
//
//  Created by Raleigh Green on 5/25/17.
//  Copyright © 2017 Raleigh Green. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var myLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // print("View has loaded")
        myLabel.text = ""
        
        Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateClock), userInfo: nil, repeats: true)
        
    }

    func updateClock() {
        
        //print("Updated from clock")
        let dateNow: NSDate = NSDate()
        let calendar = NSCalendar.current
        let components = calendar.dateComponents([.hour, .minute, .second], from: dateNow as Date)
        
        //print(components.second!)
        
        let hour: Int = components.hour! > 12 ? components.hour! - 12 : components.hour!
        
        /*
        var hour: Int = 0
        if components.hour! > 12 {
            hour = components.hour! - 12
        } else {
            hour = components.hour!
        }
        */
        
        let hourString: String = hour > 9 ? "\(hour)" : "0\(hour)"
        
        let minutes = components.minute! > 9 ? "\(components.minute!)" : "0\(components.minute!)"
        
        let seconds = components.second! > 9 ? "\(components.second!)" : "0\(components.second!)"
        
        let am = components.hour! > 12 ? "PM" : "AM"
        
        let timeString = "\(hourString):\(minutes):\(seconds) \(am)"
        
        myLabel.text = timeString
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

