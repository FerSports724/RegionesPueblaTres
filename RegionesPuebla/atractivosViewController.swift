//
//  atractivosViewController.swift
//  RegionesPuebla
//
//  Created by Fernando Vazquez Bernal on 19/09/17.
//  Copyright © 2017 Fernando Vazquez Bernal. All rights reserved.
//

import UIKit

class atractivosViewController: UIViewController {
    
    @IBOutlet var tableView: UITableView!
    
    var tablaAtractivos:[modeloAtractivos] = []
    
    var regionSeleccionada = String()
    var numOfAtr:Int?
    var idRegion:Int?
    var nombreAtr:String!
    var aPoner:Int!
    var arrayParaPoner:[String] = []
    
    /*Array que contienen los nombres de los atractivos*/
    let arrayNorte:[String] = ["Zacatlan", "Chignahuapan", "Huauchinango", "Xicotepec", "Pahuatlán"]
    let arrayNororiental:[String] = ["Cuetzalan", "Zacapoaxtla", "ZapotitlanMendez", "Tlatlauquitepec"]
    let arraySerdan:[String] = ["Chalchicomula", "Tecamachalco", "Tepeyahualco", "Atzitzintla", "Acatzingo"]
    let arrayAngelopolis:[String] = ["Puebla", "Cholula", "Tecali", "Cuautinchan", "Huejotzingo", "Tepeaca", "Calpan"]
    let arrayAtlixco:[String] = ["Atlixco", "Huaquechula", "Tochimilco", "Izucar"]
    let arrayMixteca:[String] = ["Acatlan", "TepexiRodriguez", "Huatlatlauca", "Molcaxac"]
    let arrayTehuacan:[String] = ["Zoquitlan", "Tehuacan", "Tlacotepec", "ZapotitlanSalinas", "SanJuanRaya", "SanBernardinoLagunas"]

    override func viewDidLoad() {
        super.viewDidLoad()
        print("\(numOfAtr ?? 0)")
        armarArray()
        
        print("--------------------------------------")
        print("\(tablaAtractivos.count)")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func armarArray(){
        
        var miTablaDeAtractivos:modeloAtractivos
        
        aPoner = 0
        nombreAtr = ""
        arrayParaPoner = []
        tablaAtractivos = []
        
        switch idRegion!{
        case 1:
            arrayParaPoner = arrayNorte
        case 2:
            arrayParaPoner = arrayNororiental
        case 3:
            arrayParaPoner = arraySerdan
        case 4:
            arrayParaPoner = arrayAngelopolis
        case 5:
            arrayParaPoner = arrayAtlixco
        case 6:
            arrayParaPoner = arrayMixteca
        case 7:
            arrayParaPoner = arrayTehuacan
        default:
            break
        }
        
        aPoner = numOfAtr! - 1
        
        for x in 0...aPoner{
            print(x)
            print(arrayParaPoner[x])
            
            miTablaDeAtractivos = modeloAtractivos(nombreRegion: arrayParaPoner[x], numOfAtr: x)
            tablaAtractivos.append(miTablaDeAtractivos)
        }
    }

}

extension atractivosViewController:UITableViewDataSource{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tablaAtractivos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let miCeldiniLabel = tablaAtractivos[indexPath.row]
        let cell = self.tableView.dequeueReusableCell(withIdentifier: "celdaAtractivinis", for: indexPath) as! celdaAtractivos
        cell.labelTexto.text = miCeldiniLabel.nombreRegion
        return cell
        
    }
}

extension atractivosViewController:UITableViewDelegate{
    
}
