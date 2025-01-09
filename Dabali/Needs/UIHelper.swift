//
//  UIHelper.swift
//  Dabali
//
//  Created by stephane.boguhe on 13.01.25.
//

import UIKit

class UIHelper {
    public static let shared = UIHelper()
    
    
    public func GetApplicationSemiBold(_ size: CGFloat) -> UIFont {
        return GetApplicationFont(withName: "Nunito-SemiBold", size: size)
    }
    
    public func GetApplicationBold(_ size: CGFloat) -> UIFont {
        return GetApplicationFont(withName: "Nunito-Bold", size: size)
    }
    
    public func GetApplicationMedium(_ size: CGFloat) -> UIFont {
        return GetApplicationFont(withName: "Nunito-Medium", size: size)
    }
    
    public func GetApplicationRegular(_ size: CGFloat) -> UIFont {
        return GetApplicationFont(withName: "Nunito-Regular", size: size)
    }
    
    private func GetApplicationFont(withName name: String, size: CGFloat) -> UIFont {
        
        let fonts : [String] = UIFont.familyNames
        
        for font in fonts {
            for fontName in UIFont.fontNames(forFamilyName: font) {
                if (fontName == name) {
                    guard let myFont = UIFont(name: fontName, size: size) else {
                        print("Failed to load font")
                        return UIFont.systemFont(ofSize: size)
                    }
                    return myFont
                }
            }
        }
        return UIFont.systemFont(ofSize: size)
    }
}
