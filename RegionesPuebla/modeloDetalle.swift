//
//  modeloDetalle.swift
//  RegionesPuebla
//
//  Created by Fernando Vazquez Bernal on 31/08/17.
//  Copyright © 2017 Fernando Vazquez Bernal. All rights reserved.
//

import Foundation
import UIKit

class modeloDetalle{
    
    var idCelda:Int!
    var imagen:UIImage!
    var elId:Int!
    var nombreRegion:String!
    var numeroItems:Int!
    
    init(idCelda:Int, imagen:UIImage, id:Int, nombreRegion:String, numeroItems:Int){
        self.idCelda = idCelda
        self.imagen = imagen
        self.elId = id
        self.nombreRegion = nombreRegion
        self.numeroItems = numeroItems
    }
    
}
