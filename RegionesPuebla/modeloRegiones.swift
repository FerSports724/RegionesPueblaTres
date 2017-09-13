//
//  modeloRegiones.swift
//  RegionesPuebla
//
//  Created by Fernando Vazquez Bernal on 24/08/17.
//  Copyright © 2017 Fernando Vazquez Bernal. All rights reserved.
//

import Foundation
import UIKit

class modeloRegiones{
    var id:Int!
    var nombre:String!
    var imagen:UIImage!
    var numItems:Int!
    var imagenDetalle:UIImage!
    var shortName:String!
    
    init(id:Int, nombre:String, imagen:UIImage, numItems:Int, imagenDetalle:UIImage, shortName:String){
        self.id = id
        self.nombre = nombre
        self.imagen = imagen
        self.numItems = numItems
        self.imagenDetalle = imagenDetalle
        self.shortName = shortName
    }
}
