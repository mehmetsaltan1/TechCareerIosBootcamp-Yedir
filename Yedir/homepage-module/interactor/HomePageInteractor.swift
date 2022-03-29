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
         print("tetiklendi")
    AF.request("http://kasimadalan.pe.hu/yemekler/tumYemekleriGetir.php",method: .get).response { response in
            if let data = response.data{
                print("1inci ife girdi")
                do {
                    let cevap = try JSONDecoder().decode(FoodsResponse.self, from: data)
                    if let gelenListe = cevap.yemekler{
                        print("2inci ife girdi")
                        self.homePagePresenter?.sendDataToPresenter(foodsList: gelenListe)
                        print(gelenListe.first!)
                    }
                    else {
                        print("null geldi")
                    }
         
                }catch{
                    print(error.localizedDescription)
                }
            }
        }
    }
    
    
}
