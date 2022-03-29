//
//  HomePageVC.swift
//  Yedir
//
//  Created by Mehmet Saltan on 26.03.2022.
//

import UIKit

class HomePageVC: UIViewController {
    var homePagePresenterObject:ViewToPresenterHomePageProtocol?
    var foodList = [Foods]()
    override func viewDidLoad() {
        super.viewDidLoad()
        HomePageRouter.createModule(ref: self)
        navigationController?.navigationBar.barStyle = .black
       
        
    }
    override func viewWillAppear(_ animated: Bool) {
        homePagePresenterObject?.getFoods()
      }

}
extension HomePageVC:PresenterToViewHomePageProtocol{
    func sendDataToView(foodsList: Array<Foods>) {
        self.foodList = foodsList
        DispatchQueue.main.async {
            print(self.foodList.count)
        }
    }
}
