//
//  RemainingKcal.swift
//  Dabali
//
//  Created by stephane.boguhe on 16.01.25.
//

import UIKit

class RemainingKcal: UIView {

    @IBOutlet var contentView: UIView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var infoButton: UIButton!
    @IBOutlet weak var goalValueLabel: UILabel!
    @IBOutlet weak var goalLabel: UILabel!
    
    @IBOutlet weak var remainingLabel: UILabel!
    @IBOutlet weak var remainingValueLabel: UILabel!
    @IBOutlet weak var equalLabel: UILabel!
    @IBOutlet weak var exerciceLabel: UILabel!
    @IBOutlet weak var exerciseValueLabel: UILabel!
    @IBOutlet weak var plusLabel: UILabel!
    @IBOutlet weak var foodValueLabel: UILabel!
    @IBOutlet weak var foodLabel: UILabel!
    @IBOutlet weak var subtractLabel: UILabel!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupUI()
    }
    
    
    private func setupUI() {
        
        Bundle.main.loadNibNamed(RemainingKcal.identifier, owner: self, options: nil)
        
        contentView.frame = self.bounds
        contentView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        self.addSubview(contentView)
        
        titleLabel.text = "Calories Remaining"
        titleLabel.font = UIHelper.shared.GetApplicationBold(16)
        titleLabel.textColor = .darkGreen
        
        goalValueLabel.text = "1,065"
        goalValueLabel.font = UIHelper.shared.GetApplicationSemiBold(12)
        goalValueLabel.textColor = .darkGreen
        
        goalLabel.text = "Goal"
        goalLabel.font = UIHelper.shared.GetApplicationRegular(12)
        goalLabel.textColor = .gray20
        
        subtractLabel.text = "-"
        subtractLabel.font = UIHelper.shared.GetApplicationRegular(16)
        subtractLabel.textColor = .neutral40
        
        foodValueLabel.text = "0"
        foodValueLabel.font = UIHelper.shared.GetApplicationSemiBold(12)
        foodValueLabel.textColor = .darkGreen
        
        foodLabel.text = "Food"
        foodLabel.font = UIHelper.shared.GetApplicationRegular(12)
        foodLabel.textColor = .gray20
        
        plusLabel.text = "+"
        plusLabel.font = UIHelper.shared.GetApplicationRegular(16)
        plusLabel.textColor = .neutral40
        
        exerciseValueLabel.text = "0"
        exerciseValueLabel.font = UIHelper.shared.GetApplicationSemiBold(12)
        exerciseValueLabel.textColor = .darkGreen
        
        exerciceLabel.text = "Exercise"
        exerciceLabel.font = UIHelper.shared.GetApplicationRegular(12)
        exerciceLabel.textColor = .gray20
        
        remainingValueLabel.text = "1,065"
        remainingValueLabel.font = UIHelper.shared.GetApplicationSemiBold(12)
        remainingValueLabel.textColor = .darkGreen
        
        remainingLabel.text = "Remaining"
        remainingLabel.font = UIHelper.shared.GetApplicationRegular(12)
        remainingLabel.textColor = .gray20
        
        equalLabel.text = "="
        equalLabel.font = UIHelper.shared.GetApplicationRegular(16)
        equalLabel.textColor = .neutral40
        
        infoButtonConfig()
    }
    
    private func infoButtonConfig() {
        infoButton.setTitle("", for: .normal)
        infoButton.backgroundColor = .gray10
        infoButton.makeCircular()
        
        let config = UIImage.SymbolConfiguration(paletteColors: [.darkGreen, .clear, .clear])
        let image = UIImage(systemName: "info.circle.fill", withConfiguration: config)
        
        infoButton.setImage(image, for: .normal)
    }
}
