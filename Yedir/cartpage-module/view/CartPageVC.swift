//
//  CartPageVC.swift
//  Yedir
//
//  Created by Mehmet Saltan on 26.03.2022.
//

import UIKit

class CartPageVC: UIViewController {
       
       var foodsList = [CartFoods]()
       var cartPresenterObject :ViewToPresenterCartProtocol?

       override func viewDidLoad() {
           super.viewDidLoad()
           CartRouter.createModule(ref: self)
           cartPresenterObject?.getFoods(kullanici_adi:"mehmet_saltan")
       }
       
       override func viewWillAppear(_ animated: Bool) {
           cartPresenterObject?.getFoods(kullanici_adi:"mehmet_saltan")
       }

}
extension CartPageVC :PresenterToViewCartProtocol{
    func sendDataToView(foodList: Array<CartFoods>) {
        self.foodsList = foodList
    }
}
