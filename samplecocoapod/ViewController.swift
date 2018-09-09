//
//  ViewController.swift
//  samplecocoapod
//
//  Created by rhino Q on 08/09/2018.
//  Copyright © 2018 rhino Q. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    let calendarView = CalendarView()
    @IBOutlet weak var containerView: NSView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addChildViewController(calendarView)
        calendarView.view.frame = containerView.frame
        view.addSubview(calendarView.view)
    }
}

