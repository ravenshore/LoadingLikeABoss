//
//  ViewController.swift
//  LoadingLikeABoss
//
//  Created by Razvigor Andreev on 2/22/16.
//  Copyright © 2016 Razvigor Andreev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func startTapped(sender: AnyObject) {
        startTimer()
    }
    @IBAction func stopTapped(sender: AnyObject) {
        stopTimer()
    }
    
    @IBOutlet weak var circleLoad: CircleView!
    var timer: NSTimer!
    var timerOn: Bool = false
    var current: CGFloat = 0
    var limit: CGFloat = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func startTimer() {
        if !timerOn {
            timerOn = true
            timer = NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: Selector("startAnimation"), userInfo: nil, repeats: true)
        } else { print("Animation Already running") }
    }
    func startAnimation() {

        circleLoad.masterSlider = current
        circleLoad.setNeedsDisplay()
        current += 0.05

    }
    
    func stopTimer() {
        
        timer.invalidate()
        timerOn = false
        current = 0
        circleLoad.masterSlider = 1
        circleLoad.setNeedsDisplay()
        
    }

}

