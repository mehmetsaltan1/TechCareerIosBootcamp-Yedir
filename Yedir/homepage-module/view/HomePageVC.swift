//
//  HomePageVC.swift
//  Yedir
//
//  Created by Mehmet Saltan on 26.03.2022.
//

import UIKit

class HomePageVC: UIViewController {
    var homePagePresenterObject:ViewToPresenterHomePageProtocol?
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.barStyle = .black
        HomePageRouter.createModule(ref: self)
    }
    


}
extension HomePageVC:PresenterToViewHomePageProtocol{
    func sendDataToView(foodsList: Array<Foods>) {
       
    }
}
