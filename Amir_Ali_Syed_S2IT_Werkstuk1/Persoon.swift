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
    
    init() {
        naam = ""
        voornaam = ""
        img = ""
        gsm = ""
        adres = ""
    }
    
    init(naam: String, voornaam: String, img: String, gsm: String, adres: String) {
        self.naam = naam
        self.voornaam = voornaam
        self.img = img
        self.gsm = gsm
        self.adres = adres
    }
    
}
