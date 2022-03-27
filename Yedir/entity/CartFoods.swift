//
//  CartFoods.swift
//  Yedir
//
//  Created by Mehmet Saltan on 27.03.2022.
//

import Foundation

class CartFoods:Codable{
    var cart_food_id:String?
    var food_name:String?
    var food_image_name:String?
    var food_price:String?
    var food_total:String?
    var username:String?
    
    init(cart_food_id:String,food_name:String,food_image_name:String,food_price:String,food_total:String,username:String) {
        self.cart_food_id = cart_food_id
        self.food_name = food_name
        self.food_image_name = food_image_name
        self.food_price = food_price
        self.food_total = food_total
        self.username = username
    }
}
