//
//  HomePageProtocols.swift
//  Yedir
//
//  Created by Mehmet Saltan on 27.03.2022.
//

import Foundation

protocol ViewToPresenterHomePageProtocol {
    var homePageView:PresenterToViewHomePageProtocol?{get set}
    var homePageInteractor:PresenterToInteractorHomePageProtocol?{get set}
    
    func getFoods()
}

protocol PresenterToInteractorHomePageProtocol {
    var homePagePresenter:InteractorToPresenterHomePageProtocol?{get set}

    func getAllFoods()
    
}

protocol InteractorToPresenterHomePageProtocol {
    func sendDataToPresenter(foodsList:Array<Foods>)
}

protocol PresenterToViewHomePageProtocol {
    func sendDataToView(foodsList:Array<Foods>)
}


protocol PresenterToRouterHomePageProtocol {
    static func createModule(ref:HomePageVC)
}
