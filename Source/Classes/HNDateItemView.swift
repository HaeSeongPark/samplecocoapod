//
//  HNDateItemView.swift
//  samplecocoapod
//
//  Created by rhino Q on 09/09/2018.
//  Copyright © 2018 rhino Q. All rights reserved.
//

import Cocoa

@IBDesignable class HNDateItemView: NSView {
    
    var circleLayer: CALayer!
    
    override init(frame frameRect: NSRect) {
        super.init(frame: frameRect)
        commonInit()
    }
    
    required init?(coder decoder: NSCoder) {
        super.init(coder: decoder)
        commonInit()
    }
    
    private func commonInit() {
        wantsLayer = true
        
        // make circlelayer
        circleLayer = CALayer()
        let dimension = floor(min(bounds.width, bounds.height) - 2)
        circleLayer.frame = NSMakeRect(0, 0, dimension, dimension)
        circleLayer.cornerRadius = dimension / 2
        circleLayer.backgroundColor = NSColor.red.cgColor
        circleLayer.masksToBounds = false
        circleLayer.isHidden = true
        layer?.addSublayer(circleLayer)
    }
    
    // this is called only when we are developing
    override func prepareForInterfaceBuilder() {
        layer?.backgroundColor = NSColor.darkGray.cgColor
        circleLayer.isHidden = false
    }
}
