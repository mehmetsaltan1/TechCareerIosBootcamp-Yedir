//
//  FoodDetailProtocols.swift
//  Yedir
//
//  Created by Mehmet Saltan on 2.04.2022.
//

import Foundation

protocol ViewToPresenterFoodDetailProtocol {
    var foodDetailInteractor:PresenterToInteractorFoodDetailProtocol?{get set}
    func add(yemekAdi:String,yemekResimAdi:String,yemekFiyat:Int,yemekSiparisAdet:Int,kullaniciAdi:String)
    
}
protocol PresenterToInteractorFoodDetailProtocol {
    func addFood(yemekAdi:String,yemekResimAdi:String,yemekFiyat:Int,yemekSiparisAdet:Int,kullaniciAdi:String)
}
protocol PresenterToRouterFoodDetailProtocol {
    static func createModule(ref:FoodDetailVC)
}
