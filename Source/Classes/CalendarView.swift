//
//  CalendarView.swift
//  samplecocoapod
//
//  Created by rhino Q on 08/09/2018.
//  Copyright © 2018 rhino Q. All rights reserved.
//

import Cocoa

public class CalendarView: NSViewController {
    
    @IBOutlet weak var collectionView: NSCollectionView!
    
    let date = NSDate()
    
    public init() {
        super.init(nibName: NSNib.Name(rawValue: "HNCalendarView"), bundle: Bundle(for: CalendarView.self))
    }
    
    required public init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override public func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
    }
    
    public override func viewDidAppear() {
        super.viewDidAppear()
    }
    
//    var label: NSTextField!
//    public override func loadView() {
//        view = NSView()
//        label = NSTextField()
//        label.frame = NSMakeRect(50, 50, 50, 20)
//        label.stringValue = "Label"
//        view.addSubview(label)
//    }
}

extension CalendarView: NSCollectionViewDataSource {
    
    enum Section: Int {
        case Month = 0, Week, Date
    }
    
    public func numberOfSections(in collectionView: NSCollectionView) -> Int { return 3 }
    
    public func collectionView(_ collectionView: NSCollectionView, numberOfItemsInSection section: Int) -> Int {
        
        switch Section(rawValue: section)! {
        case .Month:
            return 1
        case .Week:
            return 7
        case .Date:
            return 7 * 6
        }
    }
    
    public func collectionView(_ collectionView: NSCollectionView, itemForRepresentedObjectAt indexPath: IndexPath) -> NSCollectionViewItem {
        
        var item: NSCollectionViewItem
        
        switch Section(rawValue: indexPath.section)! {
        case .Month:
            item = collectionView.makeItem(withIdentifier: NSUserInterfaceItemIdentifier(rawValue: "HNMonthItem"), for: indexPath)
            
            if let item = item as? HNMonthItem {
                item.configure(month: date)
            }
            
        case .Week:
            item = collectionView.makeItem(withIdentifier: NSUserInterfaceItemIdentifier(rawValue: "HNWeekItem"), for: indexPath)
            
            if let item = item as? HNWeekItem {
                item.configure(week: HNCalendar.Week[indexPath.item])
            }
            
        case .Date:
            item = collectionView.makeItem(withIdentifier: NSUserInterfaceItemIdentifier(rawValue: "HNDateItem"), for: indexPath)
            
            if let item = item as? HNDateItem {
                item.configure(day:1)
            }
        }
        
        return item
    }
}

extension CalendarView: NSCollectionViewDelegate {
    
}

extension CalendarView: NSCollectionViewDelegateFlowLayout {
    public func collectionView(_ collectionView: NSCollectionView, layout collectionViewLayout: NSCollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> NSSize {
        
        let width = collectionView.bounds.width
        
        switch Section(rawValue: indexPath.section)! {
        case .Month:
            return NSMakeSize(width, 50)
        case .Week:
            return NSMakeSize(width / 10, 30)
        case .Date:
            return NSMakeSize(width / 10 ,40)
        }
    }
}
