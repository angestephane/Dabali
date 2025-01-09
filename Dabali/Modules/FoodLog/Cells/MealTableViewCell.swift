//
//  MealTableViewCell.swift
//  Dabali
//
//  Created by stephane.boguhe on 14.01.25.
//

import UIKit

class MealTableViewCell: UITableViewCell {

    // MARK: - IBOutlets
    
    @IBOutlet weak var newMealButton: UIButton!
    @IBOutlet weak var separatorView: UIView!
    @IBOutlet weak var detailMealView: UIView!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var qteOfKcalLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var apportKcalLabel: UILabel!
    
    // MARK: - Override func
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.backgroundColor = UIColor.white
        setupUI()
    }
    
    // MARK: - Privates func
    
    private func setupUI() {
        separatorView.backgroundColor = .gray10
        detailMealView.roundedCorner()
        
        timeLabel.textColor = .gray20
        timeLabel.font = UIHelper.shared.GetApplicationRegular(14)
        
        qteOfKcalLabel.textColor = .gray20
        qteOfKcalLabel.font = UIHelper.shared.GetApplicationRegular(14)
        
        apportKcalLabel.textColor = .gray20
        apportKcalLabel.font = UIHelper.shared.GetApplicationRegular(14)
        
        titleLabel.textColor = .darkGreen
        titleLabel.font = UIHelper.shared.GetApplicationSemiBold(18)
                
        newMealButton.setTitle("", for: .normal)
        newMealButton.backgroundColor = .gray10
        newMealButton.makeCircular()
    }
    
    private func getPlusIcon(isButtonDisable: Bool = false) -> UIImage {
        let color: UIColor = isButtonDisable ? .gray20 : .darkGreen
        var config = UIImage.SymbolConfiguration(paletteColors: [color, .clear, .clear])
        config = config.applying(UIImage.SymbolConfiguration(weight: .bold))
        config = config.applying(UIImage.SymbolConfiguration(scale: .small))
        guard let image = UIImage(systemName: "plus", withConfiguration: config) else { return UIImage() }
        return image
    }
    
    // MARK: - Public func
    
    func bind(withModel model: MealTableViewCellViewModel) {
        detailMealView.backgroundColor = model.detailViewBackground
        timeLabel.text = model.time
        titleLabel.text = model.title
        apportKcalLabel.text = model.apportKcal
        qteOfKcalLabel.text = model.qteKcal
        detailMealView.isHidden = model.title.isEmpty
        if model.title.isEmpty {
            newMealButton.setImage(getPlusIcon(), for: .normal)
        } else {
            newMealButton.setImage(getPlusIcon(isButtonDisable: true), for: .normal)
            newMealButton.isEnabled = false
        }
    }
    
}
