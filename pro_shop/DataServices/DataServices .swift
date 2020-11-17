//
//  DataServices .swift
//  pro_shop
//
//  Created by owner on 17/11/2020.
//

import Foundation


class DataServices{
    // Singleton Pattern to preserve data
    static let instance = DataServices()
    
    private let categories = [
    Category(title: "SHIRTS", imageName: "shirts.png"),
    Category(title: "HATS", imageName: "hats.png"),
    Category(title: "HOODIES", imageName: "hoodies.png"),
    Category(title: "DIGITAL", imageName: "digital.png"),
    ]
    
    
    func getCategories() -> [Category] {
        return categories
    }
    
    
    
}
