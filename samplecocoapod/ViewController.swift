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
        
        calendarView.counts = generageCounts()
        
        addChildViewController(calendarView)
        calendarView.view.frame = containerView.frame
        view.addSubview(calendarView.view)
        
        calendarView.selectedDate = Date()
    }
    
    private func generageCounts() -> [Int] {
        var counts = [Int]()
        for i in 0..<Date().monthDays {
            counts.append( i % 2 )
        }
        return counts
    }
}

