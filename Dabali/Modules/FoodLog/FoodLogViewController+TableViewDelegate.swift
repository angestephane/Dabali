//
//  GBOverviewViewController+TableViewDelegate.swift
//  Dabali
//
//  Created by stephane.boguhe on 14.01.25.
//

import UIKit

extension FoodLogViewController: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mealTableViewMock.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = mealTableView.dequeueReusableCell(withIdentifier: MealTableViewCell.identifier) as?
                MealTableViewCell else { return UITableViewCell() }
        
        let model = mealTableViewMock[indexPath.row]
        cell.bind(withModel: model)
        
        return cell
    }
    
    
}
