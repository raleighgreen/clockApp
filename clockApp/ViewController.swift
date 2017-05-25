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
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

