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
    @IBOutlet weak var itemView: HNDateItemView!
    
    var count: Int = 0 {
        didSet {
            if count <= 0 {
                itemView.dotLayer.isHidden = true
            } else {
                itemView.dotLayer.isHidden = false
            }
        }
    }
    
    override var isSelected: Bool {
        didSet {
            updateStyles()
        }
    }
    
    @IBOutlet weak var dateField: NSTextField!
    
    var inCurrentMonth: Bool = true {
        didSet {
            dateField.alphaValue = inCurrentMonth ? 1.0 : 0.3
        }
    }
    
    private func updateStyles() {
        itemView.circleLayer.isHidden = !isSelected
        
//        if let view = view as? HNDateItemView {
//            view.circleLayer.isHidden = !isSelected
//        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
    }
    
    func configure(day: Int, inCurrentMonth: Bool) {
        dateField.stringValue = "\(day)"
        self.inCurrentMonth = inCurrentMonth
        dateField.textColor = CalendarView.globalPreference.calendar.textColor
    }
    
}
