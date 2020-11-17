//
//  ViewController.swift
//  pro_shop
//
//  Created by owner on 17/11/2020.
//

import UIKit

class CategoriesVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var CategoriesTableView: UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        CategoriesTableView.dataSource = self
        CategoriesTableView.delegate = self
    }
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataServices.instance.getCategories().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "CategoriesCell") as? CategoriesCell{
            let category = DataServices.instance.getCategories()[indexPath.row]
            cell.updateView(category: category)
            return cell
            
        }
        else{
            return UITableViewCell()
        }
    }
    

}

