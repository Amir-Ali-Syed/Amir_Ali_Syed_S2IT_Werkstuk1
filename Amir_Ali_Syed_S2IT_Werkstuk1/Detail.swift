//
//  Detail.swift
//  Amir_Ali_Syed_S2IT_Werkstuk1
//
//  Created by Amir Ali Syed on 30/04/2018.
//  Copyright © 2018 Amir Ali Syed. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class Detail: UIViewController, CLLocationManagerDelegate, MKMapViewDelegate {

    var detail = Persoon()
    
    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var naam: UILabel!
    @IBOutlet weak var voornaam: UILabel!
    @IBOutlet weak var adres: UILabel!
    @IBOutlet weak var gsm: UILabel!
    @IBOutlet var kaart: MKMapView!
    
    let map = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.naam.text = detail.naam
        self.voornaam.text = detail.voornaam
        self.adres.text = detail.adres
        self.gsm.text = detail.gsm
        self.img.image = UIImage(named: detail.img)
        
        let persoonLocatie = MKPointAnnotation()
        persoonLocatie.coordinate = CLLocationCoordinate2D(latitude: detail.coordinaat1, longitude: detail.coordinaat2)
        self.kaart.addAnnotation(persoonLocatie)
        
        persoonLocatie.title = detail.adres
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
