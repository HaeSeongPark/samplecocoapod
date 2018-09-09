//
//  HNDateItem.swift
//  samplecocoapod
//
//  Created by rhino Q on 08/09/2018.
//  Copyright © 2018 rhino Q. All rights reserved.
//
// show backgournd circle for selected date

import Cocoa

class HNDateItem: NSCollectionViewItem {
    @IBOutlet weak var dateField: NSTextField!
    
    var inCurrentMonth: Bool = true {
        didSet {
            dateField.alphaValue = inCurrentMonth ? 1.0 : 0.3
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
    }
    
    func configure(day: Int, inCurrentMonth: Bool) {
        dateField.stringValue = "\(day)"
        self.inCurrentMonth = inCurrentMonth
    }
    
}
