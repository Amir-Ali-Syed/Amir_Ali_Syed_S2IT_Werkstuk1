//
//  Persoon.swift
//  Amir_Ali_Syed_S2IT_Werkstuk1
//
//  Created by Amir Ali Syed on 30/04/2018.
//  Copyright © 2018 Amir Ali Syed. All rights reserved.
//

import UIKit

class Persoon {
    var naam:String
    var voornaam:String
    var img:String
    var gsm:String
    var adres:String
    var coordinaat1:Double
    var coordinaat2:Double
    
    init() {
        naam = ""
        voornaam = ""
        img = ""
        gsm = ""
        adres = ""
        coordinaat1 = 0
        coordinaat2 = 0
    }
    
    init(naam: String, voornaam: String, img: String, gsm: String, adres: String, coordinaat1: Double, coordinaat2: Double) {
        self.naam = naam
        self.voornaam = voornaam
        self.img = img
        self.gsm = gsm
        self.adres = adres
        self.coordinaat1 = coordinaat1
        self.coordinaat2 = coordinaat2
    }
    
}
