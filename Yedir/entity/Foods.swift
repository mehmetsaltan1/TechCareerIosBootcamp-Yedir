//
//  Foods.swift
//  Yedir
//
//  Created by Mehmet Saltan on 27.03.2022.
//

import Foundation

class Foods:Codable {
    var food_id:String?
    var food_name:String?
    var food_image_name:String?
    var food_price:String?
    
    init() {
    }
    
    init(food_id:String,food_name:String,food_image_name:String,food_price:String) {
        self.food_id = food_id
        self.food_name = food_name
        self.food_image_name = food_image_name
        self.food_price = food_price
        
    }
}
