//
//  CategoriesCell.swift
//  pro_shop
//
//  Created by owner on 17/11/2020.
//

import UIKit

class CategoriesCell: UITableViewCell {
    
    @IBOutlet weak var BGImage: UIImageView!
    @IBOutlet weak var categoriesLabel: UILabel!
    
    func updateView(category: Category){
        BGImage.image = UIImage(named: category.imageName)
        categoriesLabel.text = category.title

    }
    
    
}
