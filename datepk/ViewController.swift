//
//  ViewController.swift
//  datepk
//
//  Created by D7703_23 on 2018. 4. 11..
//  Copyright © 2018년 D7703_23. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var Datelabel: UILabel!
    @IBOutlet weak var myPicker: UIDatePicker!
    
    @IBOutlet weak var mytime: UILabel!
    var count = 0
    let interval = 1.0
    let timeSelector: Selector = #selector(ViewController.updateTime)
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        Timer.scheduledTimer(timeInterval: interval, target: self, selector: timeSelector, userInfo: nil, repeats: true)
    }

    @IBAction func myPicker(_ sender: Any) {
        print("chang Date Picker")
        
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss a EE"
        Datelabel.text = formatter.string(from: myPicker.date)
    }
    @objc func updateTime(){
        let date = NSDate()
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss a EE"
        mytime.text = formatter.string(from: date as Date)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

