//
//  HNDateItem.swift
//  samplecocoapod
//
//  Created by rhino Q on 08/09/2018.
//  Copyright © 2018 rhino Q. All rights reserved.
//

import Cocoa

class HNDateItem: NSCollectionViewItem {
    @IBOutlet weak var dateField: NSTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
    }
    
    func configure(day: Int) {
        dateField.stringValue = "\(day)"
    }
    
}
