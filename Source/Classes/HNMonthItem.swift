//
//  HNMonthItem.swift
//  samplecocoapod
//
//  Created by rhino Q on 08/09/2018.
//  Copyright © 2018 rhino Q. All rights reserved.
//

import Cocoa

class HNMonthItem: NSCollectionViewItem {
    @IBOutlet weak var monthField: NSTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func configure(month: Date) {
//        let format = DateFormatter()
//        format.dateFormat = "MM YYYY"
//        monthField.stringValue = format.string(from: month as Date)
        monthField.stringValue = "\(month.month) \(month.year)"
        monthField.textColor = CalendarView.globalPreference.calendar.textColor
    }
}
