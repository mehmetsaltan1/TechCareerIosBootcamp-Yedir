//
//  HomePageInteractor.swift
//  Yedir
//
//  Created by Mehmet Saltan on 27.03.2022.
//

import Foundation
import Alamofire

class HomePageInteractor:PresenterToInteractorHomePageProtocol{
    var homePagePresenter: InteractorToPresenterHomePageProtocol?
    
    func getAllFoods() {
        AF.request("http://kasimadalan.pe.hu/yemekler/tumYemekleriGetir.php",method: .get).responseJSON { (response) in
            if let data = response.data{
                do {
                    let res = try JSONDecoder().decode(FoodsResponse.self, from: data)
                    var list = [Foods]()
                    if let gList = res.foods{
                        list = gList
                    }
                    self.homePagePresenter?.sendDataToPresenter(foodsList: list)
                }catch{
                    print(String(describing: error))
                }
            }
        }
    }
    
    
}
