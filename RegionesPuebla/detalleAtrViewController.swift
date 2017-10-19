//
//  detalleAtrViewController.swift
//  RegionesPuebla
//
//  Created by Fernando Vazquez Bernal on 12/10/17.
//  Copyright © 2017 Fernando Vazquez Bernal. All rights reserved.
//

import UIKit

class detalleAtrViewController: UIViewController {
    
    @IBOutlet var imagenPrincipal: UIImageView!
    @IBOutlet var textDescription: UILabel!
    @IBOutlet var collectionView: UICollectionView!
    
    var laImagenAMostrar:UIImage!
    var nombreSeleccionado = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mostrarImagen()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    
    /*Función que coloca un marcador en un punto específico de un mapView*/
    /*func otraForma(){
        let span:MKCoordinateSpan = MKCoordinateSpanMake(0.01, 0.01)
        let location:CLLocationCoordinate2D = CLLocationCoordinate2DMake(20.275749, -98.149830)
        let region:MKCoordinateRegion = MKCoordinateRegionMake(location, span)
        mapView.setRegion(region, animated:true)
        
        let annotation = MKPointAnnotation()
        
        annotation.coordinate = location
        annotation.title = "Pahuatlán"
        annotation.subtitle = "Aquí es Pahuatlán"
        self.mapView.showAnnotations([annotation], animated: true)
        //mapView.addAnnotation(annotation)
    }*/
    
    /*Función para colocar el nombre de la imagen y mostrarla*/
    func mostrarImagen(){
        var nombre:String! = ""
        nombre = "imgAtr" + "\(nombreSeleccionado)" + ".jpg"
        laImagenAMostrar = UIImage(named: nombre)
        self.imagenPrincipal.image = laImagenAMostrar
    }

}
