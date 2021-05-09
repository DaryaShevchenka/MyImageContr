//
//  Cell.swift
//  MyImageCollection
//
//  Created by Darya Drobyshevsky on 5/9/21.
//

import UIKit

class Cell: UICollectionViewCell {
    
    @IBOutlet weak var temperatureImage: UIImageView!
    
    func setTemperatureImage(tempName: String){ // м-д,кот уст наше изображение в uiImageView
        temperatureImage.image = UIImage(named: tempName)
        
    }
}

