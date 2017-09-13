//
//  iPadViewController.swift
//  RegionesPuebla
//
//  Created by Fernando Vazquez Bernal on 24/08/17.
//  Copyright © 2017 Fernando Vazquez Bernal. All rights reserved.
//

import UIKit

class iPadViewController: UITableViewController {
    
    var tablaRegion:[modeloRegiones] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var miRegion = modeloRegiones(id: 1, nombre: "Sierra Norte", imagen: #imageLiteral(resourceName: "iPadRegionNorte"), numItems: 3, imagenDetalle: #imageLiteral(resourceName: "imgAtlixcoGeneral"), shortName:"norte")
        tablaRegion.append(miRegion)
        
        miRegion = modeloRegiones(id: 2, nombre: "Sierra Nororiental", imagen: #imageLiteral(resourceName: "iPadRegionNororiental"), numItems: 3, imagenDetalle: #imageLiteral(resourceName: "imgAtlixcoGeneral"), shortName:"nororiental")
        tablaRegion.append(miRegion)
        
        miRegion = modeloRegiones(id: 3, nombre: "Valle de Serdán", imagen: #imageLiteral(resourceName: "iPadRegionSerdan"), numItems: 3, imagenDetalle: #imageLiteral(resourceName: "imgAtlixcoGeneral"), shortName:"serdan")
        tablaRegion.append(miRegion)
        
        miRegion = modeloRegiones(id: 4, nombre: "Angelópolis", imagen: #imageLiteral(resourceName: "iPadRegionAngelopolis"), numItems: 3, imagenDetalle: #imageLiteral(resourceName: "imgAtlixcoGeneral"), shortName:"angelopolis")
        tablaRegion.append(miRegion)
        
        miRegion = modeloRegiones(id: 5, nombre: "Valle de Atlixco", imagen: #imageLiteral(resourceName: "iPadRegionAtlixco"), numItems: 3, imagenDetalle: #imageLiteral(resourceName: "imgAtlixcoGeneral"), shortName:"atlixco")
        tablaRegion.append(miRegion)
        
        miRegion = modeloRegiones(id: 6, nombre: "Mixteca", imagen: #imageLiteral(resourceName: "iPadRegionMixteca"), numItems: 3, imagenDetalle: #imageLiteral(resourceName: "imgAtlixcoGeneral"), shortName:"mixteca")
        tablaRegion.append(miRegion)
        
        miRegion = modeloRegiones(id: 7, nombre: "Tehuacán-Sierra Negra", imagen: #imageLiteral(resourceName: "iPadRegionTehuacan"), numItems: 3, imagenDetalle: #imageLiteral(resourceName: "imgTehuacanGeneral"), shortName:"tehuacan")
        tablaRegion.append(miRegion)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return tablaRegion.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
         let laRegion = tablaRegion[indexPath.row]
         let regionID = "celdaRegionesiPad"
         let miCelda = tableView.dequeueReusableCell(withIdentifier: regionID, for: indexPath) as! celdaRegioniPad
         miCelda.imagen2.image = laRegion.imagen
         return miCelda
 
        
        //let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        //return miCelda
    }
 

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
