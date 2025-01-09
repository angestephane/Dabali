//
//  NSAttributedString.swift
//  Dabali
//
//  Created by stephane.boguhe on 14.01.25.
//

import UIKit

extension NSAttributedString {
    func addFont(_ font: UIFont, to text: String? = nil, last: Bool = false) -> NSAttributedString {
        let text = text ?? string
        let range: NSRange = last ? (string as NSString).range(of: text, options: .backwards) : (string as NSString).range(of: text)
        
        let mutableAttributedString = NSMutableAttributedString(attributedString: self)
        mutableAttributedString.addAttribute(.font, value: font, range: range)
        
        return mutableAttributedString
    }
    
    func addColor(_ color: UIColor?, to text: String? = nil) -> NSAttributedString {
        guard let color = color else { return self }
        let text = text ?? string
        let range: NSRange = (string as NSString).range(of: text)
        
        let mutableAttributedString = NSMutableAttributedString(attributedString: self)
        mutableAttributedString.addAttribute(.foregroundColor, value: color, range: range)
        
        return mutableAttributedString
    }
}
