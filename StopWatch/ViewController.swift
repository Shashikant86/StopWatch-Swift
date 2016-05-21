//
//  ViewController.swift
//  StopWatch
//
//  Created by Shashikant Jagtap on 19/05/2016.
//  Copyright © 2016 Shashikant Jagtap. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var timer = NSTimer()
    
    var time = 0
    
    
    @IBOutlet weak var seconds: UILabel!
    
    func result() {
        
        time++
        seconds.text = String(time)
        
    }

    @IBAction func rewind(sender: AnyObject) {
        
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("result"), userInfo: nil, repeats: true)
    }
    
    
    @IBAction func pause(sender: AnyObject) {
    
      timer.invalidate()
    
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

