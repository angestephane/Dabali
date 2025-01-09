//
//  CalendarViewModel.swift
//  Dabali
//
//  Created by stephane.boguhe on 08.01.25.
//

import Foundation

struct CalendarViewModel {
    var monthDay: String
    var dayValue: String
    var isCurrentDay: Bool = false
}

extension CalendarViewModel {
    var place: Bool {
        return true
    }
}
