//
//  Detail.swift
//  Amir_Ali_Syed_S2IT_Werkstuk1
//
//  Created by Amir Ali Syed on 30/04/2018.
//  Copyright © 2018 Amir Ali Syed. All rights reserved.
//

import UIKit

class Detail: UIViewController {

    var detail = Persoon()
    
    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var naam: UILabel!
    @IBOutlet weak var voornaam: UILabel!
    @IBOutlet weak var adres: UILabel!
    @IBOutlet weak var gsm: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.naam.text = detail.naam
        self.voornaam.text = detail.voornaam
        self.adres.text = detail.adres
        self.gsm.text = detail.gsm
        self.img.image = UIImage(named: detail.img)
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
