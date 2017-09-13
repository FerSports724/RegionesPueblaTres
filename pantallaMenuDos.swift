//
//  pantallaMenuDos.swift
//  RegionesPuebla
//
//  Created by Fernando Vazquez Bernal on 12/09/17.
//  Copyright © 2017 Fernando Vazquez Bernal. All rights reserved.
//

import UIKit

class pantallaMenuDos: UITableViewController {
    
    var celdaSelected:modeloDetalle!
    
    /*Creamos la variable de tipo modeloMenuDos*/
    var itemMenu:[modeloMenuDos] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if (celdaSelected.idCelda == 1){
            mostrarDatos()
        }else if (celdaSelected.idCelda == 2){
            mostrarAtractivos()
        }

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        switch celdaSelected.idCelda{
        case 1:
            return itemMenu.count
        case 2:
            return 0
        default:
            return 0
        }
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let elemento = itemMenu[indexPath.row]
        let celda = self.tableView.dequeueReusableCell(withIdentifier: "celdiniMenuDos") as! celdaMenuDos
        
        celda.imagenMenuDos.image = elemento.imagenTabla
        return celda
        
        /*let elemento = tablaDetalle[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "celdaMenuDos", for: indexPath)*/

        // Configure the cell...

        //return cell
    }

    
    /*----Función para Atractivos----*/
    func mostrarAtractivos(){
        print("Acabas de entrar al VC de los atractivos turísticos.")
        print("\(celdaSelected.nombreRegion!)")
    }
    
    
    /*----Función para los datos generales----*/
    func mostrarDatos(){
        print("Acabas de entrar al VC de los datos generales.")
        itemMenu = []
        
        var elItem = modeloMenuDos(imagenTabla: #imageLiteral(resourceName: "imagen1"), nameRegion: celdaSelected.nombreRegion, nombreAtr: "N/D", numOfItems: celdaSelected.numeroItems)
        itemMenu.append(elItem)
        
        elItem = modeloMenuDos(imagenTabla: #imageLiteral(resourceName: "imagen2"), nameRegion: celdaSelected.nombreRegion, nombreAtr: "N/D", numOfItems: celdaSelected.numeroItems)
        itemMenu.append(elItem)
        
    }
}
