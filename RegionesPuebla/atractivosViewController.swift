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
    
    var laImagen:UIImage!
    var nombreImg:String!
    var elNombre = String()
    
    var regionSeleccionada = String()
    var numOfAtr:Int?
    var idRegion:Int?
    var nombreAtr:String!
    var aPoner:Int!
    var arrayParaPoner:[String] = []
    
    /*Array que contienen los nombres de los atractivos*/
    let arrayNorte:[String] = ["Zacatlan", "Chignahuapan", "Huauchinango", "Xicotepec", "Pahuatlán"]
    let arrayNororiental:[String] = ["Cuetzalan", "Yohualichan", "Zacapoaxtla", "Tlatlauquitepec"]
    let arraySerdan:[String] = ["Aljojuca", "Chalchicomula", "Atzitzintla", "Tecamachalco", "Tepeyahualco"]
    let arrayAngelopolis:[String] = ["Puebla", "SanAndresCholula", "SanPedroCholula", "Cuautinchan", "Tecali", "Huejotzingo", "Tepeaca", "Calpan"]
    let arrayAtlixco:[String] = ["Atlixco", "Huaquechula", "Izucar", "Tochimilco", "Tepapayeca"]
    let arrayMixteca:[String] = ["Huatlatlauca", "Acatlan", "Tepexi", "Molcaxac"]
    let arrayTehuacan:[String] = ["Tehuacan", "Zapotitlan", "SanJuanRaya", "Zoquitlan", "SanBernardinoLagunas", "Coxcatlan", "Tlacotepec"]
    
    /*Array con el número de atractivos que tendrá cada elemento de cada región*/
    let arrayNorteInt:[Int] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        /*TÍTULO DE BARRA DE NAVEGACIÓN*/
        self.title = "ATRACTIVOS"
        
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
            
            nombreImg = ""
            nombreImg = "atr" + "\(elNombre)" + "\(x)" + ".jpg"
            print("\(nombreImg!)")
            
            laImagen = UIImage(named: nombreImg)
            
            miTablaDeAtractivos = modeloAtractivos(nombreRegion: arrayParaPoner[x], numOfAtr: x, imagen:laImagen)
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
        //cell.labelTexto.text = miCeldiniLabel.nombreRegion
        cell.imagenAtr.image = miCeldiniLabel.imagen
        return cell
        
    }
}

extension atractivosViewController:UITableViewDelegate{
    
}
