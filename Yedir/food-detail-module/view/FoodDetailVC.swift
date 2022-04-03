//
//  FoodDetailVC.swift
//  Yedir
//
//  Created by Mehmet Saltan on 26.03.2022.
//

import UIKit

class FoodDetailVC: UIViewController {
    var gelenYemek : Foods?
    var gelenYemekAciklama:FoodsDescriptions?
    @IBOutlet weak var lblKategoriName: UILabel!
    var foodsDescList = [FoodsDescriptions]()
    @IBOutlet weak var lblYemekAciklama: UILabel!

    @IBOutlet weak var gelenYemekImageView: UIImageView!
    @IBOutlet weak var lblYemekFiyat: UILabel!
    @IBOutlet weak var lblYemekAdi: UILabel!
    @IBOutlet weak var lblKaloriName: UILabel!
    @IBOutlet weak var lblYoreName: UILabel!
    var foodDetailPresenterObject:ViewToPresenterFoodDetailProtocol?
    override func viewDidLoad() {
        super.viewDidLoad()
        FoodDetailRouter.createModule(ref: self)
       // foodDetailPresenterObject?.getFoodDescriptions()
        if let url = URL(string: "http://kasimadalan.pe.hu/yemekler/resimler/\(gelenYemek!.yemek_resim_adi!)"){
            DispatchQueue.main.async {
                self.gelenYemekImageView.kf.setImage(with: url)
            }
        }
        lblYoreName.text = gelenYemekAciklama?.food_yore
        lblKaloriName.text = gelenYemekAciklama?.food_calori
        lblKategoriName.text = gelenYemekAciklama?.food_categori
        lblYemekAciklama.text = gelenYemekAciklama?.food_description
        lblYemekAciklama.preferredMaxLayoutWidth = 300
        lblYemekAdi.text = gelenYemek!.yemek_adi!
        lblYemekFiyat.text = "\((gelenYemek!.yemek_fiyat)!) ₺"
        // Do any additional setup after loading the view.
    }
}
