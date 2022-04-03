//
//  HomePagePresenter.swift
//  Yedir
//
//  Created by Mehmet Saltan on 27.03.2022.
//

import Foundation

class HomePagePresenter:ViewToPresenterHomePageProtocol{
    var homePageView: PresenterToViewHomePageProtocol?
    
    var homePageInteractor: PresenterToInteractorHomePageProtocol?
    
    func getFoods() {
        homePageInteractor?.getAllFoods()
    }
    
    
}
extension HomePagePresenter : InteractorToPresenterHomePageProtocol{
    func sendDataToPresenter(foodsList: Array<Foods>,foodDescriptionList:Array<FoodsDescriptions>) {
        homePageView?.sendDataToView(foodsList: foodsList,foodDescriptionList: foodDescriptionList)
    }
    
}
