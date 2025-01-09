//
//  CalendarViewCell.swift
//  Dabali
//
//  Created by stephane.boguhe on 08.01.25.
//

import UIKit

class CalendarViewCell: UICollectionViewCell {
    
    // MARK: - IBOutlets
    
    @IBOutlet weak var parentView: UIView!
    @IBOutlet weak var dayLabel: UILabel!
    @IBOutlet weak var dayValueLable: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupUI()
    }
    
    private func setupUI() {
        dayLabel.textColor = .darkGreen
        dayValueLable.textColor = .darkGreen
    }

    func bind(withModel model: CalendarViewModel) {
        dayLabel.text = model.monthDay
        dayValueLable.text = model.dayValue
        currentDateView(model.isCurrentDay)
        dayLabel.font = UIHelper.shared.GetApplicationRegular(12)
        dayValueLable.font = UIHelper.shared.GetApplicationBold(12)
    }
    
    private func currentDateView(_ isCurrentDate: Bool = false) {
        if isCurrentDate {
            parentView.backgroundColor = .purple20
            parentView.roundedCorner(borderColor: .purple30)
            dayLabel.textColor = .purple30
            dayValueLable.textColor = .purple30
        }
    }
}
