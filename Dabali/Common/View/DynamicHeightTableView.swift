//
//  DynamicHeightTableView.swift
//  Dabali
//
//  Created by stephane.boguhe on 15.01.25.
//

import UIKit

class DynamicHeightTableView: UITableView {
    
    override var contentSize: CGSize {
        didSet {
            if oldValue != contentSize {
                return invalidateIntrinsicContentSize()
            }
        }
    }
    
    override var intrinsicContentSize: CGSize {
        return CGSize(width: contentSize.width, height: contentSize.height)
    }
}
