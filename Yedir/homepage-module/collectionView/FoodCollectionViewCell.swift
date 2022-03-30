//
//  FoodCollectionViewCell.swift
//  Yedir
//
//  Created by Mehmet Saltan on 30.03.2022.
//

import UIKit

class FoodCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var sepeteEkleBtn: UIButton!
    @IBOutlet weak var view: UIView!
    @IBOutlet weak var yemekFiyatLabel: UILabel!
    @IBOutlet weak var yemekAdiLabel: UILabel!
    
    @IBOutlet weak var yemekResimImageView: UIImageView!
    @IBAction func sepeteEkleButton(_ sender: Any) {
    }
    
}
