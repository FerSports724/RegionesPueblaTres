//
//  modeloMenuDos.swift
//  RegionesPuebla
//
//  Created by Fernando Vazquez Bernal on 13/09/17.
//  Copyright © 2017 Fernando Vazquez Bernal. All rights reserved.
//

import Foundation
import UIKit

class modeloMenuDos{
    
    var imagenTabla:UIImage!
    var nameRegion:String!
    var nombreAtr:String!
    var numOfItems:Int!
    
    init(imagenTabla:UIImage, nameRegion:String, nombreAtr:String, numOfItems:Int){
        self.imagenTabla = imagenTabla
        self.nameRegion = nameRegion
        self.nombreAtr = nombreAtr
        self.numOfItems = numOfItems
    }
    
}
