//
//  secondViewController.swift
//  RegionesPuebla
//
//  Created by Fernando Vazquez Bernal on 19/09/17.
//  Copyright © 2017 Fernando Vazquez Bernal. All rights reserved.
//

import UIKit

class secondViewController: UIViewController {
    
    var regionSelected:modeloRegiones!
    var laRegion:String!

    override func viewDidLoad() {
        super.viewDidLoad()
        laRegion = regionSelected.shortName
        print("\(laRegion!)")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        /*View Controller de datos generales*/
        if segue.identifier == "pantallaDatos"{
            let destinationVC = segue.destination as! datosViewController
            destinationVC.miRegion = regionSelected.shortName
        }
        
        /*View Controller de atractivos*/
        if segue.identifier == "pantallaAtractivos"{
            let destinationVC2 = segue.destination as! atractivosViewController
            destinationVC2.regionSeleccionada = regionSelected.shortName
            destinationVC2.numOfAtr = regionSelected.numItems
            destinationVC2.idRegion = regionSelected.id
        }
    }

}
