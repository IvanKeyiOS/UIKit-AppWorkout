//
//  Date + ext.swift
//  AppWorkout
//
//  Created by Иван Курганский on 02/09/2024.
//

import Foundation

extension Date {
    private var calendar: Calendar {
        return Calendar.current
    }
    
    var startOfWeek: Date {
        let components = calendar.dateComponents([.yearForWeekOfYear, .weekOfYear], from: self)
        guard let firstDay = calendar.date(from: components) else { return self }
        return calendar.date(byAdding: .day, value: 0, to: firstDay) ?? self
    }
    
    func agoForward(to days: Int) -> Date {
        return calendar.date(byAdding: .day, value: days, to: self) ?? self
    }
    
    func stripTime() -> Date {
        let components = calendar.dateComponents([.year, .month, .day], from: self)
        return calendar.date(from: components) ?? self
    }
}




