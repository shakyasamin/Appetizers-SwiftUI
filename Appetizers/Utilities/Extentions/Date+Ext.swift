//
//  Date+Ext.swift
//  Appetizers
//
//  Created by MicroBanker Nepal Pvt. Ltd. on 04/07/2025.
//

import Foundation


extension Date {
    var eighteenYearsAgo: Date {
        Calendar.current.date(byAdding: .year, value: -18, to: Date())!
    }
    
    var oneHundredTenYearsAgo: Date {
        Calendar.current.date(byAdding: .year, value: -110, to: Date())!
    }
}
