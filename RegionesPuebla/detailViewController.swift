//
//  detailViewController.swift
//  RegionesPuebla
//
//  Created by Fernando Vazquez Bernal on 31/08/17.
//  Copyright © 2017 Fernando Vazquez Bernal. All rights reserved.
//

import UIKit

class detailViewController: UIViewController {
    
    @IBOutlet var imgDetail: UIImageView!
    @IBOutlet var tableView: UITableView!
    
    /*Variable para pasar datos*/
    var regionSelected : modeloRegiones!
    
    /*Arreglo para modelo de datos*/
    var tablaDetalle:[modeloDetalle] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var imagenTablini = modeloDetalle(idCelda:1, imagen:#imageLiteral(resourceName: "datosGenerales"), id:regionSelected.id, nombreRegion: regionSelected.shortName, numeroItems:regionSelected.numItems)
        tablaDetalle.append(imagenTablini)
        
        imagenTablini = modeloDetalle(idCelda:2, imagen:#imageLiteral(resourceName: "atractivosTuristicos"), id:regionSelected.id, nombreRegion: regionSelected.shortName, numeroItems:regionSelected.numItems)
        tablaDetalle.append(imagenTablini)
        
        self.imgDetail.image = self.regionSelected.imagenDetalle

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

extension detailViewController: UITableViewDelegate{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let elemento = tablaDetalle[indexPath.row]
        let celda = self.tableView.dequeueReusableCell(withIdentifier: "celdaInfo") as! celdaDetalle
        
        celda.imagen.image = elemento.imagen
        return celda
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let elemento1 = self.tablaDetalle[indexPath.row]
        print("\(elemento1.elId!)")
        print("\(elemento1.idCelda!)")
    }
    
    /*override func performSegue(withIdentifier identifier: String, sender: Any?) {
        <#code#>
    }*/
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     
     if segue.identifier == "screenMenu2"{
        if let indexPath = self.tableView.indexPathForSelectedRow{
            let selectedRegion = self.tablaDetalle[indexPath.row]
            let destinationVC = segue.destination as! pantallaMenuDos
            destinationVC.celdaSelected = selectedRegion
        }
     }
     
    }
    
}

extension detailViewController: UITableViewDataSource{
    
    
}
