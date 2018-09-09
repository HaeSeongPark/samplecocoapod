//
//  HNCalendar.swift
//  samplecocoapod
//
//  Created by rhino Q on 09/09/2018.
//  Copyright © 2018 rhino Q. All rights reserved.
//

import Foundation

class HNCalendar {
    static let Week:[String] = DateFormatter().shortWeekdaySymbols
    static let Month:[String] = DateFormatter().shortMonthSymbols
}

extension NSDate {
    private class func componentFlags() -> NSCalendar.Unit {
        return [
            NSCalendar.Unit.year,
            NSCalendar.Unit.month,
            NSCalendar.Unit.day,
            NSCalendar.Unit.weekOfYear,
            NSCalendar.Unit.hour,
            NSCalendar.Unit.minute,
            NSCalendar.Unit.second,
            NSCalendar.Unit.weekday,
            NSCalendar.Unit.weekdayOrdinal,
            NSCalendar.Unit.weekOfYear
        ]
    }
    
//    var components: NSDateComponents {
//        return NSCalendar.current.component(NSDate.componentFlags(), from: self)
//    }
//
//    func monthDays() -> Int {
////        return NSCalendar.current.range(of: NSCalendar.Unit.day, in: NSCalendar.Unit.month, for: self as Date).length
//    }
}
