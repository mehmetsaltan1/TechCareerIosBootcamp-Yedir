//
//  HomePageVC.swift
//  Yedir
//
//  Created by Mehmet Saltan on 26.03.2022.
//

import UIKit
import Kingfisher

class HomePageVC: UIViewController {
    @IBOutlet weak var yemeklerCollectionView: UICollectionView!
    
    var homePagePresenterObject:ViewToPresenterHomePageProtocol?
    var foodList = [Foods]()
    override func viewDidLoad() {
        super.viewDidLoad()
        yemeklerCollectionView.delegate = self
        yemeklerCollectionView.dataSource = self
        let genislik = yemeklerCollectionView.frame.size.width
        let hucreGenislik = (genislik-60)/3
          let tasarim = UICollectionViewFlowLayout()
          
          tasarim.sectionInset = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
          
          tasarim.minimumInteritemSpacing = 0
          tasarim.minimumLineSpacing = 10
          
          tasarim.itemSize = CGSize(width: (genislik-60)/3, height: hucreGenislik*2)
        yemeklerCollectionView.collectionViewLayout = tasarim
        
      
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
            self.yemeklerCollectionView.reloadData()
        }
    }
}
extension HomePageVC:UICollectionViewDelegate,UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return foodList.count
        
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let food = foodList[indexPath.row]
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "yemekHucre", for: indexPath) as! FoodCollectionViewCell
        cell.yemekAdiLabel.text = food.yemek_adi!
        cell.yemekFiyatLabel.text = "\(food.yemek_fiyat!) ₺"
        if let url = URL(string: "http://kasimadalan.pe.hu/yemekler/resimler/\(food.yemek_resim_adi!)"){
                   DispatchQueue.main.async {
                       cell.yemekResimImageView.kf.setImage(with: url)
                   }
               }
        cell.view.layer.cornerRadius = 16
        cell.sepeteEkleBtn.layer.cornerRadius = 32
        return cell
    }
    
}
