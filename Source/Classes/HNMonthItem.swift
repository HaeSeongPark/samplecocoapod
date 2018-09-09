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
    
    func configure(month: NSDate) {
        monthField.stringValue = "\(month)"
    }
}
