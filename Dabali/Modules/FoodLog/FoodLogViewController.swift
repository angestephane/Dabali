//
//  ViewController.swift
//  Dabali
//
//  Created by stephane.boguhe on 06.01.25.
//

import UIKit

class FoodLogViewController: UIViewController {
    
    // MARK: - IBOutlets
    
    @IBOutlet weak var usernameLabel: UILabel!
    @IBOutlet weak var monthLabel: UILabel!
    @IBOutlet weak var dayOfMonthCollectionView: DynamicHeightCollectionView!
    @IBOutlet weak var profileImageView: UIView!
    @IBOutlet weak var mealTableView: UITableView!
    @IBOutlet weak var remainingKcalView: RemainingKcal!
    @IBOutlet weak var nextButton: UIButton!
    
    // MARK: - Internal variables
    
    internal let mock: [CalendarViewModel] = [
        CalendarViewModel(monthDay: "Lun.", dayValue: "1"),
        CalendarViewModel(monthDay: "Mar.", dayValue: "2"),
        CalendarViewModel(monthDay: "Mer.", dayValue: "3"),
        CalendarViewModel(monthDay: "Jeu.", dayValue: "4"),
        CalendarViewModel(monthDay: "Ven.", dayValue: "5", isCurrentDay: true),
        CalendarViewModel(monthDay: "Sam.", dayValue: "6"),
        CalendarViewModel(monthDay: "Dim.", dayValue: "7"),
        CalendarViewModel(monthDay: "Lun.", dayValue: "8"),
        CalendarViewModel(monthDay: "Mar.", dayValue: "9"),
        CalendarViewModel(monthDay: "Jeu.", dayValue: "10"),
        CalendarViewModel(monthDay: "Ven.", dayValue: "11"),
        CalendarViewModel(monthDay: "Sam.", dayValue: "12"),
        CalendarViewModel(monthDay: "Dim.", dayValue: "13"),
    ]
    
    internal let mealTableViewMock: [MealTableViewCellViewModel] = [
        MealTableViewCellViewModel(
            mealType: .Breakfast,
            apportKcal: "leger",
            time: "8:00 AM",
            qteKcal: "200 kcal"
        ),
        MealTableViewCellViewModel(
            time: "9:00 AM"
        ),
        MealTableViewCellViewModel(
            mealType: .Breakfast,
            apportKcal: "Moyen",
            time: "10:00 AM",
            qteKcal: "800 kcal"
        ),
        MealTableViewCellViewModel(
            time: "11:00 PM"
        ),
        MealTableViewCellViewModel(
            time: "12:00 PM"
        ),
        MealTableViewCellViewModel(
            mealType: .Lunch,
            apportKcal: "riz + Sauce graine",
            time: "1:00 PM",
            qteKcal: "1200 kcal"
        ),
        MealTableViewCellViewModel(
            mealType: .Lunch,
            apportKcal: "leger",
            time: "5:00 PM",
            qteKcal: "100 kcal"
        ),
        MealTableViewCellViewModel(
            mealType: .Dinner,
            apportKcal: "Moyen",
            time: "8:00 PM",
            qteKcal: "1000 kcal"
        ),
        MealTableViewCellViewModel(
            time: "9:00 PM"
        )
    ]
    
    // MARK: - Override func
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupDelegate()
        setupUI()
    }
    
    // MARK: - Private func
    
    private func setupUI() {
        self.view.backgroundColor = .lightBlue
        dayOfMonthCollectionView.backgroundColor = .white
        dayOfMonthCollectionView.roundedCorner(borderColor: .gray10)
        
        mealTableView.backgroundColor = .white
        mealTableView.roundedCorner(borderColor: .gray10)
        
        remainingKcalView.backgroundColor = .white
        remainingKcalView.roundedCorner(borderColor: .gray10)
        
        monthLabel.text = "Janvier 2025"
        monthLabel.font = UIHelper.shared.GetApplicationSemiBold(25)
        monthLabel.textColor = .darkGreen
        
        setupPreviousAndNextButton()
    }
    
    private func setupDelegate() {
        dayOfMonthCollectionView.delegate = self
        dayOfMonthCollectionView.dataSource = self
        dayOfMonthCollectionView.register(CalendarViewCell.nib, forCellWithReuseIdentifier: CalendarViewCell.identifier)
        
        mealTableView.delegate = self
        mealTableView.dataSource = self
        mealTableView.register(MealTableViewCell.nib, forCellReuseIdentifier: MealTableViewCell.identifier)
    }
    
    private func setupPreviousAndNextButton() {
        var config = UIImage.SymbolConfiguration(weight: .semibold)
        config = config.applying(UIImage.SymbolConfiguration(scale: .medium))
        
        let NextImageButton = UIImage(systemName: "chevron.down", withConfiguration: config)?.withTintColor(.darkGreen, renderingMode: .alwaysOriginal)
        nextButton.setTitle("", for: .normal)
        nextButton.setImage(NextImageButton, for: .normal)
        nextButton.backgroundColor = .clear
    }

}

