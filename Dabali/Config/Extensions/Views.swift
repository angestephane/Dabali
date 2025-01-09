//
//  Views.swift
//  Dabali
//
//  Created by stephane.boguhe on 08.01.25.
//

import UIKit

extension UIView {
    
    func instantiateNibNamed(_ name: String) {
        let containerView =  UINib(nibName: name, bundle: nil).instantiate(withOwner: self, options: nil).first as? UIView
        containerView?.frame = self.bounds
        addSubview(containerView!)
    }
    
    static var nib: UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
    
    static var identifier: String {
        return String(describing: self)
    }
    
    func roundedCorner(raduis: CGFloat = 8, borderColor: UIColor = .clear, borderWidth: CGFloat = 1) {
        self.layer.cornerRadius = raduis
        self.layer.borderColor = borderColor.cgColor
        self.layer.borderWidth = borderWidth
        self.layer.masksToBounds = true
    }
    
    func makeCircular() {
        clipsToBounds = true
        let sideLength = min(frame.size.width, frame.size.height)
        frame.size = CGSize(width: sideLength, height: sideLength)
        layer.cornerRadius = sideLength / 2
    }
}
