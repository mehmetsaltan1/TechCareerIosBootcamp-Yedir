//
//  FoodDetailRouter.swift
//  Yedir
//
//  Created by Mehmet Saltan on 3.04.2022.
//

import Foundation
class FoodDetailRouter:PresenterToRouterFoodDetailProtocol {
    static func createModule(ref: FoodDetailVC) {
        let presenter = FoodDetailPresenter()
        //View
        ref.foodDetailPresenterObject = presenter
        //presenter
        ref.foodDetailPresenterObject?.foodDetailInteractor = FoodDetailInteractor()
          }
}
