//
//  GBOverviewViewController.swift
//  Dabali
//
//  Created by stephane.boguhe on 18.01.25.
//

import UIKit

class GBOverviewViewController: UIViewController {
    
    @IBOutlet weak var profileImageView: UIView!
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var notificationButton: UIButton!
    @IBOutlet weak var weekResumCollectionView: DynamicHeightCollectionView!
    @IBOutlet weak var grettingMessageLabel: UILabel!
    @IBOutlet weak var usernameLabel: UILabel!
    @IBOutlet weak var chartView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    private func setupUI() {
        self.view.backgroundColor = .lightBlue
        
        profileImage.image = UIImage(named: "man-profil-image")
        profileImageView.backgroundColor = .gray10
        profileImageView.makeCircular()
        
        notificationButton.setTitle("", for: .normal)
        notificationButton.backgroundColor = .white
        notificationButton.makeCircular()
        notificationButton.setImage(configBellIcon(), for: .normal)
        
        usernameLabel.attributedText = getNameText()
        
        grettingMessageLabel.text = "Complet you daily nutrition"
        grettingMessageLabel.font = UIHelper.shared.GetApplicationRegular(35)
        grettingMessageLabel.textColor = .darkGreen
        
    }
    
    private func configBellIcon()  -> UIImage? {
        let config = UIImage.SymbolConfiguration(paletteColors: [.red, .neutral40, .clear])
        let image = UIImage(systemName: "bell.badge", withConfiguration: config)
        return image
    }
    
    private func getNameText() -> NSAttributedString {
        let name = "Stephane"
        let greeting = "Hello, "
        let text = String(format: "%@%@", greeting, name)
        
        return NSMutableAttributedString(string: text)
            .addColor(.darkGreen)
            .addFont(UIHelper.shared.GetApplicationMedium(18), to: text)
            .addFont(UIHelper.shared.GetApplicationBold(18), to: name)
    }
}
