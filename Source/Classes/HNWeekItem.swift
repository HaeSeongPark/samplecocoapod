//
//  HNWeekItem.swift
//  samplecocoapod
//
//  Created by rhino Q on 08/09/2018.
//  Copyright © 2018 rhino Q. All rights reserved.
//

import Cocoa

class HNWeekItem: NSCollectionViewItem {
    @IBOutlet weak var weekField: NSTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
    }
    
    func configure(week:String) {
        weekField.stringValue = week
        weekField.textColor = CalendarView.globalPreference.calendar.textColor
    }
    
}
