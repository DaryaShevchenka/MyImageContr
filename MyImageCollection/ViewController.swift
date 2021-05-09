//
//  ViewController.swift
//  MyImageCollection
//
//  Created by Darya Drobyshevsky on 5/9/21.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
   

    let arrayTemperature = ["thermometer","thermometer-5","thermometer-4","thermometer-3","thermometer-2"
    ]
    
    @IBOutlet weak var collectionViewOne: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        collectionViewOne.delegate = self
        collectionViewOne.dataSource = self
        
        
            //м-д,кот позволяет переходить при нажатии на другой экран:
        func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath){
            //создаем защищенную константу при помощи guard let:
             guard let vc = storyboard?.instantiateViewController(withIdentifier: "ShowImageVC") as? /*(ассоциируем с классом)*/ShowImageVC else{return}//если у нас нет ничего,то возвр {return}
            
            var currentSelectedImage: String! // переменная,кот содержит временное изобр-е
            currentSelectedImage = arrayTemperature[indexPath.row]
            vc.setImageName(name: currentSelectedImage) // доступ к ф-и,кот будет принимать в себя это изображение
            present(vc, animated: true, completion: nil)

        }// получаем доступ к контроллеру,в кот мы хотим отобразить что-то(showImageVC в нашем случае)
        

        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrayTemperature.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellOne", for: indexPath) as? Cell{
            // константа,кот выступает в кач-ве имени изобр-я
            let imageName = arrayTemperature[indexPath.row]
            cell.setTemperatureImage(tempName: imageName)// м-т,кот устанавливает наше изобр-е
            return cell
        }
        return UICollectionViewCell()// возвр-ем заглушку,если нету cell
    }
}

