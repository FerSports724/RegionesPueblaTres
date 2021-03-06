//
//  ViewController.swift
//  RegionesPuebla
//
//  Created by Fernando Vazquez Bernal on 22/08/17.
//  Copyright © 2017 Fernando Vazquez Bernal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var tableView: UITableView!
    
    var tablaRegion:[modeloRegiones] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var miRegion = modeloRegiones(id: 1, nombre: "Sierra Norte", imagen: #imageLiteral(resourceName: "regionNorte"), numItems: 5, imagenDetalle: #imageLiteral(resourceName: "imgAtlixcoGeneral"), shortName:"Norte")
        tablaRegion.append(miRegion)
        
        miRegion = modeloRegiones(id: 2, nombre: "Sierra Nororiental", imagen: #imageLiteral(resourceName: "regionNororiental"), numItems: 4, imagenDetalle: #imageLiteral(resourceName: "imgAtlixcoGeneral"), shortName:"Nororiental")
        tablaRegion.append(miRegion)
        
        miRegion = modeloRegiones(id: 3, nombre: "Valle de Serdán", imagen: #imageLiteral(resourceName: "regionSerdan"), numItems: 5, imagenDetalle: #imageLiteral(resourceName: "imgAtlixcoGeneral"), shortName:"Serdan")
        tablaRegion.append(miRegion)
        
        miRegion = modeloRegiones(id: 4, nombre: "Angelópolis", imagen: #imageLiteral(resourceName: "regionAngelopolis"), numItems: 8, imagenDetalle: #imageLiteral(resourceName: "imgAtlixcoGeneral"), shortName:"Angelopolis")
        tablaRegion.append(miRegion)
        
        miRegion = modeloRegiones(id: 5, nombre: "Valle de Atlixco", imagen: #imageLiteral(resourceName: "regionAtlixco"), numItems: 5, imagenDetalle: #imageLiteral(resourceName: "imgAtlixcoGeneral"), shortName:"Atlixco")
        tablaRegion.append(miRegion)
        
        miRegion = modeloRegiones(id: 6, nombre: "Mixteca", imagen: #imageLiteral(resourceName: "regionMixteca"), numItems: 4, imagenDetalle: #imageLiteral(resourceName: "imgAtlixcoGeneral"), shortName:"Mixteca")
        tablaRegion.append(miRegion)
        
        miRegion = modeloRegiones(id: 7, nombre: "Tehuacán-Sierra Negra", imagen: #imageLiteral(resourceName: "regionTehuacan"), numItems: 7, imagenDetalle: #imageLiteral(resourceName: "imgTehuacanGeneral"), shortName:"Tehuacan")
        tablaRegion.append(miRegion)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

extension ViewController: UITableViewDelegate{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tablaRegion.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let laRegion = tablaRegion[indexPath.row]
        let regionID = "celdaRegiones"
        let miCelda = self.tableView.dequeueReusableCell(withIdentifier: regionID, for: indexPath) as! celdaRegion
        miCelda.imagen.image = laRegion.imagen
        return miCelda
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segundaPantalla"{
            if let indexPath = self.tableView.indexPathForSelectedRow{
                let selectedRegion = self.tablaRegion[indexPath.row]
                let destinationVC = segue.destination as! secondViewController
                destinationVC.regionSelected = selectedRegion
            }
        }
        
    }
    
}

extension ViewController: UITableViewDataSource{
    
}
