//
//  ShowImageVC.swift
//  MyImageCollection
//
//  Created by Darya Drobyshevsky on 5/9/21.
//

import UIKit
// storyboard id - необходим для того,чтобы мы могли из любого места в коде получать доступ к этому классу и упр-ть этим классом
// ShowImageVC - vc,который будет отвечать за показ изображения.

class ShowImageVC: UIViewController {

    @IBOutlet weak var currentImage: UIImageView!
    
    var imageName: String! // переменная,кот принимает значения,она не должна быть nil
    
    override func viewDidLoad() {
        super.viewDidLoad()

        currentImage.image = UIImage(named: imageName)
        
    }
    func setImageName(name: String){ // м-т,кот отвечает за изображение
        imageName = name // мы передаем имя и присваиваем к нашему imageName
    }

    

}
