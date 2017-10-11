//
//  datosViewController.swift
//  RegionesPuebla
//
//  Created by Fernando Vazquez Bernal on 19/09/17.
//  Copyright © 2017 Fernando Vazquez Bernal. All rights reserved.
//

import UIKit

class datosViewController: UIViewController {
    
    @IBOutlet var imagenDatos: UIImageView!
    
    var miRegion = String()
    var nombreImagen = String()
    var imageToAdd:UIImage?

    override func viewDidLoad() {
        super.viewDidLoad()
        loadImage(nombreImg: nombreImagen)
        self.title = "DATOS GENERALES"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func loadImage(nombreImg:String){
        var nameImage = ""
        nameImage = "datos" + "\(miRegion)"
        imageToAdd = UIImage(named: nameImage)
        imagenDatos.image = imageToAdd
    }

}
