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
        
        //step 1 - override style
        var preferences = CalendarView.Preference()
        preferences.calendar.backgroundColor = NSColor.gray
        preferences.calendar.textColor = NSColor.white
        
        preferences.date.circleBackgroundColor = NSColor.yellow
        preferences.date.dotColor = NSColor.green
        
        CalendarView.globalPreference = preferences
        
        
        //step 2 add calendar to view hierachy
        addChildViewController(calendarView)
        calendarView.view.frame = containerView.frame
        view.addSubview(calendarView.view)
        
        // step 3 - properties
        // showing dots
        calendarView.counts = generageCounts()
        
        // set selected date
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

