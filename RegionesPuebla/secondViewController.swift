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
    
    /*override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "pantallaDatos"{
                let destinationVC = segue.destination as! datosViewController
                destinationVC.miRegion = 
            }
        }

        
    }*/

    
    @IBAction func botonDatos(_ sender: UIButton) {
        
    }
    
    
    @IBAction func botonAtractivos(_ sender: UIButton) {
    }

}
