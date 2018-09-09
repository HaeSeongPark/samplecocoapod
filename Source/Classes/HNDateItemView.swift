//
//  HNDateItemView.swift
//  samplecocoapod
//
//  Created by rhino Q on 09/09/2018.
//  Copyright © 2018 rhino Q. All rights reserved.
//

import Cocoa

class HNDateItemView: NSView {
    
    var circleLayer: CALayer!
    var dotLayer: CALayer!
    
    override init(frame frameRect: NSRect) {
        super.init(frame: frameRect)
        commonInit()
    }
    
    required init?(coder decoder: NSCoder) {
        super.init(coder: decoder)
        commonInit()
    }
    
    private func commonInit() {
        let preferences = CalendarView.globalPreference
        
        
        
        wantsLayer = true
        
        // make circle layer
        circleLayer = CALayer()
        let dimension = floor(min(bounds.width, bounds.height) - 2)
        circleLayer.frame = NSMakeRect(0, 0, dimension, dimension)
        circleLayer.cornerRadius = dimension / 2
        circleLayer.backgroundColor = preferences.date.circleBackgroundColor.cgColor
        circleLayer.masksToBounds = false
        circleLayer.isHidden = true
        layer?.addSublayer(circleLayer)
        
        //make dot Layer
        dotLayer = CALayer()
        dotLayer.frame = NSMakeRect(bounds.width / 2 - 2, 4, 4, 4)
        dotLayer.cornerRadius = 2
        dotLayer.backgroundColor = preferences.date.dotColor.cgColor
        dotLayer.isHidden = true
        layer?.addSublayer(dotLayer)
    }
    
    // this is called only when we are developing
    override func prepareForInterfaceBuilder() {
        layer?.backgroundColor = NSColor.darkGray.cgColor
        circleLayer.isHidden = false
        circleLayer.isHidden = false
    }
}
