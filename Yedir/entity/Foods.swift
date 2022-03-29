//
//  Foods.swift
//  Yedir
//
//  Created by Mehmet Saltan on 27.03.2022.
//

import Foundation

class Foods : Codable {
    var yemek_id:String?
    var yemek_ad:String?
    var yemek_resim_adi:String?
    var yemek_fiyat:String?
    
    
    init(food_id:String,food_name:String,food_image_name:String,food_price:String) {
        self.yemek_id = food_id
        self.yemek_ad = food_name
        self.yemek_resim_adi = food_image_name
        self.yemek_fiyat = food_price
        
    }
}
