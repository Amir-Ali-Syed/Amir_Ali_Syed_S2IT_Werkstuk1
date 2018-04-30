//
//  TableViewController.swift
//  Amir_Ali_Syed_S2IT_Werkstuk1
//
//  Created by Amir Ali Syed on 30/04/2018.
//  Copyright © 2018 Amir Ali Syed. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    var personen = [Persoon]()

    override func viewDidLoad() {
        super.viewDidLoad()

        let persoon1 = Persoon(naam: "Amir", voornaam: "Syed", img: "img_test", gsm: "0483440747", adres: "Lorrainstraat 73", coordinaat1:50.842067 , coordinaat2:4.322759)
        personen.append(persoon1)
        
        let persoon2 = Persoon(naam: "Ali", voornaam: "Someone", img: "img_test", gsm: "0438440747", adres: "Kerkstraat 24", coordinaat1:50.842067 , coordinaat2:4.322759)
        personen.append(persoon2)
        
        let persoon3 = Persoon(naam: "Peter", voornaam: "Parker", img: "img_test", gsm: "037274720", adres: "Brooklynstraat 65", coordinaat1:50.842067 , coordinaat2:4.322759)
        personen.append(persoon3)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return personen.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)

        cell.textLabel?.text = personen[indexPath.row].naam
        cell.detailTextLabel?.text = personen[indexPath.row].voornaam
        cell.imageView?.image = UIImage(named: personen[indexPath.row].img)

        return cell
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

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "detailLink" {
            let vc = segue.destination as! Detail
            let indexPath = self.tableView.indexPathForSelectedRow
            vc.detail = personen[(indexPath?.row)!]
        }
    }
    

}
