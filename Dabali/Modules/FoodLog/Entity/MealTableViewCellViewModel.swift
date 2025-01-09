//
//  MealTableViewCellViewModel.swift
//  Dabali
//
//  Created by stephane.boguhe on 14.01.25.
//

import UIKit

enum MealType {
    case Breakfast
    case Lunch
    case Dinner
    
    var backGroundColor: UIColor {
        switch self {
        case .Breakfast:
            return .green20
        case .Lunch:
            return .yellow20
        case .Dinner:
            return .blue20
        }
    }
    
    var title: String {
        switch self {
        case .Breakfast:
            return "Breakfast"
        case .Lunch:
            return "Lunch"
        case .Dinner:
            return "Dinner"
        }
    }
}

struct MealTableViewCellViewModel {
    var mealType: MealType?
    var apportKcal: String?
    var time: String
    var qteKcal: String?
    
    var detailViewBackground: UIColor {
        return mealType?.backGroundColor ?? .clear
    }
    
    var title: String {
        return mealType?.title ?? ""
    }
}
